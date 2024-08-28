struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(69265u, 57629u, 73169u, 1869u), vec3<bool>(true, false, false), vec2<bool>(true, false), -438f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec3<bool>(true, false, false), vec2<bool>(false, false), -625f), Struct_1(vec4<u32>(4294967295u, 0u, 36619u, 1u), vec3<bool>(true, true, false), vec2<bool>(false, false), -914f), Struct_1(vec4<u32>(0u, 4294967295u, 55798u, 1u), vec3<bool>(false, false, false), vec2<bool>(true, false), 1584f), Struct_1(vec4<u32>(60845u, 1u, 25249u, 1u), vec3<bool>(true, true, true), vec2<bool>(true, false), -374f), Struct_1(vec4<u32>(1u, 16619u, 0u, 4975u), vec3<bool>(true, false, false), vec2<bool>(true, true), 763f), Struct_1(vec4<u32>(4294967295u, 32582u, 28026u, 1u), vec3<bool>(true, false, false), vec2<bool>(true, true), -321f), Struct_1(vec4<u32>(14008u, 51976u, 53713u, 1u), vec3<bool>(false, true, false), vec2<bool>(true, false), -584f), Struct_1(vec4<u32>(0u, 0u, 1u, 52636u), vec3<bool>(false, true, true), vec2<bool>(true, true), -2114f), Struct_1(vec4<u32>(7154u, 1u, 1u, 15422u), vec3<bool>(true, false, false), vec2<bool>(true, true), -159f), Struct_1(vec4<u32>(14673u, 0u, 4294967295u, 24480u), vec3<bool>(true, true, false), vec2<bool>(true, true), -688f), Struct_1(vec4<u32>(18981u, 34759u, 11253u, 4294967295u), vec3<bool>(false, true, true), vec2<bool>(true, true), -670f), Struct_1(vec4<u32>(43506u, 0u, 0u, 12832u), vec3<bool>(false, true, false), vec2<bool>(true, true), -174f), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), vec3<bool>(false, false, false), vec2<bool>(true, true), 1330f), Struct_1(vec4<u32>(5154u, 5267u, 4294967295u, 26975u), vec3<bool>(true, false, false), vec2<bool>(true, true), 693f), Struct_1(vec4<u32>(4294967295u, 1u, 19674u, 87143u), vec3<bool>(true, false, true), vec2<bool>(false, false), -218f), Struct_1(vec4<u32>(63213u, 6578u, 17195u, 1u), vec3<bool>(false, true, true), vec2<bool>(false, false), -425f), Struct_1(vec4<u32>(1u, 1u, 1u, 48118u), vec3<bool>(false, true, false), vec2<bool>(true, true), 148f), Struct_1(vec4<u32>(0u, 4294967295u, 58161u, 0u), vec3<bool>(true, true, true), vec2<bool>(true, false), 643f), Struct_1(vec4<u32>(4684u, 19566u, 9567u, 1u), vec3<bool>(false, true, true), vec2<bool>(true, false), 911f), Struct_1(vec4<u32>(4294967295u, 38698u, 1u, 4294967295u), vec3<bool>(false, false, true), vec2<bool>(false, true), -1016f), Struct_1(vec4<u32>(4294967295u, 53673u, 1u, 479u), vec3<bool>(false, false, true), vec2<bool>(true, false), 747f), Struct_1(vec4<u32>(64667u, 4294967295u, 1u, 4294967295u), vec3<bool>(false, false, false), vec2<bool>(false, false), -1292f), Struct_1(vec4<u32>(4294967295u, 59208u, 4294967295u, 30168u), vec3<bool>(false, false, true), vec2<bool>(false, true), 299f), Struct_1(vec4<u32>(15429u, 10223u, 48545u, 4602u), vec3<bool>(true, true, true), vec2<bool>(false, true), -452f), Struct_1(vec4<u32>(23397u, 53711u, 4294967295u, 4294967295u), vec3<bool>(false, false, true), vec2<bool>(false, false), 1000f), Struct_1(vec4<u32>(1u, 0u, 1u, 55595u), vec3<bool>(true, true, false), vec2<bool>(false, false), 1000f), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 30309u), vec3<bool>(true, false, true), vec2<bool>(true, true), -1100f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    let var_0 = arg_0.c.a.wyw;
    global0 = array<Struct_1, 28>();
    let var_1 = ~vec2<i32>(arg_0.d.x, _wgslsmith_dot_vec3_i32(-reverseBits(arg_0.d), -arg_0.d));
    let var_2 = vec3<f32>(-1272f, -1429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d))));
    var var_3 = arg_1.d;
    return -1i;
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true), all(vec3<bool>(true, false, true)))), true, !(-1i >= _wgslsmith_clamp_i32(-65427i, func_3(Struct_3(Struct_1(vec4<u32>(0u, 34707u, u_input.a.x, 72601u), vec3<bool>(false, false, false), vec2<bool>(false, false), 1170f), global0[_wgslsmith_index_u32(66672u, 28u)], global0[_wgslsmith_index_u32(4249u, 28u)], vec3<i32>(-24345i, -1262i, 337i)), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 32715u, 89228u), vec3<bool>(true, true, false), vec2<bool>(true, true), -424f), vec3<f32>(630f, -1000f, -550f), u_input.a.x), firstTrailingBit(-25600i))));
}

fn func_1(arg_0: i32) -> bool {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_1(vec4<u32>(1u, 21144u, 1u, min(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), abs(4294967295u))), func_2(), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1635f, 766f)))))), Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 67299u, 20924u, 4294967295u))), min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(27967u, u_input.a.x, 1u, 37682u)) | (vec4<u32>(3535u, 1u, 40182u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 86512u, 4294967295u, 0u) % vec4<u32>(32u)))), vec3<bool>(any(vec4<bool>(false, false, true, false)), false, !(1i != arg_0)), vec2<bool>(1u > u_input.a.x, true), -236f), _wgslsmith_sub_vec3_i32(~(-(~vec3<i32>(-21946i, 15672i, 2147483647i))), firstLeadingBit(countOneBits(countOneBits(vec3<i32>(arg_0, -9864i, -6161i))))));
    var var_1 = var_0.d.yz;
    let var_2 = var_0.b.a.yw;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(select(arg_1.d.x, arg_1.d.x, true), abs(arg_1.d.x), firstLeadingBit(_wgslsmith_div_i32(-2147483647i, arg_1.d.x)), -15184i);
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_1(arg_3.d.a, vec3<bool>(!(!arg_1.c.b.x), func_1(~_wgslsmith_div_i32(33567i, -5201i)), arg_2.x), vec2<bool>(!select(true, arg_2.x, arg_3.b.x), all(!vec4<bool>(true, arg_3.d.b.x, true, arg_2.x))), -624f);
    global0 = array<Struct_1, 28>();
    return Struct_1(vec4<u32>(var_1.a.x, u_input.a.x, 37215u, _wgslsmith_sub_u32(24646u, min(4294967295u, arg_3.d.a.x) ^ 5212u)), vec3<bool>(func_1(arg_1.d.x) || true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.d, var_1.d, arg_0.x)))) <= var_1.d, arg_0.x), var_1.c, _wgslsmith_f_op_f32(select(-1629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.d.d)))), var_0.x >= firstTrailingBit(-30241i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<bool>(any(vec3<bool>(true, true, true)), true, func_1(-_wgslsmith_mod_i32(2147483647i, -8720i)), true), Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 28u)], Struct_1(~min(vec4<u32>(30737u, 36843u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(func_2().xy, select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), _wgslsmith_f_op_f32(trunc(697f))), global0[_wgslsmith_index_u32(~u_input.a.x, 28u)], vec3<i32>(-17756i, 1i, -max(-63522i, 2147483647i))), vec2<bool>(any(select(func_2().yz, vec2<bool>(true, true), true)), true), Struct_2(global0[_wgslsmith_index_u32(1u, 28u)], vec3<bool>(func_1(~(-13256i)), func_1(1i), true), global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_1, 28>();
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d), -1030f)));
    let var_3 = u_input.a.x | ~4294967295u;
    let var_4 = !var_0.c.x | var_0.c.x;
    global0 = array<Struct_1, 28>();
    var var_5 = Struct_3(Struct_1(select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), func_4(!vec4<bool>(var_4, true, var_4, var_0.c.x), Struct_3(var_0, Struct_1(vec4<u32>(var_0.a.x, u_input.a.x, var_3, var_0.a.x), vec3<bool>(false, false, true), vec2<bool>(true, var_4), var_2), global0[_wgslsmith_index_u32(850u, 28u)], vec3<i32>(17098i, 0i, 9231i)), var_0.b.zy, Struct_2(Struct_1(var_0.a, var_0.b, vec2<bool>(true, true), var_0.d), vec3<bool>(var_0.c.x, false, false), var_0, global0[_wgslsmith_index_u32(var_3, 28u)], -253f)).a, !all(vec2<bool>(true, false))), vec3<bool>(var_0.b.x, true, var_4 | true), var_0.b.xx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2)))))), Struct_1(~(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 15084u, var_3, var_0.a.x), vec4<u32>(var_3, 1u, 45899u, var_3)) & _wgslsmith_mult_vec4_u32(var_0.a, var_0.a)), func_2(), var_0.b.xy, -1000f), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.a.yxy, u_input.a ^ var_0.a.zzz), ~(var_3 | var_3), var_0.a.x, var_3), !var_0.b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))), vec3<i32>(_wgslsmith_sub_i32(52543i, -36886i), -2147483647i, _wgslsmith_sub_i32(~(-53808i), func_3(Struct_3(Struct_1(vec4<u32>(1u, 1u, var_0.a.x, u_input.a.x), vec3<bool>(var_0.b.x, true, var_4), vec2<bool>(true, false), -334f), Struct_1(var_0.a, vec3<bool>(true, var_4, true), var_0.c, 679f), Struct_1(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), var_0.b, var_0.b.yz, var_2), vec3<i32>(35044i, -1i, 2147483647i)), Struct_1(vec4<u32>(0u, var_0.a.x, 6804u, var_3), var_0.b, vec2<bool>(var_4, false), 991f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1012f, var_2, -668f), vec3<f32>(var_0.d, var_2, var_2), var_0.b)), 0u))));
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u, u_input.a.x));
}

