struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(i32(-2147483648), -51469i, -40746i, 5643i, -17228i, -1i, -22829i, -25453i, 1i, -1i, 0i, 1i, -71221i, i32(-2147483648), -19078i, i32(-2147483648), 0i, 2147483647i, 9489i, 29535i, 6608i, -42570i, 1i, 11926i, -1i, 27374i, -16960i, -30566i);

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = max(firstTrailingBit(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 101297u), 28u)]), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 2147483647i, u_input.c, 41182i), abs(vec4<i32>(1i, 0i, 0i, u_input.a)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-1549f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(407f - 103f))) - 1548f)));
    global0 = array<i32, 28>();
    var var_2 = Struct_1(true);
    var var_3 = var_1.a;
    return vec4<bool>(false, var_2.a, var_2.a, var_2.a);
}

fn func_2() -> vec2<f32> {
    var var_0 = u_input.b.x;
    var var_1 = !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), select(func_3(), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, true, false))), !vec4<bool>(false, false, any(vec3<bool>(true, false, false)), true), true);
    var_1 = func_3();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1030f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1089f, -106f)) - 936f)), 687f)));
    let var_3 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(781f, var_2.a) - _wgslsmith_f_op_f32(select(1000f, var_2.a, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(206f)), _wgslsmith_f_op_f32(f32(-1f) * -1160f)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(479f, -298f) + vec2<f32>(1051f, -1225f))))));
    let var_1 = Struct_3(!all(!func_3().yxz), Struct_2(-2325f), vec3<u32>(43880u, 8527u, 9922u));
    var var_2 = !vec2<bool>(var_1.a, global0[_wgslsmith_index_u32(~4294967295u, 28u)] >= _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_1.c.x, 28u)] & -53521i, -2147483647i, _wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)])));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), var_1.b.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a - 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1341f + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a) - _wgslsmith_f_op_f32(var_0.x + -1118f)), false))), vec3<f32>(var_1.b.a, -265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a - _wgslsmith_f_op_f32(max(-2321f, var_1.b.a)))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a + 1298f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    global1 = ~(~reverseBits(-2147483647i));
    var var_0 = true && all(select(vec3<bool>(true, true, true), vec3<bool>(select(false, true, true), 10557u > u_input.b.x, any(vec2<bool>(true, true))), func_3().yzy));
    var var_1 = arg_1;
    global0 = array<i32, 28>();
    global1 = u_input.a | global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(47551u, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, ~u_input.b.x)), 28u)];
    return select(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) || true, false), vec3<bool>(!select(false, true, false), true, (_wgslsmith_add_i32(1i, u_input.c) ^ -1i) >= ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 112f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2440f * _wgslsmith_f_op_f32(2137f + 1102f)) * _wgslsmith_f_op_f32(func_1()))), Struct_2(-422f), max(vec4<i32>(-56182i, u_input.a, 27178i, 7022i & _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), -((vec4<i32>(u_input.a, u_input.c, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(17085u, 28u)]) ^ vec4<i32>(-2147483647i, -41923i, -16479i, 45904i)) | vec4<i32>(1i, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -1i))));
    let var_1 = select(u_input.c, u_input.a | _wgslsmith_dot_vec4_i32(vec4<i32>(select(0i, 30678i, var_0.x), -1i, -global0[_wgslsmith_index_u32(1u, 28u)], -36228i), vec4<i32>(min(-1039i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 28u)], 22900i, 18052i), vec4<i32>(u_input.a, u_input.c, global0[_wgslsmith_index_u32(19182u, 28u)], global0[_wgslsmith_index_u32(93656u, 28u)])), -u_input.a)), var_0.x);
    var var_2 = _wgslsmith_mult_vec4_u32(~abs(abs(vec4<u32>(1u, 61168u, u_input.b.x, 0u) << (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), max(~(~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 47874u) >> (vec4<u32>(u_input.b.x, 51330u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) >> (abs(reverseBits(vec4<u32>(4294967295u, 29363u, 3462u, u_input.b.x))) % vec4<u32>(32u))));
    let var_3 = true;
    global0 = array<i32, 28>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1471f - 470f) + _wgslsmith_f_op_f32(-183f * 1386f)) - _wgslsmith_f_op_f32(f32(-1f) * -1604f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1465f)) * 1280f)), 135f);
    let var_5 = !select(vec2<bool>(var_0.x, !all(var_0.zz)), vec2<bool>(!var_0.x, true), func_3().zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-470f)), -(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-21315i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a), vec4<i32>(-2147483647i, -52761i, 22950i, -21337i) | vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 0i, u_input.c))), var_4.zz, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1i, -62969i, _wgslsmith_add_i32(var_1, -12177i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 34992i, u_input.a), vec3<i32>(u_input.a, 0i, global0[_wgslsmith_index_u32(var_2.x, 28u)])), -vec3<i32>(var_1, 106i, global0[_wgslsmith_index_u32(42428u, 28u)]), _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<i32>(-26678i, global0[_wgslsmith_index_u32(var_2.x, 28u)], var_1)))), ~(vec3<i32>(var_1, u_input.a, 47720i) | ~vec3<i32>(-13659i, -24123i, u_input.c))), u_input.b.zx);
}

