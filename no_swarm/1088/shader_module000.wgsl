struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec2<i32>(-1i, 13890i), 64762u, true), Struct_4(vec2<i32>(i32(-2147483648), -9636i), 33657u, false), Struct_4(vec2<i32>(2147483647i, -7719i), 30726u, false), Struct_4(vec2<i32>(2147483647i, i32(-2147483648)), 21784u, true), Struct_4(vec2<i32>(i32(-2147483648), -74721i), 71032u, true));

var<private> global3: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-1243f));
    var var_1 = Struct_5(vec3<bool>(!select(true, true, false), !(!all(vec4<bool>(true, true, true, false))), true), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1349f, arg_2, arg_2) + vec3<f32>(arg_2, arg_3.x, arg_3.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, 102f)))), Struct_1(select(select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i), vec4<i32>(arg_1, 32539i, 1i, -24366i), true), vec4<i32>(arg_1, 10875i, 32059i, -45039i) ^ vec4<i32>(8603i, arg_0.x, arg_1, arg_0.x), any(vec3<bool>(false, true, false))), any(vec2<bool>(true, true))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b) << (u_input.a % vec2<u32>(32u)), ~u_input.a), _wgslsmith_mult_vec2_u32(u_input.a, ~u_input.a), false)), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(5884u, u_input.a.x, 4294967295u)), reverseBits(vec3<u32>(30037u, 1u, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-789f * _wgslsmith_f_op_f32(var_1.b.b.x + 1000f)), 482f, var_0) - vec4<f32>(-1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.b.x)) + -1000f), 470f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-450f * 120f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(616f, var_0, -1613f, arg_2)))) - vec4<f32>(-1399f, 163f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    let var_3 = (var_1.b.c.a.x & min(-firstLeadingBit(-4529i), _wgslsmith_dot_vec3_i32(vec3<i32>(27978i, arg_1, arg_1), -vec3<i32>(-60424i, -11183i, arg_0.x)))) == arg_0.x;
    let var_4 = ~select(arg_0, var_1.b.c.a.wz, any(select(!var_1.a, vec3<bool>(var_1.a.x, false, false), all(vec2<bool>(var_1.b.c.b, var_1.a.x)))));
    return var_2.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = -670f;
    let var_1 = global2[_wgslsmith_index_u32(u_input.b, 5u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~_wgslsmith_sub_vec2_i32(var_1.a, var_1.a) | firstLeadingBit(-var_1.a), firstTrailingBit(-42450i), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0, var_0), 2031f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1745f, 1662f))))));
    var var_3 = vec4<bool>(all(!(!(!vec2<bool>(var_1.c, var_1.c)))), !(!(var_1.a.x <= var_1.a.x)) & all(vec3<bool>(!var_1.c, var_1.c == var_1.c, var_1.c)), !any(!vec2<bool>(var_1.c, var_1.c)), var_1.c);
    var var_4 = !(1i <= countOneBits(min(-1i, 7804i) << (var_1.b % 32u)));
    return vec2<u32>(var_1.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, min(var_1.b, 0u))), u_input.a << ((~u_input.a ^ vec2<u32>(52440u, 12930u)) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global2 = array<Struct_4, 5>();
    var var_0 = ~arg_2.c.a.x;
    global1 = arg_2.c.b;
    var var_1 = ~(~abs(vec2<u32>(53592u, 81359u)) | vec2<u32>(4294967295u ^ arg_2.d.x, 33725u ^ arg_2.d.x)) | func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2069f, _wgslsmith_f_op_f32(max(-365f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-273f)))))), 1757f, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(757f)))))) - vec4<f32>(arg_0.b.x, arg_0.b.x, 1286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1390f)) * arg_0.b.x))));
    return ~min(-2896i, min(1i, max(-1i, -1i))) | firstTrailingBit(_wgslsmith_dot_vec4_i32((arg_2.c.a | arg_1.a) | arg_2.c.a, max(arg_0.c.a >> (vec4<u32>(arg_0.d.x, 4294967295u, arg_2.d.x, u_input.a.x) % vec4<u32>(32u)), abs(arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -559f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-367f, var_0)) - _wgslsmith_f_op_f32(trunc(-856f)));
    global0 = firstTrailingBit(-(~0i)) <= ~1i;
    var var_2 = Struct_1(abs(firstTrailingBit(vec4<i32>(func_1(Struct_2(vec2<bool>(false, true), vec3<f32>(1896f, var_1, var_1), Struct_1(vec4<i32>(0i, 29946i, 3243i, 9143i), false), u_input.a), Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -21828i), true), Struct_2(vec2<bool>(false, true), vec3<f32>(var_0, var_1, 1456f), Struct_1(vec4<i32>(-27757i, 0i, 1i, 1i), false), vec2<u32>(u_input.a.x, 49132u))), _wgslsmith_div_i32(40066i, 45057i), 1i, _wgslsmith_div_i32(-36399i, -52350i)))), true);
    global1 = true;
    let var_3 = vec3<bool>(var_2.b, false, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1917f, -1057f, 444f), _wgslsmith_div_vec4_f32(vec4<f32>(253f, 622f, 884f, var_1), vec4<f32>(var_0, var_0, 1000f, 282f)), vec4<bool>(true, false, var_2.b, var_2.b))) + vec4<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(sign(var_0)), var_0, -391f)))), -func_1(Struct_2(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 2451f))), Struct_1(vec4<i32>(var_2.a.x, 1i, 37198i, var_2.a.x), true), vec2<u32>(1u, 43572u)), Struct_1(var_2.a, false & var_2.b), Struct_2(vec2<bool>(false, true), vec3<f32>(-1189f, var_1, 1176f), Struct_1(vec4<i32>(var_2.a.x, var_2.a.x, -31548i, 2147483647i), true), abs(vec2<u32>(82151u, 1u)))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<i32>(_wgslsmith_div_i32(var_2.a.x, 38308i), countOneBits(var_2.a.x), -var_2.a.x), var_2.a.xzz));
}

