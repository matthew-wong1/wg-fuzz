struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(i32(-2147483648)), Struct_5(-1i), Struct_5(0i), Struct_5(868i), Struct_5(-29299i), Struct_5(-2956i), Struct_5(1i), Struct_5(25156i), Struct_5(57993i), Struct_5(12208i), Struct_5(11614i), Struct_5(1194i), Struct_5(-43343i), Struct_5(0i));

var<private> global1: array<f32, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> i32 {
    global1 = array<f32, 9>();
    let var_0 = !(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) && true) && (countOneBits(1i) < _wgslsmith_add_i32((1i << (u_input.a % 32u)) >> (~1u % 32u), abs(12213i << (u_input.a % 32u))));
    let var_1 = vec3<i32>(3911i, abs(-2147483647i), reverseBits(-(~(~(-34463i)))));
    let var_2 = Struct_3(abs(~(~(vec4<i32>(var_1.x, -2147483647i, 2147483647i, 1i) << (vec4<u32>(6455u, u_input.a, u_input.b, 34278u) % vec4<u32>(32u))))));
    global1 = array<f32, 9>();
    return abs(_wgslsmith_sub_i32(~var_2.a.x & ~(1i << (1u % 32u)), select(firstLeadingBit(~var_2.a.x), _wgslsmith_add_i32(33884i, var_2.a.x | var_2.a.x), all(vec2<bool>(false, var_0)))));
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_5, 14>();
    let var_0 = ~1u;
    var var_1 = 0u;
    global1 = array<f32, 9>();
    var var_2 = vec2<i32>(func_2() | -28578i, -1i);
    return global0[_wgslsmith_index_u32(~u_input.a, 14u)];
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec4<bool> {
    global1 = array<f32, 9>();
    global0 = array<Struct_5, 14>();
    let var_0 = _wgslsmith_div_f32(1040f, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~1u, _wgslsmith_mult_u32(1u, 1u), 41612u) | ~(~(~8869u)), 9u)]);
    var var_1 = -300f;
    var_1 = 1024f;
    return !vec4<bool>(arg_0.x, all(arg_0), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 9u)];
    let var_2 = Struct_4(var_0.a, select(select(vec4<bool>(all(vec2<bool>(true, false)), true, -1000f != global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a >= u_input.b), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_0.a < var_0.a, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), func_3(vec2<bool>(false, true), 0u))), select(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, all(vec4<bool>(false, false, false, true))), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 9u)] != global1[_wgslsmith_index_u32(26140u, 9u)], true, var_0.a >= 1i), select(true, all(vec3<bool>(true, true, false)), 33828u < u_input.a))));
    let var_3 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(~(~(-2147483647i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a, -2147483647i, 1i), vec3<i32>(37618i, var_2.a, 2147483647i)), _wgslsmith_mult_i32(var_0.a, 821i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a), vec2<i32>(var_0.a, var_2.a))), _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.a, 19921i, -1i), vec4<i32>(1i, var_2.a, -1i, var_2.a)), countOneBits(vec4<i32>(var_0.a, -1i, var_2.a, var_2.a)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, 41884u, 111548u)) % vec4<u32>(32u)))));
    let var_4 = -(max(-vec3<i32>(31434i, var_0.a, var_3.a.x), ~var_3.a.wyz) << (~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24601u, 45316u), vec2<u32>(106036u, u_input.b)), u_input.b, 4294967295u) % vec3<u32>(32u)));
    global0 = array<Struct_5, 14>();
    global0 = array<Struct_5, 14>();
    global1 = array<f32, 9>();
    var var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(14424u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]))), vec3<f32>(_wgslsmith_f_op_f32(-604f + 116f), _wgslsmith_f_op_f32(max(921f, -404f)), _wgslsmith_f_op_f32(step(591f, -505f)))))), _wgslsmith_sub_i32(func_2(), _wgslsmith_sub_i32(-34886i ^ var_2.a, var_4.x) << ((~79110u | min(u_input.a, u_input.a)) % 32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_4.x, -2147483647i, var_2.a, var_3.a.x), vec4<i32>(var_4.x, 1i, 2147483647i, -1i)), vec4<i32>(1i, -468i, 52888i, -1i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(var_4.x, var_4.x, 2147483647i, var_2.a), var_3.a, true), var_3.a ^ vec4<i32>(708i, var_3.a.x, var_4.x, -2147483647i))) & var_3.a, _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 12631u, 1u), vec4<u32>(u_input.a, 24665u, u_input.b, u_input.b) >> (vec4<u32>(33153u, u_input.a, 4294967295u, 38263u) % vec4<u32>(32u)))) >> (_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 60532u, u_input.a, 27428u), vec4<u32>(4294967295u, 75179u, u_input.b, 4294967295u)), abs(u_input.a)) % 32u));
}

