struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: f32 = -1938f;

var<private> global3: f32;

var<private> global4: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 46594u, 11717u, 38045u, 0u, 0u, 24236u, 4931u, 66860u, 0u, 997u, 4294967295u, 4294967295u, 1u, 0u, 37871u, 4294967295u, 1u, 47860u, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    global0 = arg_3;
    global4 = array<u32, 21>();
    let var_1 = Struct_1(!(true & all(vec3<bool>(true, true, true))));
    global4 = array<u32, 21>();
    return global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2, 21u)], 21u)] | max(1u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(726u, u_input.a, 11983u, u_input.b), vec4<u32>(u_input.b, 111300u, u_input.b, 31721u))) | 7319u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(false);
    let var_1 = _wgslsmith_mult_i32(-51980i, ~(-firstLeadingBit(1i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(-1363f * -106f), true))))));
    return vec4<i32>(0i, _wgslsmith_clamp_i32(36805i, ~(firstTrailingBit(var_1) & var_1), ~(var_1 ^ min(var_1, 39158i))), -var_1 << (((u_input.b << ((61639u & arg_1.x) % 32u)) >> (countOneBits(max(global4[_wgslsmith_index_u32(u_input.b, 21u)], 69471u)) % 32u)) % 32u), 28982i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(-arg_2.x)))) - 530f);
    return Struct_1(true);
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(2312f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1294f))) * -113f));
    var var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(abs(func_2(vec3<i32>(2147483647i, 50872i, 1i), Struct_1(false), 0u, Struct_1(global0.a))), 21u)], min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 9077u, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<u32>(1u, 133680u, u_input.b, u_input.a)), u_input.a), u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.a, func_2(vec3<i32>(-2147483647i, 0i, 2147483647i), Struct_1(false), u_input.a, Struct_1(false)), abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33404u, 21u)], 21u)], 21u)], 21u)]))), 12u)], vec4<i32>(-1i) * -(vec4<i32>(0i, -62855i, 0i, 0i) | func_3(true, vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 21u)], 21u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1537f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-109f, _wgslsmith_f_op_f32(min(901f, -755f)), all(vec2<bool>(global0.a, global0.a)))))));
    let var_1 = Struct_2(-1019f, reverseBits(global4[_wgslsmith_index_u32(u_input.b, 21u)]));
    var var_2 = _wgslsmith_clamp_vec2_u32(select(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 1u), ~vec2<u32>(var_1.b, u_input.a)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(14644u, 56230u))), vec2<bool>(var_0.a && global0.a, true)), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(global4[_wgslsmith_index_u32(var_1.b, 21u)], var_1.b) >> (vec2<u32>(1u, 81254u) % vec2<u32>(32u)), vec2<u32>(0u, 25129u) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true)), firstLeadingBit(vec2<u32>(var_1.b, global4[_wgslsmith_index_u32(u_input.a, 21u)])) >> (vec2<u32>(4294967295u, 4989u) % vec2<u32>(32u))), vec2<u32>(abs(~u_input.a), 33966u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], 1u), ~((vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 21u)], 0u) ^ vec2<u32>(var_1.b, 55936u)) >> (vec2<u32>(var_1.b, var_1.b) % vec2<u32>(32u))), ~vec2<u32>(121743u, 4294967295u)));
    global3 = var_1.a;
    return Struct_2(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_sub_u32(~(~func_2(vec3<i32>(1i, 2147483647i, 28922i), Struct_1(false), 35584u, Struct_1(global0.a))), global4[_wgslsmith_index_u32(var_2.x, 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1786f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1025f, -151f)))));
    var var_1 = reverseBits(54258u);
    var var_2 = func_1();
    var var_3 = Struct_1(select(var_2.b > 4294967295u, true, any(!vec3<bool>(global0.a, false, global0.a))));
    let var_4 = func_4(abs(abs(global1[_wgslsmith_index_u32(var_2.b, 12u)])), vec4<i32>(-8357i, -14307i, _wgslsmith_mult_i32(80739i, 1i), _wgslsmith_add_i32(-(~0i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, 9862i))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1877f, -235f, 914f), vec3<f32>(-882f, -1228f, 568f), var_3.a)))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + -1000f) + var_2.a))));
    var var_5 = vec2<u32>(2331u, 16012u) ^ ~(~vec2<u32>(firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], 21u)]), u_input.a));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_6.b, 12u)]) << ((vec4<u32>(var_5.x, 44119u, var_2.b, var_2.b) ^ vec4<u32>(u_input.b, var_5.x, var_2.b, 0u)) % vec4<u32>(32u)), max(global1[_wgslsmith_index_u32(var_5.x, 12u)], -global1[_wgslsmith_index_u32(65345u, 12u)]), !(!vec4<bool>(var_3.a, true, var_3.a, true))) ^ max(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(~18248u | _wgslsmith_add_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.b, 21u)], 21u)]), 12u)]), func_1().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(781f, var_2.a, var_2.a))))))), reverseBits(firstLeadingBit(-1i)));
}

