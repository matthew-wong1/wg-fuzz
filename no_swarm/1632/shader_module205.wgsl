struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = ~(~arg_1.zxw);
    var_0 = ~vec3<u32>(1u, arg_1.x ^ ~firstTrailingBit(var_0.x), select(u_input.a ^ var_0.x, ~1u, false) << (1u % 32u));
    var_0 = vec3<u32>(var_0.x, ~firstLeadingBit(var_0.x), firstTrailingBit(4294967295u) << (firstLeadingBit(var_0.x & _wgslsmith_sub_u32(15037u, arg_1.x)) % 32u));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.b, 257i, -2147483647i), _wgslsmith_mult_vec3_i32(-global0.a, select(vec3<i32>(arg_2.a.x, global0.b, arg_0), vec3<i32>(arg_0, arg_2.b, u_input.b), true)), max(-arg_2.a, abs(vec3<i32>(2147483647i, 18981i, arg_0)))), abs(1i));
    global1 = array<Struct_1, 1>();
    return select(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), false), select(!vec3<bool>(true, true, any(vec2<bool>(false, true))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(false, true, false)), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1046f, 1395f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2030f * 215f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1442f * -1038f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(312f, 1353f, 621f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -226f, -1276f))))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), func_3(-arg_2.b, vec4<u32>(70108u, u_input.c, arg_1, u_input.a), arg_0, Struct_1(vec3<i32>(0i, 24900i, -1i), global0.a.x)), vec3<bool>(true, true, true)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(1018f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(285f, -578f))) - -578f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1933f) - _wgslsmith_f_op_f32(224f + -560f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)))));
    let var_1 = Struct_1(-firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, u_input.b, u_input.b), select(vec3<i32>(arg_2.b, u_input.b, u_input.b), arg_2.a, false))), firstLeadingBit(-u_input.b));
    var var_2 = -(~(~reverseBits(vec2<i32>(3023i, -13500i))));
    let var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_f32(max(var_0.x, 134f));
    return vec3<i32>(-arg_2.b, -15110i, select(arg_2.a.x, abs(-5786i), true));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = ~(u_input.c ^ 0u);
    var var_1 = select(~func_2(Struct_1(vec3<i32>(u_input.b, 2147483647i, global0.b), u_input.b), 4294967295u, Struct_1(vec3<i32>(global0.b, -1i, -2147483647i), _wgslsmith_sub_i32(-6382i, arg_1.x))), (_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -1i, arg_1.x), global0.a) & vec3<i32>(_wgslsmith_clamp_i32(arg_0.b, -2147483647i, arg_1.x), -29969i & arg_0.a.x, -43220i & arg_1.x)) ^ arg_0.a, !select(!(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), arg_2.wyz, true));
    var var_2 = _wgslsmith_mult_vec3_i32(func_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(6485u, var_0, 551u, var_0), vec4<u32>(u_input.c, 59096u, 4294967295u, 54794u)), 1u)], 1u, arg_0) << (select(max(reverseBits(vec3<u32>(u_input.a, 1u, var_0)), reverseBits(vec3<u32>(u_input.a, 1u, u_input.a))), ~vec3<u32>(var_0, u_input.c, var_0), !(arg_2.x && true)) % vec3<u32>(32u)), arg_1);
    var_2 = arg_1;
    let var_3 = u_input.b;
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0.b, 1i), -firstLeadingBit(1i), u_input.b), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_1.x, 1i, -1i), firstLeadingBit(arg_1)), vec3<i32>(_wgslsmith_mult_i32(-1i, -88605i), 10558i, 14467i))), 43799i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    var var_0 = func_1(Struct_1(vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(global0.a.yz, global0.a.yy) ^ 1i, u_input.b), global0.b << (5104u % 32u)), global0.a, vec4<bool>(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)), true, (~u_input.b > abs(-1i)) == true, true));
    global0 = global1[_wgslsmith_index_u32(~68581u, 1u)];
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(783f, 542f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1239f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, _wgslsmith_f_op_f32(trunc(var_1))) + vec2<f32>(_wgslsmith_f_op_f32(var_1 + 210f), _wgslsmith_f_op_f32(-256f + var_1)))));
    var var_3 = func_1(Struct_1(_wgslsmith_clamp_vec3_i32((var_0.a | vec3<i32>(var_0.b, 2147483647i, u_input.b)) & vec3<i32>(-47823i, var_0.a.x, var_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, -7074i, u_input.b), var_0.a) ^ var_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, u_input.b, 0i), _wgslsmith_add_vec3_i32(var_0.a, var_0.a))), global0.a.x), firstTrailingBit(global0.a), !select(vec4<bool>(select(true, true, true), false, true, var_2.x >= -211f), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), 2147483647i >= var_0.b), select(any(vec3<bool>(true, false, false)), any(vec2<bool>(true, false)), true)));
    let var_4 = select(vec3<bool>(select(1u < _wgslsmith_clamp_u32(u_input.c, u_input.a, u_input.c), any(vec3<bool>(true, true, false)), !any(vec3<bool>(true, true, true))), (2147483647i <= _wgslsmith_sub_i32(var_3.b, 26280i)) || any(vec3<bool>(true, false, true)), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, false), false))), select(!vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(select(true, true, select(false, true, false)), any(vec3<bool>(false, false, true)) | all(vec2<bool>(true, true)), !(var_1 >= -1021f)), false), (~firstTrailingBit(u_input.c) & 27264u) > 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~u_input.c, 4294967295u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(1377f, _wgslsmith_f_op_f32(-var_1))), 180f, var_2.x), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2764f)), _wgslsmith_f_op_f32(-var_1), true)), -1590f, var_1))));
}

