struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(56191i, 1i, i32(-2147483648), 32917i), Struct_1(280f, i32(-2147483648), -20761i, vec2<bool>(true, true)), Struct_1(1721f, -7275i, 43992i, vec2<bool>(true, false)), vec3<u32>(0u, 0u, 0u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_mod_i32(2147483647i, 0i << (_wgslsmith_mult_u32(arg_0.d.x, 45429u) % 32u));
    global0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1234f, 1830f, arg_0.c.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, -2321f, global0.c.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1145f, arg_0.c.a, 230f), vec3<f32>(-410f, 1220f, global0.c.a)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(282f)), 359f, _wgslsmith_f_op_f32(step(-599f, _wgslsmith_f_op_f32(-746f * 214f))))));
    var var_2 = true;
    var_0 = global0.b.b;
    return global0.b.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1615f * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a + arg_0.x)));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.b.a, 2109f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1063f, arg_0.x)) + arg_0.x), -1414f, false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, -407f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 2148f)), true)) * arg_0.zy))));
    global0 = Struct_2(-countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.b, global0.c.c, -1i, -47293i), global0.a), -vec4<i32>(20256i, 0i, global0.b.b, global0.b.c))), global0.b, global0.b, vec3<u32>(u_input.b.x, ~u_input.b.x, ~12006u));
    global0 = Struct_2(firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(global0.a.x, global0.b.b, global0.c.b, global0.c.c)), global0.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.a, 1319f))) - -856f), abs(abs(countOneBits(-2147483647i))), _wgslsmith_mod_i32(-global0.a.x, _wgslsmith_mult_i32(global0.a.x, i32(-1i) * -23195i)), vec2<bool>((global0.c.d.x || global0.c.d.x) && !global0.c.d.x, true)), Struct_1(_wgslsmith_f_op_f32(-var_0.x), i32(-1i) * -2147483647i, -(~(-global0.b.b)), select(!select(vec2<bool>(true, false), global0.c.d, vec2<bool>(true, false)), !select(vec2<bool>(global0.b.d.x, false), vec2<bool>(false, false), vec2<bool>(global0.c.d.x, global0.c.d.x)), !(global0.b.d.x & false))), ~global0.d);
    let var_1 = global0.c;
    return ~firstLeadingBit(vec4<u32>(~global0.d.x, 46064u, _wgslsmith_add_u32(arg_1, 0u), select(0u, 1u, true)));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-global0.b.c, ~2737i, -func_2(Struct_2(global0.a, Struct_1(159f, -34179i, 2147483647i, global0.b.d), global0.b, vec3<u32>(38800u, 10122u, 1u)), vec4<bool>(false, false, true, false), 10245u), -max(-45571i, 12994i)), ~global0.a), global0.b, global0.c, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, global0.d.x), vec3<u32>(u_input.b.x, 4294967295u, 1u)) | global0.d.x, ~(global0.d.x << (~global0.d.x % 32u)), 3648u));
    var var_0 = select(vec4<u32>(0u, global0.d.x, ~u_input.a.x ^ reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(1u, global0.d.x, global0.d.x, global0.d.x))), 4294967295u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(func_3(vec3<f32>(-994f, -846f, global0.c.a), 1u) | (vec4<u32>(69174u, global0.d.x, u_input.b.x, 17443u) & vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.a.x)), vec4<u32>(_wgslsmith_add_u32(global0.d.x, 1u), ~1u, func_3(vec3<f32>(479f, global0.c.a, -215f), 26511u).x, 4294967295u)), ~(~(~vec4<u32>(57253u, global0.d.x, u_input.a.x, 33626u)))), select(!select(select(vec4<bool>(true, true, global0.b.d.x, global0.b.d.x), vec4<bool>(false, true, global0.c.d.x, global0.c.d.x), vec4<bool>(global0.b.d.x, global0.b.d.x, false, false)), vec4<bool>(true, true, global0.c.d.x, true), all(vec4<bool>(false, global0.b.d.x, global0.c.d.x, false))), select(vec4<bool>(false, global0.d.x >= 137551u, all(global0.c.d), true), select(vec4<bool>(global0.b.d.x, global0.b.d.x, true, global0.c.d.x), select(vec4<bool>(global0.b.d.x, true, true, global0.b.d.x), vec4<bool>(true, true, global0.c.d.x, false), false), !vec4<bool>(false, true, global0.c.d.x, false)), !any(vec2<bool>(global0.c.d.x, global0.c.d.x))), !(!(!vec4<bool>(global0.b.d.x, false, false, global0.c.d.x)))));
    var var_1 = global0.c.d.x;
    var var_2 = global0.c.c;
    global0 = Struct_2(vec4<i32>(global0.c.b, _wgslsmith_dot_vec3_i32(global0.a.yxz, vec3<i32>(_wgslsmith_sub_i32(global0.b.c, global0.b.b), 2147483647i, countOneBits(-46044i))), -2147483647i, global0.c.c | func_2(Struct_2(global0.a, Struct_1(-1204f, global0.a.x, 2147483647i, vec2<bool>(false, false)), global0.b, u_input.b), vec4<bool>(false, false, global0.c.d.x, global0.c.d.x), 0u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a - global0.c.a), -1083f)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, global0.a.x), global0.a.xz), firstTrailingBit(global0.c.b), vec2<bool>(global0.b.d.x && false, global0.c.a == -584f)), global0.b, _wgslsmith_div_vec3_u32(firstTrailingBit(~(u_input.b ^ u_input.b)), countOneBits(countOneBits(max(var_0.xxz, vec3<u32>(u_input.a.x, u_input.a.x, 4702u))))));
    return Struct_2(global0.a, Struct_1(-2341f, 1i, global0.c.c, select(vec2<bool>(global0.b.d.x, global0.c.d.x), global0.c.d, !select(global0.c.d, vec2<bool>(true, false), vec2<bool>(global0.c.d.x, global0.c.d.x)))), global0.b, vec3<u32>(global0.d.x, _wgslsmith_clamp_u32(var_0.x >> (7348u % 32u), max(var_0.x, 4294967295u), _wgslsmith_div_u32(23346u, var_0.x)), var_0.x | firstTrailingBit(var_0.x)) & ~vec3<u32>(~34672u, _wgslsmith_add_u32(0u, 1u), max(u_input.b.x, var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(-arg_1.a, global0.c, arg_0, select(firstTrailingBit(vec3<u32>(arg_1.d.x, 26211u, 92644u)) | global0.d, global0.d, select(select(vec3<bool>(false, false, arg_0.d.x), vec3<bool>(global0.b.d.x, true, arg_2.d.x), vec3<bool>(global0.b.d.x, true, arg_0.d.x)), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_2.d.x, global0.b.d.x), false), !global0.b.d.x)) | arg_1.d);
    let var_0 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.d.x, 1u, global0.d.x, global0.d.x) ^ min(vec4<u32>(1u, arg_1.d.x, 1635u, u_input.b.x), vec4<u32>(0u, 1u, u_input.a.x, arg_1.d.x))) & ~(~vec4<u32>(52247u, arg_1.d.x, u_input.a.x, arg_1.d.x) | ~vec4<u32>(4294967295u, 1u, 7031u, u_input.b.x)), vec4<u32>(max(reverseBits(1u), u_input.a.x), firstLeadingBit(firstTrailingBit(abs(32131u))), 96020u, u_input.a.x ^ ~global0.d.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -947f, -1634f, -229f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a, 622f, arg_2.a, arg_3.x), vec4<f32>(arg_0.a, arg_0.a, -734f, 801f), vec4<bool>(arg_1.b.d.x, arg_0.d.x, arg_2.d.x, true))), global0.b.b != -2147483647i))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.a, 609f, -705f, 2563f), vec4<f32>(-1905f, 1480f, 1296f, -1594f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(161f, -426f, -426f, 650f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(global0.c.a * arg_1.c.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, -156f, global0.b.a, 1200f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, global0.c.a, global0.b.a, arg_1.b.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1172f, -284f, 2200f, arg_1.b.a) * vec4<f32>(global0.b.a, 828f, -332f, arg_1.b.a)))))));
    global0 = Struct_2(~vec4<i32>(-1i, arg_0.b, abs(-arg_0.b), -func_1().b.c), func_1().c, func_1().b, firstLeadingBit(select(vec3<u32>(arg_1.d.x, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x), ~var_0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, 4294967295u, 1u, u_input.a.x), vec4<u32>(4294967295u, arg_1.d.x, arg_1.d.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, global0.d.x), vec3<u32>(66281u, 0u, global0.d.x)), global0.d.x | 10446u), vec3<bool>(arg_1.c.d.x, all(vec3<bool>(arg_0.d.x, arg_1.c.d.x, global0.b.d.x)), arg_2.d.x))));
    global0 = arg_1;
    return Struct_2(func_1().a, arg_1.c, Struct_1(arg_1.b.a, -arg_2.b, 1i, !vec2<bool>(any(vec4<bool>(global0.b.d.x, global0.c.d.x, arg_1.c.d.x, true)), !arg_0.d.x)), _wgslsmith_sub_vec3_u32(~((arg_1.d ^ vec3<u32>(u_input.a.x, arg_1.d.x, arg_1.d.x)) ^ _wgslsmith_clamp_vec3_u32(arg_1.d, var_0.ywy, arg_1.d)), _wgslsmith_mult_vec3_u32(global0.d, ~_wgslsmith_add_vec3_u32(global0.d, global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(-1300f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1023f + global0.b.a)))), -global0.c.c << (abs(0u) % 32u), -2147483647i, !select(vec2<bool>(true, false), !global0.c.d, select(vec2<bool>(global0.b.d.x, var_0.d.x), global0.b.d, global0.b.d))), func_1(), Struct_1(-1000f, _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-71072i), 1070i), ~2147483647i), max(44336i, _wgslsmith_add_i32(abs(2147483647i), ~19818i)), var_0.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, 1612f, -1007f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, 391f, global0.c.a), vec3<f32>(var_0.a, global0.b.a, -1186f), vec3<bool>(true, var_0.d.x, global0.b.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, -815f, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(794f, global0.b.a, -153f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(global0.b.a)), func_1().b.a))));
    let var_1 = global0.c.d;
    let var_2 = global0.b;
    let var_3 = Struct_2(global0.a, func_1().c, func_4(func_1().c, Struct_2(vec4<i32>(-global0.c.c, var_0.c, ~var_0.c, var_2.b), func_1().c, global0.c, ~vec3<u32>(u_input.b.x, global0.d.x, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(ceil(global0.c.a)), var_0.c, -34011i << (_wgslsmith_add_u32(12663u, global0.d.x) % 32u), !var_2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a, 301f, -582f) * vec3<f32>(-905f, 1123f, 1334f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, 388f, 1394f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(254f, var_0.a, 564f), vec3<f32>(823f, 796f, var_0.a))))))).c, global0.d);
    var var_4 = abs(~(~(~var_3.d.x))) ^ 1u;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~global0.a.wwz), select(~(~(-44006i)), -2147483647i, func_1().c.d.x), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, var_3.d.x), 1u) ^ 1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, ~0u), ~(~11315u), (u_input.a.x & 95407u) | (global0.d.x | 3223u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, 36216u, 4294967295u, global0.d.x) << (vec4<u32>(var_3.d.x, 1u, u_input.b.x, 1u) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, u_input.a.x, global0.d.x, 12055u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 56847u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, var_3.d.x, 4294967295u, u_input.a.x)), vec4<bool>(var_1.x, true, true, true)))));
}

