struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -5156i;

var<private> global1: vec4<f32> = vec4<f32>(1702f, 427f, -1287f, -747f);

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-21548i, 0i, 0i, -15333i), -1000f, 4294967295u, 6420u, vec3<bool>(true, false, false));

var<private> global4: array<vec4<bool>, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = u_input.e;
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(global3.a.yy, (arg_2.a.wz >> (vec2<u32>(19449u, 56162u) % vec2<u32>(32u))) << (var_0.yz % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(arg_1.b, firstTrailingBit(-33666i)), 68052i << (~arg_1.a % 32u)), vec2<i32>(0i, arg_2.a.x)) & global3.a.ww;
}

fn func_2() -> u32 {
    global0 = _wgslsmith_dot_vec2_i32(func_3(4294967295u, Struct_2(0u, _wgslsmith_mod_i32(abs(-3946i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(1i, u_input.a)))), Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b))), _wgslsmith_div_u32(~13290u, ~0u), _wgslsmith_sub_u32(min(global3.c, u_input.d), 1u), vec3<bool>(all(vec2<bool>(global3.e.x, false)), any(vec3<bool>(false, global2.x, false)), true)), all(global4[_wgslsmith_index_u32(14757u ^ _wgslsmith_clamp_u32(32176u, 108584u, global3.c), 8u)])), global3.a.wx);
    let var_0 = Struct_1(global3.a, -1210f, ~(~abs(global3.d ^ u_input.d)), u_input.d, vec3<bool>(global2.x, global3.e.x, all(select(global2.zz, select(vec2<bool>(global3.e.x, global2.x), vec2<bool>(global3.e.x, global2.x), vec2<bool>(false, true)), true))));
    let var_1 = Struct_2(abs(4294967295u | firstLeadingBit(var_0.d)), var_0.a.x);
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1689f, _wgslsmith_f_op_f32(-global3.b)))))));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, ~4294967295u, var_1.a, var_0.d), _wgslsmith_div_vec4_u32(vec4<u32>(max(1u, 71562u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, u_input.d, 0u, 1u), vec4<u32>(10901u, var_1.a, 42985u, var_0.d)), reverseBits(global3.d), firstTrailingBit(global3.c)), vec4<u32>(0u, global3.d, 1u, var_0.c) & (vec4<u32>(20484u, 36883u, global3.c, 75189u) >> (vec4<u32>(global3.d, 1u, var_1.a, 1u) % vec4<u32>(32u))))), 1u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_3(arg_0.x, Struct_1(~global3.a, -596f, reverseBits(u_input.e.x) & 1u, _wgslsmith_add_u32(func_2(), u_input.d), global3.e), -countOneBits(vec4<i32>(_wgslsmith_mod_i32(-11306i, u_input.b), select(global3.a.x, 1i, false), -2147483647i, ~42121i)));
    global2 = select(select(select(global3.e, select(var_0.b.e, vec3<bool>(false, false, false), var_0.b.e), var_0.b.e), vec3<bool>(~2147483647i >= _wgslsmith_clamp_i32(u_input.b, -1i, 0i), false, arg_2.x), true), var_0.b.e, select(select(!vec3<bool>(var_0.b.e.x, arg_2.x, var_0.b.e.x), global3.e, arg_1.x), !vec3<bool>(false, all(arg_1), true), true));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - 1359f) * -934f) + arg_0.x), -543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(global3.b, global3.b, 224f, global1.x)) * _wgslsmith_f_op_vec4_f32(arg_0 * arg_0)) - arg_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))));
    global3 = var_0.b;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(var_0.c, vec4<i32>(11891i, -1i, -2392i, u_input.c.x), global4[_wgslsmith_index_u32(1u, 8u)]), abs(global3.a)), firstTrailingBit(~var_0.c)), ~(var_0.b.a << (vec4<u32>(4294967295u, var_0.b.d, global3.d, u_input.e.x) % vec4<u32>(32u))) & countOneBits(vec4<i32>(global3.a.x, 1i, var_0.b.a.x, var_0.b.a.x) << (vec4<u32>(4294967295u, 78839u, var_0.b.c, u_input.e.x) % vec4<u32>(32u)))), 627f, var_0.b.d, _wgslsmith_div_u32(func_2(), global3.d), !(!(!select(var_0.b.e, var_0.b.e, var_0.b.e.x))));
    return 1559f;
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, global3.d, ~(global3.d << ((1u & u_input.d) % 32u))), vec4<u32>(4294967295u, global3.c, 77488u, 47056u));
    global3 = Struct_1(global3.a & vec4<i32>(max(global3.a.x, global3.a.x) ^ -29991i, _wgslsmith_dot_vec4_i32(global3.a, ~vec4<i32>(u_input.c.x, global3.a.x, u_input.c.x, 26923i)), 1i, -_wgslsmith_add_i32(-39010i, global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f * -167f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(arg_0))))), u_input.d, _wgslsmith_add_u32(firstTrailingBit(var_0.x & var_0.x), 5724u), vec3<bool>(u_input.c.x < reverseBits(1i), all(select(!vec4<bool>(false, false, global3.e.x, global2.x), select(global4[_wgslsmith_index_u32(global3.c, 8u)], global4[_wgslsmith_index_u32(50330u, 8u)], global4[_wgslsmith_index_u32(global3.d, 8u)]), vec4<bool>(global3.e.x, false, global2.x, global2.x))), any(!global3.e)));
    var var_1 = u_input.b;
    global2 = global3.e;
    global2 = !(!(!(!(!vec3<bool>(global2.x, true, global3.e.x)))));
    return _wgslsmith_f_op_f32(min(global3.b, _wgslsmith_f_op_f32(sign(-196f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec4<bool>(true && global3.e.x, true, false, !(24494u < u_input.d)));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(vec4<f32>(global1.x, -563f, global1.x, -767f), vec4<bool>(global2.x, false, global3.e.x, global2.x), vec2<bool>(global2.x, true))))), global3.b), global3.b), Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(global3.a, global3.a), select(global3.a | global3.a, vec4<i32>(-2147483647i, 53970i, -2147483647i, global3.a.x), vec4<bool>(true, global3.e.x, false, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1305f)) + -995f), 62073u, ~0u, global3.e), global3.a);
    let var_2 = Struct_3(-757f, var_1.b, vec4<i32>(-1i, _wgslsmith_sub_i32((var_1.b.a.x ^ var_1.c.x) << (1u % 32u), -global3.a.x), -var_1.c.x, 5971i));
    var var_3 = Struct_2(~(~1625u), min(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.c.x, -50618i), u_input.a & global3.a.x)), ~var_1.b.a.x));
    let var_4 = global1.zw;
    global4 = array<vec4<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(494f * var_2.a), _wgslsmith_f_op_f32(var_4.x + 1392f)), global3.b)));
}

