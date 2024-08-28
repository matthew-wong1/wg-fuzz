struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(arg_0.d, (_wgslsmith_clamp_vec4_i32(~arg_0.d, vec4<i32>(-25168i, -2147483647i, 21049i, arg_0.d.x), _wgslsmith_clamp_vec4_i32(arg_0.d, arg_0.d, vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, u_input.a))) << (~vec4<u32>(arg_0.b.x, 1u, 1u, arg_0.c.x) % vec4<u32>(32u))) & arg_0.d);
    var_0 = -1i;
    var_0 = -u_input.a;
    var var_1 = max(~(~(vec2<u32>(91032u, 47591u) >> (arg_0.b.yy % vec2<u32>(32u)))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.c.x), vec2<u32>(1u, 1u))));
    var var_2 = arg_0;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(26140u, _wgslsmith_div_u32(var_1.x, 24078u), 1757u, arg_0.b.x), vec4<u32>(29633u, 1u, arg_0.c.x, var_1.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, arg_0.c.x), vec4<u32>(arg_0.c.x, 21900u, 0u, 4294967295u), vec4<u32>(arg_0.c.x, arg_0.c.x, 73089u, 8048u))), reverseBits(abs(vec4<u32>(1u, 4294967295u, var_1.x, 27063u) & ~vec4<u32>(22417u, var_1.x, 1u, 34355u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = 1u | max(countOneBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1, arg_1), arg_1)), abs(1u));
    var_0 = _wgslsmith_div_u32(arg_1, abs(func_3(Struct_1(false, vec3<u32>(arg_1, arg_1, 19022u), vec2<u32>(arg_1, arg_1), arg_3), false)) ^ max(firstLeadingBit(arg_1), 4294967295u)) << ((~_wgslsmith_add_u32(arg_1, firstTrailingBit(1u)) | ~countOneBits(~0u)) % 32u);
    var var_1 = Struct_1(4294967295u >= arg_1, vec3<u32>(arg_1, arg_1, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 4294967295u), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(4294967295u, arg_1)))), arg_3);
    let var_2 = Struct_1(!var_1.a, ~(_wgslsmith_add_vec3_u32(~var_1.b, vec3<u32>(var_1.b.x, var_1.b.x, arg_1) & vec3<u32>(22968u, var_1.b.x, arg_1)) ^ ~(~var_1.b)), var_1.b.zz, _wgslsmith_mod_vec4_i32(arg_3, arg_3));
    var_1 = var_2;
    return Struct_1(all(vec2<bool>(!(arg_2 == -819f), true)), var_2.b, abs(vec2<u32>(var_2.b.x, 30059u)), _wgslsmith_add_vec4_i32(~(~(~vec4<i32>(-17565i, -2147483647i, -29803i, 0i))), reverseBits(var_2.d)));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 480f, _wgslsmith_f_op_f32(f32(-1f) * -2228f), -932f)))), 1u >> (1u % 32u), 1069f, vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-49967i, 42107i, u_input.a, 34237i)), abs(vec4<i32>(u_input.a, u_input.a, 9504i, -70546i)), -vec4<i32>(-20170i, u_input.a, u_input.a, -33017i)));
    var_0 = Struct_1(~u_input.a >= func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(148f, -534f, -771f, 252f) - vec4<f32>(-659f, 1000f, 1000f, -1897f)), vec4<f32>(-518f, -122f, 1608f, -2745f)), reverseBits(_wgslsmith_mod_u32(var_0.b.x, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1463f), -vec4<i32>(34124i, 61889i, 2147483647i, u_input.a)).d.x, vec3<u32>(var_0.c.x, var_0.b.x, ~var_0.b.x) ^ ~select(_wgslsmith_div_vec3_u32(var_0.b, var_0.b), var_0.b, !vec3<bool>(var_0.a, true, var_0.a)), ~vec2<u32>(abs(0u), 1u), select(firstLeadingBit(vec4<i32>(-2302i, u_input.a, -26791i, 29278i) | countOneBits(var_0.d)), ~firstLeadingBit(vec4<i32>(158i, var_0.d.x, -10299i, u_input.a)), !(!vec4<bool>(var_0.a, false, var_0.a, false))));
    let var_1 = ~_wgslsmith_add_i32((~2147483647i ^ var_0.d.x) | u_input.a, -max(-30021i, -16338i) | _wgslsmith_dot_vec3_i32(select(var_0.d.zyz, var_0.d.wyw, vec3<bool>(var_0.a, var_0.a, var_0.a)), _wgslsmith_sub_vec3_i32(var_0.d.www, var_0.d.wwz)));
    let var_2 = 1u;
    let var_3 = select(vec4<bool>(false, select(true, all(!vec3<bool>(false, var_0.a, true)), var_0.a), true, false), select(select(vec4<bool>(true, true, var_0.a, true), select(!vec4<bool>(false, false, var_0.a, true), vec4<bool>(true, true, true, var_0.a), any(vec3<bool>(var_0.a, var_0.a, var_0.a))), vec4<bool>(var_0.a, true, false, var_0.c.x == var_2)), select(!vec4<bool>(true, var_0.a, true, false), select(vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, false), true), !var_0.a && !var_0.a), true), all(!select(!vec4<bool>(var_0.a, var_0.a, true, true), select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), false), select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(false, false, false, var_0.a), vec4<bool>(false, var_0.a, var_0.a, true)))));
    return var_3.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, all(func_1()));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f * -534f)));
    let var_2 = var_1;
    var var_3 = vec2<bool>(any(vec4<bool>(false, false, select(false, false, true), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))) && (var_0.x && true), var_0.x);
    let var_4 = ~2147483647i;
    let var_5 = Struct_1(select(true, true, select(all(vec2<bool>(var_3.x, var_0.x)), true, false)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 29954u, 1u), vec4<u32>(94700u, 1u, 0u, 1u)) | ~1u, ~_wgslsmith_clamp_u32(1u, ~1u, func_3(Struct_1(var_3.x, vec3<u32>(0u, 24186u, 69128u), vec2<u32>(14904u, 1u), vec4<i32>(var_4, u_input.a, 0i, 0i)), var_0.x)), ~(countOneBits(0u) >> (1u % 32u))), ~vec2<u32>(1u, 1u), vec4<i32>(var_4, -(~min(2147483647i, var_4)), _wgslsmith_mult_i32(-(u_input.a >> (4294967295u % 32u)), u_input.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.a, u_input.a, var_4) & ~vec4<i32>(u_input.a, var_4, -37724i, u_input.a), vec4<i32>(u_input.a >> (0u % 32u), 1i, reverseBits(var_4), -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.c.x);
}

