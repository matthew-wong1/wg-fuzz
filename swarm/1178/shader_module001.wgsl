struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> bool {
    var var_0 = u_input.a;
    return !(!(0i <= countOneBits(var_0.x)));
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.a >> (vec2<u32>(max(~firstTrailingBit(9201u), _wgslsmith_sub_u32(73327u | u_input.e.x, _wgslsmith_add_u32(18939u, 47690u))), max(_wgslsmith_add_u32(max(4294967295u, u_input.e.x), 45423u), u_input.e.x)) % vec2<u32>(32u));
    global0 = ~reverseBits(-1i) >> (reverseBits(0u) % 32u);
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.a.x & u_input.d.x, 1563i, 0i), vec4<i32>(var_0.x, u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(30523i, var_0.x, -2147483647i), u_input.b.zyz), var_0.x)), _wgslsmith_f_op_f32(step(-2057f, 654f)));
    global0 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(~(var_1.a.x >> (0u % 32u)), 4149i, -2147483647i, var_1.a.x), -_wgslsmith_clamp_vec4_i32(var_1.a, ~var_1.a, _wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(-2147483647i, 10566i, 2147483647i, var_0.x)))), -1i, !(any(vec2<bool>(true, true)) || true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-1159f - _wgslsmith_f_op_f32(sign(var_1.b))), 912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(277f)) * _wgslsmith_f_op_f32(step(var_1.b, -1125f))))));
    return u_input.b;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global0 = u_input.b.x;
    var var_0 = !(!vec4<bool>(true, false, true, !func_2(u_input.d.x, vec2<f32>(arg_0.x, arg_0.x))));
    let var_1 = Struct_1(-firstLeadingBit(select(vec4<i32>(2147483647i, -11435i, 25419i, -24097i), u_input.b, !vec4<bool>(var_0.x, var_0.x, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1564f));
    var var_2 = Struct_4(_wgslsmith_div_vec4_i32(func_3(), countOneBits(var_1.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 19107u, 0u), vec4<u32>(1u, u_input.e.x, 1u, 35629u)) % vec4<u32>(32u)))), firstTrailingBit(vec4<i32>(~abs(u_input.b.x), i32(-1i) * -var_1.a.x, 70989i | -var_1.a.x, _wgslsmith_sub_i32(~(-26426i), u_input.c.x ^ 0i))), var_1);
    global0 = abs(firstTrailingBit(12791i));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)), _wgslsmith_div_f32(-304f, -342f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -546f)))));
    global0 = ~func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-111f, -245f, 1000f))))) ^ u_input.b.x;
    let var_0 = Struct_4(u_input.b << (vec4<u32>(45015u, u_input.e.x, 1u, firstTrailingBit(~u_input.e.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-18115i, u_input.b.x, u_input.b.x, u_input.c.x), ~vec4<i32>(0i, -2147483647i, -35713i, u_input.b.x)), u_input.b), vec4<i32>(_wgslsmith_add_i32(-2147483647i, func_1(vec3<f32>(1901f, -1309f, 345f))), u_input.b.x, u_input.d.x, -40312i & u_input.b.x)), Struct_1(vec4<i32>(abs(u_input.c.x ^ 35362i), ~u_input.a.x, func_3().x, u_input.a.x), -496f));
    global0 = func_3().x >> (54591u % 32u);
    global0 = ~(-1i);
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) + _wgslsmith_f_op_f32(floor(-1716f)))) + -366f);
    var var_3 = Struct_3(-u_input.b.x, Struct_2(select(_wgslsmith_add_vec3_u32(vec3<u32>(18940u, u_input.e.x, 1u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), vec3<u32>(0u, 28139u, u_input.e.x), vec3<bool>(true, false, false)) << (abs(~vec3<u32>(1u, 37300u, 77036u)) % vec3<u32>(32u))), Struct_2(~vec3<u32>(~u_input.e.x, _wgslsmith_add_u32(21525u, u_input.e.x), u_input.e.x ^ u_input.e.x)), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(min(abs(vec4<u32>(var_3.b.a.x, var_3.b.a.x, u_input.e.x, 0u)), vec4<u32>(var_3.c.a.x, u_input.e.x, u_input.e.x, u_input.e.x)), reverseBits(vec4<u32>(var_3.b.a.x, var_3.c.a.x, var_3.c.a.x, var_3.c.a.x))) >> (_wgslsmith_div_vec4_u32(abs(~vec4<u32>(34448u, 0u, var_3.c.a.x, 4294967295u)), firstLeadingBit(reverseBits(vec4<u32>(var_3.c.a.x, u_input.e.x, 0u, 11055u)))) % vec4<u32>(32u)), abs(-var_1.a), _wgslsmith_sub_i32(firstLeadingBit(var_3.a), _wgslsmith_mod_i32(var_0.a.x, _wgslsmith_mod_i32(~u_input.a.x, var_1.a.x))), var_3.c.a, _wgslsmith_mod_i32(func_1(vec3<f32>(var_2, var_0.c.b, var_0.c.b)) ^ func_3().x, var_0.b.x));
}

