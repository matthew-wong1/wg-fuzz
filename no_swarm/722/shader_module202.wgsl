struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(27813i, i32(-2147483648), -27594i);

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, true, true, true, false, true, false, false);

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: array<Struct_2, 26>;

var<private> global4: array<Struct_5, 32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~u_input.c, 1948u) >> (8694u % 32u), abs(374u)), 26u)], vec2<u32>(~38103u, firstTrailingBit(~4294967295u)), Struct_2(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec2<u32>(45625u, ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.b.x), u_input.a), abs(8227u)), 11u)])));
    var var_1 = global4[_wgslsmith_index_u32(19283u, 32u)];
    var_1 = Struct_5(var_1.a, var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c.d.x, 227f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, 438f)) - var_0.d.wy))), -336f, -var_1.a, global2[_wgslsmith_index_u32(0u, 11u)]), 21183u);
    let var_2 = countOneBits(~19073u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(max(var_1.b.b.a.x, 1398f))) - -106f) + var_1.c.b);
    return ~u_input.d.x;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a & vec4<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(reverseBits(0u), 74264u)), ~1u, ~u_input.b.x);
    let var_1 = abs(_wgslsmith_div_u32(~(_wgslsmith_add_u32(var_0.x, u_input.a.x) ^ func_3()), select(_wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_add_u32(~4294967295u, var_0.x), true)));
    var var_2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-30847i, -31253i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x)), vec4<i32>(global0.x, global0.x, 8686i, global0.x)) & _wgslsmith_div_i32(global0.x << (70855u % 32u), global0.x);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -640f);
    let var_4 = vec3<i32>(~(26851i >> (u_input.b.x % 32u)), ~(global0.x >> (_wgslsmith_div_u32(var_0.x, u_input.a.x) % 32u)) >> (0u % 32u), select(min(1i, -37228i), firstLeadingBit(-7149i), u_input.b.x >= var_1) | 40143i);
    return Struct_3(select(min(-var_4.x, ~var_4.x) >= var_4.x, global1[_wgslsmith_index_u32(var_1, 10u)], any(vec3<bool>(true, true, true))), Struct_1(vec2<f32>(741f, 1f), 499f, 5422i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(844f, 2250f) - vec2<f32>(420f, 317f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1680f, -356f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, 973f) - vec2<f32>(713f, -1000f))), select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(13199u, 10u)]), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-682f, -442f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)])))), var_4.x, vec4<f32>(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1257f))), 410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f)))), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = -vec4<i32>(global0.x << (~4294967295u % 32u), -78253i, ~global0.x, ~1443i);
    global3 = array<Struct_2, 26>();
    global3 = array<Struct_2, 26>();
    let var_1 = func_2();
    var var_2 = func_2();
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 0u), 26u)];
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_2(arg_0.a.a, ~arg_0.a.b);
    let var_1 = _wgslsmith_mod_vec2_u32(~abs(~arg_0.a.b >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), var_0.b);
    let var_2 = -151f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x), arg_0.d.x, 1095f, _wgslsmith_f_op_f32(arg_1 - var_2)))));
    let var_4 = Struct_3(select(arg_2 != global0.x, !any(vec4<bool>(false, var_0.a.x, false, false)) & select(arg_0.c.a.x, true || global1[_wgslsmith_index_u32(var_0.b.x, 10u)], arg_0.c.a.x), any(vec3<bool>(var_0.a.x, arg_0.a.a.x, global1[_wgslsmith_index_u32(~52585u, 10u)]))), func_2().b, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.xy - vec2<f32>(-1865f, arg_0.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1834f))))), -708f, min(arg_2, _wgslsmith_mult_i32(~(-41760i), firstLeadingBit(-35751i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.d.x)), _wgslsmith_f_op_f32(max(arg_0.d.x, var_3.x)), 820f, _wgslsmith_f_op_f32(-var_2)))), false);
    return var_4.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(65730u, 26u)];
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2316f, 935f) + vec2<f32>(-817f, -808f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1290f, 1120f), vec2<f32>(333f, -330f))))), _wgslsmith_f_op_vec2_f32(func_4(Struct_4(global3[_wgslsmith_index_u32(~u_input.c, 26u)], u_input.a.zw, func_1(vec3<f32>(-904f, 2681f, 608f), true), global2[_wgslsmith_index_u32(var_0.b.x, 11u)]), 1f, -global0.x)))));
    global0 = abs(vec3<i32>(0i, countOneBits(global0.x), global0.x));
    global0 = vec3<i32>(global0.x, 1i, 2147483647i);
    let var_3 = reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(-var_2.x), ~select(u_input.a.ywx, min(u_input.b, u_input.b), var_0.a) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_0.b.x, var_0.b.x, u_input.d.x)), u_input.b << (vec3<u32>(var_0.b.x, u_input.c, 1u) % vec3<u32>(32u))), select(countOneBits(vec3<u32>(43147u, var_0.b.x, 9751u)), select(u_input.d, vec3<u32>(4294967295u, 71758u, var_0.b.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 10u)], global1[_wgslsmith_index_u32(65748u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false)))), var_2.x);
}

