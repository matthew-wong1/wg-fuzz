struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 800u;

var<private> global1: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec4<bool>(true, true, true, (-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -62524i), vec3<i32>(0i, 1i, -2147483647i)) >> (1u % 32u)) > ~1i);
    let var_1 = var_0.wxx;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-325f, -273f, 1077f)))))) + vec3<f32>(765f, _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(select(-1486f, 398f, false))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-288f, -1438f), 1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(187f + -347f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-428f)) * _wgslsmith_f_op_f32(f32(-1f) * -750f))))), abs(firstLeadingBit(max(_wgslsmith_mod_vec2_u32(vec2<u32>(20432u, 42111u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 4294967295u)))));
    let var_3 = var_2;
    var var_4 = ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.c), var_3.c), 0u);
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    var var_0 = countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2, arg_2, 56200i) | vec4<i32>(arg_2, 0i, u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_2, -49582i, arg_2), vec4<i32>(arg_2, arg_2, u_input.b, -20841i), vec4<i32>(arg_2, 2147483647i, u_input.b, 1i))), func_3(), 1i)) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, ~u_input.b, select(2147483647i, arg_2, true)));
    var var_1 = ~vec2<u32>(125270u, ~(~(~1u)));
    let var_2 = arg_1;
    var var_3 = var_1.x;
    let var_4 = var_2;
    return var_4.a;
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1450f, -628f, _wgslsmith_f_op_f32(f32(-1f) * -997f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(1000f, -881f, 1153f), -357f, vec2<u32>(940u, u_input.a)), Struct_1(vec3<f32>(172f, 1408f, -2242f), -1150f, vec2<u32>(u_input.a, u_input.a)), 29594i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2209f, 398f, 708f) - vec3<f32>(-198f, -1020f, -1088f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, _wgslsmith_f_op_f32(f32(-1f) * -2845f), _wgslsmith_f_op_f32(520f * 1490f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1390f, -201f, true))) + -138f)), vec2<u32>(~84429u, u_input.a));
    var var_1 = vec4<bool>(false, u_input.b < 12118i, !(u_input.b <= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -27579i), vec2<i32>(45566i, u_input.b)), vec2<i32>(u_input.b, 1i))), any(vec2<bool>(var_0.b > var_0.a.x, false)) | (var_0.c.x > u_input.a));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b + -439f)));
    global1 = var_1.x;
    global1 = false && (true || any(vec4<bool>(select(true, false, var_1.x), true, select(true, false, var_1.x), true)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec4<bool>(func_1(), false, false, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, false, true)));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(~78681u), ~(~4294967295u)), _wgslsmith_div_u32(u_input.a, ~_wgslsmith_mod_u32(u_input.a, 4294967295u)), ~85492u, u_input.a), vec4<u32>(max(1u, ~0u), u_input.a, 31666u, abs(u_input.a)), reverseBits(countOneBits(~(~vec4<u32>(15640u, 1u, 0u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, -1000f, -533f, -1062f) * vec4<f32>(-162f, 420f, -1807f, 1040f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2387f, 112f, -1000f, -609f))), !var_0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-192f, 944f, 2047f, -1187f))))))))), firstTrailingBit(vec4<i32>(i32(-1i) * -571i, u_input.b, u_input.b >> (33750u % 32u), -26500i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -302f), vec2<f32>(1257f, 298f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, 710f) + vec2<f32>(-938f, -396f)), vec2<f32>(-227f, 336f)), !var_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) - _wgslsmith_f_op_f32(-514f + -521f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(107f)), -762f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1280f)), _wgslsmith_div_f32(107f, 360f), _wgslsmith_f_op_f32(f32(-1f) * -233f)) + vec3<f32>(-1822f, _wgslsmith_div_f32(-793f, -106f), _wgslsmith_f_op_f32(1077f - 985f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-185f + -522f), _wgslsmith_f_op_f32(763f - 2842f), -241f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(752f, 382f, 830f)))))));
}

