struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.e;
    let var_1 = any(vec2<bool>(!(any(vec3<bool>(true, var_0.b.x, false)) | true), arg_0.e.b.x));
    var var_2 = _wgslsmith_mod_vec2_u32(firstLeadingBit(arg_0.c) ^ ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(arg_2.b, u_input.b.x)) >> (vec2<u32>(106777u, 0u) % vec2<u32>(32u))), abs(arg_0.c));
    var var_3 = !var_0.c.c.x;
    var_0 = Struct_4(_wgslsmith_add_i32(-1i, select(var_0.a, var_0.a, true)), select(vec2<bool>(true, true), vec2<bool>(!(var_0.c.b.x < arg_0.d), !(!arg_0.e.b.x)), vec2<bool>(false, !(var_0.b.x & true))), Struct_3(var_0.c.a, ~countOneBits(arg_0.e.c.b), vec3<bool>(false, true, var_0.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.e.c.a.zz)));
    return !(!select(vec3<bool>(any(vec4<bool>(true, false, arg_2.d.x, false)), !arg_1.c.x, true), select(vec3<bool>(arg_0.e.b.x, var_0.b.x, false), vec3<bool>(arg_0.e.b.x, arg_0.e.c.c.x, arg_2.d.x), var_1), (arg_2.b | arg_0.c.x) == var_2.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.b) ^ vec2<u32>(arg_3, 4294967295u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(59152u, 0u), u_input.d.xx, u_input.d.xz), vec2<u32>(arg_3, firstTrailingBit(arg_0.b))), _wgslsmith_div_vec2_u32(~vec2<u32>(55356u, arg_3), u_input.b));
    let var_1 = abs(u_input.a);
    var var_2 = Struct_1(arg_3, max(u_input.b.x, 56703u), select(select(arg_2.c, vec3<bool>(var_1.x < 1i, arg_2.c.x, true), !arg_2.c), func_3(Struct_5(var_0.x, arg_2.d.x, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 78566u), var_0), 1i, Struct_4(2147483647i, arg_2.c.yz, arg_2)), Struct_1(abs(u_input.b.x), 4294967295u, select(vec3<bool>(arg_2.c.x, arg_2.c.x, arg_0.c.x), arg_2.c, vec3<bool>(false, arg_0.d.x, false)), arg_2.c.zy), Struct_1(arg_3, 1u, !arg_0.c, arg_2.c.xz)), vec3<bool>(!arg_2.c.x, true, arg_2.c.x)), arg_2.c.zz);
    var_2 = arg_0;
    var_2 = arg_0;
    return _wgslsmith_div_u32(select(4294967295u, _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(20971u, u_input.d.x, 66495u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(52666u, 0u, var_2.b), u_input.d)), any(select(!arg_0.c, select(arg_0.c, vec3<bool>(false, arg_0.d.x, arg_0.d.x), arg_2.c.x), var_2.c.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.b, _wgslsmith_mod_u32(0u, arg_3)), 114010u));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(u_input.d.xy, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b) | min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.d.yz), vec2<u32>(func_2(Struct_1(0u, 4294967295u, vec3<bool>(true, false, false), vec2<bool>(true, true)), u_input.c, Struct_3(vec4<f32>(1604f, arg_0, arg_1, 1248f), vec4<i32>(-22102i, u_input.e.x, arg_2.x, arg_2.x), vec3<bool>(true, true, true), vec2<f32>(580f, arg_0)), u_input.d.x), u_input.b.x & 6387u)));
    var var_1 = abs(~43657u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(472f)) - _wgslsmith_div_f32(arg_0, arg_1)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(361f)), _wgslsmith_f_op_f32(min(-153f, arg_1)))))));
    var_1 = abs(u_input.b.x);
    var var_3 = true;
    return _wgslsmith_f_op_f32(-var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, -32733i), u_input.e), 2147483647i), -18005i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1036f + _wgslsmith_f_op_f32(f32(-1f) * -286f)), 1f, reverseBits(u_input.e << (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1547f, 839f) - vec2<f32>(-619f, 1116f)))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - -697f)))), -7841i);
}

