struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1683f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1297f, 1000f, true)))))));
    var var_1 = Struct_1(vec2<bool>(all(vec3<bool>(false, select(false, false, false), any(vec3<bool>(false, false, true)))), any(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true))), firstTrailingBit(select(50249u, abs(abs(80155u)), var_0.x <= 1008f)), !(true == all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let var_2 = -1000f;
    var var_3 = !vec3<bool>(var_0.x > _wgslsmith_f_op_f32(-var_0.x), true, var_1.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_2, var_2)), 112f)), var_2), vec3<f32>(633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_2) - _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(-1413f + _wgslsmith_f_op_f32(trunc(var_2)))))) * vec3<f32>(_wgslsmith_div_f32(638f, var_0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1142f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, 1000f, false)), -159f))));
    return !vec2<bool>(false, var_1.c || true);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_u32(~u_input.d, ~countOneBits(8036u));
    var var_1 = -1233f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(672f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-855f * -855f))));
    let var_2 = Struct_2(Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_3(), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0 < arg_0)), 4294967295u, !any(vec3<bool>(false, false, false)) || true));
    var_1 = (4294967295u << (~_wgslsmith_mod_u32(select(u_input.d, var_2.a.b, var_2.a.a.x), var_2.a.b) % 32u)) >= ~var_2.a.b;
    var_0 = 103284u;
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(firstLeadingBit(var_2.a.b ^ arg_0), ~arg_0), _wgslsmith_mod_vec2_u32(~u_input.b.yy, u_input.b.xy));
}

fn func_1() -> vec2<i32> {
    let var_0 = min(u_input.b.xy & u_input.b.xz, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, abs(firstLeadingBit(1u))), ~func_2(_wgslsmith_div_u32(1u, u_input.d))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(712f, _wgslsmith_f_op_f32(1938f - 193f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f - -486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-757f, 1872f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(469f * 735f), _wgslsmith_f_op_f32(abs(-200f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + -2089f), _wgslsmith_f_op_f32(sign(-734f)), _wgslsmith_f_op_f32(step(-301f, -1106f)), _wgslsmith_f_op_f32(f32(-1f) * -884f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2669f, -671f, 1128f, 1531f))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1544f)));
    var var_3 = Struct_1(select(!select(func_3(), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_3(), vec2<bool>(false, true)), vec2<bool>(true, true), !all(vec3<bool>(true, true, false))), select(false, true, true)), ~(~u_input.b.x), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true)));
    var var_4 = (_wgslsmith_add_i32(reverseBits(-u_input.c.x), reverseBits(7351i)) >> (~_wgslsmith_mult_u32(abs(var_3.b), var_0.x) % 32u)) & 1i;
    return _wgslsmith_sub_vec2_i32(select(select(u_input.c.wz, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(-2147483647i, 2147483647i)), !select(vec2<bool>(var_3.a.x, var_3.c), vec2<bool>(false, true), var_3.a)), _wgslsmith_clamp_vec2_i32((vec2<i32>(u_input.c.x, 2147483647i) & vec2<i32>(u_input.c.x, -41632i)) ^ ~u_input.c.zy, max(~vec2<i32>(-8594i, 25042i), u_input.c.yy), ~u_input.c.zz << (reverseBits(vec2<u32>(u_input.d, var_0.x)) % vec2<u32>(32u))), true), vec2<i32>(select(u_input.a.x, select(_wgslsmith_add_i32(u_input.c.x, 4539i), _wgslsmith_mod_i32(27867i, u_input.a.x), u_input.c.x != u_input.c.x), var_3.a.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2129f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-723f, var_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0)) - 959f));
    let var_2 = -_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.c.x, 23744i)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(68962u << (min(~u_input.d, 0u) % 32u), u_input.b.x, u_input.d, _wgslsmith_sub_u32(0u, 0u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, -196f, -506f, 1776f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, 2262f))), vec4<f32>(var_0, _wgslsmith_f_op_f32(max(492f, var_1.x)), _wgslsmith_f_op_f32(max(var_0, var_1.x)), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-730f)), _wgslsmith_f_op_f32(ceil(-965f)), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(var_1.x - var_0))), vec4<bool>(true, true, true, true | all(vec3<bool>(true, true, false))))), reverseBits(~u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1795f, var_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0))) - vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, 321f)), _wgslsmith_f_op_f32(var_1.x + var_0))) - vec2<f32>(-1564f, _wgslsmith_f_op_f32(907f - 1594f))));
}

