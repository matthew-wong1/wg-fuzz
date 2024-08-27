struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(false, Struct_1(vec4<i32>(-10339i, i32(-2147483648), 0i, 29802i), vec4<u32>(4294967295u, 48846u, 0u, 0u), false, 17777u), -722f), Struct_2(true, Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 35771i), vec4<u32>(1u, 20349u, 6496u, 48938u), true, 0u), -627f), Struct_2(false, Struct_1(vec4<i32>(-21118i, -1i, i32(-2147483648), 1i), vec4<u32>(1u, 91672u, 6084u, 56255u), false, 17291u), -1947f));

var<private> global1: array<i32, 8> = array<i32, 8>(1i, -31711i, -22466i, -1i, 51363i, 0i, i32(-2147483648), -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    global0 = array<Struct_2, 3>();
    global1 = array<i32, 8>();
    let var_0 = arg_0.b;
    return arg_0;
}

fn func_3() -> f32 {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -659f);
}

fn func_2() -> StorageBuffer {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 190f), -1000f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), false, (func_1(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(33113u, 8u)], global1[_wgslsmith_index_u32(79845u, 8u)], global1[_wgslsmith_index_u32(29757u, 8u)], 1i), vec4<u32>(1u, 1u, 36079u, 55118u), false, 6209u)).c & false) == true);
    global1 = array<i32, 8>();
    let var_1 = Struct_3(vec2<i32>(2147483647i, 12890i));
    global1 = array<i32, 8>();
    var var_2 = Struct_1(vec4<i32>(u_input.a.x, 0i, 23442i, min(u_input.a.x, _wgslsmith_div_i32(countOneBits(2147483647i), u_input.a.x))), vec4<u32>(1u, 0u & _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 15153u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 74521u), vec4<u32>(0u, 4294967295u, 0u, 39050u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(26164u), 1u, 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(42135u, 55446u, 52858u), vec3<u32>(50720u, 21562u, 63446u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(48750u, 1u, 16931u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(max(-789f, -861f)))), 16290u);
    return StorageBuffer(var_2.d << (var_2.b.x % 32u), _wgslsmith_add_u32(var_2.d, reverseBits(var_2.d)), firstLeadingBit(var_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) + _wgslsmith_f_op_f32(step(278f, 135f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1231f, -1335f))), 887f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 820f;
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_1 = 62775u;
    let var_2 = Struct_4(func_1(Struct_1(abs(vec4<i32>(-10241i, u_input.a.x, global1[_wgslsmith_index_u32(0u, 8u)], 11558i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), 1u)));
    var_1 = ~121682u;
    var var_3 = ~(~var_2.a.a.x) == ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(var_2.a.b.x, 8u)], -41712i, -4110i)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, u_input.a.x), u_input.a)));
    var_3 = !var_2.a.c;
    global1 = array<i32, 8>();
    let x = u_input.a;
    s_output = func_2();
}

