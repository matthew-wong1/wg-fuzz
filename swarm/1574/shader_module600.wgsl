struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_2(1i, Struct_1(false, vec2<i32>(-4884i, 67901i), 1u, vec2<i32>(-17167i, -28627i)), 0i, Struct_1(false, vec2<i32>(2147483647i, -49886i), 30544u, vec2<i32>(i32(-2147483648), 0i))), -285f, vec2<u32>(0u, 4800u)), Struct_4(Struct_2(13295i, Struct_1(true, vec2<i32>(-13705i, -1i), 1u, vec2<i32>(i32(-2147483648), i32(-2147483648))), -37500i, Struct_1(true, vec2<i32>(43344i, i32(-2147483648)), 127751u, vec2<i32>(1i, -25948i))), 623f, vec2<u32>(52773u, 4294967295u)), Struct_4(Struct_2(i32(-2147483648), Struct_1(true, vec2<i32>(0i, -17297i), 1u, vec2<i32>(-3244i, -24674i)), 0i, Struct_1(false, vec2<i32>(1i, i32(-2147483648)), 36765u, vec2<i32>(1i, 25814i))), 299f, vec2<u32>(59112u, 1u)), Struct_4(Struct_2(-1i, Struct_1(false, vec2<i32>(1i, -43042i), 46500u, vec2<i32>(2147483647i, 1i)), 2147483647i, Struct_1(true, vec2<i32>(1i, 2147483647i), 4294967295u, vec2<i32>(21848i, -1i))), -690f, vec2<u32>(4294967295u, 52364u)));

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(11524u, 0u, 0u), vec3<u32>(0u, 1u, 67474u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 24741u, 16661u), vec3<u32>(73267u, 1u, 4222u), vec3<u32>(66624u, 33740u, 60532u), vec3<u32>(1u, 4294967295u, 27156u), vec3<u32>(0u, 11770u, 53497u), vec3<u32>(87340u, 1u, 4294967295u), vec3<u32>(55904u, 0u, 28060u), vec3<u32>(0u, 25157u, 4294967295u), vec3<u32>(39291u, 78697u, 48628u), vec3<u32>(0u, 48240u, 0u), vec3<u32>(0u, 70467u, 1u), vec3<u32>(4294967295u, 0u, 69668u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1714u, 1u, 69162u), vec3<u32>(92556u, 34459u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(9198u, 4294967295u, 12989u), vec3<u32>(0u, 47870u, 1u), vec3<u32>(91490u, 40838u, 85289u), vec3<u32>(60721u, 1u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(26346u, 0u, 20196u), vec3<u32>(0u, 13970u, 5339u), vec3<u32>(0u, 1u, 3240u), vec3<u32>(50611u, 56818u, 54551u), vec3<u32>(2399u, 33494u, 1u), vec3<u32>(4944u, 66u, 0u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = any(select(vec4<bool>(true, true, select(true, true, arg_2.b.a), select(true, any(vec4<bool>(arg_1.a.b.a, arg_2.b.a, arg_2.c, false)), all(vec2<bool>(false, arg_2.c)))), !(!(!vec4<bool>(arg_1.a.d.a, true, false, true))), min(_wgslsmith_clamp_i32(1i, arg_2.b.d.x, arg_2.b.d.x), 2147483647i) != arg_2.d.x));
    global1 = array<vec3<u32>, 30>();
    global1 = array<vec3<u32>, 30>();
    global1 = array<vec3<u32>, 30>();
    var var_1 = -vec4<i32>(6277i, u_input.b, 17035i, -arg_2.d.x);
    return u_input.b;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_add_i32(~func_3(vec4<u32>(u_input.d.x, u_input.a.x, 1u, u_input.d.x), Struct_3(Struct_2(u_input.b, Struct_1(true, vec2<i32>(59478i, u_input.b), u_input.a.x, vec2<i32>(-2147483647i, 0i)), -2147483647i, Struct_1(false, vec2<i32>(8761i, u_input.b), u_input.d.x, vec2<i32>(-21559i, -87732i))), Struct_1(false, vec2<i32>(3i, 1i), 36627u, vec2<i32>(u_input.b, 2147483647i)), true, vec4<i32>(-2147483647i, u_input.b, u_input.b, 31919i) >> (vec4<u32>(u_input.d.x, 59777u, 1u, 4294967295u) % vec4<u32>(32u))), Struct_3(Struct_2(1i, Struct_1(false, vec2<i32>(0i, u_input.b), 4294967295u, vec2<i32>(9547i, u_input.b)), 0i, Struct_1(true, vec2<i32>(-9542i, -29285i), u_input.c, vec2<i32>(u_input.b, u_input.b))), Struct_1(true, vec2<i32>(u_input.b, -89772i), u_input.a.x, vec2<i32>(-1i, u_input.b)), true, ~vec4<i32>(-56555i, -1i, u_input.b, u_input.b))), u_input.b);
    var_0 = 2147483647i;
    var_0 = 6448i;
    return countOneBits(0u);
}

fn func_1() -> vec2<i32> {
    var var_0 = ~(~(~u_input.d.x << (~u_input.a.x % 32u)));
    global1 = array<vec3<u32>, 30>();
    var var_1 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_f32(round(434f))) < (4294967295u & reverseBits(u_input.d.x)), all(vec3<bool>(all(vec3<bool>(true, false, false)), true, true)));
    var var_2 = vec3<i32>(u_input.b, 2147483647i, u_input.b) & vec3<i32>(~(-2147483647i), abs(max(u_input.b, 17759i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, -30819i, 0i)), vec3<i32>(func_3(u_input.a, Struct_3(Struct_2(2147483647i, Struct_1(true, vec2<i32>(2147483647i, -25932i), u_input.d.x, vec2<i32>(28330i, 9182i)), u_input.b, Struct_1(var_1.x, vec2<i32>(0i, 9487i), 18714u, vec2<i32>(2147483647i, u_input.b))), Struct_1(var_1.x, vec2<i32>(u_input.b, 11314i), 29053u, vec2<i32>(53141i, 0i)), true, vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)), Struct_3(Struct_2(u_input.b, Struct_1(true, vec2<i32>(u_input.b, -2147483647i), u_input.c, vec2<i32>(u_input.b, -1i)), u_input.b, Struct_1(var_1.x, vec2<i32>(u_input.b, -2147483647i), u_input.d.x, vec2<i32>(-2571i, 64897i))), Struct_1(false, vec2<i32>(u_input.b, 0i), u_input.d.x, vec2<i32>(-8098i, 55141i)), true, vec4<i32>(0i, 0i, u_input.b, -30058i))), ~0i, u_input.b)));
    var var_3 = vec4<bool>(true, true, var_1.x || false, !(var_1.x || true) | var_1.x);
    return -(reverseBits(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_2.x, 13604i))) >> ((_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, 1u)) ^ max(vec2<u32>(1u, 92468u), _wgslsmith_div_vec2_u32(u_input.a.xz, u_input.d))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 4>();
    global1 = array<vec3<u32>, 30>();
    global0 = array<Struct_4, 4>();
    let var_0 = Struct_1(true, abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 5381i), vec2<i32>(19263i, -2147483647i))), func_1())), u_input.c, vec2<i32>(u_input.b, 68347i));
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(-47067i, u_input.b, -1i, 0i), select(vec4<i32>(-1i, 1i, var_0.b.x, -1i), vec4<i32>(18170i, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.a, true, false, true))) >> (82929u % 32u), Struct_1(false, vec2<i32>(-1i, -1i), 26976u, ~select(var_0.d, vec2<i32>(u_input.b, u_input.b), false)), u_input.b, Struct_1(any(vec3<bool>(true, false, var_0.a)), _wgslsmith_div_vec2_i32(~vec2<i32>(-1447i, u_input.b), ~vec2<i32>(u_input.b, -2147483647i)), ~u_input.d.x, var_0.b)), var_0, var_0.a, -(-vec4<i32>(var_0.b.x, -1i, var_0.d.x, 2147483647i) ^ -select(vec4<i32>(var_0.d.x, u_input.b, -24370i, -19991i), vec4<i32>(0i, 11029i, -207i, 2147483647i), var_0.a)));
    global1 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~1u, ~(~u_input.c)), vec4<u32>(var_0.c, var_0.c, u_input.a.x | var_1.a.d.c, 63921u), _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(var_1.a.d.b.x, -11547i)) << (~abs(max(4294967295u, 6122u)) % 32u), vec2<u32>(_wgslsmith_sub_u32(68295u, min(1u, 55135u)) << (~var_0.c % 32u), ~_wgslsmith_add_u32(select(0u, var_1.b.c, var_1.a.b.a), _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(var_1.b.c, var_0.c)))), u_input.c);
}

