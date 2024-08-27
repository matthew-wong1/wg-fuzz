struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(firstTrailingBit(-6497i), -54702i);
    return Struct_1(vec3<i32>(~_wgslsmith_div_i32(-23218i, _wgslsmith_add_i32(2147483647i, -43761i)), -59500i & (1i | (2147483647i >> (u_input.b.x % 32u))), _wgslsmith_add_i32(~(~24093i), -4033i)), _wgslsmith_sub_u32(u_input.a.x, ~(u_input.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)))), ~u_input.b.yx);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = arg_1.a;
    var_0 = Struct_1(var_0.a, min(23820u, max(_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), u_input.b.x)), select(~(~vec2<u32>(90237u, var_0.b)), arg_1.a.c, false));
    var_0 = Struct_1(var_0.a, abs(~(~30964u)), _wgslsmith_sub_vec2_u32(firstTrailingBit(select(arg_1.a.c, vec2<u32>(arg_0, 4294967295u), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 21u)]))), u_input.b.xy) & vec2<u32>(4294967295u, u_input.a.x));
    return abs(~arg_1.a.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<bool, 21>();
    let var_0 = Struct_2(Struct_1(-func_3(arg_1.c.x, Struct_2(Struct_1(vec3<i32>(41386i, -2147483647i, 45698i), u_input.b.x, vec2<u32>(0u, arg_1.c.x)), 4294967295u)), u_input.a.x, abs(min(u_input.b.zz, vec2<u32>(21902u, 1u)))), arg_1.b);
    let var_1 = var_0;
    var var_2 = arg_0.x;
    var var_3 = var_1.a.a.x;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> bool {
    global0 = array<bool, 21>();
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.a.a.x, -25128i, arg_1), vec4<i32>(-1i, arg_0.a.a.x, -22596i, arg_0.a.a.x))), select(vec4<i32>(firstLeadingBit(-2147483647i), select(1i, arg_1, global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_dot_vec2_i32(arg_0.a.a.zy, arg_0.a.a.yx), 9i), vec4<i32>(min(0i, 10501i), ~arg_0.a.a.x, 76289i, -1i), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.b, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.c.x, 21u)], true, global0[_wgslsmith_index_u32(42950u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.c.x, 21u)], global0[_wgslsmith_index_u32(arg_0.a.c.x, 21u)], true, true)))), _wgslsmith_add_i32(_wgslsmith_add_i32(232i & -arg_0.a.a.x, -9777i), _wgslsmith_add_i32(arg_0.a.a.x, countOneBits(min(2147483647i, -11893i)))), ~arg_1 | ~12505i);
    let var_1 = arg_0.a;
    global0 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1295f)) - 523f) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-716f, 1619f), 418f, false)), -1000f), -444f));
    return global0[_wgslsmith_index_u32(15888u, 21u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> StorageBuffer {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(max(-2234f, 2278f)), -943f), func_1()).a;
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(~min(vec4<i32>(-31312i, arg_0.a.a.x, arg_0.a.a.x, -40430i), vec4<i32>(arg_0.a.a.x, 1i, arg_0.a.a.x, 38361i))), firstTrailingBit(reverseBits(-vec4<i32>(-37609i, 552i, var_0.a.x, 6355i))), vec4<i32>(-reverseBits(arg_0.a.a.x), arg_0.a.a.x & var_0.a.x, -1i, abs(0i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 14410i, -2147483647i, ~var_0.a.x), select(abs(vec4<i32>(51833i, 41586i, var_0.a.x, -10258i)), vec4<i32>(-59976i, var_0.a.x, 0i, -1i) ^ vec4<i32>(var_0.a.x, arg_0.a.a.x, var_0.a.x, -2147483647i), true), firstLeadingBit(vec4<i32>(var_0.a.x, var_0.a.x, 1i, 2147483647i)) | max(vec4<i32>(var_0.a.x, -1i, 42591i, arg_0.a.a.x), vec4<i32>(1596i, 2147483647i, 1i, -1i))) | countOneBits(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(4116i, var_0.a.x, 1470i, arg_0.a.a.x), vec4<i32>(3250i, arg_0.a.a.x, 1i, -3792i)), 1i, arg_0.a.a.x)));
    var var_2 = _wgslsmith_f_op_f32(abs(1f));
    let var_3 = ~0u;
    let var_4 = func_1();
    return StorageBuffer((vec3<i32>(func_1().a.x, var_0.a.x, abs(var_1.x)) ^ abs(abs(vec3<i32>(var_1.x, var_1.x, 0i)))) | (vec3<i32>(-2147483647i, ~var_0.a.x, func_2(vec2<f32>(-1116f, -106f), var_4).a.a.x) ^ (vec3<i32>(-1i) * -vec3<i32>(var_0.a.x, 18800i, 25495i))), (-_wgslsmith_div_i32(var_4.a.x, var_4.a.x) ^ var_0.a.x) << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(max(firstLeadingBit(-vec3<i32>(-2147483647i, 0i, 68045i)), select(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-16540i, -44716i, -980i), vec3<i32>(0i, -2147483647i, -25537i)), vec3<bool>(global0[_wgslsmith_index_u32(19055u, 21u)], false, true))), -firstTrailingBit(vec3<i32>(1i, 41406i, 0i)) | vec3<i32>(_wgslsmith_mult_i32(-1i, -12571i), 2147483647i << (u_input.a.x % 32u), -281i)), ~u_input.b.x, vec2<u32>(~u_input.b.x, 1u));
    var_0 = func_1();
    let x = u_input.a;
    s_output = func_5(Struct_2(func_1(), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.a.x | 48714u, ~4294967295u, var_0.c.x))), vec3<bool>(true & (!global0[_wgslsmith_index_u32(11295u, 21u)] && false), func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, 2233f)), Struct_1(vec3<i32>(-1i, 43053i, 39569i), u_input.b.x, vec2<u32>(1u, 4294967295u))), _wgslsmith_div_i32(select(var_0.a.x, var_0.a.x, true), var_0.a.x)), global0[_wgslsmith_index_u32(0u, 21u)]));
}

