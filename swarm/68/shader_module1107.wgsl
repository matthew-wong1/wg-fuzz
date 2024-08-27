struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = u_input.a | arg_1.b;
    let var_1 = !arg_3.b.a.x;
    global0 = array<Struct_1, 30>();
    let var_2 = arg_3.a.a;
    var var_3 = any(vec4<bool>(false, arg_2.a.b.x, any(vec4<bool>(true, var_1, arg_1.a.d.a.x, true)) && (-369f >= arg_1.a.e.x), !(!(arg_1.e.x != arg_3.d.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2074f))), _wgslsmith_f_op_f32(sign(arg_1.a.e.x))), _wgslsmith_f_op_f32(-arg_1.a.e.x))));
}

fn func_2() -> Struct_5 {
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 1000f), vec2<f32>(-838f, 988f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 1050f)))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, 28500u), 30u)], vec2<bool>(true, true), true), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), true), Struct_1(vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-1433f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1424f)) * _wgslsmith_f_op_f32(-456f * -318f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(381f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec2<bool>(true, false), true), Struct_5(Struct_3(vec2<f32>(532f, 693f), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec2<bool>(false, true), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec2<bool>(false, false), true), Struct_1(vec4<bool>(true, true, true, true)), vec3<f32>(1869f, -1952f, -332f)), -1i, u_input.d.zxy, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 30u)], vec2<bool>(true, true), false), u_input.b), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec2<bool>(true, false), false), Struct_1(vec4<bool>(true, true, true, true)), 4294967295u, u_input.d.xxw), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec2<bool>(true, true), true), global0[_wgslsmith_index_u32(2570u, 30u)], u_input.e.x, u_input.d.yzw))), true)))), select(u_input.a, -4956i << (~u_input.e.x % 32u), false), ~vec3<u32>(firstTrailingBit(u_input.d.x), firstTrailingBit(u_input.e.x), u_input.b.x), Struct_2(Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), vec2<bool>(true, false), !any(vec4<bool>(true, false, true, true))), ~u_input.b);
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return Struct_5(var_0.a, -max(_wgslsmith_sub_i32(u_input.a, 48518i >> (var_0.e.x % 32u)), 0i), ~select(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e.x, 10598u, u_input.e.x), select(vec3<u32>(u_input.d.x, var_0.e.x, u_input.b.x), u_input.d.www, var_0.a.c.a.a.wwz)), select(vec3<u32>(u_input.d.x, u_input.d.x, 25807u), u_input.d.yzz, true), !var_0.a.d.a.x), var_0.d, ~_wgslsmith_mult_vec2_u32(abs(u_input.d.yw), u_input.e ^ u_input.b) << (vec2<u32>(var_0.c.x, 0u & var_0.e.x) % vec2<u32>(32u)));
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_1, 30>();
    var var_0 = -1137f;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var_0 = _wgslsmith_f_op_f32(-1f);
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = true;
    let var_1 = arg_0 ^ vec2<i32>(0i, min(func_2().b, ~20141i & _wgslsmith_dot_vec3_i32(vec3<i32>(-38480i, arg_0.x, u_input.a), vec3<i32>(1i, u_input.c.x, arg_0.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1644f))) - arg_2.x)), _wgslsmith_f_op_f32(select(-739f, _wgslsmith_f_op_f32(f32(-1f) * -1309f), !var_0)));
    var var_3 = vec2<f32>(arg_2.x, arg_3.a.e.x);
    var var_4 = arg_3.a.c.a;
    return func_2().d;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<f32> {
    var var_0 = func_4(-(~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), u_input.c.xz), select(vec2<i32>(-11696i, u_input.c.x), u_input.c.yy, arg_0))), arg_1.c.a.a, func_1().a.a, func_2());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)) - -1329f)));
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(countOneBits(-(i32(-1i) * -1i)) > u_input.c.x);
    global0 = array<Struct_1, 30>();
    let var_1 = u_input.d.x;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(sign(-868f));
    var_0 = any(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false)))) | select(true, any(vec2<bool>(true, false)), true);
    var var_4 = vec2<u32>(u_input.e.x, 1u & u_input.e.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_3, 2998f)), _wgslsmith_f_op_f32(-876f * var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_5(-u_input.a != u_input.c.x, Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1683f, 179f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, -1220f)))), func_4(vec2<i32>(u_input.c.x, u_input.a), vec4<bool>(true, false, false, true), vec2<f32>(247f, var_5.x), func_1()), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), vec2<bool>(true, true), true), global0[_wgslsmith_index_u32(u_input.d.x, 30u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.x, var_3, 867f))))), firstTrailingBit(_wgslsmith_mod_vec4_u32(select(u_input.d, u_input.d, vec4<bool>(true, false, true, true)), _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(u_input.e.x, u_input.d.x, var_4.x, u_input.d.x)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(true, true), true), Struct_5(func_2().a, 1i, ~u_input.d.yyx, Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec2<bool>(true, true), true), u_input.e), Struct_4(func_1().d, func_1().d.a, var_1 ^ var_4.x, ~vec3<u32>(1u, 0u, var_1)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec2<bool>(false, false), true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_4.x, var_1), 30u)], _wgslsmith_div_u32(var_1, 86083u), u_input.d.xzz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f))));
}

