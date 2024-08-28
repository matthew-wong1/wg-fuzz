struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<f32, 23>;

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-2026f, 281f, -197f, -1321f), vec4<f32>(2159f, -564f, 125f, -1447f), vec4<f32>(387f, -334f, -2288f, -235f), vec4<f32>(700f, -1108f, -2930f, -443f), vec4<f32>(-235f, -375f, -469f, -1000f), vec4<f32>(915f, 938f, 335f, -1000f), vec4<f32>(-1547f, -1041f, -978f, 471f), vec4<f32>(487f, 1660f, -613f, -1646f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(u_input.c >> (u_input.d % 32u)), 23u)] - _wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 44484u), 23u)])))));
    var var_1 = vec3<bool>(true, false, false);
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1105f, var_0, 517f, -285f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(35914u, 8u)]))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, 353f, var_0, var_0) + vec4<f32>(-1500f, -1617f, -1000f, 887f)) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(79960u, 8u)] + global2[_wgslsmith_index_u32(u_input.d, 8u)])), global2[_wgslsmith_index_u32(u_input.d, 8u)])), any(!(!vec3<bool>(var_1.x, var_1.x, false)))))));
    return Struct_1(-1i, _wgslsmith_f_op_f32(934f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) + global1[_wgslsmith_index_u32(~max(u_input.d, u_input.c), 23u)])));
}

fn func_2() -> f32 {
    global0 = array<vec4<i32>, 23>();
    var var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.c, u_input.d)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.c, u_input.d)) % vec2<u32>(32u)), select(vec2<u32>(~u_input.d, ~u_input.c), firstLeadingBit(vec2<u32>(33630u, u_input.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 35988u)) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)))));
    global1 = array<f32, 23>();
    let var_1 = global1[_wgslsmith_index_u32(max(u_input.d, 23837u), 23u)];
    global0 = array<vec4<i32>, 23>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 23u)] - global1[_wgslsmith_index_u32(firstTrailingBit(~(~0u)), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 23u)], 292f))))));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(-1i, 545f);
    let var_1 = vec2<u32>(abs(14485u), u_input.c & ~_wgslsmith_add_u32(firstTrailingBit(arg_1), ~u_input.c));
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    let var_2 = func_1();
    return _wgslsmith_f_op_f32(min(2132f, _wgslsmith_f_op_f32(-arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -1i, u_input.b ^ (4555i << (u_input.c % 32u))), global1[_wgslsmith_index_u32(12497u, 23u)]);
    global2 = array<vec4<f32>, 8>();
    global0 = array<vec4<i32>, 23>();
    global1 = array<f32, 23>();
    let var_1 = func_1();
    let var_2 = Struct_1(-42828i, -1424f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-475f, var_2.b, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_2()), _wgslsmith_mod_u32(u_input.d, u_input.d)))) + var_0.b), reverseBits(min(~vec4<u32>(u_input.d, u_input.c, 0u, 1u) & firstLeadingBit(vec4<u32>(0u, u_input.c, u_input.c, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 7627u) & vec4<u32>(4294967295u, 39814u, 1u, 11595u), abs(vec4<u32>(u_input.c, u_input.d, u_input.c, 12151u))))), vec4<i32>(max(u_input.b, ~(u_input.b << (28250u % 32u))), 0i, -34402i, i32(-1i) * -(58368i ^ var_0.a)), var_0.b);
}

