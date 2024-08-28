struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<i32>(-21052i, -1i, 1i, 2147483647i), -1i, Struct_1(-24138i), 1i), Struct_3(vec4<i32>(3195i, 1i, 52893i, 0i), -23304i, Struct_1(2945i), 0i), Struct_3(vec4<i32>(26796i, 0i, i32(-2147483648), -1i), 27369i, Struct_1(-1i), -1i), Struct_3(vec4<i32>(i32(-2147483648), 1i, 1i, -48993i), 0i, Struct_1(i32(-2147483648)), 35161i), Struct_3(vec4<i32>(-5653i, -45324i, 0i, 1i), 2147483647i, Struct_1(-75565i), -10397i), Struct_3(vec4<i32>(1i, i32(-2147483648), -1i, 0i), -16958i, Struct_1(25115i), 0i), Struct_3(vec4<i32>(35904i, -45685i, -43651i, 12754i), 0i, Struct_1(-1i), 0i), Struct_3(vec4<i32>(44747i, 4682i, -24461i, -4713i), 2147483647i, Struct_1(0i), i32(-2147483648)), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 32213i), 2147483647i, Struct_1(-6166i), 1i), Struct_3(vec4<i32>(-1i, 14994i, 65268i, i32(-2147483648)), -15123i, Struct_1(15076i), -1i), Struct_3(vec4<i32>(6881i, 2147483647i, 2147483647i, 45164i), -31978i, Struct_1(32620i), 1i), Struct_3(vec4<i32>(11023i, -1i, 0i, 37863i), -1251i, Struct_1(47422i), 2147483647i), Struct_3(vec4<i32>(44231i, 51499i, i32(-2147483648), 2147483647i), 21726i, Struct_1(i32(-2147483648)), -60701i), Struct_3(vec4<i32>(3701i, 6696i, 0i, -6211i), -40055i, Struct_1(-11551i), -16989i), Struct_3(vec4<i32>(0i, -22601i, i32(-2147483648), 21622i), -47891i, Struct_1(-1i), 16398i), Struct_3(vec4<i32>(-26417i, -1452i, 2147483647i, 29879i), 1i, Struct_1(-72634i), -1i), Struct_3(vec4<i32>(-1i, -35839i, -1i, -942i), -2530i, Struct_1(43224i), 51684i), Struct_3(vec4<i32>(-1i, -16884i, 2147483647i, 24093i), -4608i, Struct_1(7138i), -1i), Struct_3(vec4<i32>(3543i, -33345i, 0i, 0i), -1i, Struct_1(i32(-2147483648)), 1i), Struct_3(vec4<i32>(32165i, 11908i, -5213i, 2147483647i), 30031i, Struct_1(-54299i), -19584i), Struct_3(vec4<i32>(41120i, i32(-2147483648), -24271i, 39834i), -30754i, Struct_1(-1i), -10509i), Struct_3(vec4<i32>(i32(-2147483648), -1i, 46600i, -1i), -47191i, Struct_1(-4359i), 2147483647i), Struct_3(vec4<i32>(-17905i, i32(-2147483648), i32(-2147483648), 61123i), 1i, Struct_1(i32(-2147483648)), -63392i), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), 0i, Struct_1(-1i), -11589i), Struct_3(vec4<i32>(26636i, 1i, -1i, i32(-2147483648)), 2147483647i, Struct_1(2694i), 55987i), Struct_3(vec4<i32>(1i, -52457i, -63536i, 0i), 33874i, Struct_1(i32(-2147483648)), 31136i), Struct_3(vec4<i32>(16178i, 44294i, i32(-2147483648), 26845i), i32(-2147483648), Struct_1(22809i), 17866i));

var<private> global1: i32 = 54761i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = max(vec2<u32>(arg_0.e, u_input.c.x) << ((~vec2<u32>(22361u, 4294967295u) << (select(u_input.c.xy, u_input.b.yx, false) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~vec2<u32>(1u, arg_0.e))) >> (vec2<u32>(91204u, ~_wgslsmith_sub_u32(~u_input.b.x, firstTrailingBit(78996u))) % vec2<u32>(32u));
    var var_1 = Struct_1(min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.d.x, 17389i), -arg_0.b.yzy), vec3<i32>(1i, -arg_0.d.x, -2147483647i)), -3659i));
    var var_2 = var_1.a;
    var var_3 = arg_0.b.x;
    var_2 = arg_0.d.x;
    return _wgslsmith_add_u32(0u, var_0.x & 1u);
}

fn func_2() -> Struct_2 {
    var var_0 = !select(vec2<bool>(true, u_input.b.x <= min(56864u, u_input.c.x)), !select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec2<bool>(false, false))), !(~1u > func_3(Struct_2(vec3<bool>(false, true, false), vec4<i32>(-17504i, 39953i, -14092i, -2147483647i), false, vec2<i32>(-32882i, 17202i), 28735u))));
    var var_1 = Struct_2(vec3<bool>(var_0.x, var_0.x, var_0.x), ~vec4<i32>(11682i, -41968i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-12741i, 1i, 0i), ~vec3<i32>(-24649i, 18341i, 6883i)), reverseBits(1i)), false, select(vec2<i32>(2147483647i, reverseBits(-48998i)), max(select(vec2<i32>(5388i, -26322i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -512i), vec2<i32>(-12929i, 51924i)), true), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18476i, 60744i, -11645i), vec3<i32>(-1i, 2147483647i, -15942i)))), true), reverseBits(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 43267u, 9100u), u_input.c), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u))), ~u_input.c & (vec4<u32>(56545u, u_input.b.x, 15619u, u_input.b.x) & u_input.c))));
    global0 = array<Struct_3, 27>();
    var var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_1.e, u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 54996u, var_1.e)), u_input.c), _wgslsmith_div_vec4_u32(u_input.c, u_input.c)), ~vec4<u32>(var_1.e, func_3(Struct_2(var_1.a, vec4<i32>(-19761i, -1i, -2147483647i, -2147483647i), false, vec2<i32>(-72246i, -13836i), 0u)), select(var_1.e, var_1.e, false), var_1.e));
    var_2 = u_input.a;
    return Struct_2(vec3<bool>(false, u_input.c.x != 0u, true), vec4<i32>(i32(-1i) * -var_1.b.x, var_1.b.x, firstLeadingBit(_wgslsmith_div_i32(var_1.b.x ^ var_1.d.x, 1i)), abs(~(1i >> (var_1.e % 32u)))), true || (var_1.d.x == _wgslsmith_dot_vec4_i32(var_1.b, var_1.b)), -vec2<i32>(var_1.d.x & var_1.d.x, -_wgslsmith_add_i32(0i, 2147483647i)), ~29237u);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_3, 27>();
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(374f)), 1724f, all(vec4<bool>(arg_1, false, false, var_0.c))))), -1530f));
    var var_2 = func_2();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(515f)));
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 27>();
    global1 = ~(func_1(vec3<bool>(true, true, true), true, Struct_1(~22883i)) << (~(~1u & _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 6340u, 0u, u_input.c.x))) % 32u));
    let var_0 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(4294967295u, 1u)))) >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.a, 47990u) % 32u), 27u)];
    let var_1 = Struct_3(vec4<i32>(9030i, 41514i, _wgslsmith_dot_vec3_i32(-var_0.a.zwx, var_0.a.wwz) ^ firstLeadingBit(-var_0.d), var_0.a.x), 1i, var_0.c, 4804i);
    global0 = array<Struct_3, 27>();
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(var_2.a, min(_wgslsmith_mult_i32(var_0.c.a << (30487u % 32u), var_2.a), 2147483647i), var_1.c.a), _wgslsmith_mult_i32(var_2.a, ~(~min(var_1.d, 0i))), 0i, -365f);
}

