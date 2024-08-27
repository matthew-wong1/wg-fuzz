struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec2<f32>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -abs(_wgslsmith_div_vec3_i32(vec3<i32>(-9705i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.b, 0i))), abs(select(abs(vec3<i32>(-2147483647i, u_input.b, -25026i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(u_input.b, 2147483647i, -14462i)), any(vec2<bool>(true, false)))) >> (u_input.c % vec3<u32>(32u)));
    let var_1 = vec4<u32>(u_input.d, countOneBits(_wgslsmith_mult_u32(17697u, countOneBits(~1u))), u_input.c.x, ~_wgslsmith_clamp_u32(19437u, max(1u, min(u_input.c.x, 4294967295u)), 4294967295u));
    global0 = array<Struct_1, 25>();
    var var_2 = vec2<f32>(637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, 367f))))));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = vec2<i32>(u_input.b, ~reverseBits(1i) << (u_input.c.x % 32u));
    let var_2 = ~vec3<u32>(select(u_input.c.x, select(~10196u, u_input.d, var_1.x == 1i), firstTrailingBit(u_input.c.x) >= u_input.c.x), countOneBits(1u), 63449u);
    var var_3 = ~reverseBits(vec2<i32>(_wgslsmith_div_i32(0i, abs(-2147483647i)), ~5784i));
    global0 = array<Struct_1, 25>();
    return vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), !(true == !(var_3.x <= var_3.x)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<vec2<f32>, 19>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u << (u_input.d % 32u), ~72581u, ~_wgslsmith_add_u32(4079u, u_input.c.x), u_input.c.x), ~vec4<u32>(u_input.d << (u_input.c.x % 32u), 6734u, u_input.c.x, _wgslsmith_mod_u32(47032u, u_input.d))) >> (u_input.d % 32u);
    var var_1 = Struct_1(select(vec2<bool>(!arg_0, true), !select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0)), any(func_2(global1[_wgslsmith_index_u32(~u_input.d, 19u)]))));
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    return Struct_2(~(u_input.b >> (reverseBits(~0u) % 32u)), global0[_wgslsmith_index_u32(~countOneBits(30651u), 25u)]);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2.b.a;
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    return func_1(false).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec4<bool>(u_input.a < 68176i, any(vec4<bool>(true, true, false, false)), u_input.b < 2147483647i, true)));
    var var_1 = func_4(-1459f, _wgslsmith_add_vec3_i32(~countOneBits(vec3<i32>(13432i, 2147483647i, u_input.b) >> (u_input.c % vec3<u32>(32u))), reverseBits(~vec3<i32>(u_input.b, -2147483647i, 1i)) ^ ~vec3<i32>(-1i, u_input.a, u_input.b)), func_1(false), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 26048i), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-30507i, 1i)));
    let var_2 = _wgslsmith_sub_vec4_i32(abs(reverseBits(reverseBits(vec4<i32>(36063i, 36554i, 1i, u_input.b) ^ vec4<i32>(u_input.b, -7677i, u_input.a, -1i)))), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a, u_input.b), max(vec4<i32>(-2147483647i, -2147483647i, 38039i, u_input.b), vec4<i32>(u_input.a, u_input.b, u_input.b, 2147483647i)))));
    var_0 = vec4<bool>(false, !func_2(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 19u)]).x, !(!(var_0.x & false)) || !(~(-60074i) > _wgslsmith_sub_i32(u_input.a, u_input.a)), false);
    var var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1120f, _wgslsmith_f_op_f32(f32(-1f) * -1252f), var_2.x <= _wgslsmith_mult_i32(7089i, u_input.b)))), vec3<i32>(-20599i, ~(~_wgslsmith_clamp_i32(-45783i, 2147483647i, -65563i)), var_2.x), func_1(any(select(vec4<bool>(false, var_1.a.x, true, var_0.x), vec4<bool>(var_0.x, var_1.a.x, var_0.x, false), true))), var_2.wx);
    var var_4 = Struct_2(34178i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, ~u_input.c.x), 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(var_2.x, u_input.a), abs(-67837i), abs(-(0i & u_input.a)), ~(-33915i)), vec4<i32>(var_4.a >> (~select(u_input.c.x, 4294967295u, var_4.b.a.x) % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(~11685i, abs(u_input.a)), ~(-665i)), var_2.x, _wgslsmith_mult_i32(u_input.b, reverseBits(-u_input.b))), abs(u_input.c.x) & (_wgslsmith_sub_u32(u_input.d, u_input.d | 1u) >> (~u_input.d % 32u)));
}

