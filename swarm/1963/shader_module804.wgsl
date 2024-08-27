struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = -57204i;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global2 = array<Struct_1, 23>();
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f - 938f)))), _wgslsmith_f_op_f32(f32(-1f) * -428f)))));
    var var_2 = vec2<bool>(false & any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false))));
    let var_3 = 1000f;
    return var_1;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = abs(reverseBits(~51010u));
    global0 = u_input.d;
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var_2 = Struct_1(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-834f - 786f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(u_input.d, 32980i, u_input.d), vec3<i32>(66735i, 1i, u_input.d)))) + _wgslsmith_f_op_f32(select(-673f, var_1.b, false))), any(select(!vec3<bool>(var_1.a, var_2.a, var_2.a), vec3<bool>(true, true, var_2.a), vec3<bool>(var_2.a, true, false))))));
    return _wgslsmith_add_i32(arg_0.x, ~(~((i32(-1i) * -29033i) ^ min(arg_0.x, -48880i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = abs((-2147483647i << (0u % 32u)) ^ ~func_2(~vec3<i32>(-33624i, arg_3.x, arg_1)));
    global0 = arg_3.x;
    var var_0 = u_input.b;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(402f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))), arg_2.b, -1090f, arg_2.b);
    var_0 = -(~_wgslsmith_sub_i32(0i, 2147483647i));
    return global2[_wgslsmith_index_u32(u_input.a, 23u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~34665u, 23u)];
    global1 = -u_input.b;
    var var_1 = 4294967295u;
    global0 = -1i;
    var var_2 = func_2(vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(u_input.d, u_input.d, u_input.b), vec3<i32>(u_input.b, 0i, u_input.b), vec3<bool>(false, false, false))), vec3<i32>(-u_input.d, abs(55974i), -2147483647i)), u_input.d, ~u_input.b));
    return Struct_1(!(!any(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(arg_1.a, false, true), arg_1.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = -22935i >> (~_wgslsmith_mod_u32(~(~arg_2.x), (arg_2.x >> (arg_2.x % 32u)) ^ u_input.a) % 32u);
    var_1 = _wgslsmith_mult_i32(~u_input.b, 37114i);
    let var_2 = ~((_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, arg_2.x, arg_2.x)), vec4<u32>(1u, 0u, 0u, arg_2.x)) ^ ~firstTrailingBit(0u)) << (reverseBits(arg_2.x) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, 1809f, -606f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1362f, 1146f, -1100f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, -623f, 955f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, -659f) * vec3<f32>(558f, arg_0.b, arg_0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, arg_0.b, -741f)) + _wgslsmith_div_vec3_f32(vec3<f32>(689f, -330f, 346f), vec3<f32>(2206f, -526f, arg_0.b))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -293f;
    var var_1 = func_5(func_4(min(~u_input.a, 0u), func_1(vec4<bool>(true, var_0 != 1664f, true, false), u_input.b, Struct_1(true, _wgslsmith_f_op_f32(var_0 * 1475f)), ~vec4<i32>(9304i, 1i, 1i, -1i))), true, firstLeadingBit(u_input.c), ~abs(vec3<i32>(u_input.d, min(-27533i, -22813i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -38075i, u_input.d, u_input.b), vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.b)))));
    var_1 = func_1(!(!select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), true), vec4<bool>(false, var_1.a, var_1.a, var_1.a), !vec4<bool>(var_1.a, false, var_1.a, var_1.a))), u_input.d, Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_0)), -vec4<i32>(u_input.d, i32(-1i) * -1i, i32(-1i) * -1i, -u_input.b) | firstLeadingBit(countOneBits(max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -48560i, -1i, u_input.d)))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 23u)];
    global1 = firstTrailingBit(0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-53517i), _wgslsmith_mult_i32(abs(u_input.d) << (0u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 41601i, u_input.d), vec3<i32>(u_input.b, 1i, u_input.b))), u_input.b), 1u, vec3<i32>(~50022i, -firstLeadingBit(reverseBits(u_input.d)), _wgslsmith_div_i32(u_input.d, abs(u_input.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2.b)))));
}

