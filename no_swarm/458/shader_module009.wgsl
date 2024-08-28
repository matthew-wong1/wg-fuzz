struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: array<u32, 28> = array<u32, 28>(1u, 11774u, 0u, 18648u, 74620u, 0u, 0u, 0u, 4294967295u, 1u, 10916u, 21037u, 32793u, 4294967295u, 111586u, 12052u, 84298u, 50868u, 4294967295u, 187u, 10163u, 31042u, 4294967295u, 1u, 14092u, 4294967295u, 38975u, 4294967295u);

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<f32>(-1186f, -900f, 2380f), 46792u, -1393f, false), Struct_1(vec3<f32>(340f, 782f, -1000f), 247u, -1042f, true), Struct_1(vec3<f32>(-1747f, -1558f, 1787f), 0u, 1759f, false), Struct_1(vec3<f32>(-720f, -920f, 196f), 0u, 337f, true), Struct_1(vec3<f32>(-538f, -231f, -313f), 10097u, 1264f, true), Struct_1(vec3<f32>(-505f, -582f, -465f), 19702u, -350f, true), Struct_1(vec3<f32>(-726f, -1302f, 2953f), 2057u, -274f, false), Struct_1(vec3<f32>(1690f, 1093f, 119f), 0u, -1898f, false), Struct_1(vec3<f32>(-233f, 839f, -425f), 73521u, 1000f, true), Struct_1(vec3<f32>(-1524f, -536f, -1018f), 1u, 390f, false), Struct_1(vec3<f32>(2233f, 1970f, 647f), 63880u, 772f, true), Struct_1(vec3<f32>(-141f, -642f, 1027f), 52135u, -475f, true), Struct_1(vec3<f32>(-570f, -1622f, -564f), 4294967295u, 504f, false), Struct_1(vec3<f32>(-1098f, 754f, 707f), 13772u, -223f, true), Struct_1(vec3<f32>(149f, -1000f, -1791f), 22535u, 1304f, true), Struct_1(vec3<f32>(433f, 481f, 786f), 91484u, 1541f, true), Struct_1(vec3<f32>(453f, 786f, 1940f), 4294967295u, -1000f, false), Struct_1(vec3<f32>(-337f, 1607f, -1054f), 17759u, -299f, true), Struct_1(vec3<f32>(1440f, -224f, -1000f), 52504u, 714f, false), Struct_1(vec3<f32>(633f, 393f, 963f), 36223u, 2169f, true), Struct_1(vec3<f32>(294f, 583f, 1000f), 4294967295u, 2432f, true), Struct_1(vec3<f32>(-137f, 1000f, -833f), 85202u, -653f, true), Struct_1(vec3<f32>(598f, 357f, -917f), 0u, -206f, true), Struct_1(vec3<f32>(856f, 2409f, -1227f), 1u, -251f, true), Struct_1(vec3<f32>(260f, 904f, -274f), 4294967295u, -221f, true), Struct_1(vec3<f32>(-723f, -742f, -1099f), 47915u, -1348f, true), Struct_1(vec3<f32>(-600f, -349f, 716f), 4294967295u, 277f, true), Struct_1(vec3<f32>(430f, -2026f, -1765f), 69339u, -814f, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec3<f32>(-1520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f + _wgslsmith_f_op_f32(abs(2319f)))), _wgslsmith_f_op_f32(floor(-1249f))), 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(427f, 1448f)) - _wgslsmith_f_op_f32(max(-288f, 1120f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f + _wgslsmith_f_op_f32(select(-642f, 1135f, false)))))), !all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))));
    let var_1 = ~firstLeadingBit(firstLeadingBit(~25677u)) != reverseBits(_wgslsmith_dot_vec3_u32(max(~u_input.c.zxw, vec3<u32>(0u, 2677u, u_input.a) << (vec3<u32>(global2[_wgslsmith_index_u32(1u, 28u)], arg_0.x, arg_0.x) % vec3<u32>(32u))), select(_wgslsmith_add_vec3_u32(u_input.c.yww, u_input.c.xzx), ~u_input.c.zww, false | var_0.d)));
    let var_2 = global3[_wgslsmith_index_u32(~12993u, 28u)];
    global1 = array<vec2<bool>, 28>();
    let var_3 = global3[_wgslsmith_index_u32(96606u, 28u)];
    return 0u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~max(vec4<u32>(arg_0.x, 70708u, 18929u, var_3.b), vec4<u32>(var_0.b, 25823u, 86952u, 1u)), u_input.c), u_input.c) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a + arg_1.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.c, arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1229f, arg_1.a.x, -210f))))), _wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)), false))), _wgslsmith_add_u32(func_3(u_input.e, _wgslsmith_add_vec2_i32(abs(vec2<i32>(58292i, 0i)), u_input.d)), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_sub_vec4_u32(u_input.c, reverseBits(u_input.c)))), arg_0.c, arg_1.d);
    let var_1 = vec2<f32>(355f, -1718f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.b, 48498u, arg_0.b), 23u)] - var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a)))))), 10484u, var_0.c, all(!select(select(vec3<bool>(arg_0.d, arg_1.d, var_0.d), vec3<bool>(var_0.d, false, arg_1.d), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), all(vec3<bool>(var_0.d, false, true)))));
    var var_3 = var_0;
    var var_4 = Struct_1(global0[_wgslsmith_index_u32(var_2.b, 23u)], _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(91042u, arg_1.b), _wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(global2[_wgslsmith_index_u32(413u, 28u)], var_3.b))), vec2<u32>(var_2.b >> (var_3.b % 32u), global2[_wgslsmith_index_u32(~arg_1.b, 28u)])), firstTrailingBit(vec2<u32>(0u, u_input.e.x))), 1260f, !all(!select(vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(arg_1.d, true, true), false)));
    return -18440i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    let var_0 = vec4<u32>(~55668u, ~101619u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(vec3<u32>(21354u, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]) | u_input.c.yyw), ~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 23736u, 0u))), vec3<u32>(1u, u_input.e.x, _wgslsmith_mod_u32(u_input.c.x, 1u)) ^ firstLeadingBit(u_input.c.wyw)), ~firstTrailingBit(~1u));
    return var_0.x;
}

fn func_1() -> f32 {
    global3 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f - -115f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 23u)] * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(abs(var_0)), -242f))), global2[_wgslsmith_index_u32(select(10693u, func_4(vec2<f32>(_wgslsmith_f_op_f32(select(-332f, var_0, true)), 1762f), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 60998u), 23u)], _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 23u)])), max(func_2(Struct_1(vec3<f32>(248f, var_0, 1760f), u_input.c.x, var_0, false), Struct_1(vec3<f32>(var_0, -444f, var_0), 4294967295u, 1133f, true)), -1i)), !(true && all(vec4<bool>(true, true, false, true)))), 28u)], var_0, false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.yy);
    global3 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(var_1.c)), !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) != _wgslsmith_f_op_f32(round(var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global2[_wgslsmith_index_u32(u_input.a, 28u)]);
    global0 = array<vec3<f32>, 23>();
    var var_1 = ~u_input.e;
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(var_1.x, 28u)] & countOneBits(1u)), 23u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(-978f))) + vec3<f32>(_wgslsmith_div_f32(-318f, 337f), 879f, 1000f))), abs(24270u), _wgslsmith_f_op_f32(select(-302f, _wgslsmith_f_op_f32(step(576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f + -1033f) * _wgslsmith_f_op_f32(select(-771f, 1000f, true))))), (true && all(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72103u, 28u)], 28u)])) | (_wgslsmith_div_u32(var_0, u_input.e.x) <= 0u))), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, abs(4294967295u)), var_0) <= ~(~(~9959u)));
    var_2 = Struct_1(vec3<f32>(1308f, _wgslsmith_f_op_f32(var_2.a.x - 260f), var_2.a.x), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], _wgslsmith_f_op_f32(383f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_2.c) + var_2.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_2.c))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_div_f32(863f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - var_2.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-266f, -1275f, var_2.c), vec3<f32>(-1738f, -578f, var_2.c), vec3<bool>(var_2.d, true, true))))))), 2417u, vec4<u32>(_wgslsmith_mult_u32(u_input.c.x >> (func_3(vec2<u32>(var_2.b, 34365u), u_input.d) % 32u), 0u), _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.wwz, u_input.c.yxy), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.e.x, var_2.b, u_input.e.x), u_input.c), var_1.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, var_1.x, 39314u)), select(vec3<u32>(var_2.b, 0u, 31006u), _wgslsmith_add_vec3_u32(vec3<u32>(10930u, 10956u, 30338u), vec3<u32>(21329u, var_0, var_0)), vec3<bool>(true, var_2.d, var_2.d))), var_0 >> (17499u % 32u)));
}

