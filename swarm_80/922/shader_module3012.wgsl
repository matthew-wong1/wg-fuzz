struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-767f, vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(-1i, -24430i, -29095i), vec4<u32>(4294967295u, 53957u, 1u, 1u), vec2<u32>(0u, 91562u), vec3<u32>(18005u, 60443u, 4294967295u)), true, -1000f), Struct_2(-1222f, vec4<bool>(true, false, true, true), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), vec4<u32>(13978u, 0u, 3099u, 48654u), vec2<u32>(77170u, 52751u), vec3<u32>(19444u, 1u, 1u)), false, -179f), Struct_2(-970f, vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(0i, -20416i, -24202i), vec4<u32>(41064u, 1u, 4294967295u, 342u), vec2<u32>(61989u, 0u), vec3<u32>(4947u, 76699u, 6966u)), false, -791f), Struct_2(-2044f, vec4<bool>(true, false, true, false), Struct_1(vec3<i32>(-1i, 0i, 3836i), vec4<u32>(4294967295u, 80450u, 59672u, 66884u), vec2<u32>(4294967295u, 76360u), vec3<u32>(1u, 0u, 0u)), true, 1159f), Struct_2(-458f, vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(2147483647i, -1i, -9715i), vec4<u32>(12746u, 1u, 4804u, 72851u), vec2<u32>(4294967295u, 46336u), vec3<u32>(1u, 39344u, 25962u)), true, 1648f), Struct_2(-1840f, vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(-3297i, i32(-2147483648), -23735i), vec4<u32>(1u, 23319u, 6736u, 4294967295u), vec2<u32>(63037u, 71953u), vec3<u32>(0u, 1u, 5831u)), true, 1787f));

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-5736i, -3025i, i32(-2147483648)), vec3<i32>(1i, 1i, -46273i), vec3<i32>(i32(-2147483648), i32(-2147483648), 17690i), vec3<i32>(-82280i, 0i, 0i), vec3<i32>(57744i, -13363i, 19988i), vec3<i32>(-1i, 18267i, -52726i), vec3<i32>(26177i, -1i, -43212i), vec3<i32>(-12452i, i32(-2147483648), 39585i), vec3<i32>(4058i, -1i, 2147483647i), vec3<i32>(1i, -70073i, 29760i), vec3<i32>(-1i, -1i, 25064i), vec3<i32>(-12454i, -30840i, 17004i));

var<private> global2: array<vec4<f32>, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = ~vec3<u32>(~(~0u), _wgslsmith_div_u32(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x), u_input.a.x) | u_input.a.wyx;
    let var_1 = !any(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))));
    global1 = array<vec3<i32>, 12>();
    let var_2 = Struct_1(abs(reverseBits(abs(vec3<i32>(2147483647i, 48440i, 20458i)))), vec4<u32>(select(_wgslsmith_clamp_u32(49921u, 0u, u_input.a.x), _wgslsmith_clamp_u32(1906u, var_0.x, u_input.a.x), var_1) & ~max(var_0.x, 32052u), ~4294967295u | ~var_0.x, 1u, var_0.x & var_0.x), vec2<u32>(~43108u, var_0.x), ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), vec3<u32>(var_0.x, var_0.x, u_input.a.x)))));
    var var_3 = ~firstLeadingBit(_wgslsmith_add_u32(var_2.b.x, ~(~1u)));
    return vec4<f32>(744f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -562f))), -399f, 987f);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>) -> vec4<f32> {
    global2 = array<vec4<f32>, 10>();
    var var_0 = abs(u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(37879u, 10u)] * global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_vec4_f32(func_3())), vec4<bool>(false && !arg_2.x, arg_2.x & !arg_2.x, !(!arg_2.x), true)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> i32 {
    global0 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(arg_1, arg_2.x, arg_1))))), global2[_wgslsmith_index_u32(0u, 10u)])));
    global1 = array<vec3<i32>, 12>();
    let var_1 = arg_3.x;
    let var_2 = vec3<bool>(all(!arg_1.yy), true, arg_1.x);
    return firstTrailingBit(arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_1(-max(select(vec3<i32>(73086i, -6584i, -37063i), global1[_wgslsmith_index_u32(1u, 12u)], false), global1[_wgslsmith_index_u32(131239u, 12u)]) << (select(~_wgslsmith_mod_vec3_u32(u_input.a.xzz, vec3<u32>(4294967295u, 0u, u_input.a.x)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 14469u, 38775u)), _wgslsmith_mod_vec3_u32(vec3<u32>(94920u, u_input.a.x, 35453u), vec3<u32>(1u, 18180u, 1u))), any(vec4<bool>(true, false, true, false)) && true) % vec3<u32>(32u)), u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(min(u_input.a.x, u_input.a.x) ^ _wgslsmith_dot_vec3_u32(u_input.a.yxy, u_input.a.yww), u_input.a.x), vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(79864u, u_input.a.x, 139030u), u_input.a.x, 4294967295u))), u_input.a.zxz & firstLeadingBit(~u_input.a.ywx | u_input.a.yyx));
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, ~(i32(-1i) * -var_0.a.x)), 50294i | _wgslsmith_sub_i32(min(var_0.a.x, min(-2147483647i, var_0.a.x)), func_1(var_0, vec3<bool>(false, true, false), vec2<f32>(934f, 142f), u_input.a) ^ 13638i));
}

