struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    let var_1 = Struct_2(-713f, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, ~77883u, ~arg_0.b.a.x, ~1u), vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.x, 0u, arg_1.a.x), u_input.a, ~arg_0.b.a.x, 37206u)), arg_1.b), arg_0.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(sign(1383f)), -440f)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(393f * 244f))), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(109f)))), arg_1, var_1.c >> (firstTrailingBit(4294967295u) % 32u), arg_1.b.wwx);
    let var_3 = arg_2.xx;
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_2.b.b.ywx);
    return any(arg_2.yzz);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(-823f, Struct_1(vec4<u32>(~4294967295u, min(~0u, u_input.a >> (u_input.a % 32u)), _wgslsmith_add_u32(reverseBits(41656u), u_input.b.x), ~_wgslsmith_mult_u32(982u, u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1776f))), 1f)), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1430f, 792f, 840f))) + vec3<f32>(-1417f, _wgslsmith_f_op_f32(-178f + 269f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + vec3<f32>(1122f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(396f, 610f) + -448f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(291f + 170f))))));
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_div_f32(564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.d.x)))))), var_0.b, select(_wgslsmith_add_u32(min(~var_0.c, 2178u), abs(4294967295u)), ~_wgslsmith_div_u32(~u_input.a, u_input.a), func_3(var_0, Struct_1(var_0.b.a, vec4<f32>(var_0.b.b.x, var_0.a, var_0.a, var_0.d.x)), !select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), vec4<bool>(false, var_1, var_1, false)))), _wgslsmith_f_op_vec3_f32(-var_0.d));
    var var_3 = -4865i;
    var_2 = Struct_2(732f, var_2.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(var_0.b.a, vec4<u32>(u_input.a, u_input.a, var_2.b.a.x, 4294967295u)) | countOneBits(u_input.a), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(76565u, var_2.b.a.x, _wgslsmith_add_u32(u_input.b.x, 9530u)), ~var_2.b.a.x ^ countOneBits(4294967295u))), vec3<f32>(833f, var_2.d.x, _wgslsmith_f_op_f32(-var_0.b.b.x)));
    return var_0.b;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(362f, arg_0, _wgslsmith_mult_u32(56981u, u_input.b.x) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(89536u, 1u), arg_0.a.xw), vec2<u32>(4294967295u, 4294967295u) & vec2<u32>(u_input.a, 17499u)), u_input.b.xx), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)) - arg_0.b.x)), -163f));
    var_0 = Struct_2(_wgslsmith_div_f32(1195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -945f)))), Struct_1(vec4<u32>(u_input.a, 33187u, 1u, 62613u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.b, vec4<f32>(-792f, 918f, -940f, -640f))), var_0.b.b)))), u_input.a ^ max(12492u, 33822u), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1990f))))), var_0.d.x, _wgslsmith_f_op_f32(abs(623f))));
    let var_1 = 60836i;
    let var_2 = Struct_2(-1000f, func_2(), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(50498u >> (arg_0.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.a.x), u_input.b.yy)), ~(~arg_0.a.x), 4294967295u, ~(var_0.b.a.x & arg_0.a.x)), abs(vec4<u32>(1u, var_0.b.a.x, ~0u, ~75280u))), var_0.d);
    var_0 = var_2;
    return !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), vec3<bool>(!func_3(Struct_2(arg_0.b.x, Struct_1(vec4<u32>(0u, 0u, arg_0.a.x, arg_0.a.x), arg_0.b), u_input.b.x, var_2.b.b.xyz), var_0.b, vec4<bool>(true, false, false, false)), true, -1160f == var_0.b.b.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)));
}

fn func_1() -> vec4<f32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f - 445f)), 1136f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1081f, -916f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-130f)) + _wgslsmith_f_op_f32(-783f + -762f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f - -1678f)), _wgslsmith_f_op_f32(f32(-1f) * -958f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1407f, -982f, 115f) + vec3<f32>(-1586f, -561f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-897f, -1379f, -546f) - vec3<f32>(-113f, -1290f, 769f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, 1333f, 628f)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), func_4(func_2()), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    var_0 = true;
    let var_2 = !any(!vec2<bool>(any(vec4<bool>(true, false, false, true)), true));
    var_0 = var_2;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(539f * 1667f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - 664f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -1000f, -2317f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -808f), var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(u_input.b.x, 29551u, u_input.b.x >> (_wgslsmith_mod_u32(u_input.b.x, 0u) % 32u), u_input.a), _wgslsmith_f_op_vec4_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.b.x, 13731u) ^ 74156u);
}

