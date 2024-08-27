struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec3<i32>(2147483647i, -32557i, -1i), Struct_1(-241f, vec2<u32>(31348u, 4294967295u), vec4<u32>(0u, 4294967295u, 37768u, 1u)), 439f, -564f, false));

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(94889u, 59389u), vec2<u32>(25061u, 1u), vec2<u32>(19064u, 1u), vec2<u32>(31438u, 1u), vec2<u32>(80813u, 1u), vec2<u32>(56406u, 53150u), vec2<u32>(46642u, 2904u), vec2<u32>(4294967295u, 31611u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(43710u, 49892u), vec2<u32>(6793u, 29367u), vec2<u32>(46830u, 1u), vec2<u32>(53530u, 16283u), vec2<u32>(20964u, 1u), vec2<u32>(4903u, 1871u), vec2<u32>(6251u, 0u), vec2<u32>(14225u, 7669u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 51224u), vec2<u32>(22680u, 18761u));

var<private> global2: array<vec4<u32>, 13>;

var<private> global3: array<i32, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<bool> {
    global0 = array<Struct_4, 1>();
    global2 = array<vec4<u32>, 13>();
    let var_0 = arg_0;
    let var_1 = true;
    global1 = array<vec2<u32>, 23>();
    return vec4<bool>(true, any(select(select(!vec4<bool>(var_1, true, arg_1, false), vec4<bool>(var_1, true, true, true), vec4<bool>(true, var_1, arg_1, arg_1)), !select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, var_1, arg_1, false), vec4<bool>(false, var_1, true, arg_1)), vec4<bool>(!var_1, !arg_1, false, u_input.d <= 28786u))), _wgslsmith_clamp_i32(511i, abs(0i), _wgslsmith_mult_i32(reverseBits(global3[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(3227i, global3[_wgslsmith_index_u32(u_input.d, 9u)]), vec2<i32>(1i, u_input.b)))) >= ~(-24480i), var_1);
}

fn func_2() -> u32 {
    let var_0 = !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, true), func_3(682f, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true));
    let var_1 = min(vec3<u32>(u_input.c.x, (1u ^ _wgslsmith_mult_u32(u_input.c.x, u_input.d)) ^ ~(~u_input.d), 132875u), _wgslsmith_sub_vec3_u32(vec3<u32>(48877u, _wgslsmith_mult_u32(u_input.d, ~u_input.c.x), 20669u << (abs(u_input.d) % 32u)), u_input.c.xxz));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1070f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f + 2374f))), vec2<u32>(1u, 1u) << (~_wgslsmith_sub_vec2_u32(u_input.c.yw, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]) % vec2<u32>(32u)), vec4<u32>(1u, 4294967295u, var_1.x & _wgslsmith_div_u32(36521u, 10496u), u_input.d)), vec4<f32>(-2023f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-664f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1925f)))))), 1026f), vec3<u32>(abs(firstLeadingBit(1u)), firstTrailingBit(var_1.x << (u_input.c.x % 32u)), reverseBits(firstTrailingBit(var_1.x))) << (var_1 % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1283f, -1627f, -758f))) * vec3<f32>(706f, -1468f, -296f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 9u)]) >> (_wgslsmith_add_u32(u_input.c.x, 45517u) % 32u)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(41557u, 9u)]) >> (var_1.yz % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(-77115i, global3[_wgslsmith_index_u32(u_input.d, 9u)]))));
    global1 = array<vec2<u32>, 23>();
    let var_3 = ~(-_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.e, var_2.e, 53023i) >> (_wgslsmith_div_vec3_u32(var_1, var_1) % vec3<u32>(32u)), -vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 0i, u_input.a) ^ reverseBits(vec3<i32>(var_2.e, u_input.b, var_2.e))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d ^ _wgslsmith_sub_u32(45946u, var_2.c.x), 4294967295u) ^ u_input.c.yz, ~(countOneBits(min(var_2.c.yx, vec2<u32>(43834u, var_1.x))) ^ global1[_wgslsmith_index_u32(abs(0u), 23u)]));
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<i32>(-16485i, global3[_wgslsmith_index_u32(reverseBits(~max(u_input.c.x, 135348u)), 9u)], ~_wgslsmith_mult_i32(u_input.a << (u_input.c.x % 32u), _wgslsmith_sub_i32(0i, 2632i))) ^ vec3<i32>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(0u), 0u) | abs(u_input.c.x), 9u)], i32(-1i) * -25643i);
    var_0 = vec3<i32>(0i, _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -15860i, 0i), vec3<i32>(-1i, -2147483647i, 0i)), firstTrailingBit(-33731i | global3[_wgslsmith_index_u32(u_input.c.x, 9u)])), ~_wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.ww), 9u)], var_0.x >> (59750u % 32u))) | (-(~vec3<i32>(1i, 2147483647i, -2147483647i)) << (u_input.c.xwy % vec3<u32>(32u)));
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, func_2()), u_input.c.yz);
    global1 = array<vec2<u32>, 23>();
    var var_2 = !vec3<bool>(all(func_3(_wgslsmith_f_op_f32(step(-2885f, -150f)), true).ywz), any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, true, true, true)));
    return vec2<u32>(countOneBits(39088u), u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_0.a, ~u_input.c.yy, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(54024u, u_input.d, arg_0.c.x, arg_0.c.x)), ~arg_0.c) ^ global2[_wgslsmith_index_u32(firstTrailingBit(~54377u), 13u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1405f, arg_0.a, arg_0.a, arg_0.a))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)))))))), ~select(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.x, 1943u, u_input.c.x), arg_0.c.xxx), ~arg_0.c.ywz), u_input.c.ywx, all(vec3<bool>(true, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(857f, arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -642f, arg_0.a) * vec3<f32>(1000f, 1407f, arg_0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1309f), arg_0.a, _wgslsmith_div_f32(arg_0.a, 1000f)))), u_input.a);
    let var_1 = arg_0.a;
    global1 = array<vec2<u32>, 23>();
    let var_2 = true;
    global2 = array<vec4<u32>, 13>();
    return Struct_1(1079f, vec2<u32>(32776u, var_0.a.b.x), vec4<u32>(~u_input.d, reverseBits(21092u & var_0.c.x), 0u, ~(~_wgslsmith_add_u32(1u, u_input.d))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(global3[_wgslsmith_index_u32(0u, 9u)] >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.c.x, u_input.d), vec2<u32>(4294967295u, arg_0.c.x)) % 32u), arg_2) | 0i;
    var var_1 = arg_3;
    global1 = array<vec2<u32>, 23>();
    var var_2 = var_1.c.x;
    global0 = array<Struct_4, 1>();
    return Struct_3(vec4<i32>(_wgslsmith_sub_i32(-arg_2, _wgslsmith_div_i32(arg_3.e, 1i)), -1i, firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c.x, 9u)] ^ -24904i), -abs(arg_3.e)) ^ _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i, arg_3.e, u_input.b, var_0) << (arg_3.a.c % vec4<u32>(32u))), vec4<i32>(-20201i, ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 9u)], 2147483647i, var_1.e, global3[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(-82248i, arg_2, var_1.e, -1i)), ~global3[_wgslsmith_index_u32(arg_3.a.c.x, 9u)])), arg_3.d.x, vec3<bool>(!arg_1, arg_0.a <= _wgslsmith_f_op_f32(arg_0.a - arg_3.b.x), true), ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_3.a.b.x, u_input.d), func_4(Struct_1(490f, var_1.c.xy, u_input.c), arg_1).c.x), u_input.c.yy), _wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(arg_2, u_input.a) << (vec2<u32>(36730u, u_input.c.x) % vec2<u32>(32u))), countOneBits(vec2<i32>(-1i, -42687i) ^ vec2<i32>(3569i, var_0)), arg_1), max(~(-vec2<i32>(var_1.e, -2147483647i)), vec2<i32>(var_0, min(25893i, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    let var_0 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(), ~(~vec4<u32>(4294967295u, 54325u, u_input.c.x, u_input.d))), max(_wgslsmith_clamp_u32(u_input.d, 5491u, 30285u), ~u_input.d) >= (~40900u | u_input.d)), !(!(u_input.c.x < 0u) | false), firstLeadingBit(_wgslsmith_mod_i32(reverseBits(global3[_wgslsmith_index_u32(0u, 9u)] & global3[_wgslsmith_index_u32(u_input.c.x, 9u)]), u_input.b)), Struct_2(func_4(Struct_1(_wgslsmith_f_op_f32(955f + 395f), u_input.c.zz, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 1u), 13u)]), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(859f, 2203f), _wgslsmith_div_f32(551f, 1275f), 1150f, 1145f)), u_input.c.wyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(218f, 1479f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, 1269f, 688f))))), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(ceil(-389f));
    var var_2 = Struct_3(vec4<i32>(~(-19484i), ~(-(global3[_wgslsmith_index_u32(u_input.c.x, 9u)] | 0i)), (1i >> (_wgslsmith_dot_vec4_u32(u_input.c, global2[_wgslsmith_index_u32(0u, 13u)]) % 32u)) | ~u_input.b, global3[_wgslsmith_index_u32(39341u, 9u)]), var_1, vec3<bool>(var_0.c.x, true, !var_0.c.x), vec2<u32>(18791u, u_input.d), select(~global3[_wgslsmith_index_u32(~countOneBits(u_input.c.x), 9u)], -2147483647i, true));
    let var_3 = var_0.d.x;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(var_2.b, var_2.b)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, ~func_5(func_4(func_4(Struct_1(var_4.x, vec2<u32>(var_2.d.x, var_2.d.x), global2[_wgslsmith_index_u32(1u, 13u)]), true), var_0.c.x), select(var_0.c.x, !var_2.c.x, var_2.c.x), var_0.a.x, Struct_2(func_4(Struct_1(var_2.b, var_2.d, vec4<u32>(30139u, 8373u, 28208u, 4294967295u)), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -692f, var_0.b, var_1) - vec4<f32>(var_1, 505f, -552f, var_0.b)), vec3<u32>(var_3, 4294967295u, 55326u), vec3<f32>(var_0.b, var_1, 1444f), 1i)).d);
}

