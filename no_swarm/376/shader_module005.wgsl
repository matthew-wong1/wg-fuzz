struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(26197u, Struct_1(16083u), -1000f), Struct_3(1u, Struct_1(1u), -471f), Struct_3(4294967295u, Struct_1(0u), 1493f), Struct_3(1u, Struct_1(4294967295u), -417f), Struct_3(0u, Struct_1(1u), -619f), Struct_3(0u, Struct_1(47076u), -496f), Struct_3(1u, Struct_1(67777u), 141f), Struct_3(135032u, Struct_1(47764u), 996f), Struct_3(48040u, Struct_1(4294967295u), -1193f), Struct_3(4294967295u, Struct_1(1u), -1000f), Struct_3(33813u, Struct_1(0u), -801f), Struct_3(63454u, Struct_1(0u), 1067f));

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-902f, 597f, 526f));

var<private> global3: u32;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global2 = array<vec3<f32>, 1>();
    let var_0 = Struct_2(~vec4<u32>(18463u, arg_3.a, global4.a, ~arg_2.b.a) << (~max(vec4<u32>(global4.b.a, arg_3.a, 94538u, 0u), ~vec4<u32>(global4.b.a, global4.b.a, 0u, 6371u)) % vec4<u32>(32u)), arg_3.a, u_input.a, Struct_1(global4.a ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.a, arg_2.a, 15962u), vec3<u32>(arg_3.a, 4294967295u, 1u)), arg_2.b.a, any(vec4<bool>(false, arg_1, false, false)))), !select(select(select(vec3<bool>(arg_1, arg_0, arg_0), vec3<bool>(false, arg_0, arg_1), true), !vec3<bool>(arg_0, false, false), select(vec3<bool>(true, arg_1, arg_0), vec3<bool>(arg_0, false, arg_1), vec3<bool>(true, false, false))), vec3<bool>(arg_1, arg_0, arg_1), all(vec2<bool>(arg_1, false))));
    global3 = arg_2.b.a;
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c - global4.c), -307f, _wgslsmith_f_op_f32(global1.x - -734f), _wgslsmith_f_op_f32(-global4.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1404f, 440f, -2117f, global4.c)))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-937f - global1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.x)))))))));
    return vec2<bool>(!arg_0, arg_1);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(339f, _wgslsmith_f_op_f32(-global1.x))))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = !(!vec2<bool>(firstLeadingBit(global4.a) < (global4.a | 59312u), true));
    global2 = array<vec3<f32>, 1>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(var_0.x, func_3(var_0.x, false, Struct_3(0u, Struct_1(arg_0.a), -955f), global4.b), var_0.x & var_0.x, global4.b)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1245f, global1.x), _wgslsmith_f_op_f32(-1645f * global1.x)), global1.x, -1391f) + vec4<f32>(global1.x, -1295f, -1400f, 583f)));
    global4 = global0[_wgslsmith_index_u32(firstLeadingBit(global4.b.a), 12u)];
    var var_1 = arg_0.a;
    return _wgslsmith_mod_i32(-47754i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, 67120i)) | -u_input.a) | u_input.a);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_3.c * arg_1.x)), 346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)), -784f)))));
    global3 = firstLeadingBit(9394u);
    global2 = array<vec3<f32>, 1>();
    let var_0 = Struct_3(global4.a, Struct_1(~(global4.b.a ^ 31395u)), -1523f);
    var var_1 = max(i32(-1i) * -8316i, ~(-14251i));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = func_5(vec2<i32>(-47384i, func_2(Struct_1(arg_1.a))), _wgslsmith_f_op_vec3_f32(-global1.wwz), Struct_1(1u), Struct_3(56803u, Struct_1(1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(f32(-1f) * -231f))))));
    var_0 = func_5(vec2<i32>(arg_3.c, countOneBits(countOneBits(_wgslsmith_mod_i32(0i, u_input.a)))), _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(var_0.b.a, 1u)], _wgslsmith_f_op_vec3_f32(-global1.zyw)), Struct_1(arg_1.a ^ abs(arg_0.a | arg_1.a)), global0[_wgslsmith_index_u32(0u, 12u)]);
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_add_vec2_i32(arg_2, ~arg_2);
    global0 = array<Struct_3, 12>();
    return -27467i;
}

fn func_6(arg_0: i32, arg_1: vec3<i32>) -> StorageBuffer {
    let var_0 = select(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)));
    global2 = array<vec3<f32>, 1>();
    global2 = array<vec3<f32>, 1>();
    let var_1 = select(vec3<bool>(true, !(!all(vec3<bool>(var_0.x, true, var_0.x))), false), !var_0, !(all(vec4<bool>(true, true, true, true)) & !(!var_0.x)));
    var var_2 = abs(firstTrailingBit(vec3<i32>(firstLeadingBit(arg_1.x), max(~u_input.a, _wgslsmith_sub_i32(arg_1.x, 2147483647i)), 1i)));
    return StorageBuffer(vec3<u32>(abs(_wgslsmith_add_u32(global4.a, _wgslsmith_mult_u32(15517u, global4.b.a))), 1u, global4.b.a), _wgslsmith_f_op_vec2_f32(global1.zw * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -103f)), _wgslsmith_mult_i32(arg_0, -43556i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b;
    var_0 = Struct_1(global4.a);
    let var_1 = select(22629u, 41234u, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_1, global4.b.a << (max(0u, 4294967295u) % 32u)), abs(_wgslsmith_clamp_u32(global4.b.a, var_0.a, 10938u)) ^ ~firstTrailingBit(0u), var_0.a), _wgslsmith_div_vec3_u32(select(~vec3<u32>(var_0.a, 1u, global4.a), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, true, false)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global4.a, var_1), vec3<u32>(var_1, 28945u, var_1) ^ vec3<u32>(18866u, var_1, 0u)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global4.b.a, var_0.a, 4294967295u), vec3<u32>(5161u, 1u, var_0.a)))));
    var_0 = global4.b;
    let x = u_input.a;
    s_output = func_6(u_input.a, max(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 52106i, u_input.a), vec3<i32>(2147483647i, u_input.a, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -41261i, -2147483647i))), ~vec3<i32>(0i, 0i, 0i)), min(vec3<i32>(u_input.a ^ 0i, -6516i, func_1(Struct_1(0u), Struct_1(42216u), vec2<i32>(-2147483647i, 2147483647i), Struct_2(vec4<u32>(1u, global4.b.a, 0u, 0u), var_0.a, 0i, global4.b, vec3<bool>(false, true, true)))), vec3<i32>(1i, 2147483647i, u_input.a))));
}

