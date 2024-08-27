struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<bool, 28>;

var<private> global2: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(23894i, -26615i), vec2<i32>(922i, 2147483647i), vec2<i32>(29593i, -52071i), vec2<i32>(1246i, 0i), vec2<i32>(i32(-2147483648), -3835i), vec2<i32>(0i, -20195i), vec2<i32>(23220i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 33743i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(49644i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(1509i, -8137i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = ~countOneBits(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 24067u, u_input.a))));
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = -215f;
    global0 = array<Struct_1, 2>();
    global1 = array<bool, 28>();
    var var_1 = select(!(!vec2<bool>(any(vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(0u, 28u)], false, true)), true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 28u)], func_3(global1[_wgslsmith_index_u32(~(~u_input.a), 28u)])), all(!vec4<bool>(false & global1[_wgslsmith_index_u32(arg_0.b, 28u)], select(arg_0.a, false, global1[_wgslsmith_index_u32(arg_0.b, 28u)]), u_input.a != 4294967295u, true)));
    let var_2 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(~vec3<i32>(-1i, -2147483647i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(min(1i, u_input.c.x) & arg_0.d.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 0i), i32(-1i) * -9102i), -2147483647i), arg_0.d.wzy));
    return -(~2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global2 = array<vec2<i32>, 12>();
    var var_0 = abs(~vec3<u32>(_wgslsmith_add_u32(u_input.a, 1u), u_input.a, 1u)) | abs(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_2.b, u_input.a), vec3<u32>(0u, 4294967295u, arg_2.b)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 43554u, 63495u), vec3<u32>(u_input.a, arg_2.b, arg_2.b))));
    var var_1 = -506f;
    let var_2 = countOneBits(select(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, u_input.a), ~vec3<u32>(u_input.a, arg_2.b, u_input.a)), ~vec3<u32>(var_0.x, 0u, 4294967295u), false) << (vec3<u32>(u_input.a, var_0.x >> (35151u % 32u), 19396u) % vec3<u32>(32u)));
    var_0 = var_2 << (vec3<u32>(u_input.a >> (_wgslsmith_mod_u32(arg_2.b, max(25029u, 4294967295u)) % 32u), var_2.x, _wgslsmith_sub_u32(9800u | arg_2.b, ~min(0u, 57294u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -1567f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> vec2<i32> {
    global1 = array<bool, 28>();
    var var_0 = vec2<bool>(true, false);
    var_0 = arg_3.xw;
    let var_1 = _wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(true, 1u, arg_1.c, vec4<i32>(-2147483647i, -2147483647i, -1i, 7775i), arg_1.e), 87019u), vec2<bool>(arg_1.a, arg_1.a), Struct_1(arg_1.a, 1u, arg_1.c, vec4<i32>(arg_1.d.x, u_input.b, arg_1.e.x, arg_0.x), vec4<i32>(arg_1.d.x, u_input.c.x, 2147483647i, -9034i)))))));
    return _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, max(~u_input.b, _wgslsmith_mult_i32(2147483647i, u_input.b) & -2147483647i)), -select(abs(vec2<i32>(u_input.c.x, 10842i)) | firstTrailingBit(arg_2), vec2<i32>(arg_2.x, arg_0.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 28>();
    let var_0 = true;
    global2 = array<vec2<i32>, 12>();
    let var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~min(u_input.b, 2147483647i), -1i), -vec2<i32>(-40860i, countOneBits(u_input.b))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(func_1(vec2<i32>(0i, -5838i), Struct_1(var_0, 38271u, -898f, vec4<i32>(u_input.c.x, -19148i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -54656i)), vec2<i32>(u_input.b, -25669i), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)])) >> (vec2<u32>(11795u, 1159u) % vec2<u32>(32u)), u_input.c.yz), ~global2[_wgslsmith_index_u32(select(33285u, max(u_input.a, 4294967295u), all(vec4<bool>(var_0, global1[_wgslsmith_index_u32(4294967295u, 28u)], false, global1[_wgslsmith_index_u32(4294967295u, 28u)]))), 12u)]));
    let var_2 = -_wgslsmith_div_i32(min(2147483647i, -var_1.x), ~2511i);
    let var_3 = Struct_1(global1[_wgslsmith_index_u32(64632u, 28u)], firstLeadingBit(_wgslsmith_mult_u32(~u_input.a, u_input.a << (min(u_input.a, 84834u) % 32u))), 1f, vec4<i32>(-2147483647i, -13679i, u_input.b, -6479i), firstTrailingBit(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(-28060i, 0i, u_input.c.x, -12706i), vec4<i32>(u_input.b, 2147483647i, 1i, 38511i)))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(709f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-662f)) * _wgslsmith_f_op_f32(round(var_3.c))))), _wgslsmith_f_op_f32(trunc(var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(exp2(var_4.x)))), var_3.e.x, var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) * 573f), false)), 955f), _wgslsmith_dot_vec3_i32(~(firstLeadingBit(vec3<i32>(-40001i, -6312i, var_1.x)) & u_input.c), min(vec3<i32>(var_2, ~0i, -u_input.c.x), vec3<i32>(u_input.b, 22494i, abs(-1i)))));
}

