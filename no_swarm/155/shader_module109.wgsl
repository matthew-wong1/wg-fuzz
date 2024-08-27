struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-52330i, -22478i), vec2<i32>(i32(-2147483648), -10363i), vec2<i32>(-3732i, 0i), vec2<i32>(1i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-20935i, -2375i), vec2<i32>(2147483647i, 2087i), vec2<i32>(1i, -25710i), vec2<i32>(-37699i, 2147483647i), vec2<i32>(-22811i, 7262i), vec2<i32>(-2907i, 10025i), vec2<i32>(2147483647i, 6974i), vec2<i32>(-1i, 0i), vec2<i32>(-1634i, i32(-2147483648)), vec2<i32>(-5818i, 56379i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = 22270i;
    let var_1 = Struct_1(all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), true), any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1210f, -799f, 428f, 385f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-510f, 1126f, 648f, -1035f), vec4<f32>(-119f, 585f, -1198f, 224f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-103f, 483f, -1103f, -1479f), vec4<f32>(-1000f, -626f, -282f, 318f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(235f, -2138f, -669f, 976f), vec4<f32>(-1594f, -987f, 980f, 1514f)))))) * vec4<f32>(1140f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1972f + -1486f), _wgslsmith_div_f32(186f, -430f)), -1354f, 476f)));
    var var_2 = Struct_3(var_1.b.wy, vec4<bool>(true, var_1.a, any(select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), select(vec4<bool>(var_1.a, var_1.a, false, false), vec4<bool>(var_1.a, false, var_1.a, var_1.a), false), var_1.a)), true), ~firstTrailingBit(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(true, true, true))), var_1);
    var var_3 = Struct_2(reverseBits(vec3<u32>(var_2.c.x, var_2.c.x, _wgslsmith_div_u32(var_2.c.x, 5080u))), Struct_1(all(vec2<bool>(var_2.b.x || false, any(vec2<bool>(true, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1322f, var_1.b.x, var_2.a.x)), _wgslsmith_f_op_vec4_f32(floor(var_1.b))))), 14340i < u_input.a.x);
    var var_4 = Struct_1(any(vec2<bool>(var_2.d.a, !var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(1f - var_1.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1533f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(389f - var_1.b.x))))), -311f));
    return 28576u;
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    let var_0 = vec4<u32>(~(~(~abs(1u))), ~1u, _wgslsmith_div_u32(~(~0u), _wgslsmith_mod_u32(func_3(), 20117u)), ~4294967295u);
    let var_1 = Struct_2(var_0.wzz << ((var_0.xzz | var_0.wzy) % vec3<u32>(32u)), Struct_1(!(!arg_0.a) && any(!vec2<bool>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(-arg_0.b)), !(select(select(false, false, arg_0.a), all(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), true) && false));
    return false;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = vec3<bool>(_wgslsmith_add_u32(abs(~arg_1.a.x), 15040u | arg_1.a.x) == 1u, func_2(Struct_1((arg_1.b.a || arg_0) || all(vec3<bool>(true, arg_1.c, arg_0)), _wgslsmith_f_op_vec4_f32(exp2(arg_1.b.b)))), arg_1.b.a);
    var var_1 = arg_1.b.b.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) + _wgslsmith_f_op_f32(arg_1.b.b.x - arg_1.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1849f, arg_1.b.b.x)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -414f), 425f))))));
    global0 = array<vec2<i32>, 15>();
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(423f, arg_1.b.b.x), arg_1.b.b.x, all(vec3<bool>(false, arg_0, arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_1.b.b.x, arg_1.b.b.x)), arg_1.b.b.x)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u << (~select(abs(_wgslsmith_add_u32(0u, 4294967295u)), select(_wgslsmith_add_u32(0u, 3330u), 1u, any(vec3<bool>(true, true, true))), func_1(true, Struct_2(vec3<u32>(23708u, 0u, 40339u), Struct_1(false, vec4<f32>(-1323f, -1209f, 505f, -261f)), false)) | all(vec3<bool>(false, true, true))) % 32u);
    let var_1 = Struct_2(vec3<u32>(abs(87426u), _wgslsmith_sub_u32(1u & func_3(), ~4294967295u ^ (var_0 ^ 1u)), 1u), Struct_1(!func_2(Struct_1(false, vec4<f32>(-916f, 479f, 1178f, -298f))), vec4<f32>(_wgslsmith_div_f32(-1262f, _wgslsmith_f_op_f32(-757f + 539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - -426f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -558f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(ceil(1459f))))), !any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)));
    global0 = array<vec2<i32>, 15>();
    var var_2 = 0u;
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.b.x, -1022f, var_1.b.b.x, 215f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x, var_1.b.b.x)))))))));
    var var_4 = var_1.b;
    var_4 = Struct_1(any(!(!vec4<bool>(true, true, false, var_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-218f, var_4.b.x, var_4.b.x, var_1.b.b.x)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.b.x, var_4.b.x, -894f, -177f))))));
    global0 = array<vec2<i32>, 15>();
    var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2070f * var_4.b.x) + _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_div_f32(var_1.b.b.x, _wgslsmith_f_op_f32(step(var_4.b.x, 908f)))) - var_4.b.zzz), u_input.a.x, _wgslsmith_clamp_vec4_i32(abs(max(select(u_input.b, vec4<i32>(0i, u_input.a.x, u_input.b.x, -33810i), vec4<bool>(var_1.b.a, var_1.b.a, false, var_3.a)), vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.b.x))), ~u_input.b, u_input.b | u_input.b));
}

