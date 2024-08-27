struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44041u;

var<private> global1: vec4<u32> = vec4<u32>(35841u, 68177u, 32139u, 63453u);

var<private> global2: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 1u, 2968u), vec3<u32>(1u, 77315u, 26634u), vec3<u32>(65316u, 45434u, 1u), vec3<u32>(0u, 83292u, 0u));

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, -abs(_wgslsmith_add_i32(1i, u_input.d)), select(-_wgslsmith_mult_i32(u_input.b, u_input.b), min(-10073i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 51090i, 2147483647i), vec4<i32>(u_input.d, u_input.b, u_input.d, -7659i))), u_input.c.x > ~global1.x), u_input.a), -min(~vec4<i32>(3257i, u_input.a, 1i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, -7496i, 1i), vec4<i32>(u_input.b, -21405i, u_input.a, -12406i))) << (vec4<u32>(28758u, _wgslsmith_mult_u32(~23399u, u_input.c.x), abs(select(28525u, global1.x, false)), select(1u, u_input.e.x, true)) % vec4<u32>(32u)));
    global2 = array<vec3<u32>, 4>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1087f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-426f, 992f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1949f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-398f, 1000f, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -1352f), -2085f), vec3<f32>(-325f, _wgslsmith_f_op_f32(step(-923f, -590f)), 1f))));
    var_0 = -_wgslsmith_clamp_i32(max(~u_input.a, firstTrailingBit(_wgslsmith_div_i32(u_input.a, -2593i))), _wgslsmith_add_i32(firstLeadingBit(24i) & ~u_input.a, u_input.b), u_input.d);
    let var_2 = Struct_1(countOneBits(min(vec2<i32>(1i, u_input.b), abs(vec2<i32>(-2147483647i, u_input.b)))) | ~(-max(vec2<i32>(u_input.b, u_input.d), vec2<i32>(u_input.d, u_input.b))), _wgslsmith_div_i32(min(u_input.b >> (_wgslsmith_sub_u32(0u, arg_1.x) % 32u), min(2147483647i, 2972i) | min(u_input.a, 18980i)), u_input.d));
    return -3785i;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<i32>(~(-26259i), _wgslsmith_div_i32(-83005i & arg_1.a.x, -7210i)), _wgslsmith_div_i32(arg_1.a.x, func_3(!(!global3.x), vec2<u32>(39135u, ~global1.x), any(vec4<bool>(false, false, global3.x, false)))));
    var var_1 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_0, -501f), vec4<f32>(-178f, arg_0, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1230f - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(false, arg_0 > 630f, true, false)))), var_0.a.x);
    var var_2 = 588f;
    global3 = vec2<bool>(select(false, global3.x, select(false, false, true)), var_0.a.x < abs((var_0.a.x | -13655i) >> (_wgslsmith_mult_u32(u_input.e.x, 4294967295u) % 32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-887f, 673f, false)), arg_0, _wgslsmith_div_f32(960f, -1076f), -474f), var_1.b)));
    return u_input.e.x;
}

fn func_1() -> u32 {
    global1 = ~vec4<u32>(~_wgslsmith_mult_u32(~4294967295u, func_2(-1000f, Struct_1(vec2<i32>(u_input.d, u_input.a), u_input.b))), 4294967295u, 0u, 30597u);
    var var_0 = u_input.e.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -6423i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.d, u_input.b))), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(48288i, u_input.b), vec2<i32>(1i, u_input.d)), select(vec2<i32>(u_input.d, 30290i), vec2<i32>(2147483647i, u_input.d), global3.x), -vec2<i32>(15538i, u_input.d))), firstTrailingBit(-_wgslsmith_mod_i32(-40441i, u_input.d))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1188f)))))), _wgslsmith_f_op_f32(-1675f - -169f), 486f, _wgslsmith_f_op_f32(floor(-1000f))), 0i);
    global3 = !(!select(vec2<bool>(global3.x | true, select(global3.x, global3.x, global3.x)), !select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x)), vec2<bool>(global3.x, global3.x)));
    global0 = global1.x;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(func_1(), func_2(1f, Struct_1(vec2<i32>(-1i, 1i), 13672i)), global1.x, max(1u << (_wgslsmith_mult_u32(~u_input.e.x, u_input.e.x << (33010u % 32u)) % 32u), global1.x));
    let var_0 = abs(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(14759i, 4603i, 35945i), -vec3<i32>(u_input.b, u_input.b, -30693i), -vec3<i32>(u_input.b, u_input.b, u_input.a)) ^ vec3<i32>(~u_input.b, u_input.d, u_input.b)));
    global3 = vec2<bool>(select(all(vec3<bool>(any(vec2<bool>(false, false)), global3.x, false)), all(!(!vec2<bool>(global3.x, global3.x))), any(select(vec3<bool>(true, global3.x, global3.x), !vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, true)))), global3.x);
    global3 = vec2<bool>(false, any(vec4<bool>(all(vec4<bool>(false, true, global3.x, global3.x)) && true, all(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, false), true)), any(select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, true, global3.x, false))), global3.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1048f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1414f) + _wgslsmith_f_op_f32(f32(-1f) * -831f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-544f)), _wgslsmith_f_op_f32(select(228f, -234f, global3.x)), all(vec2<bool>(true, global3.x)))) * _wgslsmith_div_f32(-2121f, -1818f))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(604f, 1000f)) + 911f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f - 195f))), 1088f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2229f, -279f)))))));
    global2 = array<vec3<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(4044u, 32357u, 4294967295u)), _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(u_input.e.x, 4u)] ^ global1.xwx, global2[_wgslsmith_index_u32(65293u, 4u)])), var_0.yx, -_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(10059i, u_input.d)), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, var_0.x)) & firstTrailingBit(u_input.b)), abs(countOneBits(u_input.a)), global1.x);
}

