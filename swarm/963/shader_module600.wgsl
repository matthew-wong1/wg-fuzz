struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> vec2<bool> {
    return !(!arg_0.yy);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = Struct_1(vec2<u32>(firstTrailingBit(select(var_0.a.x, var_0.a.x, arg_1.b.x) ^ (u_input.d >> (var_0.a.x % 32u))), u_input.d), !vec2<bool>(!arg_1.b.x, true));
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(arg_1.a.x), 13u)];
    let var_3 = firstLeadingBit(~(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, u_input.b, 1i, u_input.e), vec4<i32>(u_input.a.x, -31864i, -54916i, 1i)), vec4<i32>(u_input.b, arg_0.x, 7903i, 33243i)) ^ vec4<i32>(countOneBits(arg_0.x), 1890i, 2147483647i, u_input.e >> (var_0.a.x % 32u))));
    global0 = array<vec3<i32>, 14>();
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    let var_0 = func_3(vec2<i32>(u_input.a.x ^ -577i, min(u_input.e, 1i)), Struct_1(select(arg_1, arg_1, func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), _wgslsmith_div_u32(40347u, 1u), ~1u, arg_1 | arg_1)), vec2<bool>(_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(arg_0 - arg_0), true)));
    var var_1 = vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.b);
    global2 = array<Struct_1, 13>();
    var var_2 = var_0.a;
    var var_3 = abs(~var_2.x);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    global2 = array<Struct_1, 13>();
    let var_0 = ~(~vec3<u32>(func_1(_wgslsmith_f_op_f32(floor(942f)), u_input.c.zx & vec2<u32>(96268u, u_input.c.x), ~47057u), ~(~27834u), u_input.c.x));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(u_input.c.x, 2774u), abs(4294967295u)), _wgslsmith_clamp_u32(0u, 0u, abs(u_input.d)), _wgslsmith_mult_u32(1u, var_0.x)), _wgslsmith_add_u32(u_input.d, 4294967295u)), func_3(u_input.a.xz | ~vec2<i32>(u_input.b, u_input.b), func_3(u_input.a.xx, global2[_wgslsmith_index_u32(1u & ~u_input.c.x, 13u)])).b);
    var var_2 = all(vec3<bool>(false, var_1.b.x, var_1.b.x));
    let var_3 = func_3(vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.a.x, u_input.b, ~15168i)), global1[_wgslsmith_index_u32(47144u, 4u)]);
    let x = u_input.a;
    s_output = StorageBuffer(46343i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i ^ u_input.e, countOneBits(34892i), abs(-30013i), -2147483647i) | vec4<i32>(u_input.b, _wgslsmith_add_i32(17219i, -2147483647i), i32(-1i) * -40096i, select(u_input.a.x, -41814i, var_1.b.x)), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(19036i, 12468i, 4592i, u_input.e), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.e, u_input.e, u_input.e), vec4<i32>(-43943i, 40489i, 0i, u_input.b)), vec4<bool>(var_3.b.x, any(vec3<bool>(var_3.b.x, var_3.b.x, true)), var_3.b.x != var_1.b.x, false))), (_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 2147483647i, u_input.a.x, 1i), -vec4<i32>(u_input.a.x, -1i, u_input.b, -2147483647i)) | (~vec4<i32>(-19612i, 2147483647i, -7772i, -2147483647i) ^ -vec4<i32>(-1i, -1i, u_input.b, 23831i))) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d, 6012u, 0u)), ~vec4<u32>(var_1.a.x, 0u, 3100u, u_input.d))) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(abs(-778f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(618f, -1633f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1968f)))), -691f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1249f, 366f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2415f, -1778f)))), ~(reverseBits(u_input.a.x) ^ reverseBits(-1i)));
}

