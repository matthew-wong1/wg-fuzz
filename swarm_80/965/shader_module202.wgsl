struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = -(i32(-1i) * -2147483647i) | -u_input.a.x;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0 ^ (arg_0 | -2147483647i), _wgslsmith_mult_i32(arg_0 & -2147483647i, arg_0), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 20933i, 1i, u_input.c.x), -vec4<i32>(arg_3.b.x, arg_0, arg_0, u_input.a.x)), reverseBits(u_input.a.x)), reverseBits(vec4<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, 3691i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(1u, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 4294967295u), 15600u, 1u) % vec4<u32>(32u))) | max(select(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(2147483647i, 35547i, arg_0, arg_1.b.x), vec4<i32>(38432i, arg_3.b.x, -1i, u_input.c.x)), vec4<i32>(arg_0, 0i, -1i, arg_3.b.x), vec4<i32>(arg_0, arg_0, -59115i, arg_1.b.x)), ~firstLeadingBit(vec4<i32>(12259i, 3293i, 2147483647i, 0i)), arg_3.a), vec4<i32>(firstTrailingBit(-3933i) | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, arg_1.b.x, 20548i, -11213i), vec4<i32>(47862i, -9103i, u_input.a.x, arg_0)), _wgslsmith_mult_i32(u_input.a.x, arg_3.b.x >> (0u % 32u)), _wgslsmith_add_i32(-arg_0, -2147483647i), arg_3.b.x));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_2 = global0[_wgslsmith_index_u32(4543u, 28u)];
    return vec3<bool>(!any(vec4<bool>(arg_1.c, false | arg_1.c, var_2.a, arg_2.x > 276f)), true, select(var_2.a, arg_3.a, arg_2.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -853f)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = !vec3<bool>(true, func_3(arg_1.b.x, arg_1, vec3<f32>(_wgslsmith_f_op_f32(-1271f - 1312f), -1140f, -267f), Struct_1(arg_1.a, vec2<i32>(21209i, u_input.c.x), true)).x, any(vec4<bool>(arg_0.x & arg_1.a, true, 0u <= u_input.b.x, arg_0.x && arg_0.x)));
    var var_2 = vec2<f32>(706f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1062f, _wgslsmith_f_op_f32(-1000f + 299f))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x));
    let var_3 = Struct_1(true, ~(arg_1.b ^ -arg_1.b), (all(!vec4<bool>(arg_0.x, true, var_1.x, true)) | !arg_0.x) || (u_input.b.x > (countOneBits(u_input.b.x) << (89358u % 32u))));
    return _wgslsmith_mult_u32(u_input.b.x, ~(~u_input.b.x >> (~u_input.b.x % 32u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    return global0[_wgslsmith_index_u32(func_4(vec2<bool>(all(select(func_3(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec3<f32>(398f, -639f, 346f), Struct_1(true, vec2<i32>(u_input.a.x, arg_0), false)), vec3<bool>(true, true, true), u_input.b.x <= u_input.b.x)), false), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1162f)))) == 377f, u_input.a, !(_wgslsmith_f_op_f32(sign(1105f)) == _wgslsmith_f_op_f32(677f - 514f)))), 28u)];
}

fn func_1() -> Struct_1 {
    return func_2(firstLeadingBit(-u_input.a.x) & -u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.b.x ^ ~min(u_input.b.x, u_input.b.x);
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_2 = Struct_1(-_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.b.x, u_input.a.x), func_2(u_input.a.x).b.x) <= abs(var_0.b.x), ~var_0.b, !(!any(!vec3<bool>(true, var_0.c, var_0.c))));
    var var_3 = ~u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, func_4(select(!vec2<bool>(false, var_2.a), vec2<bool>(true, true), var_0.c), func_1())), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(611f, 971f))) - -832f));
}

