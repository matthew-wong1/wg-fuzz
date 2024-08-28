struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(512f, -1304f), vec2<f32>(217f, -368f), vec2<f32>(-785f, 649f), vec2<f32>(1095f, -286f), vec2<f32>(884f, -488f), vec2<f32>(1152f, 901f), vec2<f32>(1137f, -850f), vec2<f32>(-304f, -1395f), vec2<f32>(1000f, -1121f), vec2<f32>(-187f, -430f), vec2<f32>(-1081f, -667f), vec2<f32>(-949f, -1292f), vec2<f32>(-358f, -1516f), vec2<f32>(296f, 1227f), vec2<f32>(-1562f, 669f), vec2<f32>(756f, -221f), vec2<f32>(259f, 1050f), vec2<f32>(-764f, -563f), vec2<f32>(673f, 452f), vec2<f32>(800f, 551f), vec2<f32>(1000f, -1041f), vec2<f32>(-2204f, 1506f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = arg_1.wx;
    return var_0.x;
}

fn func_3() -> bool {
    let var_0 = Struct_1(select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), false, false)), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)) & false, any(vec3<bool>(false, true, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))), !vec2<bool>(true || all(vec4<bool>(false, false, false, true)), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, 180f)), vec2<f32>(_wgslsmith_f_op_f32(-421f - _wgslsmith_f_op_f32(f32(-1f) * -2069f)), _wgslsmith_f_op_f32(step(-1161f, _wgslsmith_f_op_f32(1622f - 1246f))))));
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    var var_1 = ~abs(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) ^ (~vec4<u32>(12756u, 49170u, 1u, 9512u) << (select(vec4<u32>(4294967295u, 0u, 2696u, 0u), vec4<u32>(4294967295u, 35485u, 1u, 97305u), vec4<bool>(true, var_0.b.x, false, var_0.b.x)) % vec4<u32>(32u))));
    global1 = array<vec2<f32>, 22>();
    return !var_0.a.x | true;
}

fn func_1() -> vec4<bool> {
    global1 = array<vec2<f32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f));
    var var_1 = _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(abs(3092u), ~0u, ~13496u, 92183u), (vec4<u32>(1u, 14180u, 32832u, 0u) >> (firstTrailingBit(vec4<u32>(0u, 4294967295u, 2582u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(5801u, 27518u, 65827u, 2639u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~firstLeadingBit(vec4<u32>(0u, 20062u, 54698u, 21385u)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 28627u, 0u), countOneBits(57191u), 54988u, 1u), ~firstTrailingBit(vec4<u32>(1u, 4294967295u, 6537u, 0u)), vec4<u32>(_wgslsmith_div_u32(1u, 34781u << (1u % 32u)), func_2(true, ~vec4<u32>(0u, 1u, 1u, 4294967295u)), 9344u, 4294967295u)));
    global1 = array<vec2<f32>, 22>();
    let var_2 = select(vec3<bool>(!(!func_3()), true, func_3()), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true);
    return select(select(vec4<bool>(var_2.x, all(!vec4<bool>(true, var_2.x, false, var_2.x)), !var_2.x, false), !vec4<bool>(var_2.x & false, -750f >= var_0, var_2.x, var_2.x), select(vec4<bool>(var_2.x, all(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), var_2.x | var_2.x, var_2.x), !select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, false, true, var_2.x)), true)), !(!(!vec4<bool>(var_2.x, var_2.x, false, var_2.x))), !var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    var var_0 = func_1();
    global1 = array<vec2<f32>, 22>();
    var var_1 = ~46850u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, -2520f, -1310f)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(876f, -327f, -1000f), vec3<f32>(551f, 360f, -729f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 1860f, -1320f))))))));
    var_1 = 26896u;
    let var_3 = max(select(0u, 5379u, any(vec3<bool>(true, false, false)) && var_0.x), ~(min(0u, _wgslsmith_add_u32(62307u, 7502u)) ^ (_wgslsmith_clamp_u32(0u, 3872u, 0u) & abs(27131u))));
    global0 = array<vec4<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

