struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: i32 = 1i;

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: bool;

var<private> global3: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> vec4<i32> {
    global3 = Struct_4(global3.a, 1u);
    let var_0 = abs((vec4<i32>(arg_1, _wgslsmith_clamp_i32(-2147483647i, -29237i, u_input.b.x), 0i, i32(-1i) * -4600i) << (vec4<u32>(firstLeadingBit(0u), 0u, _wgslsmith_mod_u32(1u, 64800u), ~global3.b) % vec4<u32>(32u))) ^ vec4<i32>(-(~0i), arg_0.x, u_input.a.x, _wgslsmith_clamp_i32(-2147483647i & arg_0.x, global3.a.x, -20751i >> (global3.b % 32u))));
    var var_1 = global3.b;
    let var_2 = vec2<u32>(reverseBits(reverseBits(global3.b)), ~(~abs(~42057u)));
    let var_3 = Struct_3(Struct_1(select(vec4<i32>(var_0.x, arg_0.x, abs(14543i), ~(-25329i)), ~var_0, !all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(603f, -450f, 934f), vec3<f32>(365f, 682f, 550f)) + vec3<f32>(-274f, -225f, 607f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-130f, -665f, 229f))))));
    return countOneBits(vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, 3044i, -1i), abs(vec4<i32>(-1i, 28891i, 2147483647i, 525i))), global3.a.x), _wgslsmith_div_i32(arg_0.x, -firstTrailingBit(1i)), firstTrailingBit(global3.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    global0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(min(global3.a.x, -2147483647i) | _wgslsmith_add_i32(arg_1.a.x, u_input.b.x), -15820i, _wgslsmith_mod_i32(countOneBits(arg_1.a.x), ~arg_0.a.x), u_input.b.x)), vec4<i32>(~((arg_0.a.x & -49548i) >> (firstTrailingBit(4294967295u) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(29657i, arg_1.a.x, 66387i, global3.a.x), arg_0.a) ^ _wgslsmith_clamp_i32(~u_input.b.x, ~global3.a.x, ~8119i), _wgslsmith_sub_i32(arg_1.a.x, ~select(arg_0.a.x, arg_0.a.x, false)), 1i));
    global2 = true;
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(func_3(min(u_input.b.zy, arg_1.a.yz), 22325i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, -576f), arg_0.b))) * vec3<f32>(arg_2, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * -1191f))) - arg_0.b));
    var var_2 = ~(~vec2<i32>(u_input.a.x, ~23560i));
    return abs(firstTrailingBit(~select(~vec2<u32>(53935u, 57569u), ~vec2<u32>(arg_1.b, 0u), all(vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(-323f * _wgslsmith_f_op_f32(trunc(-390f)));
    let var_1 = true;
    var var_2 = !(!(!(!select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))));
    var var_3 = all(vec3<bool>(true, var_2.x, !var_2.x));
    return vec4<u32>(max(85131u, ~(~(global3.b | global3.b))), ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 1u), func_2(Struct_1(vec4<i32>(1i, 0i, u_input.b.x, global3.a.x), vec3<f32>(-1079f, -1000f, 2322f)), Struct_4(global3.a, global3.b), 396f), global1[_wgslsmith_index_u32(min(4294967295u, 1u), 30u)]), ~vec2<u32>(1u, global3.b)), abs(_wgslsmith_sub_u32(reverseBits(global3.b), global3.b)), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(i32(-1i) * -2147483647i);
    var var_1 = any(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    var var_2 = ~1i;
    let var_3 = true & all(vec3<bool>(true, true, true));
    var_2 = global3.a.x >> (_wgslsmith_sub_u32(var_0.x, ~(42180u >> (_wgslsmith_mult_u32(global3.b, 10394u) % 32u))) % 32u);
    var var_4 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(-41991i, global3.a.x), _wgslsmith_clamp_i32(max(-2147483647i, countOneBits(31006i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, global3.a.x, 2147483647i), vec4<i32>(u_input.b.x, -20980i, 2147483647i, -3187i)), vec4<i32>(global3.a.x, -29813i, u_input.b.x, -20261i)), -global3.a.x >> (1u % 32u)), i32(-1i) * -5137i, -(~u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(340f)), _wgslsmith_f_op_f32(step(-1284f, -271f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-164f, _wgslsmith_f_op_f32(f32(-1f) * -286f), true)) + _wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(floor(274f)))), -788f));
    var_2 = _wgslsmith_div_i32(-17659i, var_4.a.x);
    global3 = Struct_4(firstTrailingBit(-vec3<i32>(abs(13629i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, var_4.a.x, var_4.a.x, global3.a.x), var_4.a), _wgslsmith_add_i32(global3.a.x, -2147483647i))), _wgslsmith_add_u32(select(select(_wgslsmith_div_u32(global3.b, var_0.x), var_0.x, !var_3), var_0.x, true), _wgslsmith_sub_u32(var_0.x, countOneBits(50697u))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f + 1387f) * 1887f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, -u_input.a.x, var_4.a.x, 1i));
}

