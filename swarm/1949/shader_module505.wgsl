struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 72188u), vec2<u32>(62582u, 66236u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 142453u), vec2<u32>(950u, 4294967295u), vec2<u32>(0u, 37004u), vec2<u32>(0u, 66546u), vec2<u32>(1u, 52588u), vec2<u32>(81273u, 40524u), vec2<u32>(4294967295u, 11477u), vec2<u32>(0u, 26847u), vec2<u32>(0u, 0u), vec2<u32>(75018u, 0u), vec2<u32>(22196u, 4294967295u), vec2<u32>(4294967295u, 26782u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 23657u), vec2<u32>(5457u, 4294967295u), vec2<u32>(0u, 11084u), vec2<u32>(1u, 30870u), vec2<u32>(60588u, 4294967295u), vec2<u32>(19250u, 8258u), vec2<u32>(14273u, 1u), vec2<u32>(0u, 1u), vec2<u32>(88417u, 5998u), vec2<u32>(33320u, 13817u), vec2<u32>(0u, 54493u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 27037u), vec2<u32>(38563u, 30297u), vec2<u32>(4294967295u, 46584u));

var<private> global3: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(vec4<f32>(920f, 790f, -251f, -1708f)), Struct_5(vec4<f32>(609f, 901f, -1879f, -279f)), Struct_5(vec4<f32>(505f, 809f, 605f, 765f)), Struct_5(vec4<f32>(1968f, -1674f, -943f, -1030f)), Struct_5(vec4<f32>(920f, -776f, -1671f, 1296f)), Struct_5(vec4<f32>(-483f, 1046f, -1953f, -1137f)), Struct_5(vec4<f32>(442f, -141f, 1114f, 513f)), Struct_5(vec4<f32>(1056f, -1811f, -1347f, -189f)), Struct_5(vec4<f32>(1886f, 1401f, -1766f, -1350f)), Struct_5(vec4<f32>(-328f, -2321f, -486f, 1007f)), Struct_5(vec4<f32>(1916f, 319f, 1444f, 487f)), Struct_5(vec4<f32>(1348f, -1000f, 278f, -1441f)), Struct_5(vec4<f32>(1000f, 548f, -350f, -466f)), Struct_5(vec4<f32>(1000f, -684f, 1736f, -1016f)), Struct_5(vec4<f32>(-2147f, 1617f, -127f, 248f)), Struct_5(vec4<f32>(-643f, -315f, 716f, -1149f)), Struct_5(vec4<f32>(1073f, -1406f, -1481f, 1083f)), Struct_5(vec4<f32>(-1574f, -814f, 571f, 1000f)), Struct_5(vec4<f32>(-1000f, 954f, 109f, -1000f)), Struct_5(vec4<f32>(902f, 513f, 946f, -2279f)), Struct_5(vec4<f32>(-252f, 1000f, 1508f, -2504f)), Struct_5(vec4<f32>(514f, 770f, -1497f, -1000f)), Struct_5(vec4<f32>(-902f, 830f, 211f, 2390f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = vec3<u32>(2527u, 23233u, 1600u);
    global2 = array<vec2<u32>, 31>();
    global1 = array<Struct_1, 3>();
    var_0 = u_input.b.ywz;
    var var_1 = vec4<u32>(u_input.d.x, u_input.b.x, 50975u, _wgslsmith_div_u32(~(u_input.b.x & var_0.x), _wgslsmith_dot_vec2_u32(u_input.a.zy, global2[_wgslsmith_index_u32(u_input.d.x, 31u)])) & var_0.x);
    return var_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.d.yx;
    global1 = array<Struct_1, 3>();
    let var_1 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(29405u, reverseBits(4294967295u)), ~firstTrailingBit(51503u), var_0.x, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 31u)], vec2<u32>(4294967295u, u_input.d.x)))), firstTrailingBit(u_input.e.ywz), Struct_1(u_input.a.zyw, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, var_0.x, var_0.x), vec4<u32>(4294967295u, 7079u, var_0.x, u_input.a.x)), func_2(1000f)), 31u)]));
    global1 = array<Struct_1, 3>();
    var_0 = firstTrailingBit(~_wgslsmith_add_vec2_u32(var_1.c.b, vec2<u32>(var_1.c.a.x, u_input.d.x))) | ~(~select(~vec2<u32>(var_0.x, 23184u), global2[_wgslsmith_index_u32(~var_0.x, 31u)], false));
    return Struct_1(vec3<u32>(max(firstTrailingBit(u_input.c), _wgslsmith_mod_u32(10332u, var_0.x) << (~var_0.x % 32u)), _wgslsmith_sub_u32(9875u, select(124469u, var_1.c.b.x, false) | 35287u), 4294967295u), vec2<u32>(var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_1.a, var_1.a), u_input.b)));
}

fn func_3(arg_0: bool) -> Struct_1 {
    global0 = ~128466u;
    var var_0 = Struct_4(firstTrailingBit(_wgslsmith_mod_vec4_u32(~u_input.a ^ abs(vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.d.x)), u_input.b)), vec3<i32>(-33023i, u_input.e.x, ~(-43518i & u_input.e.x)), Struct_1(u_input.b.yyy, u_input.d.xx));
    global0 = 4294967295u << (firstTrailingBit(~_wgslsmith_div_u32(min(var_0.c.a.x, u_input.c), ~0u)) % 32u);
    global0 = _wgslsmith_dot_vec3_u32(var_0.c.a, _wgslsmith_div_vec3_u32(select(~(var_0.c.a & vec3<u32>(4294967295u, u_input.a.x, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, 0u, var_0.a.x)), true), max(var_0.c.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.b.x), vec3<u32>(67005u, var_0.c.a.x, 10431u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.a.x), u_input.d))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1499f)) - 1176f)), true)), _wgslsmith_f_op_f32(abs(365f)), -249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2220f, 500f))) * -148f)));
    return var_0.c;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = 53306i;
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1077f)) * -1967f) - _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1117f, _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 974f) + _wgslsmith_f_op_f32(min(arg_0.b, arg_0.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.b)))), arg_0.b)));
    global0 = u_input.a.x;
    var_0 = -2147483647i;
    var var_2 = firstTrailingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -u_input.e, ~(u_input.e | vec4<i32>(u_input.e.x, u_input.e.x, -3311i, 5783i))));
    return Struct_4(firstTrailingBit(~select(u_input.a, u_input.a, vec4<bool>(true, false, false, arg_0.a))), vec3<i32>(u_input.e.x, _wgslsmith_sub_i32(-(u_input.e.x >> (u_input.c % 32u)), -2147483647i), -18315i), Struct_1(func_1().a, _wgslsmith_mult_vec2_u32(reverseBits(arg_0.c.b) & ~vec2<u32>(arg_0.d.a.x, u_input.b.x), max(vec2<u32>(17036u, u_input.d.x), select(vec2<u32>(1u, 1u), arg_0.d.a.yy, vec2<bool>(true, arg_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.e.xy;
    global3 = array<Struct_5, 23>();
    let var_1 = func_4(Struct_2(true, -1925f, func_1(), func_3(66241u >= ~u_input.b.x)));
    var var_2 = Struct_2(true, _wgslsmith_f_op_f32(ceil(1f)), Struct_1(vec3<u32>(6794u, 4294967295u, ~u_input.c), ~select(min(vec2<u32>(u_input.b.x, 4294967295u), var_1.a.zx), vec2<u32>(43122u, 4890u), true)), func_4(Struct_2(true, 1000f, func_1(), func_3(false))).c);
    global2 = array<vec2<u32>, 31>();
    var var_3 = global3[_wgslsmith_index_u32(~0u, 23u)];
    var var_4 = Struct_1(min(select(vec3<u32>(func_2(var_3.a.x), 1u, ~u_input.a.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(66878u, var_2.c.b.x, u_input.d.x), vec3<u32>(0u, var_1.a.x, 0u)), vec3<bool>(var_2.a, false, all(vec4<bool>(false, true, false, var_2.a)))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.a.x, u_input.d.x, var_1.c.a.x & 1u), ~_wgslsmith_mod_vec3_u32(var_2.d.a, var_1.c.a))), reverseBits(countOneBits(reverseBits(vec2<u32>(0u, var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(1i, ~0i) & var_1.b.x, u_input.e.x, ~var_1.b.x, max(abs(2147483647i), countOneBits(u_input.e.x))), var_3.a.zzz, var_1.a.yx, var_3.a.x);
}

