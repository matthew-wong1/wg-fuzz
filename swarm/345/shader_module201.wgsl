struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(!any(!global1[_wgslsmith_index_u32(43380u, 32u)]), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(global0.c, 1u, global0.c), vec3<u32>(global0.b.x, 24140u, global0.c), global0.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(52000u, 0u, 0u), u_input.b), firstLeadingBit(vec3<u32>(global0.c, 4294967295u, 0u) | vec3<u32>(global0.c, global0.c, global0.b.x))), global0.b.x));
    global0 = var_0.a;
    var var_1 = select(~vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.a, -2492i), vec4<i32>(0i, 1i, 2147483647i, -2583i))), _wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(19663i, 1i)), true), vec2<i32>(u_input.a, 1i)), all(global1[_wgslsmith_index_u32(~70966u, 32u)])) & ~countOneBits(firstTrailingBit(vec2<i32>(211i, 1i)) >> (~vec2<u32>(global0.c, var_0.a.c) % vec2<u32>(32u)));
    var_1 = min(select(~vec2<i32>(-26200i, var_1.x) << (global0.b.zy % vec2<u32>(32u)), abs(select(vec2<i32>(var_1.x, -10203i), vec2<i32>(var_1.x, -4497i), true) | firstTrailingBit(vec2<i32>(35220i, u_input.a))), vec2<bool>(all(!vec2<bool>(global0.a, true)), select(any(vec4<bool>(true, false, global0.a, var_0.a.a)), any(vec3<bool>(false, global0.a, false)), true))), reverseBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 31219i)) << (u_input.b.yx % vec2<u32>(32u))));
    var_1 = _wgslsmith_div_vec2_i32(min(vec2<i32>(48856i | ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, var_1.x, 1i), vec4<i32>(var_1.x, -1i, u_input.a, var_1.x) ^ vec4<i32>(-43020i, var_1.x, 42601i, 0i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i) >> (vec2<u32>(19091u, var_0.a.b.x) % vec2<u32>(32u)), ~vec2<i32>(-38396i, 36097i))), -vec2<i32>(0i, 1i) ^ ~(-vec2<i32>(u_input.a, 27481i)));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = -3033i < (((u_input.a >> (80300u % 32u)) >> (4294967295u % 32u)) << (arg_2.c % 32u));
    var var_1 = arg_2.c > ((1u ^ u_input.b.x) & ((global0.b.x & (4294967295u ^ u_input.b.x)) ^ (abs(42513u) & func_3())));
    let var_2 = arg_3.x;
    let var_3 = Struct_1(false, ~select(vec3<u32>(arg_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, arg_2.c), vec4<u32>(4294967295u, arg_2.c, 13453u, 11635u)), u_input.b.x), vec3<u32>(38379u, ~arg_2.b.x, 108869u), vec3<bool>(!global0.a, arg_2.a, !arg_2.a)), _wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(func_3()), 40844u), 47071u));
    let var_4 = arg_0;
    return vec4<u32>(~u_input.b.x, u_input.b.x, 0u, arg_2.b.x);
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(!global0.a, vec3<u32>(~(~u_input.b.x), 0u, _wgslsmith_dot_vec3_u32(arg_0.zwy, vec3<u32>(4294967295u, u_input.b.x, global0.b.x)) | u_input.b.x), 1u));
    return Struct_2(var_0.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = !arg_3;
    var var_1 = ~(_wgslsmith_div_i32(-2147483647i, u_input.a) & u_input.a);
    var var_2 = func_4(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 28088u, 45491u, arg_2.b.x) | abs(vec4<u32>(u_input.b.x, 1u, 0u, global0.b.x) >> (vec4<u32>(0u, arg_2.b.x, arg_1.a.b.x, 38125u) % vec4<u32>(32u))), max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, global0.b.x, 4294967295u, arg_2.b.x), vec4<u32>(80291u, u_input.b.x, 341u, arg_2.b.x) ^ vec4<u32>(global0.b.x, arg_2.b.x, u_input.b.x, arg_1.a.c)), _wgslsmith_mod_vec4_u32(func_2(vec3<i32>(-1i, -10031i, -3107i), 1i, Struct_1(arg_3, arg_1.a.b, arg_1.a.b.x), vec2<f32>(-2228f, 574f)), vec4<u32>(u_input.b.x, arg_2.c, u_input.b.x, 4294967295u) & vec4<u32>(44069u, arg_1.a.c, u_input.b.x, 0u)))));
    var var_3 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1065f) + -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, ~(~reverseBits(global0.b) | _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1558u, 1u, 0u), u_input.b), ~u_input.b)), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -424f))), _wgslsmith_f_op_f32(abs(-304f)), 101f), Struct_2(Struct_1(global0.a, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 54821u, global0.c), u_input.b), global0.c)), var_0, select(all(vec4<bool>(true, true, true, var_0.a)), true, var_0.a))), _wgslsmith_div_vec3_u32(vec3<u32>(~abs(global0.b.x), 1u, (global0.c ^ 0u) | u_input.b.x), global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)), vec3<i32>(-1i) * -vec3<i32>(~(-2147483647i), -1i, u_input.a));
}

