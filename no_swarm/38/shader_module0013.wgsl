struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    global0 = arg_2.d;
    var var_0 = arg_1.d;
    let var_1 = ~(var_0.c & _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(var_0.c, var_0.c), arg_3.a.c), vec4<u32>(_wgslsmith_sub_u32(arg_3.a.c.x, 39386u), 52519u << (var_0.c.x % 32u), _wgslsmith_add_u32(arg_3.a.c.x, u_input.a), max(1u, arg_1.e))));
    let var_2 = var_1;
    var var_3 = abs(_wgslsmith_sub_vec3_u32(var_2.xwx, ~arg_0.a.c.zxw));
    return arg_1.d.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_4(any(vec3<bool>(arg_2.b, arg_2.b || true, true)), !all(vec3<bool>(all(vec4<bool>(false, true, arg_2.a, arg_2.a)), arg_2.b == arg_2.b, all(vec3<bool>(false, arg_2.b, arg_2.b)))), _wgslsmith_mult_vec3_i32(global0.a, max(select(global0.a, vec3<i32>(2147483647i, 0i, global0.a.x), vec3<bool>(false, arg_2.b, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, arg_1.a.x), vec3<i32>(0i, 1i, arg_2.c.x), vec3<i32>(-22353i, 25981i, arg_2.d.a.x))) & ~vec3<i32>(11874i, arg_2.c.x, u_input.d.x)), Struct_1((global0.a ^ reverseBits(u_input.d)) | ~arg_0, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_2.d.b.x) * vec2<f32>(1922f, -347f)) * vec2<f32>(arg_2.d.b.x, 1711f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-399f, arg_2.d.b.x)))))), ~vec4<u32>(arg_1.c.x, _wgslsmith_mod_u32(u_input.a, u_input.a), 5861u, u_input.b & 0u)), ~_wgslsmith_sub_u32(global0.c.x, countOneBits(global0.c.x)));
    let var_1 = arg_2.d.c.x;
    var_0 = Struct_4(false, select(true, !(var_0.b & var_0.b), _wgslsmith_add_i32(arg_2.d.a.x, var_0.d.a.x & global0.a.x) <= 0i), _wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(func_3(Struct_3(Struct_1(vec3<i32>(56662i, global0.a.x, arg_2.c.x), vec2<f32>(var_0.d.b.x, 1045f), vec4<u32>(1u, 121035u, u_input.a, 0u)), Struct_2(var_0.d, Struct_1(var_0.d.a, arg_2.d.b, vec4<u32>(arg_2.d.c.x, 11641u, 29591u, arg_2.d.c.x)), arg_1.c), var_0.d, 1629f), arg_2, Struct_4(var_0.a, var_0.a, u_input.d, Struct_1(u_input.d, arg_1.b, arg_2.d.c), 26068u), Struct_3(var_0.d, Struct_2(Struct_1(vec3<i32>(-43678i, 1i, 9260i), vec2<f32>(-1000f, -1168f), vec4<u32>(u_input.a, 0u, 0u, 75530u)), arg_2.d, vec4<u32>(0u, arg_1.c.x, arg_2.e, 0u)), arg_2.d, arg_2.d.b.x)), reverseBits(_wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x)), var_0.c.x >> (firstLeadingBit(6684u) % 32u))), var_0.d, global0.c.x);
    let var_2 = false;
    var_0 = Struct_4(var_0.b, all(select(select(!vec2<bool>(true, var_0.b), select(vec2<bool>(arg_2.a, var_0.b), vec2<bool>(false, false), vec2<bool>(var_2, true)), !arg_2.a), !select(vec2<bool>(var_2, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(false, true, var_0.b, arg_2.a)), false))), vec3<i32>(~_wgslsmith_add_i32(global0.a.x, global0.a.x), -2699i, 26549i), Struct_1(vec3<i32>(arg_0.x, u_input.d.x, _wgslsmith_div_i32(var_0.d.a.x, -arg_0.x)), _wgslsmith_f_op_vec2_f32(sign(global0.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2.d.c, var_0.d.c), _wgslsmith_sub_vec4_u32(vec4<u32>(56863u, 42668u, var_0.d.c.x, 1u), arg_1.c)) | vec4<u32>(global0.c.x, 1u, arg_1.c.x, 57208u & arg_1.c.x)), select(var_1, min(arg_2.d.c.x, arg_2.e), select(var_0.c.x, 30612i, !var_0.a) > (select(-2147483647i, -23711i, false) ^ arg_2.d.a.x)));
    return arg_1.b.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2.b;
    var var_1 = arg_2;
    var var_2 = i32(-1i) * -u_input.d.x;
    let var_3 = var_0.c ^ ~vec4<u32>(0u, 4294967295u, min(84240u, _wgslsmith_sub_u32(var_0.c.x, 4294967295u)), _wgslsmith_mod_u32(firstTrailingBit(14478u), 44081u));
    let var_4 = global0.a.x;
    return Struct_3(Struct_1(-countOneBits(var_1.a.a), vec2<f32>(452f, var_0.b.x), select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 100197u, 640u, 4294967295u), var_3), vec4<u32>(u_input.a, 11190u, 45810u, 0u), vec4<bool>(false, false, false, false)) ^ countOneBits(var_1.a.c)), arg_2, Struct_1(vec3<i32>(0i, var_0.a.x, ~u_input.c), arg_2.b.b, select(select(~vec4<u32>(var_1.b.c.x, var_3.x, 10637u, 46467u), reverseBits(var_3), select(true, false, false)), ~global0.c, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1257f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f)))));
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) - global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -1762f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1437f * global0.b.x)))), 182f), select(max(global0.a.x, global0.a.x), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.c, 2147483647i, global0.a.x), Struct_1(vec3<i32>(1i, global0.a.x, global0.a.x), global0.b, global0.c), Struct_4(true, true, u_input.d, Struct_1(vec3<i32>(57284i, u_input.c, global0.a.x), global0.b, global0.c), 4294967295u)))) != -482f), Struct_2(Struct_1(u_input.d >> ((global0.c.wzw << (global0.c.wwz % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1680f, -260f))), _wgslsmith_f_op_vec2_f32(global0.b * global0.b), true)), _wgslsmith_mult_vec4_u32(global0.c, select(global0.c, global0.c, true))), Struct_1(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(arg_0, -2147483647i, 22520i)), _wgslsmith_f_op_vec2_f32(-global0.b), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 15890u, 67745u), vec4<u32>(21698u, u_input.a, 10676u, 4294967295u)))), global0.c));
    var var_1 = Struct_3(Struct_1(reverseBits(~(-vec3<i32>(0i, var_0.b.b.a.x, 1i))), vec2<f32>(1818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x) - -599f)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(33733u, 0u, 4294967295u, arg_1) >> (var_0.b.a.c % vec4<u32>(32u)), reverseBits(vec4<u32>(25541u, u_input.b, 0u, global0.c.x))))), Struct_2(var_0.c, Struct_1(vec3<i32>(-7354i, abs(36558i), abs(u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.b.x, global0.b.x))), reverseBits(min(vec4<u32>(u_input.b, 5281u, arg_1, u_input.a), var_0.b.a.c))), ~(vec4<u32>(0u, arg_1, 1u, 4657u) | vec4<u32>(4294967295u, 0u, u_input.b, arg_1)) >> ((~vec4<u32>(arg_1, 30794u, 0u, u_input.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.c.x, var_0.a.c.x, arg_1, u_input.b), vec4<u32>(8531u, 31988u, 38316u, var_0.c.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1975f + var_0.d)) - _wgslsmith_f_op_f32(714f * _wgslsmith_f_op_f32(-var_0.b.b.b.x))) - _wgslsmith_f_op_f32(step(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_0.b.b.b.x, global0.b.x, var_0.b.b.b.x)), 0i, func_4(vec4<f32>(var_0.b.a.b.x, 2449f, 1000f, 1153f), u_input.c, var_0.b).b).c.b.x, -157f))));
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1475f, var_1.b.b.b.x, -668f, 757f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1539f, var_0.b.b.b.x, global0.b.x, -206f), vec4<f32>(var_0.c.b.x, -146f, var_0.d, global0.b.x)))))), -(~(-3999i)), var_1.b).a, var_0.b, var_1.c, _wgslsmith_f_op_f32(min(var_0.c.b.x, 1752f)));
    global0 = Struct_1(var_2.a.a, _wgslsmith_f_op_vec2_f32(var_0.c.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b.b.x, var_0.a.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, var_1.d))))), var_0.c.c);
    let var_3 = Struct_4(!(!(!select(true, false, true))), (~4294967295u >= (var_1.b.c.x | func_4(vec4<f32>(var_1.a.b.x, -1226f, -218f, global0.b.x), global0.a.x, var_0.b).a.c.x)) != select(select(true, true, any(vec2<bool>(false, false))), firstTrailingBit(var_2.a.c.x) == ~var_1.a.c.x, !select(false, false, true)), select(~var_2.c.a, vec3<i32>(var_2.b.a.a.x, u_input.c, -var_1.c.a.x) ^ -_wgslsmith_add_vec3_i32(var_0.a.a, vec3<i32>(var_0.a.a.x, arg_0, 14378i)), abs(arg_1) != var_1.b.c.x), Struct_1(-vec3<i32>(var_1.c.a.x << (361u % 32u), ~1i, -42266i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b))), ~(~vec4<u32>(89190u, var_1.b.a.c.x, 4294967295u, arg_1))), ~(~firstTrailingBit(7099u)));
    return -1083f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(max(879f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.a.x, 1u))), _wgslsmith_f_op_f32(1296f - _wgslsmith_f_op_f32(-1000f + 270f))))));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(229f, 1463f, 1207f, global0.b.x) * vec4<f32>(-1032f, -1794f, -556f, -824f)))))), reverseBits(u_input.c), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, -1000f, _wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(-576f + global0.b.x))), select(global0.a.x, -2147483647i, false), func_4(vec4<f32>(_wgslsmith_f_op_f32(max(var_0, global0.b.x)), 720f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1610f)), min(-2147483647i, func_4(vec4<f32>(944f, -1511f, -368f, 2279f), 15124i, Struct_2(Struct_1(global0.a, vec2<f32>(var_0, -494f), vec4<u32>(u_input.b, u_input.b, 38519u, 6719u)), Struct_1(u_input.d, global0.b, global0.c), global0.c)).b.b.a.x), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, var_0, 549f)), -2147483647i, func_4(vec4<f32>(-1266f, -1348f, -950f, 1608f), -20240i, Struct_2(Struct_1(global0.a, vec2<f32>(-1020f, var_0), global0.c), Struct_1(vec3<i32>(global0.a.x, -2147483647i, u_input.d.x), global0.b, global0.c), vec4<u32>(global0.c.x, 38734u, u_input.b, global0.c.x))).b).b).b).b).b.b;
    global0 = func_4(vec4<f32>(-1246f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-968f, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-849f - var_0) * _wgslsmith_f_op_f32(func_2(u_input.d, Struct_1(global0.a, vec2<f32>(1432f, var_0), global0.c), Struct_4(true, true, u_input.d, Struct_1(vec3<i32>(u_input.d.x, global0.a.x, 31328i), vec2<f32>(1133f, -1167f), vec4<u32>(u_input.a, u_input.b, 58071u, 22431u)), global0.c.x))))), -1363f), countOneBits(28808i), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1700f, var_0, 296f, global0.b.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-343f, 1513f, -1000f, 1358f)))), all(vec3<bool>(false, false, false)))), u_input.c, Struct_2(Struct_1(-u_input.d, global0.b, vec4<u32>(32262u, 1u, 0u, 1u)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, var_0)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, 0u), global0.c)), _wgslsmith_add_vec4_u32(global0.c & global0.c, vec4<u32>(u_input.b, 15454u, u_input.b, u_input.a)))).b).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, ~(abs(vec4<i32>(u_input.c, 1i, -1i, u_input.c) >> (vec4<u32>(0u, global0.c.x, 0u, global0.c.x) % vec4<u32>(32u))) ^ vec4<i32>(0i, global0.a.x, -27028i, -2147483647i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(898f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1209f)))), -1000f, var_0))), func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1216f, -504f, -1000f, -237f) + vec4<f32>(global0.b.x, var_0, 574f, -373f)))))), u_input.c, Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, 1500f, global0.b.x, global0.b.x) * vec4<f32>(150f, global0.b.x, global0.b.x, -1000f)), _wgslsmith_add_i32(global0.a.x, u_input.d.x), func_4(vec4<f32>(-1000f, var_0, 1380f, var_0), u_input.c, Struct_2(Struct_1(vec3<i32>(1i, 0i, u_input.d.x), vec2<f32>(546f, global0.b.x), vec4<u32>(30554u, 4294967295u, 1u, 31247u)), Struct_1(u_input.d, vec2<f32>(global0.b.x, -381f), vec4<u32>(65644u, global0.c.x, 4294967295u, global0.c.x)), vec4<u32>(4294967295u, 0u, 0u, 0u))).b).c, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_0, -1039f, global0.b.x)), max(1i, u_input.c), Struct_2(Struct_1(u_input.d, vec2<f32>(-661f, var_0), vec4<u32>(global0.c.x, 5067u, 48231u, 35377u)), Struct_1(vec3<i32>(-2147483647i, 2147483647i, 38951i), global0.b, global0.c), global0.c)).a, ~func_4(vec4<f32>(-446f, -1173f, var_0, var_0), -18383i, Struct_2(Struct_1(u_input.d, global0.b, vec4<u32>(u_input.a, global0.c.x, u_input.a, global0.c.x)), Struct_1(global0.a, global0.b, vec4<u32>(global0.c.x, 65859u, 49189u, 106116u)), vec4<u32>(1u, u_input.b, global0.c.x, u_input.a))).c.c)).b.b.b.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, global0.b.x, -340f, 455f)) + vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), var_0, _wgslsmith_f_op_f32(-global0.b.x), var_0)), -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.x, -2147483647i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, global0.a.x)), reverseBits(global0.a)), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_0, global0.b.x, -667f)), u_input.d.x, func_4(vec4<f32>(489f, var_0, var_0, global0.b.x), u_input.d.x, Struct_2(Struct_1(global0.a, vec2<f32>(631f, -1000f), vec4<u32>(25184u, u_input.b, u_input.a, 0u)), Struct_1(vec3<i32>(-1i, global0.a.x, -8403i), vec2<f32>(global0.b.x, var_0), global0.c), global0.c)).b).a, Struct_1(_wgslsmith_mod_vec3_i32(u_input.d, global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(109f, var_0) + vec2<f32>(var_0, -1000f)), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 55796u)), vec4<u32>(abs(0u), global0.c.x | 66885u, min(u_input.b, global0.c.x), 1u))).a.b.x);
}

