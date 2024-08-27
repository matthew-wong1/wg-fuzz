struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec3<bool> {
    let var_0 = 36313i;
    var var_1 = true;
    let var_2 = -16029i;
    var_1 = true;
    var_1 = true;
    return !vec3<bool>(!any(vec4<bool>(false, false, true, true)) | true, true, false);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = select((false == (~u_input.a >= arg_0.a)) && true, true, true);
    let var_1 = !var_0;
    var var_2 = arg_0.e.zyz;
    var_2 = _wgslsmith_f_op_vec3_f32(select(arg_0.e.yyx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0.e.x), 1766f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.e.wzw, arg_0.e.yyz, false)), arg_0.e.yxz)), select(vec3<bool>(arg_0.d >= arg_0.a, arg_1 < arg_1, !var_0), select(!vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, false), !vec3<bool>(var_1, var_0, false)), !var_0))), func_2()));
    var_2 = _wgslsmith_f_op_vec3_f32(arg_0.e.yww * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(arg_0.e.yyw, arg_0.e.xyz))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, _wgslsmith_f_op_f32(trunc(-448f)), _wgslsmith_f_op_f32(-arg_0.b)) + vec3<f32>(arg_0.b, -386f, _wgslsmith_f_op_f32(var_2.x * -847f)))));
    return 1u;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-562f)), arg_0, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 34067u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 651u, u_input.a), vec4<u32>(u_input.a, 0u, 51536u, u_input.a)))), _wgslsmith_add_vec2_u32(abs(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 0u), arg_1.x)), (vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, 1u)) >> (abs(vec2<u32>(3671u, u_input.a)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, 467f, 1106f, 135f))), vec4<f32>(_wgslsmith_div_f32(-811f, -849f), -688f, -200f, _wgslsmith_f_op_f32(step(-1634f, 2262f))), all(select(vec4<bool>(arg_1.x, true, true, arg_1.x), arg_1, true)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, -1867f, _wgslsmith_f_op_f32(ceil(-1063f)), _wgslsmith_f_op_f32(abs(229f))))), select(vec4<bool>(true, false, all(vec2<bool>(true, false)), false), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(false, true, all(vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x)))));
    var var_1 = var_0;
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_u32(max(vec3<u32>(26428u ^ u_input.a, ~(~0u), 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, 592u, 4294967295u), vec3<u32>(u_input.a, 1u, countOneBits(u_input.a)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(38990u, 55547u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 70556u, u_input.a))), vec3<u32>(~56098u, u_input.a, ~11699u)), vec3<u32>(~1u, _wgslsmith_mod_u32(~u_input.a, u_input.a), u_input.a));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_mult_u32(~(~u_input.a), ~(~(~var_0.x)) << (_wgslsmith_dot_vec3_u32(firstTrailingBit(abs(var_0)), vec3<u32>(47237u, ~10235u, u_input.a)) % 32u));
    var_1 = 1u >> (abs(_wgslsmith_sub_u32(func_1(Struct_1(var_0.x, 530f, 0i, 83472u, vec4<f32>(840f, -642f, 1965f, -1779f)), 1i) << (u_input.a % 32u), var_0.x)) % 32u);
    var var_2 = Struct_1(select(4294967295u, _wgslsmith_div_u32(~1u, abs(~1u)), !all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f + 1103f)), _wgslsmith_f_op_f32(f32(-1f) * -1574f))), -_wgslsmith_dot_vec3_i32(~min(vec3<i32>(43443i, 823i, 12477i), vec3<i32>(0i, 39920i, -33749i)), ~(-vec3<i32>(-2147483647i, 0i, 13408i))), func_1(Struct_1(_wgslsmith_mult_u32(1u, ~0u), _wgslsmith_f_op_f32(-778f + _wgslsmith_f_op_f32(select(986f, 1144f, false))), _wgslsmith_mod_i32(-2147483647i, 1i), 4809u, vec4<f32>(1f, 1f, 1f, 1f)), firstTrailingBit(_wgslsmith_add_i32(~(-26092i), -41929i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f + 1018f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-135f)) * -832f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, vec4<bool>(true, true, true, false)))), -1000f)));
    var var_3 = (_wgslsmith_f_op_f32(-var_2.b) > 698f) || all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 0i < var_2.c), vec4<bool>(true, true, true, true)));
    var_3 = true && any(select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), func_2(), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(31540i, var_2.c, var_2.c), vec3<i32>(var_2.c, -2147483647i, 8580i)), vec3<i32>(var_2.c, 31507i, -2147483647i), vec3<i32>(-12275i, var_2.c, -33008i) | vec3<i32>(var_2.c, var_2.c, var_2.c)), max(vec3<i32>(var_2.c, var_2.c, var_2.c), vec3<i32>(var_2.c, var_2.c, 64273i)) ^ min(vec3<i32>(var_2.c, -1i, -19433i), vec3<i32>(-1i, var_2.c, -29069i))), var_2.c, ~countOneBits(2147483647i) ^ var_2.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.e.wzw - var_2.e.xww) * var_2.e.www) * var_2.e.zzy))));
}

