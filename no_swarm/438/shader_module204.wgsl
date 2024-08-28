struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: vec2<f32> = vec2<f32>(-572f, 563f);

var<private> global2: array<vec2<f32>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(672f, global1.x))), -1281f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.x)))))))));
    var var_0 = Struct_2(-800f, ~_wgslsmith_sub_u32(arg_1.a.x, ~_wgslsmith_mult_u32(118677u, arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(arg_1.a.x, 21u)]))))), true);
    global2 = array<vec2<f32>, 21>();
    return _wgslsmith_f_op_f32(-234f + var_0.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x * arg_2.e.x)), -575f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(20220u, ~arg_2.a.a.x, 4294967295u, arg_2.a.a.x ^ _wgslsmith_div_u32(arg_2.a.a.x, 0u)), arg_2.a, arg_2.d.x)));
    global0 = array<Struct_3, 26>();
    var var_2 = _wgslsmith_dot_vec4_i32(~(-(arg_3 & firstLeadingBit(arg_3))), arg_3);
    let var_3 = vec2<u32>(7938u | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 319u, arg_2.a.a.x), ~vec3<u32>(1u, 1u, 0u)), vec3<u32>(1u, 1u, 4294967295u) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.a.x, 1u, 1u), vec3<u32>(35022u, arg_2.a.a.x, 20126u))), _wgslsmith_clamp_u32(min(~0u, abs(_wgslsmith_mult_u32(4294967295u, 0u))), arg_2.a.a.x, min(reverseBits(_wgslsmith_mult_u32(40836u, 37167u)), arg_2.a.a.x)));
    return _wgslsmith_clamp_u32(abs(~18336u), 30779u, _wgslsmith_mult_u32(arg_2.a.a.x, arg_2.a.a.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(global1.x, 1u, firstTrailingBit(select(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(16420u, 40622u, 8256u)), vec3<u32>(1u, 1u, 1u)), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, global1.x), global2[_wgslsmith_index_u32(2819u, 21u)])), _wgslsmith_f_op_f32(-global1.x), global0[_wgslsmith_index_u32(~44913u, 26u)], min(vec4<i32>(u_input.a, -1i, 19456i, u_input.a), vec4<i32>(u_input.a, -7058i, u_input.a, u_input.a))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(2445u, 21u)] - vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1266f, -1570f))), true))), all(select(vec3<bool>(true, all(vec2<bool>(true, false)), u_input.a < -1i), vec3<bool>(false, all(vec2<bool>(true, false)), true), vec3<bool>(true, all(vec3<bool>(false, true, false)), true))));
    var var_1 = ~_wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b, var_0.c, 0u)), vec3<u32>(var_0.c, 0u, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(var_0.b, 0u, var_0.c), ~var_0.b, var_0.b) | vec3<u32>(var_0.b | 30163u, reverseBits(0u), var_0.c));
    global1 = global2[_wgslsmith_index_u32(var_1.x, 21u)];
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2772f, global1.x) + _wgslsmith_f_op_f32(min(var_0.a, -244f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(floor(global1.x))))));
    global2 = array<vec2<f32>, 21>();
    return 401f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 2038f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(313f - 195f), _wgslsmith_f_op_f32(ceil(global1.x)))) - -437f)));
    let var_0 = -373f;
    let var_1 = ~(-24220i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(func_1()), abs(_wgslsmith_add_u32(1u, ~max(4294967295u, 0u))), func_2(vec2<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, false)), _wgslsmith_f_op_f32(var_0 - global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(1728f + -740f)), Struct_3(Struct_1(vec2<u32>(15218u, 39320u), false, var_1), vec3<i32>(-3527i, u_input.a, var_1), i32(-1i) * -2147483647i, vec4<bool>(false, false, true, true), vec2<f32>(-259f, var_0)), vec4<i32>(u_input.a, firstLeadingBit(-3981i), 1i, -2147483647i)) | _wgslsmith_add_u32(1u, _wgslsmith_add_u32(1u, 1u)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~1u, 21u)]), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), (global1.x == -872f) & true)));
    global1 = _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(16250u, 21u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(var_2.c, var_2.c), vec2<u32>(36111u, 18492u)) << (~(~vec2<u32>(15249u, 15392u)) % vec2<u32>(32u)), ~vec2<u32>(var_2.b, var_2.c) ^ ~vec2<u32>(4294967295u, var_2.c)), firstLeadingBit(vec3<u32>(57626u, reverseBits(1u), var_2.c)) << (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.c, 49077u), _wgslsmith_clamp_u32(var_2.b, var_2.b, var_2.c)), var_2.c, max(~4294967295u, ~1u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(110f, _wgslsmith_f_op_f32(func_3(select(~vec4<u32>(1u, var_2.c, 42099u, var_2.b), abs(vec4<u32>(1u, var_2.c, 0u, 4294967295u)), vec4<bool>(false, false, false, var_2.e)), Struct_1(vec2<u32>(var_2.b, 78570u) & vec2<u32>(29269u, var_2.b), true, -var_1), var_2.e)))));
}

