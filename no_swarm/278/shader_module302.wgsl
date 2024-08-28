struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(70834u, 27480u, 1u, 22149u), vec4<u32>(1u, 91743u, 1u, 4294967295u), vec4<u32>(4294967295u, 16643u, 22856u, 33458u), vec4<u32>(4294967295u, 0u, 41220u, 0u), vec4<u32>(4807u, 30893u, 100215u, 4294967295u), vec4<u32>(7696u, 37564u, 0u, 14829u), vec4<u32>(27380u, 1u, 18174u, 4294967295u), vec4<u32>(1u, 0u, 22266u, 0u), vec4<u32>(4294967295u, 4294967295u, 17758u, 13421u), vec4<u32>(11532u, 0u, 12728u, 4294967295u), vec4<u32>(1u, 25116u, 13702u, 0u), vec4<u32>(22804u, 1u, 0u, 26276u), vec4<u32>(4294967295u, 73120u, 32894u, 1u), vec4<u32>(1460u, 1u, 16415u, 1u), vec4<u32>(28807u, 65212u, 51065u, 6756u), vec4<u32>(0u, 29824u, 4294967295u, 1u), vec4<u32>(92448u, 1u, 29303u, 90390u), vec4<u32>(1u, 18435u, 95640u, 0u), vec4<u32>(0u, 574u, 27298u, 4294967295u), vec4<u32>(26683u, 1u, 1u, 1u), vec4<u32>(251u, 1u, 27460u, 57627u), vec4<u32>(28680u, 4294967295u, 0u, 48804u), vec4<u32>(36783u, 0u, 1u, 0u), vec4<u32>(0u, 17884u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 12667u, 68113u), vec4<u32>(0u, 1u, 0u, 48081u), vec4<u32>(7783u, 25057u, 4294967295u, 0u));

var<private> global1: array<Struct_3, 9>;

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(vec2<f32>(-846f, 579f), vec2<f32>(594f, -542f), 95003u)), vec4<i32>(-21191i, 12207i, i32(-2147483648), i32(-2147483648)), vec4<u32>(21525u, 0u, 51047u, 0u), true, -17245i);

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(false, 0i, vec3<bool>(false, true, false), false), Struct_3(true, i32(-2147483648), vec3<bool>(true, true, false), true), Struct_3(true, 0i, vec3<bool>(false, false, true), true), Struct_3(false, i32(-2147483648), vec3<bool>(false, true, false), true), Struct_3(false, i32(-2147483648), vec3<bool>(true, false, false), false), Struct_3(true, 92206i, vec3<bool>(true, true, false), true), Struct_3(true, -1482i, vec3<bool>(true, true, true), true), Struct_3(false, 7778i, vec3<bool>(true, false, false), true), Struct_3(true, 0i, vec3<bool>(true, false, true), true), Struct_3(true, 14135i, vec3<bool>(true, false, false), false), Struct_3(true, -5268i, vec3<bool>(false, false, false), true), Struct_3(true, -1i, vec3<bool>(true, false, false), false), Struct_3(false, 2147483647i, vec3<bool>(false, false, false), true), Struct_3(true, 1i, vec3<bool>(true, false, true), true), Struct_3(true, 2147483647i, vec3<bool>(true, true, true), false), Struct_3(true, 2147483647i, vec3<bool>(true, true, true), true), Struct_3(true, -250i, vec3<bool>(false, true, true), true), Struct_3(true, 0i, vec3<bool>(true, true, true), false), Struct_3(false, 2147483647i, vec3<bool>(true, false, true), false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = vec4<bool>(false, false, true, select(!arg_2.d, !(global2.c.x != firstLeadingBit(u_input.c)), true));
    global0 = array<vec4<u32>, 27>();
    let var_1 = Struct_4(vec2<u32>(1u, ~(0u ^ _wgslsmith_dot_vec2_u32(global2.c.wx, vec2<u32>(1u, global2.a.a.c)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -302f, _wgslsmith_f_op_f32(-arg_1.a.a.b.x), -537f);
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b, reverseBits(2147483647i), 2147483647i, firstLeadingBit(-2147483647i)), _wgslsmith_mult_vec4_i32(global2.b, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, global2.e), arg_1.e, _wgslsmith_add_i32(u_input.d.x, arg_1.b.x)), global2.b.x, -countOneBits(0i), -(global2.e | u_input.b))));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.b.x)))), _wgslsmith_div_f32(-279f, -591f));
}

fn func_2() -> Struct_5 {
    var var_0 = global2.a;
    global2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -187f), Struct_5(Struct_2(global2.a.a), vec4<i32>(u_input.b, -1i, 0i, u_input.b), vec4<u32>(42092u, global2.a.a.c, var_0.a.c, 15752u), global2.d, 61415i), global3[_wgslsmith_index_u32(global2.a.a.c >> (4294967295u % 32u), 19u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_0.a.b)), _wgslsmith_div_vec2_f32(var_0.a.a, vec2<f32>(-575f, global2.a.a.a.x)), select(vec2<bool>(false, global2.d), vec2<bool>(global2.d, false), global2.d))), 0u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i ^ u_input.d.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i), ~0i, _wgslsmith_sub_i32(u_input.b, u_input.d.x)), global2.b) << (global2.c % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(select(global0[_wgslsmith_index_u32(global2.c.x, 27u)], vec4<u32>(u_input.c, global2.c.x, var_0.a.c, 32162u), global2.d) << (reverseBits(global2.c) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.a.c, var_0.a.c, var_0.a.c) << (vec4<u32>(26665u, global2.c.x, u_input.c, global2.a.a.c) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_mod_vec4_u32(global2.c, vec4<u32>(1479u, var_0.a.c, 52268u, u_input.c))), _wgslsmith_clamp_vec4_u32(global2.c, abs(global2.c), ~vec4<u32>(0u, u_input.c, global2.c.x, global2.a.a.c))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, global2.c.x), u_input.c, 1u, ~70869u)), false, abs(-2147483647i));
    let var_1 = ~select(u_input.d, -vec2<i32>(global2.e, global2.b.x), u_input.d.x < _wgslsmith_clamp_i32(firstTrailingBit(27129i), _wgslsmith_mod_i32(u_input.b, u_input.a.x), global2.e));
    global0 = array<vec4<u32>, 27>();
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1925i, -38535i, ~(~(0i | var_1.x)), -var_1.x ^ (~0i << (~u_input.c % 32u))), ~(~u_input.a));
    return Struct_5(global2.a, reverseBits(abs(-(vec4<i32>(4734i, 2147483647i, 2147483647i, var_1.x) ^ global2.b))), global0[_wgslsmith_index_u32(~41404u, 27u)], all(!vec3<bool>(global2.d, !global2.d, global2.d && global2.d)), -15730i);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global2 = func_2();
    global0 = array<vec4<u32>, 27>();
    var var_0 = arg_3;
    let var_1 = 1660f;
    let var_2 = firstTrailingBit(-arg_0.x);
    return ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.c, global2.a.a.c), _wgslsmith_sub_u32(4294967295u, arg_3.c >> (global2.a.a.c % 32u))), _wgslsmith_add_u32(~(~var_0.c), ~(~var_0.c)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: u32) -> vec3<i32> {
    global0 = array<vec4<u32>, 27>();
    global3 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3, _wgslsmith_div_u32(u_input.c, 77179u)), 27u)], reverseBits(vec4<u32>(func_2().c.x ^ _wgslsmith_mod_u32(global2.a.a.c, 52424u), ~28796u ^ (1027u ^ arg_3), 1u, reverseBits(_wgslsmith_add_u32(1u, 104781u)))));
    let var_1 = -895f;
    var var_2 = any(vec2<bool>(arg_2 && any(vec3<bool>(arg_2, true, false)), func_2().d));
    return vec3<i32>(global2.b.x, _wgslsmith_clamp_i32(~(-arg_0.b << (~arg_3 % 32u)), -_wgslsmith_add_i32(-26779i, 12674i), -arg_0.b), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i >> ((global2.a.a.c & 1u) % 32u)) <= ~(-u_input.a.x);
    global1 = array<Struct_3, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(func_4(global3[_wgslsmith_index_u32(func_1(vec4<i32>(u_input.d.x, global2.b.x, global2.b.x, -6880i), global2.e, global2.a.a.a.x, global2.a.a), 19u)], global2.a.a.c, 1000f > global2.a.a.b.x, reverseBits(14236u)), u_input.a.wyw)), global2.c.x);
}

