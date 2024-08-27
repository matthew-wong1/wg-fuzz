struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-3742i, -1i, 1i, 27322i);

var<private> global1: array<u32, 32>;

var<private> global2: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global0 = _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32((vec4<i32>(1041i, arg_0.x, arg_0.x, arg_0.x) >> (vec4<u32>(3233u, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 0u) % vec4<u32>(32u))) << ((vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, 4294967295u) ^ vec4<u32>(u_input.a.x, 7988u, u_input.a.x, u_input.b)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(40784i, global0.x, global0.x, global0.x), vec4<i32>(1i, arg_0.x, global0.x, arg_0.x), vec4<i32>(global0.x, arg_0.x, 20140i, arg_0.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0.x, global0.x, arg_0.x), -vec4<i32>(-2147483647i, arg_0.x, -647i, -10552i)), -(~vec4<i32>(-1i, 2147483647i, arg_0.x, global0.x))), -abs(max(vec4<i32>(2147483647i, 20025i, arg_0.x, arg_0.x), vec4<i32>(global0.x, -40133i, 0i, arg_0.x)))));
    var var_0 = ~firstTrailingBit(42165u);
    var var_1 = true;
    var var_2 = vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), _wgslsmith_add_i32(global0.x, 16800i) < -48635i);
    global2 = min(arg_0.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -32433i, firstLeadingBit(-1i)), global0.x) ^ (-2147483647i & -(~global0.x)));
    return vec2<bool>(var_2.x, var_2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> vec3<i32> {
    var var_0 = Struct_2((~select(global0.x, global0.x, true) <= global0.x) || true, any(vec2<bool>(arg_1, any(func_3(vec3<i32>(0i, -43374i, 2147483647i))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-426f, -396f)))), vec3<bool>(true, false, !(!arg_1 | true)), !select(vec4<bool>(true, true, true == arg_1, true), !vec4<bool>(false, arg_1, true, false), select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(arg_0.x, true, arg_0.x, arg_1), global0.x == global0.x)));
    var_0 = Struct_2(arg_1, true, var_0.c, var_0.e.xwz, !(!select(var_0.e, var_0.e, arg_0.x)));
    let var_1 = 84483i;
    let var_2 = Struct_2(arg_1, true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f + -1751f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1072f, var_0.c.a))))), select(var_0.d, !vec3<bool>(var_0.b && true, any(var_0.e.wz), !arg_1), var_0.e.yyx), var_0.e);
    let var_3 = Struct_1(-116f);
    return vec3<i32>(1i, 59879i, _wgslsmith_mult_i32(21859i, abs(~2147483647i >> ((4294967295u >> (u_input.b % 32u)) % 32u))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(func_2(vec2<bool>(true, true), false), vec3<i32>(firstLeadingBit(-2147483647i), -global0.x, ~(-5819i))), global0.wyz);
    global1 = array<u32, 32>();
    global0 = vec4<i32>(abs(11554i), -2147483647i, -(~(~(global0.x ^ 0i))), _wgslsmith_sub_i32(firstLeadingBit(~global0.x) ^ global0.x, reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.x, global0.x), ~global0.x))));
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, var_0, var_0, 486f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -680f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 275f, _wgslsmith_f_op_f32(floor(-1315f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, var_0, var_0, 444f))))), vec4<f32>(-119f, _wgslsmith_div_f32(-1487f, 225f), _wgslsmith_f_op_f32(-arg_0.a), -760f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && false, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, false), func_1(Struct_1(1000f)))) == func_3(func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)).x);
    let var_1 = global0.x;
    var var_2 = global0.x;
    global1 = array<u32, 32>();
    var_2 = 28169i;
    global1 = array<u32, 32>();
    let var_3 = 44222u >> (u_input.b % 32u);
    let var_4 = Struct_1(-1000f);
    var var_5 = Struct_2(var_0.x, func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f * -373f)))), var_4, !(!select(vec3<bool>(var_0.x, false, false), !vec3<bool>(false, var_0.x, false), global1[_wgslsmith_index_u32(72530u, 32u)] != global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<bool>(true, !var_0.x, !select(var_0.x, true, 24414u >= global1[_wgslsmith_index_u32(0u, 32u)]), !func_3(vec3<i32>(global0.x, global0.x, 0i) & vec3<i32>(2171i, global0.x, global0.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4.a, -831f, 836f)))))), -1135f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(689f, 737f, -1129f, -843f) - vec4<f32>(426f, -2559f, var_5.c.a, var_4.a)), vec4<f32>(var_4.a, var_4.a, -1000f, 728f), var_5.e)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1866f, -2815f, -384f, var_5.c.a), vec4<f32>(var_5.c.a, var_4.a, var_4.a, 1000f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1615f, 355f, 1000f, var_5.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(762f, var_4.a, -510f, var_5.c.a) + vec4<f32>(365f, var_4.a, var_5.c.a, 1392f)))))))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(63790u, 30531u, u_input.b, 1u) >> (vec4<u32>(var_3, 1u, 65851u, 51313u) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(var_3, 32u)], 4294967295u, 0u, 57527u))), 1u);
}

