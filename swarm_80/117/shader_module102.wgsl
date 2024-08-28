struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<i32>(-1i, -10000i, 0i), vec2<bool>(false, true)), Struct_3(vec3<i32>(2147483647i, 0i, -1i), vec2<bool>(false, true)), vec3<i32>(0i, -6402i, -1i));

var<private> global1: array<vec3<bool>, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global1 = array<vec3<bool>, 20>();
    global0 = Struct_4(global0.a, global0.a, reverseBits(global0.c));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~32877u), 20u)];
    global0 = Struct_4(global0.a, Struct_3(vec3<i32>(_wgslsmith_div_i32(max(global0.a.a.x, u_input.c), -2147483647i >> (u_input.a.x % 32u)), reverseBits(~(-2147483647i)), 1i >> (countOneBits(86815u) % 32u)), vec2<bool>(any(select(global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(u_input.d, 20u)], var_0.x)), true)), _wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(global0.a.a, global0.c << (vec3<u32>(u_input.b, u_input.b, 52401u) % vec3<u32>(32u))), abs(select(global0.c, ~global0.c, vec3<bool>(true, false, global0.b.b.x)))));
    var var_1 = global0.b;
    return u_input.d;
}

fn func_2(arg_0: Struct_4) -> vec3<i32> {
    global1 = array<vec3<bool>, 20>();
    var var_0 = -arg_0.c.x;
    var var_1 = arg_0;
    global0 = arg_0;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(select(~18107u, 37586u, global0.a.b.x) >> (_wgslsmith_mod_u32(func_3(), ~39024u) % 32u), 20u)], u_input.e.yz);
    return ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.x, _wgslsmith_mult_i32(var_1.b.a.x, u_input.c) << (0u % 32u), 0i), abs(-global0.a.a));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_4(global0.a, Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -20471i, -11238i) << ((u_input.e << (vec3<u32>(84566u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-global0.c, global0.a.a)), global0.a.b), global0.b.a);
    global0 = Struct_4(Struct_3(abs(~func_2(Struct_4(global0.a, Struct_3(var_0.b.a, vec2<bool>(true, false)), vec3<i32>(15910i, -5368i, -4651i)))), !global0.b.b), global0.a, vec3<i32>(func_2(Struct_4(var_0.b, Struct_3(vec3<i32>(u_input.c, u_input.c, -2147483647i), var_0.b.b), global0.b.a)).x, _wgslsmith_add_i32(min(u_input.c, u_input.c), -50057i), ~u_input.c) >> ((u_input.e | ~u_input.a) % vec3<u32>(32u)));
    let var_1 = ~vec4<u32>(~4294967295u, abs(~(arg_0 >> (1u % 32u))), 17008u, _wgslsmith_clamp_u32(~arg_0, ~u_input.e.x, 2653u));
    let var_2 = vec4<i32>(1i, -2147483647i, func_2(Struct_4(Struct_3(firstTrailingBit(vec3<i32>(2147483647i, u_input.c, -1i)), !var_0.b.b), global0.b, vec3<i32>(global0.a.a.x, firstTrailingBit(-9805i), ~var_0.c.x))).x, var_0.b.a.x);
    global1 = array<vec3<bool>, 20>();
    return Struct_4(var_0.b, Struct_3(~global0.b.a, vec2<bool>(_wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(var_2.x, -1345i, 34164i)) != global0.a.a.x, min(-25158i, -2147483647i) == ~global0.b.a.x)), global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = func_1(u_input.d);
    let var_1 = _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-u_input.c, min(global0.a.a.x, global0.b.a.x), countOneBits(13519i)), abs(func_2(Struct_4(global0.a, global0.a, global0.c))), !global1[_wgslsmith_index_u32(~u_input.b, 20u)]), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.a.a.x, 36022i, global0.a.a.x)), firstTrailingBit(~global0.b.a)), ~global0.c));
    global0 = Struct_4(global0.b, Struct_3(~vec3<i32>(var_1, func_1(u_input.e.x).a.a.x, _wgslsmith_dot_vec2_i32(global0.c.xz, global0.b.a.xy)), !vec2<bool>(var_0, all(vec2<bool>(false, var_0)))), _wgslsmith_mod_vec3_i32(~(~(~global0.b.a)), _wgslsmith_add_vec3_i32(global0.c, firstTrailingBit(vec3<i32>(1i, global0.c.x, 2147483647i)))));
    let var_2 = vec3<bool>(!var_0, var_0, select(var_0, any(global1[_wgslsmith_index_u32(1u, 20u)]), true));
    var var_3 = func_1(~61642u).a;
    var var_4 = func_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~22154u, u_input.a.x), ~vec3<u32>(u_input.e.x, u_input.e.x, 1u))).b;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + -572f), _wgslsmith_div_f32(1772f, -186f), _wgslsmith_f_op_f32(round(420f)), -190f))));
    global0 = Struct_4(global0.a, global0.b, firstTrailingBit(vec3<i32>(u_input.c, var_3.a.x, ~var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 40709u, u_input.e.x, 8542u), abs(vec4<u32>(0u, 8640u, u_input.a.x, u_input.a.x)), vec4<u32>(11158u, 1u, u_input.b, u_input.a.x)) << (vec4<u32>(0u, u_input.b, u_input.a.x, ~0u) % vec4<u32>(32u)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, u_input.a.x, 12674u), vec4<u32>(85159u, 1u, u_input.a.x, 11949u)) ^ vec4<u32>(u_input.a.x, u_input.b, u_input.e.x, u_input.d))), _wgslsmith_f_op_f32(step(-271f, 363f)), _wgslsmith_f_op_f32(374f - -1427f));
}

