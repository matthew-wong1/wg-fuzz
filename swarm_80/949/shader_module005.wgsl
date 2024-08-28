struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1270f, 269f, -1000f, 1000f), vec2<u32>(4294967295u, 1u), 917f, 12721u);

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(11268i, 41039i, 15210i, i32(-2147483648)), vec4<i32>(-4004i, 0i, 2147483647i, -14456i), vec4<i32>(13663i, 42159i, -18369i, -18133i), vec4<i32>(7603i, -1i, 8686i, -1442i), vec4<i32>(1i, -1i, -1i, 11018i), vec4<i32>(1i, -44973i, 63524i, 2147483647i), vec4<i32>(2147483647i, -15511i, 13911i, -8437i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 2147483647i), vec4<i32>(22952i, 1i, 46518i, -1i), vec4<i32>(19938i, 25716i, i32(-2147483648), -42331i), vec4<i32>(1i, -44742i, -11990i, -53642i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(82138i, -23251i, -21384i, -7230i));

var<private> global2: array<Struct_3, 16>;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(12657u, 0u), 1063f, Struct_1(vec4<f32>(-1682f, 1334f, 1000f, 467f), vec2<u32>(1u, 4294967295u), -375f, 4294967295u), Struct_2(Struct_1(vec4<f32>(450f, -159f, -352f, 900f), vec2<u32>(72766u, 1u), 2088f, 0u), vec3<bool>(true, false, true), vec2<u32>(59760u, 0u), false), Struct_2(Struct_1(vec4<f32>(-1062f, -325f, 718f, -862f), vec2<u32>(4294967295u, 1u), 457f, 0u), vec3<bool>(true, true, true), vec2<u32>(41877u, 24711u), false));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<f32> {
    global1 = array<vec4<i32>, 13>();
    global1 = array<vec4<i32>, 13>();
    let var_0 = all(vec2<bool>(any(global3.d.b), true));
    global3 = Struct_3(global0.b, global0.a.x, global3.e.a, Struct_2(global3.e.a, vec3<bool>(true, true, true), ~vec2<u32>(_wgslsmith_add_u32(global0.d, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 76457u), vec3<u32>(4294967295u, global3.e.c.x, global3.e.c.x))), !(!select(global3.e.d, global3.e.b.x, var_0))), Struct_2(Struct_1(global0.a, reverseBits(~vec2<u32>(95706u, global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)), max(59311u ^ global3.e.a.b.x, ~global3.a.x)), select(select(!vec3<bool>(true, var_0, var_0), global3.d.b, !global3.d.d), vec3<bool>(all(vec3<bool>(true, var_0, var_0)), global3.e.b.x, all(vec3<bool>(true, true, var_0))), !select(global3.e.b, global3.d.b, global3.d.b)), vec2<u32>(_wgslsmith_dot_vec2_u32(~global3.d.c, ~vec2<u32>(global3.e.a.d, global0.b.x)), select(_wgslsmith_clamp_u32(32365u, global3.d.a.d, global0.d), _wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(0u, 4294967295u)), false & global3.e.b.x)), true | global3.e.d));
    var var_1 = Struct_1(global0.a, vec2<u32>(_wgslsmith_clamp_u32(1u, global3.c.b.x, abs(global0.b.x)), global3.c.d | ~(~global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.c.a.x)) + _wgslsmith_f_op_f32(-global0.c)))), firstLeadingBit(0u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.ywy * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, -1339f, 180f) - var_1.a.wyw))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = !arg_0;
    global2 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
    var var_2 = _wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, u_input.a.x) & countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_mult_i32(0i, 13534i), _wgslsmith_add_i32(-666i, -1i), u_input.a.x ^ 50731i)), abs(max(vec3<i32>(u_input.a.x, -1i, 2147483647i), abs(vec3<i32>(-8767i, u_input.a.x, 0i)))), select(vec3<bool>(var_0.x, arg_2.x, false), vec3<bool>(any(vec2<bool>(true, var_0.x)), arg_2.x, arg_2.x), arg_2.x)), vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -(-1i ^ u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.a << (min(arg_1.c, vec2<u32>(global0.d, arg_1.c.x)) % vec2<u32>(32u)), ~vec2<i32>(21012i, -1i)), 32336i));
    var var_3 = arg_1.b.xy;
    return !vec3<bool>(any(vec2<bool>(var_3.x, arg_0.x)) || true, any(select(!vec4<bool>(false, var_0.x, global3.e.d, arg_0.x), arg_0, vec4<bool>(true, arg_2.x, true, arg_0.x))), all(select(arg_2, arg_0, global0.c != global0.c)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-839f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-784f, -183f)) + _wgslsmith_f_op_f32(f32(-1f) * -366f)), global3.e.a.a.x, -604f), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - _wgslsmith_f_op_f32(-global0.c))), 3348u), select(!vec3<bool>(true, any(global3.d.b.yy), arg_0.d), !global3.d.b, vec3<bool>(any(vec4<bool>(arg_0.d, true, arg_0.d, false)), global3.e.b.x, false)), ~countOneBits(vec2<u32>(~global3.d.c.x, 4294967295u)), global3.d.a.c == -709f);
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), -704f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.e.a.a.x - 682f), 1000f) - arg_0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -783f)), var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.a.x) - -1221f)) * _wgslsmith_f_op_f32(236f - arg_0.a.a.x)), 9425u);
    global1 = array<vec4<i32>, 13>();
    var var_1 = false;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-991f, _wgslsmith_f_op_f32(step(global3.e.a.a.x, global3.e.a.a.x)))))), _wgslsmith_f_op_f32(max(1214f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, arg_0.a.a.x)))))), _wgslsmith_f_op_f32(step(176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1929f)))), -146f);
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-730f, 500f, arg_1, -700f))), ~vec2<u32>(arg_2, global0.d), global0.a.x, global0.d), !func_2(!vec4<bool>(arg_0.x, true, arg_0.x, global3.d.d), global3.d, !vec4<bool>(true, false, global3.d.d, true)), abs(global3.e.c), _wgslsmith_f_op_f32(ceil(arg_1)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global3.d.a.a.x)), 1953f))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(global0.d, 16u)];
    let var_1 = var_0.e.a.b.x;
    var var_2 = _wgslsmith_add_u32(68389u, 1u);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))))), _wgslsmith_f_op_vec3_f32(func_3()).x))));
    let var_4 = global3.d;
    return Struct_1(arg_2, _wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, global3.c.b.x), vec2<u32>(1u, 4294967295u), var_0.c.b)) ^ _wgslsmith_mult_vec2_u32(var_4.c, global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(ceil(1f))))), firstLeadingBit(~reverseBits(34835u)));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: vec2<bool>) -> vec4<f32> {
    global0 = arg_0.a;
    var var_0 = vec2<f32>(global0.c, _wgslsmith_f_op_f32(-arg_0.b.c));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x >> (3858u % 32u), u_input.a.x)), vec2<i32>(-51506i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~arg_2.a.d << (arg_0.b.b.x % 32u), 13u)], -vec4<i32>(arg_1.x, arg_1.x, 0i, -1i) ^ (vec4<i32>(arg_1.x, u_input.a.x, arg_1.x, -21330i) ^ vec4<i32>(u_input.a.x, 63264i, u_input.a.x, u_input.a.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(reverseBits(~1u), 18654u, 4294967295u, _wgslsmith_mod_u32(~global3.e.a.b.x, abs(~global0.d & 50151u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_6(Struct_5(Struct_1(vec4<f32>(global3.e.a.c, global0.c, global0.c, 598f), global3.e.a.b, _wgslsmith_f_op_f32(-global3.e.a.a.x), _wgslsmith_mod_u32(4294967295u, global0.d)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, 252f, global3.d.a.a.x, global0.c), global0.a)), global3.c.b, -1000f, firstTrailingBit(var_0.x)), 1u), firstLeadingBit(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, u_input.a.x))), Struct_5(func_5(Struct_4(35760i, Struct_3(vec2<u32>(44874u, 1u), -932f, global3.c, Struct_2(global3.d.a, vec3<bool>(false, true, false), vec2<u32>(var_0.x, var_0.x), false), Struct_2(Struct_1(vec4<f32>(global3.c.a.x, -1111f, global3.b, global0.a.x), global0.b, global0.c, global0.b.x), global3.d.b, vec2<u32>(global3.e.a.b.x, global0.d), true)), vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), global3.d), func_1(vec3<bool>(global3.d.d, global3.e.d, global3.e.d), global0.c, global3.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1817f, global0.c, 1815f, -1143f), global0.a)), u_input.a), Struct_1(func_5(Struct_4(-2147483647i, global2[_wgslsmith_index_u32(global3.d.c.x, 16u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], Struct_2(Struct_1(vec4<f32>(-972f, global0.a.x, 1305f, 1820f), vec2<u32>(global3.c.b.x, 1u), global0.c, global3.c.b.x), global3.e.b, vec2<u32>(51003u, var_0.x), global3.d.b.x)), Struct_1(global0.a, vec2<u32>(1u, 17030u), global3.b, 1u), vec4<f32>(global3.c.c, -1171f, 145f, -1000f), u_input.a).a, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.x), var_0.zx), _wgslsmith_f_op_f32(global0.c * global0.a.x), ~4294967295u), ~countOneBits(0u)), global3.e.b.xz)), ~var_0.zw, 1f, 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-global0.a);
    var var_2 = vec3<i32>(((~(-5890i) | u_input.a.x) >> (reverseBits(1u) % 32u)) | -5440i, u_input.a.x, ~(-9255i));
    let var_3 = vec2<bool>(all(global3.d.b.xx), false);
    var_1 = vec4<f32>(global3.b, func_4(Struct_2(global3.d.a, select(select(vec3<bool>(global3.d.d, true, true), global3.e.b, global3.e.b), !global3.e.b, vec3<bool>(false, true, global3.e.d)), vec2<u32>(~global0.b.x, ~16002u), !global3.d.d || false)).c, var_1.x, global0.c);
    var var_4 = (var_0 << (var_0 % vec4<u32>(32u))) & max(countOneBits(~(var_0 << (vec4<u32>(global3.a.x, 1u, global3.c.d, global0.b.x) % vec4<u32>(32u)))), var_0);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, global3.d.a.c)))), 355f, var_3.x)));
}

