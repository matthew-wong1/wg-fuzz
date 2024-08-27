struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(6960u, 19043u, 67957u), vec3<u32>(25426u, 4294967295u, 13735u), vec3<u32>(21722u, 4294967295u, 14403u), vec3<u32>(1u, 24338u, 4294967295u), vec3<u32>(0u, 81155u, 27u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global0 = array<vec3<u32>, 6>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-886f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-198f * 693f), _wgslsmith_f_op_f32(-1060f * -144f)), _wgslsmith_f_op_f32(abs(-735f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-894f, -623f, 1000f) - vec3<f32>(439f, -1154f, 1437f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(730f, 174f, 166f)))))))), !(!any(vec2<bool>(true, true)) | false));
    return abs(vec4<u32>(u_input.a, ~_wgslsmith_mod_u32(select(10107u, u_input.a, false), firstLeadingBit(16511u)), u_input.a, _wgslsmith_div_u32(~(0u | u_input.a), 9503u)));
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-340f, _wgslsmith_div_f32(-1995f, 1309f))), _wgslsmith_f_op_f32(select(-383f, _wgslsmith_div_f32(-554f, -1627f), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -210f), -671f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-595f, -584f, 1370f) + vec3<f32>(372f, 948f, 1129f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-814f, 143f, -211f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1251f, -352f, -656f), _wgslsmith_div_vec3_f32(vec3<f32>(1005f, -1142f, -171f), vec3<f32>(1000f, 1000f, 342f)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-734f)) * -599f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)))));
    global0 = array<vec3<u32>, 6>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1782f, var_2.x, var_2.x))))), !select(false, false, true));
    return ~select(arg_0, vec4<u32>(1u, _wgslsmith_mult_u32(1u, reverseBits(arg_0.x)), u_input.a, _wgslsmith_add_u32(~u_input.a, var_0.x)), var_3.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0.a;
    var var_1 = true;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mod_u32(~u_input.a & min(1u, arg_1), 4294967295u), 51193u, arg_1), abs(~func_2(~vec4<u32>(9667u, u_input.a, u_input.a, 4294967295u))));
    let var_3 = (select(!arg_0.b, select(true, arg_2.b.x | arg_2.a, any(vec4<bool>(false, true, true, false))), false) && false) | (true & arg_0.b);
    var var_4 = 943f;
    return Struct_2(all(!select(select(vec4<bool>(false, arg_2.a, true, arg_2.a), vec4<bool>(var_3, var_3, arg_2.b.x, arg_2.b.x), var_3), vec4<bool>(arg_2.a, false, arg_0.b, var_3), all(arg_2.b))), arg_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0.b.zx;
    let var_1 = _wgslsmith_sub_i32(~(_wgslsmith_dot_vec3_i32(-vec3<i32>(-5746i, 26674i, -2147483647i), -vec3<i32>(-19530i, -1i, 45i)) & ~(-39858i)), -22447i);
    let var_2 = 4294967295u;
    var var_3 = vec2<i32>(-6899i, _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(-56851i, 48895i, var_1)), _wgslsmith_div_vec3_i32(-vec3<i32>(var_1, 1i, var_1), vec3<i32>(var_1, 1i, -7192i)))) >> ((func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 71113u), vec4<u32>(4294967295u, 48660u, u_input.a, var_2))).wx ^ _wgslsmith_div_vec2_u32(~abs(vec2<u32>(var_2, 4294967295u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(40161u, var_2) | vec2<u32>(var_2, 0u)))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    var var_0 = vec3<u32>(u_input.a, 1u, func_2(vec4<u32>(func_3().x, ~(~u_input.a), ~4294967295u, u_input.a)).x);
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a | _wgslsmith_add_u32(var_0.x, 49247u), ~select(0u, var_0.x, false)), ~vec3<u32>(var_0.x, var_0.x, u_input.a) ^ vec3<u32>(~var_0.x, u_input.a, ~19414u)), vec3<u32>(46829u, 1u ^ min(_wgslsmith_mult_u32(3078u, var_0.x), 0u), ~4294967295u));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-225f, -478f) - _wgslsmith_f_op_vec2_f32(-arg_2.a.zz)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 469f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_2.a.x) - arg_2.a.xz))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x - 1286f), -294f)))));
    global0 = array<vec3<u32>, 6>();
    var_1 = arg_2.a.xy;
    return StorageBuffer(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(var_0.xy, var_0.zz) & 4473u, select(u_input.a, _wgslsmith_div_u32(4294967295u, var_0.x), false | arg_1), true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 14905u, u_input.a), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(var_0.x, 57658u)), 6u)])), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    let var_1 = ~(-firstTrailingBit(~reverseBits(vec3<i32>(14483i, 0i, 44515i))));
    let x = u_input.a;
    s_output = func_5(-1i, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec3<f32>(-1873f, -2561f, 1340f), true), u_input.a, Struct_2(true, vec3<bool>(false, false, true))), vec2<bool>(false, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(675f)), _wgslsmith_f_op_f32(-2607f + 1060f))), 1f), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1069f, 1044f, var_1.x >= var_1.x)))));
}

