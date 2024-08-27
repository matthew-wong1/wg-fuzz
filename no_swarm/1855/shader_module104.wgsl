struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(false), vec2<f32>(-1000f, -694f), -28827i, vec2<i32>(2147483647i, -29328i), Struct_1(false)), Struct_2(Struct_1(true), vec2<f32>(310f, 551f), -1i, vec2<i32>(-44402i, 2147483647i), Struct_1(false)), Struct_2(Struct_1(false), vec2<f32>(-670f, 1453f), 2147483647i, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(false)), Struct_2(Struct_1(false), vec2<f32>(1000f, 962f), -122i, vec2<i32>(40487i, 8101i), Struct_1(false)), Struct_2(Struct_1(false), vec2<f32>(1000f, 870f), 2147483647i, vec2<i32>(0i, -17699i), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(-400f, -391f), -4989i, vec2<i32>(-1i, 20311i), Struct_1(false)), Struct_2(Struct_1(false), vec2<f32>(-1151f, -169f), 8468i, vec2<i32>(-4990i, -35748i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(-650f, -245f), -30775i, vec2<i32>(0i, 2147483647i), Struct_1(false)), Struct_2(Struct_1(true), vec2<f32>(728f, 111f), -22813i, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(818f, -1000f), 4572i, vec2<i32>(-50234i, -17825i), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(-1379f, -1057f), -486i, vec2<i32>(-31870i, 47206i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(1942f, 1155f), 25214i, vec2<i32>(-1i, 50722i), Struct_1(false)), Struct_2(Struct_1(false), vec2<f32>(-309f, -326f), -19048i, vec2<i32>(1i, 16165i), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(545f, -1207f), 941i, vec2<i32>(1i, -42292i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(1029f, -845f), 10140i, vec2<i32>(2147483647i, 1i), Struct_1(false)), Struct_2(Struct_1(true), vec2<f32>(-113f, -1034f), -1i, vec2<i32>(-39780i, -20333i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(997f, -1238f), -1i, vec2<i32>(5928i, -1i), Struct_1(false)), Struct_2(Struct_1(true), vec2<f32>(-580f, 1306f), i32(-2147483648), vec2<i32>(-1832i, -9203i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(-812f, -1000f), 52523i, vec2<i32>(i32(-2147483648), 1i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(-1036f, 1056f), 2147483647i, vec2<i32>(510i, 0i), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(2213f, -602f), -53414i, vec2<i32>(-1i, -13919i), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(-650f, 1884f), 19703i, vec2<i32>(-34663i, -10982i), Struct_1(true)), Struct_2(Struct_1(false), vec2<f32>(-439f, -963f), 29288i, vec2<i32>(3938i, i32(-2147483648)), Struct_1(true)), Struct_2(Struct_1(true), vec2<f32>(-1000f, -288f), -15611i, vec2<i32>(-13622i, -30376i), Struct_1(false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    global1 = array<Struct_2, 27>();
    let var_0 = -1016f;
    var var_1 = Struct_2(Struct_1(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, arg_0))), 1000f), reverseBits(arg_1), reverseBits(-max(vec2<i32>(u_input.c, -2147483647i) ^ u_input.d.zx, u_input.b.yx)), Struct_1(u_input.a <= min(0u, u_input.a)));
    global2 = array<Struct_2, 24>();
    global1 = array<Struct_2, 27>();
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), _wgslsmith_mod_vec4_i32(u_input.b & (u_input.b | u_input.b), reverseBits(vec4<i32>(2147483647i, arg_1, 2147483647i, u_input.c)) >> (vec4<u32>(38902u, 74664u, u_input.a, u_input.a) % vec4<u32>(32u)))) | _wgslsmith_div_i32(1i, -((arg_1 << (u_input.a % 32u)) | 59000i));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = !vec3<bool>(any(select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), !vec4<bool>(arg_1.b.x, true, false, true), arg_1.b.x)), arg_1.a, select(!arg_1.a, any(select(vec4<bool>(arg_1.b.x, true, true, arg_1.b.x), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), arg_1.a)), true));
    global0 = !arg_1.b.x != (((arg_0 >> (~32744u % 32u)) << (countOneBits(reverseBits(u_input.a)) % 32u)) <= 4949i);
    var var_1 = ~firstTrailingBit(_wgslsmith_mod_i32(u_input.c, -19103i) | max(10307i, -36270i));
    var var_2 = u_input.a;
    var_2 = u_input.a;
    return u_input.b | select(countOneBits(min(-vec4<i32>(u_input.b.x, 18324i, u_input.b.x, -26330i), u_input.b)), ~vec4<i32>(2147483647i, -1i, _wgslsmith_sub_i32(-2147483647i, 1i), 1i), arg_1.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = min(vec2<i32>(func_2(_wgslsmith_f_op_f32(-176f + -2427f), 23494i), u_input.d.x) >> (~arg_0 % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(arg_2 | firstLeadingBit(u_input.d.zz), -(min(u_input.b.xz, arg_2) << (select(vec2<u32>(32836u, u_input.a), arg_0, true) % vec2<u32>(32u)))));
    var var_1 = ~((_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 13596u, 2638u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 42286u))) >> (80281u % 32u)) << (~8397u % 32u));
    var var_2 = ~_wgslsmith_mult_u32(~1u & ~(~arg_0.x), _wgslsmith_sub_u32(68302u, _wgslsmith_mult_u32(~u_input.a, firstTrailingBit(4294967295u))));
    var var_3 = func_3(u_input.b.x, Struct_3(true, vec2<bool>(true, true)));
    let var_4 = _wgslsmith_div_u32(5548u, 43924u);
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> Struct_5 {
    let var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f - -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2184f, 423f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f + _wgslsmith_f_op_f32(sign(-249f)))), _wgslsmith_div_f32(1430f, _wgslsmith_f_op_f32(max(-646f, _wgslsmith_f_op_f32(-1652f - -1319f)))), 1010f), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1.x, 1i), u_input.c) & ~1i);
    var var_1 = Struct_4(true);
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    var var_2 = var_1.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2585f - 141f))), -2066f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f + 493f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, 1000f, 116f, -561f))))))));
    let var_1 = ~_wgslsmith_clamp_u32(u_input.a, u_input.a, ~countOneBits(reverseBits(u_input.a)));
    let var_2 = func_4(Struct_1(!(true || func_1(vec2<u32>(var_1, var_1), Struct_1(false), vec2<i32>(1i, 1i)))), countOneBits(~countOneBits(vec2<i32>(-32554i, u_input.c)) & u_input.b.ww), 0u >= reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.a), vec2<u32>(4294967295u, 0u))), ~28705u << (_wgslsmith_mult_u32(~var_1 >> (var_1 % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a, 7309u), reverseBits(u_input.a))) % 32u));
    var var_3 = !any(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, false, true)), false, true)));
    var var_4 = Struct_1(var_0.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 1033f))) - 1494f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wzw);
}

