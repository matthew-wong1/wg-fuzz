struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 6>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: bool = true;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    global1 = vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) <= _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(~u_input.c.x, 6u)], select(u_input.b.x, -31460i, false) << (u_input.c.x % 32u)), false);
    let var_0 = select(vec4<bool>((false | all(vec2<bool>(global1.x, global1.x))) == global1.x, false, !(!global1.x) || global1.x, true), vec4<bool>(global1.x, false, true, true), true);
    var var_1 = false;
    global2 = array<i32, 6>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 2147483647i, 17707i, u_input.b.x)), vec4<i32>(~global2[_wgslsmith_index_u32(1u, 6u)], 0i, -u_input.b.x, global2[_wgslsmith_index_u32(~u_input.a, 6u)])) & u_input.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1007f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-886f)) + -226f))))), max(i32(-1i) * -2147483647i, abs(~global2[_wgslsmith_index_u32(4294967295u, 6u)])));
    return -11663i;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = arg_0;
    global2 = array<i32, 6>();
    let var_1 = var_0;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~u_input.c.x), arg_1 | ~arg_1, 38997u) ^ u_input.c.x, 6u)], var_1.b, _wgslsmith_add_i32(~countOneBits(global2[_wgslsmith_index_u32(u_input.a, 6u)]), func_3()));
    var_2 = Struct_1(var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 1208f)))), firstTrailingBit(~(-24607i)));
    return select(select(!(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true), global1.x)), !(!vec4<bool>(false, global1.x, false, true)), _wgslsmith_f_op_f32(-arg_0.b) > var_1.b), vec4<bool>(!all(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, true, global1.x))), any(vec4<bool>(!global1.x, var_2.c >= arg_0.c, select(false, global1.x, false), global1.x)), ~arg_1 > 46979u, global1.x), true);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = global1.x;
    let var_1 = Struct_1(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(arg_1.x, 6u)], global2[_wgslsmith_index_u32(u_input.c.x, 6u)]) ^ 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -316f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1798f)) + _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), -(~(~global2[_wgslsmith_index_u32(arg_1.x, 6u)])));
    let var_2 = _wgslsmith_f_op_f32(-var_1.b);
    global0 = func_3() | -28373i;
    global1 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1534f * arg_2.x) + _wgslsmith_f_op_f32(-var_1.b)) > arg_2.x, true);
    return max(~_wgslsmith_dot_vec4_u32(u_input.c, ~(~u_input.c)), ~reverseBits(firstLeadingBit(u_input.c.x)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_u32(func_4(any(!func_2(Struct_1(u_input.b.x, -1225f, global2[_wgslsmith_index_u32(u_input.a, 6u)]), u_input.c.x)), ~(~vec2<u32>(u_input.c.x, u_input.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1194f, 1434f, -1736f, -1169f)))))), _wgslsmith_div_u32(~u_input.a, ~u_input.c.x));
    var var_1 = global2[_wgslsmith_index_u32(abs(4294967295u), 6u)];
    global3 = u_input.b.x;
    global3 = ~(1i ^ firstTrailingBit(u_input.b.x)) | firstLeadingBit(2147483647i);
    global1 = func_2(Struct_1(_wgslsmith_div_i32(select(30693i, abs(2147483647i), true), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(44708u, 6u)], u_input.b.x, -26287i, global2[_wgslsmith_index_u32(0u, 6u)]), select(vec4<i32>(-2147483647i, -1i, 2147483647i, 37070i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 6u)], u_input.b.x, -1i, u_input.b.x), vec4<bool>(global1.x, true, false, true)))), 1000f, u_input.b.x), _wgslsmith_mult_u32(4294967295u >> (abs(u_input.c.x) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 1u, 13400u), vec4<u32>(u_input.c.x, u_input.a, 1u, 5253u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 75833u), vec4<u32>(u_input.a, 8391u, u_input.c.x, u_input.c.x)))) & reverseBits(36263u)).xx;
    return 771f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1040f - -1000f), _wgslsmith_f_op_f32(ceil(1157f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(237f, 1411f)))))), 946f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(685f, -501f)) + -866f))));
    var var_1 = func_2(Struct_1(1i >> (~(~u_input.a) % 32u), var_0.x, u_input.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(26551u), abs(7612u), u_input.a | u_input.a), vec3<u32>(u_input.c.x, firstLeadingBit(u_input.a), u_input.c.x))).wwx;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(~u_input.a, 6u)], _wgslsmith_f_op_f32(-2436f * _wgslsmith_f_op_f32(sign(1170f))), ~1i);
    var var_3 = Struct_1(abs(1i), _wgslsmith_f_op_f32(ceil(var_2.b)), -33053i);
    var_1 = vec3<bool>(all(vec3<bool>(true, true, var_1.x)), _wgslsmith_mult_i32(-37044i, min(u_input.b.x, _wgslsmith_add_i32(12000i, var_3.a))) == var_3.c, 4294967295u <= u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-((vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], -420i, u_input.b.x, 2147483647i) | firstLeadingBit(vec4<i32>(var_3.c, var_3.a, var_3.a, global2[_wgslsmith_index_u32(u_input.a, 6u)]))) & _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, var_2.a, 1i, 40669i), countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(1u, 6u)], 29379i, global2[_wgslsmith_index_u32(u_input.a, 6u)], var_3.a)))));
}

