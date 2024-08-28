struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, false, false, false, true, false, true, false, false, false, false, false, true, false, true, true, true);

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(9092u, 58986u), vec2<u32>(0u, 0u), vec2<u32>(67979u, 8624u), vec2<u32>(32840u, 9608u), vec2<u32>(26404u, 1u), vec2<u32>(6652u, 77167u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 438u), vec2<u32>(1u, 15230u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(36590u, 5532u), vec2<u32>(52516u, 0u), vec2<u32>(87284u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 16332u), vec2<u32>(0u, 51890u), vec2<u32>(9107u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(108646u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 55890u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(86157u, 4294967295u), vec2<u32>(4294967295u, 20179u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 24778u), vec2<u32>(0u, 0u), vec2<u32>(60451u, 1u), vec2<u32>(19020u, 68240u));

var<private> global3: vec4<u32>;

var<private> global4: array<bool, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    global4 = array<bool, 32>();
    global1 = array<Struct_2, 4>();
    var var_0 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, global3.x))), u_input.b.x >> (~global3.x % 32u)));
    var var_1 = Struct_1(global3.x);
    global0 = array<bool, 31>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 4>();
    var var_0 = func_1(true, 5744i, vec3<bool>(true, true, false), u_input.a > reverseBits(u_input.a));
    global4 = array<bool, 32>();
    let var_1 = _wgslsmith_div_i32(-3304i, -u_input.a);
    let var_2 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(global3.x, 0u))), 4u)];
    global1 = array<Struct_2, 4>();
    global2 = array<vec2<u32>, 31>();
    var var_3 = ~u_input.a;
    var_3 = min(_wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.a, 10922i) ^ -28682i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, 33190i, var_1), vec4<i32>(u_input.a, -2147483647i, var_1, u_input.a)), vec4<i32>(-1i, var_1, u_input.a, var_1)), -vec4<i32>(u_input.a, var_1, u_input.a, u_input.a))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1858f, 274f), 513f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, 0i), reverseBits(vec2<i32>(-2147483647i, 1i))), u_input.a), (vec4<i32>(min(u_input.a, 2147483647i), -2147483647i, -7252i, _wgslsmith_sub_i32(var_1, -1i)) << (abs(_wgslsmith_mod_vec4_u32(var_2.a, vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x))) % vec4<u32>(32u))) & max(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_1, var_1, -1i, var_1)), vec4<i32>(1i, 0i, u_input.a, 2147483647i) & vec4<i32>(1i, -1i, var_1, -1i)), abs(select(vec4<i32>(16176i, -67172i, u_input.a, 2147483647i), vec4<i32>(-14227i, -2407i, var_1, var_1), false))));
}

