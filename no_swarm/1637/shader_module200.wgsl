struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    var var_0 = ~_wgslsmith_div_vec2_i32(abs(max(~vec2<i32>(31782i, -1i), countOneBits(vec2<i32>(39794i, -1i)))), min(~vec2<i32>(1i, 55882i), vec2<i32>(1i, 1i)));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~29129u), 1u), ~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(64471u, u_input.a)) >> (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))) | vec2<u32>(max(1u, u_input.a), countOneBits(~u_input.a << (~42859u % 32u)));
    var_1 = max(abs(vec2<u32>(~var_1.x, ~(4294967295u | u_input.a))), (firstLeadingBit(~vec2<u32>(21227u, 1u)) >> (vec2<u32>(firstTrailingBit(0u), 1u) % vec2<u32>(32u))) << (max(max(vec2<u32>(var_1.x, var_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, u_input.a), vec2<u32>(1u, 77714u))), (vec2<u32>(var_1.x, 46635u) & vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 69765u), vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = ~(~var_1.x);
    let var_3 = firstLeadingBit(var_0.x);
    return -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_0.x, var_3)), vec2<i32>(var_3, -1i)), var_0.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, firstTrailingBit(var_3)), var_3), var_3);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-14374i, 38495i, 73493i) | (vec3<i32>(arg_0, 0i, arg_0) ^ vec3<i32>(2147483647i, -2147483647i, 29760i)), func_3()), arg_0);
    var var_1 = 4113u;
    let var_2 = true;
    return _wgslsmith_f_op_f32(exp2(arg_1.x));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(294f, 964f) + vec2<f32>(2604f, 1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1250f - -347f)))), _wgslsmith_f_op_f32(1365f + 720f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + vec3<f32>(-2316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(756f, -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(470f)))))), -32725i, 1u, Struct_1(abs(vec4<i32>(1i, 1i, 1i, 1i)), select(vec2<i32>(_wgslsmith_sub_i32(-1i, 34571i), -13798i << (0u % 32u)), ~select(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 0i), false), true), ~vec2<i32>(~(-1i), 43968i)));
    return any(vec2<bool>(any(vec2<bool>(true, true)), (var_0.c >= firstTrailingBit(var_0.c)) && !any(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<u32>(u_input.a, ~(~(1u >> (u_input.a % 32u))), ~12762u, u_input.a ^ 30179u));
    var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-111f, _wgslsmith_f_op_f32(f32(-1f) * -881f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1537f, -549f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(983f, -555f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032f, -1018f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(289f, -1470f, 1169f), vec3<f32>(-270f, 2304f, 1218f))), vec3<f32>(-245f, -303f, -851f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2066f, 752f, -437f) * vec3<f32>(-175f, -145f, -1979f)) - vec3<f32>(-520f, -364f, 914f)))), max(1i, 1i), u_input.a, Struct_1(firstLeadingBit(-reverseBits(vec4<i32>(-1i, 61574i, 2147483647i, 1i))), -countOneBits(select(vec2<i32>(2147483647i, 13576i), vec2<i32>(41202i, -4225i), vec2<bool>(false, false))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-10895i, 39753i), abs(5002i), 2407i), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 1i), ~1i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.b.x)), 656f, false)), 731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1465f + var_1.a.x)))) + var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -471f)) + _wgslsmith_f_op_f32(-var_1.a.x)) * var_1.a.x));
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -460f, var_1.a.x) * var_2.zzy)) + vec3<f32>(var_2.x, -1000f, var_1.b.x)), var_1.e.a.x);
}

