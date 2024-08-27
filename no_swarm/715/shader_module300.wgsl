struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1(vec2<i32>(-19027i | (_wgslsmith_clamp_i32(-38638i, -2626i, -2147483647i) >> (~19338u % 32u)), 100322i));
    let var_1 = vec3<i32>(~reverseBits(~_wgslsmith_add_i32(1i, var_0.a.x)), 41009i & ~select(9042i, u_input.a, false), -2147483647i);
    let var_2 = vec4<u32>(~min(firstLeadingBit(reverseBits(55291u)), 1u), select(1u, firstTrailingBit(~0u), !(-8146i == var_0.a.x)), 1u, _wgslsmith_mod_u32(57267u, 11304u));
    let var_3 = Struct_1(vec2<i32>(u_input.a & -1i, firstTrailingBit(var_1.x)));
    let var_4 = any(select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, u_input.a == _wgslsmith_dot_vec3_i32(var_1, var_1), true, var_2.x > (var_2.x >> (1u % 32u))), vec4<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, false, true, true)), true, true)));
    return reverseBits(min(var_2.xw, vec2<u32>(firstLeadingBit(0u), var_2.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = ~vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 0u)), max(vec2<u32>(1u, 10109u), vec2<u32>(4294967295u, 0u))) ^ 1u);
    var var_1 = ~(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, ~1u), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 6820u), vec2<u32>(41005u, var_0.x)), max(var_0.x, 0u))) ^ vec3<u32>(_wgslsmith_mod_u32(var_0.x, 80210u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(77197u, 41480u, var_0.x)), vec3<u32>(var_0.x, 0u, 4294967295u) & vec3<u32>(var_0.x, var_0.x, 1u)), ~24857u));
    var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f - 326f)));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(12559u, var_0.x), ~(~38850u), 4294967295u);
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.xx, select(var_1.xy, vec2<u32>(1u, 4294967295u), !arg_1.xz)), reverseBits(1u)), ~var_1.xx);
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(-689f * 1000f), _wgslsmith_f_op_f32(floor(1864f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1015f, -527f) + vec3<f32>(577f, -489f, 256f)), vec3<f32>(-2990f, -1000f, 348f), func_2(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1739f, 866f, -757f)))));
    var var_1 = Struct_1(arg_1.a);
    var var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_0, arg_0 << (vec3<u32>(20424u, arg_0.x, arg_0.x) % vec3<u32>(32u)), ~vec3<u32>(62966u, arg_2.x, arg_0.x)), ~vec3<u32>(arg_2.x, arg_2.x, ~1u));
    var var_3 = !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), false);
    var var_4 = select(vec3<bool>(var_3.x, all(select(select(vec2<bool>(var_3.x, var_3.x), var_3.zx, var_3.x), var_3.zz, vec2<bool>(var_3.x, var_3.x))), var_3.x), select(select(vec3<bool>(var_3.x, var_3.x, true), select(!vec3<bool>(var_3.x, true, var_3.x), !vec3<bool>(var_3.x, true, false), select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, var_3.x, true))), !vec3<bool>(var_3.x, var_3.x, true)), !select(!vec3<bool>(var_3.x, var_3.x, true), select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(false, false, var_3.x), vec3<bool>(false, var_3.x, var_3.x)), vec3<bool>(var_3.x, true, false)), select(!select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, true, var_3.x), true), select(select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, var_3.x, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(true, true, true)))), !all(vec2<bool>(var_3.x, all(vec4<bool>(var_3.x, false, false, true)))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1922f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(func_1(vec3<u32>(9822u, 0u, 0u), Struct_1(vec2<i32>(u_input.a, -2147483647i)), vec2<u32>(0u, 1u))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(609f))), 474f);
    let var_1 = -663f;
    var var_2 = ~firstTrailingBit(~7006u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.xz))))));
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(0i, -18739i), vec2<i32>(-93262i, 36757i)), vec2<i32>(u_input.a, ~0i)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 12605i) >> (_wgslsmith_div_u32(1u, 1u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), var_1, ~(~firstLeadingBit(firstTrailingBit(-2147483647i))));
}

