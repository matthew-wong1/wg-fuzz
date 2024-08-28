struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1041f, 838f), vec2<f32>(-284f, -1000f), vec2<f32>(373f, -1484f), vec2<f32>(-297f, 2043f), vec2<f32>(260f, 1159f), vec2<f32>(-439f, -1575f), vec2<f32>(284f, -2030f), vec2<f32>(971f, -1302f), vec2<f32>(476f, 1011f), vec2<f32>(-452f, 147f), vec2<f32>(659f, 1403f), vec2<f32>(800f, -640f), vec2<f32>(-1062f, 858f), vec2<f32>(182f, -1000f), vec2<f32>(223f, -1078f), vec2<f32>(249f, 546f), vec2<f32>(-150f, -912f), vec2<f32>(-599f, -190f), vec2<f32>(127f, 127f), vec2<f32>(-1610f, -894f), vec2<f32>(-1000f, -698f), vec2<f32>(-1480f, 542f), vec2<f32>(237f, 959f), vec2<f32>(538f, -371f), vec2<f32>(1694f, -1208f), vec2<f32>(1102f, -1011f), vec2<f32>(-1721f, 755f), vec2<f32>(1789f, 1979f), vec2<f32>(760f, 204f), vec2<f32>(1084f, -2129f), vec2<f32>(-165f, 689f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(true);
    var var_1 = vec3<u32>(select(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d >> (1u % 32u), 4294967295u, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.a, 1u, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 73684u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 33579u, u_input.a, 55867u), vec4<u32>(18224u, u_input.d, u_input.c.x, 1u)))), true & (false || var_0.a)), ~13148u, u_input.a);
    var_1 = firstTrailingBit(~firstLeadingBit(min(vec3<u32>(u_input.d, var_1.x, 0u), vec3<u32>(4294967295u, 39745u, 7293u)) | (vec3<u32>(u_input.c.x, u_input.c.x, var_1.x) & vec3<u32>(var_1.x, 4294967295u, u_input.a))));
    let var_2 = -1i;
    let var_3 = 8831u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1205f + _wgslsmith_f_op_f32(524f + _wgslsmith_div_f32(-1388f, -560f)))) <= _wgslsmith_f_op_f32(983f + _wgslsmith_f_op_f32(sign(-794f)));
}

fn func_2() -> bool {
    var var_0 = select(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) || true, true, true) && any(vec3<bool>(select(false, false, true) && true, true, true));
    global1 = array<vec2<f32>, 31>();
    let var_1 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec2<bool>(true, func_3()), vec3<bool>(all(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1496f, _wgslsmith_f_op_f32(sign(1154f)), _wgslsmith_f_op_f32(-600f * 2818f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1119f - 1036f), 1f)))), (vec4<u32>(~1u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 47968u, 0u), vec4<u32>(1u, u_input.d, 1u, u_input.c.x)), countOneBits(34156u)) & ~(~vec4<u32>(u_input.d, u_input.c.x, 64419u, 80281u))) << (~(~min(vec4<u32>(4294967295u, 1u, 4294967295u, 22911u), vec4<u32>(1u, u_input.d, u_input.d, u_input.a))) % vec4<u32>(32u)), u_input.e);
    var var_2 = Struct_1(select(!var_1.a.c, select(vec3<bool>(true, false, var_1.a.c.x && false), select(!vec3<bool>(var_1.a.b.x, var_1.a.a.x, true), var_1.a.c, true), var_1.a.c), false), var_1.a.c.zz, vec3<bool>(var_1.a.a.x, ((var_1.a.d.x > 189f) != true) || var_1.a.c.x, true), var_1.a.d);
    var var_3 = 1u;
    return !var_2.a.x;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    let var_0 = select(func_2(), any(vec2<bool>(func_3(), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_1.x, arg_1.x) * vec3<f32>(var_1.x, var_1.x, arg_1.x))))));
    var var_3 = Struct_3(false);
    global0 = array<Struct_1, 5>();
    return ~_wgslsmith_dot_vec4_i32(u_input.b, ~_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(arg_0, u_input.e, 1i, u_input.e)));
}

fn func_4(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    var var_0 = ~min(~_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, u_input.d, u_input.c.x), vec4<u32>(4294967295u, 35497u, 1u, u_input.a) ^ vec4<u32>(45860u, u_input.d, u_input.c.x, u_input.a))));
    let var_1 = vec4<bool>(func_3(), false, _wgslsmith_f_op_f32(max(-1677f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1932f, 1930f), _wgslsmith_f_op_f32(ceil(228f)), true)))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1022f))))), all(vec4<bool>(true, func_3(), false, (3919u & var_0.x) != 11159u)));
    let var_2 = Struct_2(Struct_1(select(var_1.wyw, vec3<bool>(!var_1.x, var_1.x, var_1.x && var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(false, var_1.x, var_1.x), var_1.wxx, var_1.x), true)), !(!var_1.yx), var_1.ywz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1711f, -1632f, -325f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, -2253f, -1546f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -878f, -1015f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(997f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) + _wgslsmith_f_op_f32(1250f * 1325f)), -987f, var_1.x)), true)), countOneBits(~vec4<u32>(~6911u, 66432u, ~u_input.c.x, _wgslsmith_clamp_u32(1u, var_0.x, u_input.d))), _wgslsmith_mod_i32(-1i, firstTrailingBit(abs(12405i))));
    var_0 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_2.c.x, abs(var_0.x))), vec2<u32>(~25789u, u_input.c.x));
    return Struct_1(select(!var_1.wyy, vec3<bool>(var_2.a.b.x, var_2.a.b.x, var_2.a.a.x), select(!var_2.a.c.x, any(vec2<bool>(true, true)), false)), vec2<bool>(var_2.a.a.x, true), var_2.a.a, _wgslsmith_f_op_vec3_f32(trunc(var_2.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_i32(countOneBits(func_1(2147483647i, global1[_wgslsmith_index_u32(u_input.d, 31u)])), reverseBits(~_wgslsmith_mult_i32(u_input.b.x, -24283i))));
    var var_1 = var_0.c.xz;
    let var_2 = Struct_3(select(any(var_0.b), false, select(-u_input.b.x <= firstLeadingBit(u_input.b.x), true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 18489i, u_input.b.x), u_input.b.xxy) >= u_input.e)));
    var var_3 = var_2.a;
    var var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x >> (1u % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x | 66702u, 32571u), 0u), 0u, u_input.a), abs(~vec4<u32>(~u_input.c.x, u_input.a ^ 4294967295u, u_input.c.x, firstTrailingBit(u_input.d))));
    let var_5 = false;
    let var_6 = _wgslsmith_mod_vec3_i32(u_input.b.xyw, ~((vec3<i32>(-2147483647i, u_input.e, -2147483647i) | vec3<i32>(-45091i, u_input.b.x, 42543i)) ^ min(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), u_input.b.wxz)) ^ u_input.b.wxy);
    var var_7 = var_1.x;
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, abs(var_6.x), u_input.b.x);
}

