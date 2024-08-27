struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: u32 = 4294967295u;

var<private> global2: i32 = -79056i;

var<private> global3: array<vec2<bool>, 19>;

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global4 = 2147483647i;
    return -firstTrailingBit(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 51449i, -2147483647i), vec3<i32>(1i, 2147483647i, -1i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> vec2<i32> {
    return vec2<i32>(func_3(), -_wgslsmith_div_i32(arg_0.a.x, 0i));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec4<bool>(false, any(global3[_wgslsmith_index_u32(~arg_0.x, 19u)]), ~(~4294967295u) <= u_input.a.x, false);
    global4 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_2(Struct_1(vec3<i32>(2147483647i, 0i, 0i), vec3<bool>(var_0.x, false, var_0.x)), vec4<f32>(1000f, 1000f, 601f, 936f), 32159u), abs(global0[_wgslsmith_index_u32(firstTrailingBit(77707u), 5u)])), min(vec2<i32>(1i, i32(-1i) * -2147483647i), vec2<i32>(-1i) * -global0[_wgslsmith_index_u32(24837u, 5u)]));
    global4 = _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 6387u, arg_0.x), 5u)], max(vec2<i32>(func_3(), -12616i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~62060u), _wgslsmith_add_u32(arg_0.x << (4294967295u % 32u), 2674u)), 5u)]));
    global1 = 911u;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(41898u << (~4294967295u % 32u), ~4294967295u), 26496u, reverseBits(0u), arg_0.x) ^ vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, 4294967295u, u_input.a.x & min(0u, 1u)), arg_0.x, arg_0.x, 1u);
    return i32(-1i) * -_wgslsmith_add_i32(-1i, 25374i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(abs(firstTrailingBit(vec3<i32>(-26275i, 2147483647i, 60071i))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(false, true, true))));
    var var_1 = 43389i;
    global3 = array<vec2<bool>, 19>();
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.x, var_0.a.a.x >> (1u % 32u)), -vec2<i32>(var_0.a.a.x, var_0.a.a.x)), abs(vec2<i32>(-2147483647i, func_1(u_input.a.yy)))), vec2<i32>(var_0.a.a.x, func_3()), -vec2<i32>((var_0.a.a.x & var_0.a.a.x) | firstLeadingBit(var_0.a.a.x), -16414i));
    var var_4 = ~countOneBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(53855u, u_input.a.x), min(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_5 = !(all(select(select(vec4<bool>(true, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, true, true, false)), var_0.a.b.x)) == var_0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

