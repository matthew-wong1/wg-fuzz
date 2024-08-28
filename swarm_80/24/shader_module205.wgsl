struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    return arg_1;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_1(~95762u, ~arg_1.b, ~(arg_1.c << (vec2<u32>(func_1(346f, Struct_1(u_input.a, vec4<u32>(arg_1.a, arg_2.x, arg_2.x, arg_1.a), vec2<i32>(1i, 1i), 1323u, arg_1.e), arg_1.c.x).d, 25610u) % vec2<u32>(32u))), ~u_input.a, !arg_0);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 4>();
    let var_0 = func_1(-221f, Struct_1(1u, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 75445u), vec4<u32>(1u, 4294967295u, 47341u, u_input.a)), -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.e.x), u_input.e)), u_input.a, 4294967295u != _wgslsmith_add_u32(1u, u_input.a)), u_input.e.x);
    var var_1 = -5211i;
    let var_2 = var_0.c << (reverseBits(select(vec2<u32>(abs(var_0.d), u_input.a), _wgslsmith_div_vec2_u32(var_0.b.xw, var_0.b.zw) ^ func_2(var_0.e, Struct_1(var_0.a, var_0.b, vec2<i32>(u_input.c, u_input.c), 1u, false), vec2<u32>(var_0.a, u_input.a)), select(!vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, var_0.e), 106574u >= var_0.b.x))) % vec2<u32>(32u));
    var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i << (countOneBits(u_input.a) % 32u), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -5547i, var_2.x), vec3<i32>(var_2.x, u_input.d.x, var_0.c.x))), var_2.x, firstTrailingBit(var_0.c.x | 24092i))), _wgslsmith_mult_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 3750i, u_input.d.x, 0i), vec4<i32>(-1i, var_2.x, var_0.c.x, var_2.x)), vec4<i32>(0i, var_0.c.x, var_2.x, var_2.x) ^ vec4<i32>(-1i, var_2.x, var_2.x, -2147483647i)), min(vec4<i32>(u_input.c, var_2.x, -1i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, var_2.x, u_input.e.x, 1i), vec4<i32>(u_input.e.x, u_input.c, var_2.x, var_0.c.x)))) | vec4<i32>(1i, 10200i, max(countOneBits(1i), 0i), -11210i));
    var_1 = _wgslsmith_add_i32(var_0.c.x, _wgslsmith_sub_i32(min(17925i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, -25718i, -28403i, -54238i), -vec4<i32>(-2147483647i, -2147483647i, -66790i, -40713i))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_i32(var_0.c.x, -_wgslsmith_sub_i32(12845i, var_2.x)), _wgslsmith_div_i32(countOneBits(45660i) >> (var_0.d % 32u), var_0.c.x << (~u_input.a % 32u))), max(~u_input.b, ~vec3<i32>(2147483647i, u_input.c, u_input.e.x)));
}

