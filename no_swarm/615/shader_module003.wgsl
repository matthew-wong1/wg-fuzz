struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
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

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global0 = Struct_1(vec4<bool>(!(!global0.a.x), true, -629f <= _wgslsmith_f_op_f32(step(-2083f, -609f)), true), true);
    let var_0 = abs(reverseBits(~(10019u >> (u_input.a % 32u))));
    var var_1 = select(vec2<bool>(true, global0.a.x), vec2<bool>(global0.a.x, global0.b), !(!vec2<bool>(!global0.a.x, true)));
    let var_2 = Struct_1(global0.a, select(!(!global0.a.x) & true, any(!select(vec4<bool>(var_1.x, true, global0.b, false), vec4<bool>(true, var_1.x, false, global0.a.x), global0.a.x)), var_1.x));
    var_1 = vec2<bool>(any(vec2<bool>(var_1.x, global0.b)), !global0.b);
    return var_2.a;
}

fn func_2() -> u32 {
    global0 = Struct_1(!(!global0.a), all(vec4<bool>(!any(global0.a), !select(false, true, global0.b), global0.a.x, false)));
    let var_0 = Struct_1(select(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 23134u, u_input.a) & vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(1u, 0u, u_input.a, 4294967295u))), vec4<bool>(select(!global0.a.x, 1u >= u_input.a, global0.b && false), true || !global0.a.x, false, global0.a.x), global0.a.x), false);
    let var_1 = func_3(_wgslsmith_div_u32(4294967295u, 24778u)).wzz;
    var var_2 = _wgslsmith_mod_vec2_i32(u_input.b, u_input.b);
    var var_3 = -(~(~(firstLeadingBit(vec4<i32>(35418i, var_2.x, 1i, -2147483647i)) >> ((vec4<u32>(u_input.a, 9460u, 0u, 1u) & vec4<u32>(4294967295u, 1u, 41909u, 16629u)) % vec4<u32>(32u)))));
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = global0.a.x;
    let var_1 = ~_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a, 36693u)), ~(~vec2<u32>(68837u, u_input.a)));
    var var_2 = -42956i;
    let var_3 = ~(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 14112u, _wgslsmith_sub_u32(abs(var_1.x), 1u), ~countOneBits(0u)) ^ vec4<u32>(~func_2(), func_2(), max(~var_1.x, 0u), ~(~var_1.x)));
    var var_4 = select(1i, _wgslsmith_dot_vec3_i32(~(~arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(61127i, 1i, -19373i) >> (vec3<u32>(var_1.x, 1u, 0u) % vec3<u32>(32u)), arg_0)) & _wgslsmith_div_i32(arg_0.x | u_input.c, arg_0.x), global0.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -649f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> StorageBuffer {
    global0 = Struct_1(select(!func_3(arg_1), vec4<bool>(arg_2.b, !global0.b, global0.b, firstTrailingBit(3998u) > u_input.a), countOneBits(50425u) > (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(1u, u_input.a)) | 4487u)), !select(arg_2.b, global0.a.x, false));
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(94222u, u_input.a ^ arg_1), abs(11752u));
    var var_2 = -(abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, arg_3, 19735i), vec3<i32>(2147483647i, arg_3, 3662i))) ^ ~(vec3<i32>(arg_3, -2147483647i, -1i) | (vec3<i32>(arg_3, u_input.c, -1i) ^ vec3<i32>(arg_3, arg_3, 1i))));
    return StorageBuffer(reverseBits(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<f32>(-473f, _wgslsmith_f_op_f32(max(1650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - -1271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(130f * 594f))) * _wgslsmith_f_op_f32(-868f - _wgslsmith_div_f32(-1000f, -669f))), _wgslsmith_f_op_f32(909f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec3<i32>(-13488i, u_input.c, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -1427f))))), ~u_input.a, Struct_1(vec4<bool>(any(vec4<bool>(true, true, global0.a.x, global0.b)), true, all(global0.a.yzz), global0.a.x), true), ~(-2147483647i));
}

