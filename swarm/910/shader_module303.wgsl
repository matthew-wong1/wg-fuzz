struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 734f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(vec4<u32>(arg_0.x, ~1u, ~_wgslsmith_div_u32(1u, 12729u), abs(u_input.a) & _wgslsmith_mod_u32(arg_1, 1u)), 5237u, -_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 1i, -17296i, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)) >> (~vec4<u32>(arg_0.x, u_input.c, 4294967295u, 33961u) % vec4<u32>(32u))), ~_wgslsmith_sub_u32(4294967295u << (abs(arg_1) % 32u), 22694u), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(73825u, _wgslsmith_mod_u32(u_input.c, arg_1), _wgslsmith_mod_u32(arg_0.x, arg_0.x)), min(~vec3<u32>(arg_0.x, arg_0.x, 7905u), arg_0)), 509f, 51494u));
    let var_1 = !(!select(select(!vec3<bool>(false, false, arg_2), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, true), vec3<bool>(false, arg_2, true)), !vec3<bool>(arg_2, false, arg_2)), !select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), false), select(!vec3<bool>(false, arg_2, false), select(vec3<bool>(arg_2, true, true), vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_2, arg_2)), false)));
    let var_2 = Struct_3(Struct_2(countOneBits(vec4<u32>(1690u, reverseBits(u_input.a), 69318u, 1u)), _wgslsmith_clamp_u32(abs(min(arg_1, u_input.a)), arg_0.x, _wgslsmith_mult_u32(~var_0.a.b, ~4294967295u)), vec4<i32>(-46789i << (0u % 32u), _wgslsmith_sub_i32(1i, var_0.a.c.x) ^ _wgslsmith_sub_i32(2147483647i, var_0.a.c.x), ~(~var_0.a.c.x), _wgslsmith_dot_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, var_0.a.c.x, var_0.a.c.x))))), 4294967295u, Struct_1(max(~(~vec3<u32>(u_input.a, 17329u, u_input.c)), vec3<u32>(abs(u_input.a), arg_1, firstLeadingBit(arg_1))), var_0.c.b, min(_wgslsmith_dot_vec2_u32(vec2<u32>(50517u, 22449u) >> (arg_0.zy % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(868u, var_0.b), var_0.a.a.wz)), arg_1)));
    global0 = _wgslsmith_f_op_f32(-1611f - _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3)))))));
    let var_3 = !select(select(select(!var_1.xz, !var_1.zx, arg_3 == 530f), vec2<bool>(true, arg_2), !(arg_0.x <= 0u)), var_1.yy, select(!var_1.xx, vec2<bool>(var_0.a.c.x >= var_0.a.c.x, !arg_2), all(vec4<bool>(arg_2, var_1.x, var_1.x, false))));
    return !(!select(select(!var_3, var_3, !var_3), vec2<bool>(any(vec3<bool>(false, arg_2, var_1.x)), var_3.x), all(vec3<bool>(false, false, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), arg_1.b, -279f, _wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 787f, arg_2.b, -883f))))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, arg_2.b)) - _wgslsmith_f_op_f32(round(arg_2.b))), arg_1.b, 1f, _wgslsmith_f_op_f32(trunc(arg_2.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f - 623f)), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, -2158f)) + _wgslsmith_f_op_f32(-arg_2.b)), 1427f), vec4<bool>(arg_0.x & true, arg_0.x, true, false))));
    let var_1 = !vec4<bool>(false, arg_0.x, arg_0.x && true, !(_wgslsmith_f_op_f32(max(arg_2.b, -1871f)) < _wgslsmith_f_op_f32(max(arg_1.b, -170f))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(112f)))))));
    return u_input.b.x;
}

fn func_2() -> i32 {
    var var_0 = firstLeadingBit(4294967295u);
    var var_1 = _wgslsmith_mult_i32(u_input.b.x, select(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -27847i, u_input.b.x)), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(20613i, -1i, -1i, -48602i))), !all(vec3<bool>(false, false, true))) ^ reverseBits(u_input.b.x));
    var_1 = ~(-func_4(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(vec3<u32>(72740u, u_input.a, 58866u), u_input.a, true, -1717f), vec2<bool>(true, true)), Struct_1(~vec3<u32>(u_input.c, u_input.a, u_input.c), _wgslsmith_f_op_f32(floor(794f)), ~u_input.a), Struct_1(vec3<u32>(u_input.c, u_input.a, 74549u) & vec3<u32>(u_input.a, u_input.a, u_input.c), -1020f, u_input.c)));
    let var_2 = 1f;
    global0 = _wgslsmith_f_op_f32(-var_2);
    return u_input.b.x;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = vec4<i32>(func_2(), abs(-arg_0.c.x), -2147483647i, u_input.b.x);
    return all(vec3<bool>(!func_3(~vec3<u32>(u_input.a, 4501u, 1u), abs(4294967295u), true, _wgslsmith_f_op_f32(floor(1037f))).x, true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1061f)), _wgslsmith_f_op_f32(-1f))));
    var var_0 = ~(~abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(72833u, u_input.c, 0u))));
    let var_1 = countOneBits(vec3<u32>(u_input.c, 1u ^ u_input.c, 50989u)) & vec3<u32>(4294967295u, ~_wgslsmith_div_u32(29555u, var_0.x) ^ _wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c, var_0.x), vec3<u32>(30343u, u_input.a, var_0.x))), ~(~(~u_input.c)));
    var_0 = vec3<u32>(firstTrailingBit(min(~u_input.c >> (1u % 32u), var_1.x)), ~(1u | u_input.c), var_1.x);
    var var_2 = select(vec4<bool>(func_1(Struct_2(~vec4<u32>(87271u, 41504u, var_1.x, 0u), 1u, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 10009i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i)))), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), !func_3(~var_1, 90191u, any(vec3<bool>(true, true, false)), _wgslsmith_div_f32(-382f, 395f)).x), vec4<bool>(!any(vec2<bool>(false, true)), true, true, !(true && func_3(vec3<u32>(var_0.x, u_input.a, 8479u), u_input.a, false, -420f).x)), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))), firstLeadingBit(u_input.b.x) == 731i), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), all(vec4<bool>(true, true, true, true)))));
    var var_3 = Struct_3(Struct_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(30201u, var_0.x, u_input.c, 0u) >> (vec4<u32>(var_0.x, var_1.x, u_input.c, 23391u) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, var_0.x, 4294967295u)), ~_wgslsmith_add_u32(7284u, var_0.x) ^ var_0.x, -vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~u_input.b.x, -u_input.b.x, u_input.b.x)), 4294967295u, Struct_1(_wgslsmith_clamp_vec3_u32(abs(var_1) & (var_1 >> (var_1 % vec3<u32>(32u))), vec3<u32>(74086u, 16219u, var_1.x) ^ vec3<u32>(var_0.x, var_1.x, 20875u), _wgslsmith_add_vec3_u32(var_1, var_1) ^ vec3<u32>(var_1.x, u_input.c, var_0.x)), 1550f, select(~4101u, ~var_0.x, true) >> (max(var_0.x, 0u) % 32u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1224f, 1414f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.b, var_3.a.c.x, var_3.a.a, _wgslsmith_f_op_f32(sign(1552f)), vec2<i32>(~(-2147483647i), 1i));
}

