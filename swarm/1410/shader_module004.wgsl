struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, -1327f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -385f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-1955f)))))));
    return 0i;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(-15874i, 9338i, -6110i)), ~vec3<i32>(-29038i, 0i, 38945i)), ~(-vec3<i32>(1i, 4137i, 2147483647i)))) & 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-422f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f))))), true);
    return _wgslsmith_div_u32(~u_input.b.x, ~(~33428u));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 12>();
    let var_0 = 4070i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.a))))), -270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-547f * -175f), _wgslsmith_div_f32(-281f, -451f), arg_0 != arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + arg_3.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_3.a, arg_3.a)))))), -767f);
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.x, 1u), 12u)];
    var var_3 = ~(-select(firstLeadingBit(vec3<i32>(var_0, -1i, 0i)), vec3<i32>(-1i, var_0, arg_0) & abs(vec3<i32>(var_0, -1i, 0i)), select(!vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, arg_2.x, true), select(vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_3.b, arg_3.b, arg_3.b), true))));
    return arg_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_0 = func_4(func_2(), vec4<u32>(23320u, ~func_3(), abs(~firstLeadingBit(20733u)), select(u_input.b.x & 1u, _wgslsmith_mult_u32(4294967295u << (arg_1 % 32u), arg_1 >> (1u % 32u)), all(vec4<bool>(false, true, true, false)) || false)), !vec2<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) < _wgslsmith_mult_u32(u_input.b.x, 86113u)), Struct_1(-729f, any(vec4<bool>(select(true, false, false), select(false, false, false), true, true))));
    let var_1 = !(!select(select(!vec2<bool>(true, var_0.b), vec2<bool>(true, true), any(vec3<bool>(var_0.b, var_0.b, true))), select(!vec2<bool>(var_0.b, false), select(vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b), false), vec2<bool>(true, true)), select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b)), !vec2<bool>(var_0.b, false), vec2<bool>(true, false))));
    let var_2 = true;
    return reverseBits(countOneBits(~u_input.b.x));
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_4(reverseBits(-1686i), firstLeadingBit(vec4<u32>(~arg_0.x, u_input.a.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 2943u, u_input.b.x, 0u)), firstTrailingBit(vec4<u32>(u_input.b.x, 80135u, u_input.b.x, u_input.a.x))), arg_0.x)), select(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), func_4(abs(_wgslsmith_add_i32(-4753i, 0i)), ~(vec4<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 1u, 1u, 65937u) ^ vec4<u32>(global0[_wgslsmith_index_u32(14512u, 12u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 12u)], 12u)], arg_0.x)) & vec4<u32>(countOneBits(4294967295u), 16582u, 55619u, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(func_4(1i, vec4<u32>(23518u, u_input.b.x, arg_0.x, u_input.b.x), vec2<bool>(false, false), Struct_1(844f, false)).b, false), true), func_4(~2147483647i, vec4<u32>(global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0.x, 12u)], 0u), _wgslsmith_mod_u32(22313u, 9538u), 665u), select(vec2<bool>(false, true), vec2<bool>(true, true), func_4(-2147483647i, vec4<u32>(u_input.b.x, 24867u, 23633u, arg_0.x), vec2<bool>(false, true), Struct_1(839f, true)).b), Struct_1(-967f, func_4(-28414i, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2302u, 12u)], 12u)], 0u, u_input.b.x, arg_0.x), vec2<bool>(true, true), Struct_1(1000f, true)).b))));
    var var_1 = Struct_2(-12644i, func_4(1i, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a.x, arg_0.x, 48924u), vec4<u32>(arg_0.x, u_input.a.x, 56086u, u_input.b.x)), !(!vec2<bool>(var_0.b, true)), Struct_1(-1484f, all(select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, false, false), true)))), ~(_wgslsmith_div_i32(1i, -20735i) | _wgslsmith_clamp_i32(-7844i, 15096i, -19198i)) <= _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, 27296i, -2147483647i), abs(~vec4<i32>(-27434i, 2900i, -1i, 0i))), var_0.b, abs(-1i >> (u_input.b.x % 32u)));
    var_0 = Struct_1(-1250f, true);
    let var_2 = firstLeadingBit(select(_wgslsmith_div_vec3_i32(vec3<i32>(18442i, -1i, -55361i), vec3<i32>(var_1.e, var_1.a, -80486i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2056i, var_1.a, 2147483647i), vec3<i32>(var_1.a, var_1.a, -33132i)), all(vec4<bool>(var_1.b.b, false, false, false))) | _wgslsmith_div_vec3_i32(abs(vec3<i32>(var_1.a, var_1.a, 846i)), ~vec3<i32>(var_1.a, var_1.e, var_1.a))) << (~vec3<u32>(_wgslsmith_sub_u32(71998u, firstLeadingBit(2039u)), max(arg_0.x, 1u), 3152u) % vec3<u32>(32u));
    global0 = array<u32, 12>();
    return Struct_1(-1010f, var_0.b);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_2.a;
    let var_1 = arg_2;
    var var_2 = ~(~u_input.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a) + arg_0.a));
    let var_4 = Struct_2(_wgslsmith_add_i32(countOneBits(arg_2.e), 1i), arg_3, _wgslsmith_clamp_i32(var_0, func_2(), _wgslsmith_mod_i32(~arg_2.e, var_1.a)) == countOneBits(firstLeadingBit(-var_0)), any(!vec4<bool>(arg_0.b, !arg_2.b.b, false, !arg_0.b)), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0, firstLeadingBit(arg_2.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(var_0, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, var_1.a), ~vec2<i32>(arg_2.e, arg_2.a)))));
    return StorageBuffer(_wgslsmith_dot_vec2_i32(-(reverseBits(vec2<i32>(833i, -1i)) & (vec2<i32>(var_0, -1i) | vec2<i32>(arg_2.a, -2147483647i))), vec2<i32>(abs(var_4.a << (68038u % 32u)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.e, var_4.a, 2147483647i, var_4.e), vec4<i32>(-33347i, 1i, var_4.e, var_4.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let x = u_input.a;
    s_output = func_6(func_5(firstLeadingBit(vec3<u32>(u_input.b.x, func_1(vec2<i32>(-1i, 2147483647i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48469u, 12u)], 12u)]), ~global0[_wgslsmith_index_u32(50480u, 12u)]))), global0[_wgslsmith_index_u32(4294967295u, 12u)], Struct_2(func_2() | 1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(341f))), false), true, true, -func_2()), Struct_1(_wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(f32(-1f) * -721f)), any(vec4<bool>(true, any(vec2<bool>(true, true)), true, true))));
}

