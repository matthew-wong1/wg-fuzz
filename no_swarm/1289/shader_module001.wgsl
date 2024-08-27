struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: bool;

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(33794u, Struct_1(-1901i, vec3<u32>(4294967295u, 106219u, 19035u), -570f, vec4<f32>(1363f, -1000f, 1445f, 1000f), vec4<i32>(-1i, -49454i, -14813i, 1i)), 2147483647i, Struct_2(vec2<f32>(-318f, -145f), Struct_1(18384i, vec3<u32>(74622u, 1u, 0u), 1245f, vec4<f32>(-557f, 1580f, 486f, -132f), vec4<i32>(i32(-2147483648), i32(-2147483648), 49126i, i32(-2147483648))), vec3<f32>(-194f, 868f, -644f), Struct_1(0i, vec3<u32>(0u, 4294967295u, 21946u), 241f, vec4<f32>(700f, 1303f, 741f, 974f), vec4<i32>(0i, 0i, i32(-2147483648), -1i)), -274f)), Struct_3(0u, Struct_1(2147483647i, vec3<u32>(1u, 17468u, 29541u), 994f, vec4<f32>(-357f, 1276f, 1047f, 480f), vec4<i32>(36235i, 26795i, 71825i, -1i)), 2147483647i, Struct_2(vec2<f32>(2343f, -102f), Struct_1(-20938i, vec3<u32>(35419u, 1u, 91565u), -815f, vec4<f32>(-844f, -1330f, 445f, -1000f), vec4<i32>(34107i, -102681i, -1i, 385i)), vec3<f32>(-362f, -386f, -619f), Struct_1(-3349i, vec3<u32>(4294967295u, 1u, 0u), 1401f, vec4<f32>(612f, -1889f, -578f, -325f), vec4<i32>(32294i, 0i, i32(-2147483648), -8321i)), 815f)), Struct_3(1u, Struct_1(0i, vec3<u32>(23647u, 1u, 4294967295u), 890f, vec4<f32>(-379f, -505f, 780f, -935f), vec4<i32>(0i, 30336i, 0i, -44695i)), 26379i, Struct_2(vec2<f32>(-1437f, 163f), Struct_1(-21160i, vec3<u32>(9125u, 1u, 36243u), -548f, vec4<f32>(244f, -244f, -1000f, 1191f), vec4<i32>(21558i, 38191i, -26090i, -468i)), vec3<f32>(-427f, 2024f, 257f), Struct_1(26303i, vec3<u32>(4294967295u, 4294967295u, 32888u), 1067f, vec4<f32>(-1244f, 1243f, 2150f, 384f), vec4<i32>(-1i, -14193i, 11269i, i32(-2147483648))), 1511f)));

var<private> global4: Struct_1 = Struct_1(1i, vec3<u32>(0u, 0u, 4294967295u), -1540f, vec4<f32>(-886f, 669f, -898f, -1000f), vec4<i32>(74909i, -52145i, -3378i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global2 = true;
    let var_0 = abs(-global4.e.x);
    let var_1 = 23060i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1496f - -118f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) - 225f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f))));
    let var_3 = !vec2<bool>(!arg_1, global1.x);
    return Struct_1(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_1, u_input.a.x, 0i), global4.e)), ~u_input.c.yxx | ~min(~global4.b, abs(global4.b)), -923f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global4.d)) + vec4<f32>(var_2, var_2, var_2, 457f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(-var_2), var_2, 474f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global4.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, -801f, -642f, var_2)))))), global4.e);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = ~min(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 9u)], ~0u), 18093u) & arg_0.b.x;
    global3 = array<Struct_3, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x), _wgslsmith_f_op_f32(-1144f + -1625f), _wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(588f * arg_0.d.x))))));
    var var_2 = Struct_1(global4.a, ~u_input.c.xxz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0.d.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-320f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2190f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d), arg_0.d))), vec4<i32>(77775i, arg_0.e.x, -_wgslsmith_mult_i32(_wgslsmith_div_i32(global4.e.x, 18822i), arg_0.a), firstTrailingBit(_wgslsmith_add_i32(arg_1.x, 1i))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(1666f - _wgslsmith_f_op_f32(var_1.x * global4.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global4.c))))))), arg_0, _wgslsmith_f_op_vec3_f32(select(var_1.wwy, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.c - -138f), _wgslsmith_f_op_f32(max(2208f, global4.c))), global4.d.xyx), !((global4.e.x != var_2.a) || true))), arg_0, var_1.x);
    return _wgslsmith_sub_u32(~min(var_0, abs(36224u)), _wgslsmith_sub_u32(4294967295u, ~(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_2.b.x, 0u, var_2.b.x, var_2.b.x)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 9u)] ^ (abs(~global0[_wgslsmith_index_u32(u_input.b, 9u)]) | _wgslsmith_sub_u32(func_3(func_2(global1.x, false), ~global4.e.xzx), ~6183u));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(round(758f))), Struct_1(abs(u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(37183u, 11944u), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), 9u)], _wgslsmith_sub_u32(~global4.b.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 9u)], 6076u, u_input.b)), global0[_wgslsmith_index_u32(abs(reverseBits(global4.b.x)), 9u)]), -1016f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(256f, 755f), global4.d.x, _wgslsmith_f_op_f32(global4.d.x - global4.d.x), _wgslsmith_f_op_f32(-1559f + -1231f)))), countOneBits(_wgslsmith_clamp_vec4_i32(global4.e, vec4<i32>(-778i, 1i, global4.e.x, 0i), vec4<i32>(global4.a, -8084i, 1i, 1i)) | global4.e)), vec3<f32>(global4.d.x, _wgslsmith_f_op_f32(max(global4.c, -515f)), _wgslsmith_f_op_f32(sign(global4.c))), Struct_1(i32(-1i) * -3841i, vec3<u32>(_wgslsmith_div_u32(~4816u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(25066u, u_input.b), ~u_input.c.zw), _wgslsmith_sub_u32(~u_input.b, ~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(-557f))) + global4.c), vec4<f32>(global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)), global4.c, _wgslsmith_f_op_f32(trunc(global4.c))), global4.e), global4.c);
    var var_2 = select(select(!(!select(vec3<bool>(arg_1, true, true), global1.wyw, vec3<bool>(false, true, arg_1))), select(select(vec3<bool>(false, arg_0.x, false), !arg_0, !vec3<bool>(arg_0.x, true, false)), global1.zxz, !arg_0), vec3<bool>(any(global1.ww), global1.x, true)), select(vec3<bool>(select(true, any(arg_0.xz), arg_0.x || true), any(arg_0.zz), select(false, arg_0.x, true)), global1.wyx, !any(select(vec4<bool>(global1.x, false, arg_0.x, true), vec4<bool>(false, true, true, false), arg_0.x))), true);
    let var_3 = Struct_1(_wgslsmith_mod_i32(~max(var_1.b.e.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a, var_1.d.e.x, 49444i), global4.e.ywz)) & (-countOneBits(25824i) ^ arg_2), ~abs(abs(global4.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-449f + 818f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, _wgslsmith_f_op_f32(abs(global4.d.x)), 1540f, _wgslsmith_div_f32(global4.c, 792f))))), var_1.b.e);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -182f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.d.zz)) * var_1.a)), _wgslsmith_f_op_f32(317f + 1000f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.c))))), var_3, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), -539f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(global4.d.x, -841f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)), _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1482f) - _wgslsmith_f_op_f32(min(861f, 378f))))), var_3, global4.d.x);
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1076f);
    global0 = array<u32, 9>();
    let var_1 = func_1(global1.zxy, !any(!global1.ywx) || global1.x, -(abs(~36524i) >> (1u % 32u)));
    global3 = array<Struct_3, 3>();
    var var_2 = ~4294967295u;
    let var_3 = Struct_2(global4.d.yy, func_2(false, global1.x), vec3<f32>(-327f, 272f, 1733f), func_2(true, false), 1520f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.yxy, 481u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x + 124f), 943f, _wgslsmith_f_op_f32(global4.c - var_3.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, 1000f, global4.c) + var_1.d.xwx)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d.xwz))));
}

