struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 781i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> i32 {
    var var_0 = arg_1;
    global0 = select(vec2<i32>(arg_2, countOneBits(_wgslsmith_sub_i32(1i, -1i))), reverseBits(~(-vec2<i32>(16436i, global0.x) >> (~arg_3.xx % vec2<u32>(32u)))), select(select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(var_0.c, false))), !select(vec2<bool>(var_0.b, arg_0.a.c), vec2<bool>(true, var_0.a.x), vec2<bool>(arg_1.b, var_0.c))), !arg_0.a.a.xy, true || any(select(arg_0.a.a, var_0.a, var_0.c))));
    var var_1 = arg_0.b.x;
    global0 = _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(-2147483647i, _wgslsmith_add_i32(arg_2, arg_2))), min(_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-1i, -1i), arg_1.a.zy) ^ select(vec2<i32>(1i, 29187i), vec2<i32>(13744i, arg_0.c), var_0.b), abs(-vec2<i32>(-2952i, 1i))), _wgslsmith_add_vec2_i32(max(reverseBits(vec2<i32>(u_input.b, 7559i)), ~vec2<i32>(u_input.b, arg_0.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, arg_0.c), vec4<i32>(-32996i, 1i, 1i, arg_2)), abs(arg_2)))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(4020i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.b), vec2<i32>(arg_2, -2147483647i)), vec2<i32>(-37387i, arg_0.c) | vec2<i32>(arg_0.c, 0i)), firstTrailingBit(vec2<i32>(1i, 0i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, 10450i), _wgslsmith_add_i32(u_input.b, -9254i)), vec2<i32>(-19065i, _wgslsmith_sub_i32(u_input.b, global0.x)))));
    var var_2 = arg_0;
    return 58735i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), select(select(false, true, true), false, (u_input.b > global0.x) && true), true), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - 281f), _wgslsmith_f_op_f32(trunc(944f)), true)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -267f)))), true);
    let var_1 = Struct_2(var_0, vec4<f32>(arg_0.x, -1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(floor(1000f)))))), 19419i);
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, abs(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, var_1.c, 19938i)))), ~(select(firstTrailingBit(vec2<i32>(-1i, var_1.c)), _wgslsmith_clamp_vec2_i32(vec2<i32>(31635i, 24687i), vec2<i32>(-8291i, global0.x), vec2<i32>(var_1.c, 2147483647i)), false) | vec2<i32>(func_3(var_1, Struct_1(vec3<bool>(var_0.b, var_1.a.b, false), true, var_0.c), u_input.b, vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_div_i32(global0.x, global0.x))));
    var var_2 = !vec2<bool>(var_1.a.b, true);
    var var_3 = u_input.a << (u_input.a % 32u);
    return Struct_1(var_0.a, false, var_2.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, ~25831u, u_input.a, ~1u), vec4<u32>(_wgslsmith_div_u32(1u, arg_3.x), abs(4294967295u), 1u, 20387u))));
    var var_1 = firstLeadingBit(5460i);
    let var_2 = arg_2.a.x != all(arg_2.a.xx);
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(16424u, firstLeadingBit(u_input.a << (arg_3.x % 32u)), abs(~u_input.a), max(u_input.a, ~u_input.a)), countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.x, 0u, 1u, 30281u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 3176u, u_input.a, arg_3.x), vec4<u32>(1u, 4294967295u, 530u, 12624u))))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(max(_wgslsmith_mod_vec4_u32(vec4<u32>(68364u, 76238u, var_0.x, 38404u), vec4<u32>(18204u, 59622u, 5149u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(7636u, arg_3.x, 2281u, 1u), vec4<u32>(56992u, u_input.a, u_input.a, 33956u)))), ~(~vec4<u32>(var_0.x, u_input.a, arg_3.x, 15846u)), abs(vec4<u32>(var_0.x, 1u, 14659u, var_0.x)) ^ (~vec4<u32>(1u, 4294967295u, arg_3.x, 4294967295u) | firstLeadingBit(vec4<u32>(0u, 4294967295u, u_input.a, 12555u)))));
    var var_3 = !(!vec2<bool>(false, !all(arg_1.a.xz)));
    return ~(~(-17695i) | arg_0.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> vec2<i32> {
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(28949i, arg_2.c)) << (75724u % 32u), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0, arg_0, arg_2.c), vec4<i32>(u_input.b, 59636i, global0.x, 0i)), firstLeadingBit(global0.x << (u_input.a % 32u)))), ~vec2<i32>(1i, func_4(~vec2<i32>(1i, -1i), arg_2.a, func_2(vec3<f32>(arg_1.x, arg_1.x, arg_2.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 9593u)))));
    global0 = -vec2<i32>(~(-18453i) >> (~(u_input.a ^ 4294967295u) % 32u), max(_wgslsmith_add_i32(20959i, 0i), select(-1i, arg_2.c, true)) | (countOneBits(arg_0) | select(arg_2.c, arg_2.c, false)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.x)))) + arg_1.x);
    global0 = vec2<i32>(15520i, _wgslsmith_sub_i32(63824i, global0.x >> ((u_input.a >> (u_input.a % 32u)) % 32u)));
    global0 = max(select(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -5284i), max(vec2<i32>(arg_0, 7776i), vec2<i32>(arg_0, 2147483647i))), min(firstLeadingBit(vec2<i32>(u_input.b, 20938i)), vec2<i32>(global0.x, global0.x))), vec2<i32>(-33475i, global0.x), arg_2.a.a.yy), _wgslsmith_add_vec2_i32(max((vec2<i32>(u_input.b, global0.x) | vec2<i32>(40666i, u_input.b)) << (countOneBits(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), reverseBits(max(vec2<i32>(2147483647i, -29408i), vec2<i32>(-1i, u_input.b)))), abs(vec2<i32>(2147483647i, ~1050i))));
    return vec2<i32>(global0.x, _wgslsmith_add_i32(-(~31948i) ^ (-arg_0 >> (0u % 32u)), ~(-8153i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(~(~(~(~vec3<u32>(u_input.a, 70159u, u_input.a)))), abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(40518u, 1u, 1u)), min(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u)), ~vec3<u32>(31312u, 29237u, 16491u)))));
    global0 = _wgslsmith_div_vec2_i32(select(firstTrailingBit(func_1(countOneBits(0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1703f, -1198f, -855f, 602f)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, false), vec4<f32>(497f, 1407f, 846f, -1069f), 8816i), true)), ~(-select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(26817i, u_input.b), true)), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(241f, 1000f, -2009f))), vec3<f32>(702f, 661f, 697f))).b), reverseBits(vec2<i32>(23636i, ~(-2147483647i))));
    let var_1 = 1200f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * 1401f), _wgslsmith_f_op_f32(-1263f * var_1))))));
    var var_3 = Struct_2(func_2(vec3<f32>(var_2.x, var_1, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_1, -599f, -437f), vec4<f32>(var_2.x, var_1, var_2.x, var_2.x))) * vec4<f32>(var_1, -210f, 1220f, 1065f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 791f, -1239f, var_1)))))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 29395u, 78782u, 0u), vec4<u32>(59899u, var_0.x, 78601u, var_0.x)) ^ max(var_0.x, u_input.a)) ^ ~countOneBits(1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + 440f), 350f, var_3.a.c)), ~(-(~select(vec2<i32>(var_3.c, global0.x), vec2<i32>(15838i, 2147483647i), vec2<bool>(var_3.a.b, true)))), ~u_input.a);
}

