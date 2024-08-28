struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: u32 = 18834u;

var<private> global3: array<vec3<bool>, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1419f)));
    var var_1 = Struct_1(-517f);
    global1 = array<vec3<i32>, 30>();
    let var_2 = false;
    global2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(21559u, 0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 35459u, 7122u), vec3<u32>(43102u, 23071u, u_input.c))), 57659u), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, ~1u, u_input.c, ~40163u), countOneBits(vec4<u32>(1u, 4294967295u, 1129u, 4294967295u)), !all(vec2<bool>(var_2, true))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, ~3595u, _wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_clamp_u32(8096u, 1u, u_input.c)), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 46027u), vec4<u32>(1u, 15976u, u_input.c, 49413u)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 10157u), vec4<bool>(false, false, true, var_2)))));
    return vec4<u32>(16886u, ~u_input.c, _wgslsmith_div_u32(u_input.c, u_input.c), u_input.c);
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = -330f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0 + var_0));
    global1 = array<vec3<i32>, 30>();
    global0 = u_input.a.x;
    global3 = array<vec3<bool>, 26>();
    return func_3();
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c, 1u, ~u_input.c, ~52083u), ~(~vec4<u32>(0u, 1u, 1u, 14301u))), ~_wgslsmith_mod_vec4_u32(func_2(vec4<bool>(arg_1, false, arg_1, arg_1)), vec4<u32>(arg_2, u_input.c, 41642u, 1u))), vec4<u32>(arg_2, arg_2, select(reverseBits(~81854u), arg_2, arg_1), ~arg_2));
    var_0 = vec4<u32>(50575u, ~(~var_0.x), 1u, firstTrailingBit(4294967295u)) & func_3();
    global0 = 1i;
    var_0 = ~(vec4<u32>(~1u, ~u_input.c, 4294967295u, var_0.x) << (~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 84144u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(30231u, var_0.x, 0u, 0u), vec4<u32>(arg_2, arg_2, u_input.c, 0u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))) % vec4<u32>(32u)));
    var var_1 = !(!vec2<bool>(false, !(false && arg_1)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(func_1(Struct_1(-945f), true, select(~1u, 1u, true)), -(-_wgslsmith_mult_i32(u_input.a.x, u_input.d.x) | 2147483647i));
    global1 = array<vec3<i32>, 30>();
    global3 = array<vec3<bool>, 26>();
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1063f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f), -338f), _wgslsmith_f_op_f32(select(140f, 1843f, !var_0))))));
    global2 = reverseBits(~u_input.c & _wgslsmith_div_u32(u_input.c, ~42819u)) ^ (~u_input.c ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 102730u), ~vec2<u32>(u_input.c, 20242u)) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(12104u, u_input.c) & vec2<u32>(1u, u_input.c)) % 32u)));
    global2 = firstLeadingBit(42173u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(34611i, u_input.a.x, ~1i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b.x, u_input.b.x, 24990i, 0i) << (vec4<u32>(4294967295u, 0u, 116164u, u_input.c) % vec4<u32>(32u))), select(firstLeadingBit(vec4<i32>(0i, -2147483647i, 17065i, u_input.a.x)), vec4<i32>(-10518i, u_input.a.x, u_input.a.x, 2147483647i), var_0))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 25737u & _wgslsmith_mod_u32(u_input.c, u_input.c)), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(0u, u_input.c)), min(vec2<u32>(23364u, 82173u), vec2<u32>(4294967295u, u_input.c))))), var_1.a);
}

