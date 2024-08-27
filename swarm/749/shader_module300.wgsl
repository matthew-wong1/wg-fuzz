struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(51887u, 43134u, 1u, 131u), vec3<u32>(1u, 62341u, 0u), vec4<bool>(true, true, true, false), 0u, vec3<u32>(1u, 4294967295u, 22338u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> bool {
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    global1 = arg_1;
    global0 = array<vec4<u32>, 2>();
    return !(((-2147483647i <= (u_input.a << (global1.a.x % 32u))) || arg_0.c.x) && true);
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(global1.a & abs(global1.a), ~countOneBits(global1.a.xwx), vec4<bool>(1952f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1000f) + arg_0), !func_3(Struct_1(vec4<u32>(arg_1, 73262u, 5499u, 52121u), global1.e, vec4<bool>(global1.c.x, false, global1.c.x, true), global1.e.x, global1.e), Struct_1(vec4<u32>(global1.d, global1.d, global1.a.x, 4294967295u), vec3<u32>(88882u, 0u, 0u), vec4<bool>(true, false, global1.c.x, global1.c.x), global1.b.x, vec3<u32>(1u, global1.b.x, global1.e.x)), vec4<bool>(true, true, true, true), global1.e.x), false, true), arg_1, min(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.a.x, global1.b.x, 4294967295u), global1.a, global1.a), global0[_wgslsmith_index_u32(47175u & arg_1, 2u)]), arg_1, 1u), select(~(~vec3<u32>(0u, 55592u, arg_1)), ~reverseBits(global1.e), false)));
    global0 = array<vec4<u32>, 2>();
    let var_1 = !global1.c.x;
    global1 = var_0;
    var var_2 = global1.a;
    return var_0.e;
}

fn func_1() -> f32 {
    var var_0 = -countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(738i, 0i, u_input.a)), select(vec3<i32>(-14431i, u_input.a, 8876i), vec3<i32>(u_input.a, -2147483647i, u_input.a), global1.c.x)), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = u_input.a;
    var var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.b.x, global1.b.x, global1.d, global1.a.x), ~global0[_wgslsmith_index_u32(global1.a.x, 2u)])), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.x, 59192u, 36594u), func_2(586f, global1.d)), firstTrailingBit(vec3<u32>(~global1.e.x, min(76563u, global1.d), _wgslsmith_mod_u32(global1.d, global1.a.x)))), select(vec4<bool>(-336f < _wgslsmith_f_op_f32(sign(-714f)), true, true, !(!global1.c.x)), global1.c, all(select(global1.c.zy, vec2<bool>(false, global1.c.x), global1.c.x)) && all(global1.c)), 1u, reverseBits(reverseBits(vec3<u32>(9306u, 1213u, 1u))));
    var var_3 = countOneBits(~u_input.a);
    let var_4 = firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(9987i, -10709i, u_input.a), vec3<i32>(~u_input.a & ~(-2147483647i), reverseBits(~u_input.a), ~_wgslsmith_mod_i32(1i, u_input.a))));
    return -790f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 2>();
    var var_0 = ~(u_input.a | u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 358f) + -1395f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-672f)), _wgslsmith_f_op_f32(-1f)));
    global0 = array<vec4<u32>, 2>();
    var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, 3430u), ~50247u, u_input.a, u_input.a, vec4<u32>(global1.d, abs(_wgslsmith_clamp_u32(global1.e.x, _wgslsmith_sub_u32(global1.a.x, global1.d), ~4294967295u)), 17552u, global1.b.x));
}

