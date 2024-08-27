struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 18>;

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = -min(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global1.b, 2147483647i), vec3<i32>(u_input.a, u_input.a, 55146i))), -vec3<i32>(0i, 3326i, global1.b) >> (vec3<u32>(arg_0.a.x, global1.d.a.x, global1.c.a.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, 30085i, u_input.a), firstLeadingBit(~vec3<i32>(global1.b, u_input.a, -1i)), vec3<i32>(_wgslsmith_mod_i32(global1.b, -35948i), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), global1.b)));
    let var_1 = Struct_3(global1.c.a.x < global3.a.x, !arg_0.d, select(!(!global4.wyw), select(!global4.zzy, select(vec3<bool>(true, true, true), select(global4.www, vec3<bool>(global3.d, arg_0.b, true), arg_0.d), !vec3<bool>(false, global4.x, true)), global1.d.d), global4.xwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.c, global1.a, global3.c))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.c)))))));
    var var_3 = Struct_3(global4.x, !any(vec2<bool>(any(vec4<bool>(true, false, false, true)), true)), vec3<bool>(global4.x, all(select(select(vec4<bool>(global3.b, global4.x, arg_0.d, global4.x), vec4<bool>(false, true, global1.c.d, false), true), vec4<bool>(false, true, false, global4.x), vec4<bool>(true, false, true, true))), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.d)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2192f, _wgslsmith_f_op_f32(ceil(global1.a)), 1900f))));
    var_3 = Struct_3(var_3.c.x, !any(select(vec3<bool>(global3.d, false, var_1.b), var_3.c, vec3<bool>(global3.b, false, false))), select(!var_1.c, select(select(var_3.c, var_1.c, vec3<bool>(arg_0.d, var_1.b, global1.c.b)), select(select(var_1.c, vec3<bool>(var_3.c.x, arg_0.b, true), true), vec3<bool>(global3.d, false, var_1.c.x), var_3.c), select(!var_3.c, global4.xxw, select(var_3.c, var_3.c, var_3.c))), !(2147483647i < global1.b)), _wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d, var_3.d, var_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.c, global3.c, -1488f))))));
    return _wgslsmith_dot_vec2_u32(~global3.a.yy, countOneBits(_wgslsmith_add_vec2_u32(global1.d.a.zw, reverseBits(vec2<u32>(4294967295u, global3.a.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(arg_1.ywy, vec3<u32>(func_3(global1.c), arg_2.x, arg_2.x << (1u % 32u))) | min(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(arg_0.c.a.x, 0u, 56180u)), ~(vec3<u32>(global3.a.x, arg_2.x, 25893u) ^ vec3<u32>(arg_1.x, global1.c.a.x, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~41033u, global3.a.x & 79545u, _wgslsmith_clamp_u32(44819u, global1.c.a.x, arg_1.x)), global1.d.a.zwz));
    var var_1 = Struct_1(vec4<u32>(~1u, arg_1.x, ~global1.d.a.x, 0u), true, arg_0.c.c, false);
    var_0 = ~18243u;
    var var_2 = global4.xzx;
    let var_3 = ~arg_1;
    return vec4<bool>(any(global4.wyw), true, true, !all(!vec4<bool>(true, global3.d, global1.c.d, true)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = global3.a;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2292f + global3.c) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c), global1.a) + global1.c.c)), ~(-arg_2), arg_0, global1.d);
    var var_1 = arg_0.a.xy;
    let var_2 = Struct_3(false, !arg_0.d, arg_3.xyx, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -565f), 217f)), 505f, _wgslsmith_f_op_f32(-663f + -664f)));
    return vec3<bool>(global3.d, global3.c > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f * 609f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.c)))), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(arg_1.d.yx)))));
    var var_1 = Struct_3(any(vec2<bool>(true, any(vec4<bool>(true, global4.x, true, true)))), true, func_4(Struct_1(~global1.d.a, global1.c.d, arg_1.d.x, select(false, any(vec2<bool>(false, arg_1.c.x)), any(vec4<bool>(global4.x, true, false, false)))), global3.a.x, 1i, select(select(select(vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(global4.x, global1.c.b, arg_1.b, global4.x), false), vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(true, false, false, true)), func_2(Struct_2(var_0.x, -37375i, global1.d, Struct_1(vec4<u32>(0u, 6626u, 0u, 100158u), global4.x, -861f, global4.x)), vec4<u32>(global3.a.x, 1u, global1.d.a.x, global1.c.a.x), countOneBits(vec2<u32>(global1.c.a.x, 4294967295u))), global3.b)), vec3<f32>(_wgslsmith_f_op_f32(-global1.c.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, var_0.x)), _wgslsmith_f_op_f32(min(global3.c, -1216f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(540f * 1495f) + 423f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-152f, global1.c.c)))))));
    global1 = Struct_2(-835f, -4218i, Struct_1(global1.c.a, true || global3.b, 1f, var_1.c.x), global1.d);
    var var_2 = Struct_1(~reverseBits(vec4<u32>(~global1.d.a.x, _wgslsmith_dot_vec4_u32(global3.a, global3.a), 43490u, global3.a.x)), true, 816f, var_1.b);
    var var_3 = 1u;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_3(true, any(vec2<bool>(true, false)), !(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.c, -572f, -115f) - vec3<f32>(-614f, 396f, global1.a)), Struct_3(false, true, vec3<bool>(global1.c.d, global3.b, false), vec3<f32>(global1.a, 459f, global1.c.c)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.c, 907f, global3.c), vec3<f32>(global1.a, -1000f, global3.c))) * vec3<f32>(_wgslsmith_f_op_f32(global1.c.c + global3.c), _wgslsmith_f_op_f32(min(-1219f, 1452f)), _wgslsmith_f_op_f32(step(623f, -596f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1432f), -1759f, _wgslsmith_f_op_f32(-267f + global3.c)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.d))) + var_1.d);
    var var_3 = ((_wgslsmith_add_u32(global3.a.x & global3.a.x, _wgslsmith_add_u32(0u, global1.d.a.x)) & reverseBits(_wgslsmith_add_u32(57941u, global1.c.a.x))) ^ abs(_wgslsmith_dot_vec2_u32(global3.a.xx ^ global1.c.a.zy, vec2<u32>(4294967295u, global1.c.a.x) & global3.a.xx))) ^ global1.c.a.x;
    var var_4 = true | var_1.b;
    var var_5 = vec3<u32>(global3.a.x, min(~(~global3.a.x), global1.c.a.x), 34945u);
    let var_6 = global1.d.c;
    global1 = Struct_2(global3.c, i32(-1i) * -1i, Struct_1(~abs(global3.a) | ~_wgslsmith_add_vec4_u32(vec4<u32>(global3.a.x, global3.a.x, 0u, global1.c.a.x), vec4<u32>(32384u, var_5.x, 33324u, 42006u)), !global3.b, 437f, false), Struct_1(vec4<u32>(abs(global3.a.x), global1.d.a.x, _wgslsmith_mult_u32(~32081u, global3.a.x << (global1.c.a.x % 32u)), global1.d.a.x), _wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(-var_1.d.x)) > global3.c, -395f, !all(vec3<bool>(global3.b, global3.b, global3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, var_1.d.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, 1000f), var_1.d.yy), global4.zx)), vec2<f32>(_wgslsmith_f_op_f32(-810f * -745f), _wgslsmith_f_op_f32(-global1.d.c)))), var_1.d.xy, !func_4(Struct_1(global1.d.a, global1.d.b, 2063f, false), 62846u, max(global1.b, var_0), !vec4<bool>(var_1.a, true, false, false)).zx)));
}

