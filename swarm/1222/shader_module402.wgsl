struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(2147483647i, i32(-2147483648), 26715i, -1i, 28703i, i32(-2147483648), -1i, -47731i, i32(-2147483648), 10083i, i32(-2147483648), -9040i, -1i, 43960i, 1i, i32(-2147483648), -1i, 24387i, 3519i);

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-1011f, 638f));

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-1150f, Struct_1(vec3<u32>(1u, 0u, 0u), 812f)), Struct_2(-2644f, Struct_1(vec3<u32>(75256u, 0u, 4294967295u), -292f)), Struct_2(1000f, Struct_1(vec3<u32>(5794u, 32400u, 110987u), -1787f)), Struct_2(-1122f, Struct_1(vec3<u32>(1u, 4294967295u, 42007u), 1033f)), Struct_2(2174f, Struct_1(vec3<u32>(31265u, 1u, 1u), 1000f)), Struct_2(1648f, Struct_1(vec3<u32>(56659u, 4294967295u, 94464u), 387f)), Struct_2(787f, Struct_1(vec3<u32>(4294967295u, 84417u, 4294967295u), -550f)), Struct_2(-841f, Struct_1(vec3<u32>(4294967295u, 12244u, 0u), 1140f)), Struct_2(-117f, Struct_1(vec3<u32>(33842u, 4294967295u, 18158u), -1589f)), Struct_2(-1047f, Struct_1(vec3<u32>(6664u, 4294967295u, 1u), -239f)), Struct_2(-588f, Struct_1(vec3<u32>(4294967295u, 45773u, 1u), -1683f)), Struct_2(1898f, Struct_1(vec3<u32>(20063u, 1u, 4294967295u), 750f)), Struct_2(227f, Struct_1(vec3<u32>(1u, 182u, 774u), -1606f)), Struct_2(-440f, Struct_1(vec3<u32>(4294967295u, 14654u, 1u), -1230f)), Struct_2(-1072f, Struct_1(vec3<u32>(35557u, 1u, 10910u), 1377f)), Struct_2(-1915f, Struct_1(vec3<u32>(4294967295u, 1u, 38986u), -224f)), Struct_2(331f, Struct_1(vec3<u32>(0u, 4294967295u, 36783u), -1591f)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_3(u_input.b, all(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(ceil(-592f)));
    global1 = array<Struct_2, 20>();
    global0 = array<i32, 19>();
    var var_1 = vec3<i32>(-8164i, u_input.b, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.a, 0i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.a.x, 19u)], 0i, -2147483647i))), _wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(9459u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], u_input.b)), ~firstLeadingBit(vec3<i32>(-60843i, -77029i, global0[_wgslsmith_index_u32(u_input.a, 19u)])), vec3<i32>(-15907i, global0[_wgslsmith_index_u32(arg_0.b.a.x, 19u)], 2147483647i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 1i, var_0.a), vec3<i32>(26612i, var_0.a, 0i), vec3<i32>(u_input.b, -30362i, var_0.a)))));
    let var_2 = all(select(select(vec4<bool>(var_0.b | var_0.b, true, true, true), !vec4<bool>(true, false, true, var_0.b), false), vec4<bool>(all(!vec4<bool>(false, var_0.b, var_0.b, false)), -1i >= ~var_1.x, any(select(vec3<bool>(false, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), true)), !var_0.b), !var_0.b));
    return _wgslsmith_add_i32(12365i, u_input.b) << (106993u % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(max(-func_3(global3[_wgslsmith_index_u32(u_input.a, 17u)]), -u_input.b), global0[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(u_input.b, 1i) ^ vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 19u)])), abs(-(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]) & vec2<i32>(-2147483647i, -1i)))));
    var var_1 = all(vec3<bool>(all(vec2<bool>(false, true)) && false, true, any(vec3<bool>(false, false, true)) || true)) && select(true, _wgslsmith_dot_vec2_u32(~vec2<u32>(26806u, u_input.a), vec2<u32>(4294967295u, u_input.a)) != ~9736u, !(1i > (global0[_wgslsmith_index_u32(4294967295u, 19u)] & -1i)));
    let var_2 = !select(vec2<bool>(true, !(var_0.x >= global0[_wgslsmith_index_u32(u_input.a, 19u)])), vec2<bool>(true, true), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_3 = 1i;
    let var_4 = Struct_1(~vec3<u32>(u_input.a, u_input.a, ~_wgslsmith_sub_u32(1u, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))) * -898f));
    return Struct_2(-1522f, Struct_1(~abs(vec3<u32>(var_4.a.x, var_4.a.x, var_4.a.x)) & vec3<u32>(3241u >> (u_input.a % 32u), ~var_4.a.x, 59332u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * 1000f))));
}

fn func_1() -> bool {
    global3 = array<Struct_2, 17>();
    global1 = array<Struct_2, 20>();
    var var_0 = func_2();
    let var_1 = Struct_2(-800f, var_0.b);
    var var_2 = ~_wgslsmith_dot_vec3_u32(abs(var_0.b.a), ~(vec3<u32>(59868u, var_1.b.a.x, 0u) & ~var_1.b.a));
    return !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), global0[_wgslsmith_index_u32(var_1.b.a.x, 19u)] == -67603i), any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(~firstTrailingBit(vec3<u32>(9303u, u_input.a, 4294967295u)), vec3<u32>(15822u, ~_wgslsmith_mult_u32(0u, 28219u), _wgslsmith_add_u32(u_input.a, 0u << (u_input.a % 32u)))), _wgslsmith_f_op_f32(-1194f + _wgslsmith_f_op_f32(ceil(-369f))));
    global2 = array<vec2<f32>, 1>();
    var_0 = Struct_1(vec3<u32>(_wgslsmith_div_u32(abs(16110u) >> (firstLeadingBit(var_0.a.x) % 32u), select(1u, ~55700u, true)), abs(_wgslsmith_add_u32(4294967295u, 0u)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -698f)));
    global3 = array<Struct_2, 17>();
    var var_1 = vec4<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), false, true, func_1() || true);
    let var_2 = select(_wgslsmith_clamp_vec2_i32(select(~(vec2<i32>(u_input.b, u_input.b) >> (var_0.a.xx % vec2<u32>(32u))), vec2<i32>(-u_input.b, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), false), ~min(vec2<i32>(2147483647i, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<i32>(-30522i, -1i))), vec2<i32>(~u_input.b >> ((u_input.a & var_0.a.x) % 32u), countOneBits(_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(12625u, 19u)])))), select(vec2<i32>(global0[_wgslsmith_index_u32(~(~var_0.a.x), 19u)], -2147483647i), vec2<i32>(86653i, -51477i), !var_1.x), var_1.xz);
    global3 = array<Struct_2, 17>();
    var_1 = select(select(vec4<bool>(var_1.x, var_1.x, false, any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))), !(!select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x)), true), select(!vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, true)), var_1.x, true, func_1()), !select(vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, false), global0[_wgslsmith_index_u32(var_0.a.x, 19u)] <= -37019i), var_1.x), !select(vec4<bool>(true, false, true, 3769i < global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(var_1.x, any(vec3<bool>(true, var_1.x, true)), true, var_1.x != var_1.x), !var_1.x));
    let var_3 = _wgslsmith_add_u32(~(~(~var_0.a.x)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(602f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(var_0.b)), var_0.b) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1428f, var_0.b, 693f, var_0.b)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1346f, 2022f, var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1631f, 317f, var_0.b, 532f) + vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b))))))), 279f, var_0.a.x & countOneBits(0u), -firstLeadingBit(vec4<i32>(-7090i, var_2.x, var_2.x, 42265i) | firstTrailingBit(vec4<i32>(-3476i, -2147483647i, u_input.b, -6833i))));
}

