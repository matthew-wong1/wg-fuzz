struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 18>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 0i, -39569i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = firstTrailingBit(vec2<i32>(-2147483647i, min(-(~global2.x), reverseBits(0i))));
    global2 = arg_0.a;
    var_0 = -vec2<i32>(-1i, ~_wgslsmith_sub_i32(global2.x, 29834i));
    var var_1 = -abs(_wgslsmith_div_i32(-173i, -42845i));
    var_1 = var_0.x;
    return vec2<i32>(-u_input.b >> (24099u % 32u), min(-_wgslsmith_add_i32(0i, 1i), firstLeadingBit(u_input.b)) << (arg_2.c.x % 32u));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1441f);
    global1 = array<Struct_3, 18>();
    let var_1 = abs(max(~u_input.d.xy, _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(arg_1, 0u)), u_input.d.wz)));
    let var_2 = Struct_2(Struct_1(func_3(global1[_wgslsmith_index_u32(25005u ^ var_1.x, 18u)], arg_2, Struct_1(~vec2<i32>(arg_0, global2.x), i32(-1i) * -1i, ~u_input.d), firstTrailingBit(u_input.d.xz)), arg_0, max(~(vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) ^ vec4<u32>(var_1.x, arg_1, u_input.d.x, arg_1)), ~u_input.d)), Struct_1(firstLeadingBit(firstLeadingBit(firstLeadingBit(global2.zy))), -2147483647i, vec4<u32>(abs(~arg_1), u_input.d.x, _wgslsmith_mult_u32(4294967295u & var_1.x, var_1.x), arg_1)));
    var var_3 = _wgslsmith_mod_vec4_i32(max(~abs(vec4<i32>(u_input.b, var_2.a.a.x, -1i, var_2.a.b)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, arg_0, u_input.b, 0i), vec4<i32>(arg_0, var_2.a.b, u_input.b, 6916i))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, 35132i, 32442i, global2.x), vec4<i32>(-2147483647i, 2147483647i, global2.x, -1i) & vec4<i32>(global2.x, u_input.b, arg_0, var_2.a.a.x)), u_input.b, i32(-1i) * -1i)) & vec4<i32>(i32(-1i) * -(~(-3150i)), _wgslsmith_sub_i32(global2.x, func_3(Struct_3(vec3<i32>(-26891i, -37028i, -32869i), vec4<u32>(var_1.x, 54167u, 0u, var_1.x), 2147483647i), var_0, Struct_1(vec2<i32>(26048i, 2147483647i), 2147483647i, vec4<u32>(63146u, 56221u, u_input.a, 56752u)), var_1).x << (firstTrailingBit(69654u) % 32u)), u_input.b, -2147483647i);
    return firstLeadingBit(938u << (countOneBits(firstTrailingBit(_wgslsmith_mult_u32(33216u, arg_1))) % 32u));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    global0 = vec3<bool>(select(!global0.x, true, 6272i != abs(abs(global2.x))), select(any(!vec3<bool>(false, false, arg_1)), !(u_input.a < 0u), false) || arg_1, (func_2(global2.x | 928i, ~u_input.a, -182f) ^ 13122u) <= u_input.c);
    global2 = vec3<i32>(-2147483647i, u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, u_input.b & u_input.b), ~(-43717i)), _wgslsmith_mod_i32(u_input.b, abs(-1i))));
    global1 = array<Struct_3, 18>();
    global2 = min(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, 61492i, 0i), vec3<i32>(1i, global2.x, -1i) ^ vec3<i32>(2147483647i, 5145i, -32239i)), countOneBits(-vec3<i32>(u_input.b, u_input.b, 1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, global2.x, u_input.b), abs(vec3<i32>(1i, 0i, global2.x) ^ vec3<i32>(u_input.b, u_input.b, global2.x))) ^ -firstTrailingBit(vec3<i32>(global2.x, 0i, -1i) ^ vec3<i32>(global2.x, u_input.b, -31320i)));
    return Struct_1(global2.zy, _wgslsmith_sub_i32(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global2.x, 48233i, u_input.b), select(vec4<i32>(global2.x, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, -46228i, u_input.b), vec4<bool>(true, false, global0.x, arg_1))), global2.x), u_input.b), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 18>();
    var var_0 = true;
    var var_1 = global2.x;
    let var_2 = func_1(-1000f, false);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(602f - 1045f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f - -612f) - _wgslsmith_f_op_f32(991f + -225f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1141f, -1000f), -336f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2268f - -192f), -947f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_4 = Struct_2(var_2, Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a.x, var_2.b, 3431i, -24849i), max(vec4<i32>(2147483647i, 10038i, u_input.b, 42089i), vec4<i32>(47653i, global2.x, global2.x, 0i))), func_3(global1[_wgslsmith_index_u32(85048u, 18u)], -1011f, Struct_1(vec2<i32>(1i, 49786i), -1i, u_input.d), vec2<u32>(0u, 4294967295u)).x << (_wgslsmith_mult_u32(var_2.c.x, var_2.c.x) % 32u)), -reverseBits(-2147483647i), vec4<u32>(var_2.c.x, reverseBits(4294967295u), abs(1u), firstTrailingBit(1u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.c.x, 1u, u_input.c), var_2.c) % vec4<u32>(32u))));
    global0 = select(select(!select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(false, true, global0.x)), vec3<bool>(true, true, true), global0.x), vec3<bool>(~(43531i | var_4.b.a.x) == -2147483647i, true, global0.x), false);
    var var_5 = 0i;
    global1 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_u32(1u, abs(var_2.c.x << (u_input.d.x % 32u))), 4294967295u, global0.x));
}

