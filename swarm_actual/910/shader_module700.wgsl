struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: f32;

var<private> global1: u32 = 4294967295u;

var<private> global2: i32 = 1i;

var<private> global3: array<bool, 21>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_2(firstTrailingBit(reverseBits(29134u)), Struct_1(any(select(select(vec4<bool>(arg_0, arg_0, global3[_wgslsmith_index_u32(4294967295u, 21u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 21u)], false, true, global3[_wgslsmith_index_u32(u_input.d, 21u)]), arg_0), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, true, true, true))), _wgslsmith_mult_i32(10054i, u_input.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -821f), vec2<f32>(-812f, 819f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-117f, 222f), vec2<f32>(609f, -557f)))))))), Struct_1(true, firstLeadingBit(-1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1464f)) * _wgslsmith_f_op_f32(min(-1110f, -352f))))), false, vec3<u32>(countOneBits(78659u), 46497u & u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(88452u, u_input.d, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u))));
    global2 = 6832i;
    let var_1 = _wgslsmith_f_op_f32(max(var_0.b.c.x, -158f));
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, var_2.c.x))), var_0.c.c, !select(!vec2<bool>(true, global3[_wgslsmith_index_u32(var_0.a, 21u)]), !vec2<bool>(var_0.b.a, global3[_wgslsmith_index_u32(1u, 21u)]), true))) * vec2<f32>(-1470f, var_0.c.c.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1240f, var_2.c.x)))))))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(arg_0, 21u)]));
    global3 = array<bool, 21>();
    var var_1 = -1130f;
    var var_2 = u_input.e;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))) * 424f))));
    return global3[_wgslsmith_index_u32(22886u, 21u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global3 = array<bool, 21>();
    let var_0 = _wgslsmith_sub_i32(-u_input.b.x, -18341i);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.x))))), arg_2.c.x, !any(select(select(vec3<bool>(true, arg_2.a, false), vec3<bool>(true, arg_2.a, global3[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(true, true, true)), !vec3<bool>(false, arg_0.x, false), arg_2.a))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -321f), -359f, global3[_wgslsmith_index_u32(select(21989u, _wgslsmith_mult_u32(1u, 44752u), arg_2.a), 21u)])) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2103f)))), arg_2.c.x) + arg_2.c.x));
    let var_2 = Struct_1(true, 41100i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))), arg_2.c.x));
    return u_input.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>) -> StorageBuffer {
    let var_0 = firstLeadingBit(~firstLeadingBit((arg_0 << (vec3<u32>(u_input.c, 24532u, u_input.c) % vec3<u32>(32u))) ^ (arg_0 | vec3<i32>(arg_0.x, arg_1, arg_1))));
    let var_1 = vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, _wgslsmith_mod_u32(0u, 5241u), 0u), 21u)], global3[_wgslsmith_index_u32(~4294967295u, 21u)]);
    var var_2 = func_4(!select(var_1, select(var_1, !vec2<bool>(false, var_1.x), var_1), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 4294967295u, 12694u), vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.c))), 21u)]), 21037u, Struct_1(func_2(0u), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1691f, arg_2.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x))))));
    let var_3 = Struct_1(true, 1i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(max(176f, _wgslsmith_f_op_f32(-arg_2.x)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -346f))));
    return StorageBuffer(-(~_wgslsmith_div_i32(arg_1, arg_0.x)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(60105u, 36788u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d) ^ vec3<u32>(u_input.a, u_input.d, 1401u), firstLeadingBit(vec3<u32>(17588u, u_input.c, 4294967295u)))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-(~(~vec3<i32>(-12036i, 38162i, u_input.e)) << (vec3<u32>(~u_input.d, 12833u | u_input.a, firstTrailingBit(u_input.c)) % vec3<u32>(32u))), -23035i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-602f, 1000f))) + vec2<f32>(1019f, 1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-706f, -1055f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(751f, 458f) - vec2<f32>(541f, -696f))))));
}

