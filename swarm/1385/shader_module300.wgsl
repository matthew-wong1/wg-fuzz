struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(102143u, 0u, 1u), vec3<u32>(64834u, 4294967295u, 0u), vec3<u32>(41092u, 0u, 29008u), vec3<u32>(34390u, 35537u, 1u), vec3<u32>(1u, 48197u, 25538u), vec3<u32>(40744u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(8959u, 1u, 30509u), vec3<u32>(69973u, 22216u, 1u), vec3<u32>(1u, 27672u, 1u), vec3<u32>(0u, 51956u, 63101u), vec3<u32>(4294967295u, 1u, 27220u), vec3<u32>(4294967295u, 11948u, 98946u), vec3<u32>(25156u, 4294967295u, 45376u), vec3<u32>(4294967295u, 0u, 13826u), vec3<u32>(1u, 62450u, 1u), vec3<u32>(18980u, 0u, 73242u), vec3<u32>(54210u, 69548u, 1u), vec3<u32>(1u, 1u, 24040u), vec3<u32>(1u, 13289u, 0u), vec3<u32>(5011u, 10139u, 17543u), vec3<u32>(140692u, 11913u, 26021u), vec3<u32>(0u, 0u, 0u), vec3<u32>(2822u, 4294967295u, 26807u), vec3<u32>(637u, 0u, 1u), vec3<u32>(1u, 40949u, 1u), vec3<u32>(27560u, 4294967295u, 0u));

var<private> global1: array<vec2<u32>, 28>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_4 {
    global1 = array<vec2<u32>, 28>();
    global1 = array<vec2<u32>, 28>();
    let var_0 = u_input.d;
    var var_1 = Struct_3(-14654i, u_input.c.x, _wgslsmith_mult_i32(~u_input.a, _wgslsmith_mod_i32(~2147483647i, 2147483647i) | u_input.c.x), vec4<i32>(~49348i, u_input.c.x, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, 18371i, u_input.a), vec4<i32>(u_input.c.x, -323i, 49633i, u_input.a))), -1i));
    var var_2 = 0i & u_input.a;
    return Struct_4(false);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    return Struct_2(-vec4<i32>(u_input.a, -9404i, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, abs(u_input.a))), false, _wgslsmith_mod_u32(u_input.d, u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], vec3<u32>(26622u, u_input.b, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 23974u, u_input.b), vec3<u32>(60132u, 0u, 4294967295u), vec3<u32>(u_input.d, 4294967295u, u_input.b))), reverseBits(abs(vec3<u32>(58163u, 4294967295u, u_input.b)))), reverseBits(u_input.b)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_5(false, Struct_3(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x)), _wgslsmith_add_i32(-10383i, i32(-1i) * -27453i)), select(_wgslsmith_mult_i32(~arg_2.a.x, _wgslsmith_div_i32(arg_2.a.x, u_input.c.x)), ~(-1i), countOneBits(arg_2.b) > ~48641u), arg_2.a.x, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.a, arg_2.a.x), vec4<i32>(arg_2.a.x, 0i, 0i, 43384i)), vec4<i32>(arg_2.a.x, 41160i, arg_2.a.x, u_input.c.x) | vec4<i32>(-12107i, arg_2.a.x, 1i, arg_2.a.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, u_input.a), vec4<i32>(u_input.a, 53106i, u_input.a, 1i)))), func_3(~u_input.b != u_input.d, func_2()));
    let var_1 = !(!vec4<bool>(true, !all(arg_2.c), false, any(arg_2.c) & true));
    let var_2 = all(vec3<bool>(all(var_1), any(vec4<bool>(all(var_1), func_3(false, Struct_4(false)).b, var_1.x, true)), var_1.x));
    var var_3 = Struct_5(var_0.c.b, var_0.b, func_3(var_0.c.a.x != -(~(-43161i)), Struct_4(!(var_0.b.d.x > 1i))));
    var_3 = Struct_5(true, Struct_3(func_3(!select(var_3.a, false, true), func_2()).a.x, 7704i, 45515i, var_3.c.a), func_3(abs(u_input.a) < 1i, func_2()));
    return abs(_wgslsmith_div_vec4_i32(max(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2592i, u_input.a), vec4<i32>(-30998i, 2147483647i, 2147483647i, u_input.c.x)), func_3(true, Struct_4(false)).a, false), max(var_3.c.a, countOneBits(var_0.c.a))), reverseBits(var_3.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 4294967295u), vec4<u32>(1u, u_input.b, u_input.d, u_input.b)), select(vec4<u32>(27066u, u_input.d, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.d), false))) <= (reverseBits(~u_input.d) & 0u));
    var var_1 = Struct_4(var_0);
    let var_2 = Struct_2(vec4<i32>(-1i) * -func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(3267u, 4294967295u, 1u, 0u), vec4<u32>(0u, u_input.d, 28640u, u_input.d)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 549f, global2.x), vec4<f32>(global2.x, -389f, -1395f, global2.x)), Struct_1(vec3<i32>(-3812i, u_input.c.x, u_input.a), u_input.d, vec3<bool>(false, false, var_0))), !any(vec2<bool>(true, true)), u_input.b, global1[_wgslsmith_index_u32(1u, 28u)] ^ global1[_wgslsmith_index_u32(abs(1u), 28u)]);
    var var_3 = Struct_4(var_0);
    let var_4 = var_3.a;
    let var_5 = vec4<u32>(~(_wgslsmith_add_u32(max(4294967295u, u_input.d), u_input.d) | 0u), ~0u, 0u, ~(~var_2.d.x >> (var_2.d.x % 32u)));
    var var_6 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - _wgslsmith_f_op_f32(trunc(1000f)))), var_2.d.x);
}

