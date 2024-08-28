struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, 2i, 23423i, 1i, 11579i, 9258i, -29693i, -1i, 1i, 1i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c;
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(16976i, 23928i, arg_1.e, global0[_wgslsmith_index_u32(8625u, 11u)]), vec4<i32>(arg_1.e, u_input.a, u_input.b.x, global0[_wgslsmith_index_u32(0u, 11u)]), false), countOneBits((vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 10459i, u_input.a, 2147483647i) >> (arg_0 % vec4<u32>(32u))) | ~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 24657i, u_input.b.x))), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-22213i, -22196i, 6478i, arg_1.a.a), vec4<i32>(18893i, u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 11u)], arg_1.a.a))));
    return arg_1.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    var var_0 = (43808u << ((_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), ~u_input.d.x) >> (u_input.c.x % 32u)) % 32u)) >= 4294967295u;
    var var_1 = u_input.a;
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_2 = false;
    return -1020f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = func_1(~max(vec4<u32>(u_input.d.x, u_input.d.x >> (4294967295u % 32u), ~u_input.d.x, 0u), ~vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, u_input.c.x)), Struct_2(func_1(vec4<u32>(4294967295u, u_input.d.x, reverseBits(u_input.c.x), 4294967295u), Struct_2(func_1(vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.c.x), Struct_2(Struct_1(1i, arg_1.zyz, arg_1.x), u_input.c.x, -1926f, vec4<f32>(1337f, -122f, 396f, arg_1.x), u_input.a)), ~46116u, _wgslsmith_f_op_f32(func_3(393f, Struct_1(u_input.b.x, vec3<f32>(272f, -408f, -798f), 1761f), vec3<f32>(-1139f, -620f, var_0.c), false)), arg_1, 1i)), _wgslsmith_mult_u32(u_input.d.x, 38503u), _wgslsmith_f_op_f32(ceil(1700f)), arg_1, 1i));
    let var_2 = u_input.c.zz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * -187f));
    global0 = array<i32, 11>();
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = func_1(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(5286u, arg_0.b, 54696u, arg_0.b)), max(firstLeadingBit(~u_input.d), _wgslsmith_add_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), ~u_input.d))), Struct_2(func_1(vec4<u32>(~u_input.c.x, 4294967295u, ~arg_0.b, u_input.d.x), Struct_2(Struct_1(-5615i, arg_1.b, 1240f), _wgslsmith_div_u32(62386u, 24074u), _wgslsmith_f_op_f32(arg_0.a.b.x - arg_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_1.c, arg_1.b.x, 1246f) + arg_0.d), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53709u, u_input.d.x), u_input.d.xz), 11u)])), u_input.c.x, _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_0.a.c, 126f, 953f) * _wgslsmith_f_op_vec4_f32(arg_0.d - arg_0.d)) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.x)), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(196f - arg_2.b.x))), -23093i));
    var var_1 = !select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true != (arg_1.a != 24629i)), true);
    var var_2 = func_1(~u_input.d, arg_0);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    let var_0 = ~_wgslsmith_mod_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-1i), -3761i), vec2<i32>(~u_input.b.x, firstTrailingBit(global0[_wgslsmith_index_u32(76222u, 11u)]))));
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(func_2(func_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 1u), Struct_2(Struct_1(-1i, vec3<f32>(961f, -454f, -582f), -1253f), 99212u, 1150f, vec4<f32>(-818f, -1000f, 307f, -648f), -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-276f, -408f, 195f, -908f))))), 4294967295u, -893f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, -1624f, -1306f, -926f)) - vec4<f32>(-588f, 743f, -220f, 1829f)) + vec4<f32>(_wgslsmith_f_op_f32(-286f * 891f), _wgslsmith_f_op_f32(672f - -302f), -676f, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_mult_i32(u_input.b.x, ~abs(var_0.x))), Struct_1(u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1278f, 537f, -1307f) * vec3<f32>(1423f, 131f, -1157f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(704f, -165f, 437f)))), 1363f), Struct_1(((u_input.b.x | 2147483647i) & -9756i) ^ ~_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -1000f, -164f)), _wgslsmith_f_op_f32(abs(-863f)))));
    var var_2 = Struct_2(func_2(func_1(_wgslsmith_add_vec4_u32(countOneBits(u_input.d), u_input.d), Struct_2(func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], vec3<f32>(var_1, 623f, var_1), var_1), vec4<f32>(var_1, 1410f, -1603f, var_1)), select(u_input.d.x, 4294967295u, true), var_1, vec4<f32>(-1820f, var_1, var_1, 1390f), i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, -1952f, -531f, var_1)) - vec4<f32>(var_1, -1000f, var_1, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, 1000f, -1072f, 955f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, -232f, var_1, var_1)))))), 1070u, -2581f, vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(u_input.b.x, vec3<f32>(-1170f, var_1, var_1), var_1), countOneBits(u_input.c.x), var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 175f, 2124f)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(0u, 11u)], -2147483647i, u_input.a), vec4<i32>(-1i, 2147483647i, var_0.x, -44219i))), func_2(func_1(u_input.d, Struct_2(Struct_1(var_0.x, vec3<f32>(var_1, 751f, var_1), var_1), 4294967295u, var_1, vec4<f32>(var_1, var_1, var_1, -681f), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1))), Struct_1(-4263i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -391f, -1972f)), _wgslsmith_f_op_f32(var_1 * var_1)))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(var_1 - var_1), true)), _wgslsmith_f_op_f32(-var_1), true)), var_1), func_1(vec4<u32>(1u, 0u, u_input.d.x, u_input.d.x), Struct_2(Struct_1(-42712i & global0[_wgslsmith_index_u32(u_input.c.x, 11u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1049f, var_1, var_1))), _wgslsmith_f_op_f32(trunc(var_1))), ~11174u, -1813f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1559f, var_1)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1000f, var_1, var_1), vec4<f32>(var_1, 860f, var_1, 221f), true)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], var_0.x, -5317i, 18798i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<i32>(-2978i, 0i, var_0.x, 0i))))).a);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(~22259i, 0i, global0[_wgslsmith_index_u32(var_2.b, 11u)], _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-1i), -25406i >> (var_2.b % 32u), _wgslsmith_div_i32(-1i, -14420i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.e, 0i, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<i32>(1i, u_input.a, var_2.e)), -vec3<i32>(0i, 0i, 12897i)))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a.a, -global0[_wgslsmith_index_u32(var_2.b, 11u)], -1i & global0[_wgslsmith_index_u32(var_2.b, 11u)], -1i & u_input.b.x), vec4<i32>(max(10880i, 17929i), 13813i << (u_input.c.x % 32u), _wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(1u, 11u)]), -9535i)), firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(40312i, -60989i, -7614i, var_2.a.a), vec4<i32>(-3685i, 0i, -21036i, -8513i)))));
    var_3 = vec4<i32>(firstTrailingBit(var_2.e), ~(-(_wgslsmith_div_i32(2260i, var_2.a.a) >> ((3812u >> (0u % 32u)) % 32u))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.e, i32(-1i) * -26451i), (var_0 | u_input.b) << (~u_input.c.zy % vec2<u32>(32u)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), select(vec2<i32>(min(-11467i, var_3.x), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_2.b, 11u)], 33010i)), select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], var_3.x), var_3.yy, vec2<bool>(true, true)), false)), ~(-1i));
    var var_4 = var_2.d;
    var_2 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(select(1413f, var_1, false)), var_1) * _wgslsmith_f_op_vec3_f32(var_4.yzw * _wgslsmith_f_op_vec3_f32(exp2(var_4.yww)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.a.b.x)))))), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(505f)))) + var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1337f, 536f, var_1)))), select(~u_input.b.x, abs(abs(-2147483647i)), true));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<f32>(_wgslsmith_f_op_f32(max(var_4.x, var_2.d.x)), var_4.x, _wgslsmith_div_f32(_wgslsmith_div_f32(1385f, var_1), var_5.b.x)), -var_0.x);
}

