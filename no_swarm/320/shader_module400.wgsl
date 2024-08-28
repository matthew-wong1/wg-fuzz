struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
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

var<private> global0: array<bool, 29>;

var<private> global1: array<vec2<f32>, 23>;

var<private> global2: f32 = -716f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec4<i32>) -> vec3<bool> {
    return vec3<bool>(~arg_1.c.x <= (reverseBits(1u) << (max(min(1u, 1u), _wgslsmith_sub_u32(arg_1.c.x, 46059u)) % 32u)), !global0[_wgslsmith_index_u32(~(~select(arg_0, arg_0, global0[_wgslsmith_index_u32(61451u, 29u)])), 29u)], !arg_1.b.b.b.x | global0[_wgslsmith_index_u32(30266u, 29u)]);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = arg_1.x;
    global0 = array<bool, 29>();
    global2 = -276f;
    let var_1 = any(vec2<bool>(var_0 > arg_1.x, all(func_3(u_input.d, Struct_5(Struct_4(vec4<i32>(-16764i, -2147483647i, arg_0, -2147483647i)), Struct_2(vec4<f32>(var_0, var_0, 104f, 383f), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(44341u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(57171u, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 29u)], true), var_0, false, vec2<i32>(47846i, 1i)), -2147483647i, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(31709u, 29u)], false, global0[_wgslsmith_index_u32(u_input.e, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(37262u, 29u)]), 965f, global0[_wgslsmith_index_u32(u_input.e, 29u)], vec2<i32>(0i, 2147483647i)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 29u)], true, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.e, 29u)]), 1394f, true, u_input.c)), vec3<u32>(u_input.e, u_input.d, 0u)), Struct_4(vec4<i32>(-19970i, -1i, 2147483647i, 2147483647i)), vec4<i32>(arg_2, arg_0, arg_2, arg_0)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2288f);
    return false;
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = Struct_4(min(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.b, abs(1i), -u_input.b), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, u_input.a), vec4<i32>(u_input.c.x, 23150i, -21253i, 2147483647i))), select(-(vec4<i32>(u_input.b, -2147483647i, 1005i, 31656i) | vec4<i32>(-21613i, u_input.a, -1i, 53587i)), min(abs(vec4<i32>(8527i, 42033i, -2147483647i, u_input.c.x)), -vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b)), true)));
    var var_1 = any(vec4<bool>(!(func_2(var_0.a.x, global1[_wgslsmith_index_u32(59010u, 23u)], var_0.a.x) | true), !(_wgslsmith_add_i32(349i, -16241i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-29620i, 66806i, var_0.a.x), vec3<i32>(u_input.a, -39496i, u_input.a))), !global0[_wgslsmith_index_u32(arg_0, 29u)], select(!(!global0[_wgslsmith_index_u32(0u, 29u)]), global0[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_add_u32(arg_0, arg_0), 29u)], true)));
    global0 = array<bool, 29>();
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.a ^ abs(vec4<i32>(var_0.a.x, var_0.a.x, u_input.a, 2963i)), -min(countOneBits(vec4<i32>(u_input.b, -2147483647i, u_input.c.x, var_0.a.x)), vec4<i32>(u_input.b, var_0.a.x, u_input.b, 0i) | vec4<i32>(1i, u_input.b, u_input.c.x, -68905i))), vec4<i32>(-1i, firstLeadingBit(_wgslsmith_add_i32(35307i, var_0.a.x)), countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a.x), vec2<i32>(5585i, var_0.a.x))), ~(~2147483647i)));
    var var_3 = vec3<i32>(min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -31505i), vec3<i32>(1i, 2147483647i, var_0.a.x)), var_0.a.x, 53303i), var_0.a.x), min(i32(-1i) * -7494i, 2147483647i), _wgslsmith_add_i32(1i, ~abs(u_input.b))) & -(~_wgslsmith_mod_vec3_i32(var_0.a.yxz << (vec3<u32>(u_input.d, 10678u, u_input.d) % vec3<u32>(32u)), vec3<i32>(u_input.a, -20796i, 0i)));
    return -978f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = abs(vec2<u32>(abs(4294967295u), 25059u));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f + -1000f)) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-406f + 1089f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1056f - -970f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(14757u, 977f)))))));
    let var_1 = abs(~reverseBits(4294967295u));
    var var_2 = vec4<u32>(reverseBits(_wgslsmith_add_u32(~u_input.e, u_input.e)) & 66824u, var_1, 0u, 74214u);
    global1 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-7790i, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(60554i, u_input.b, u_input.c.x), vec3<i32>(2147483647i, 18349i, 2147483647i)), ~select(vec3<i32>(0i, 40465i, -2147483647i), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 29u)], true))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.b, 1i, -1448i)), max(19868i, u_input.b), -1i), select(~vec3<i32>(u_input.c.x, u_input.c.x, 25887i), -(vec3<i32>(u_input.b, u_input.b, 2147483647i) | vec3<i32>(-30852i, u_input.b, 2147483647i)), true)));
}

