struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec2<u32>(4294967295u, 86446u)), Struct_4(vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(26270u, 1u)), Struct_4(vec2<u32>(24863u, 0u)), Struct_4(vec2<u32>(4294967295u, 39871u)));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-631f - 873f);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.x, 0u), 7u)];
    var_0 = 908f;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 22277u << (~u_input.e.x % 32u))) << (~(18443u & var_1.a.x) % 32u), 7u)];
    global1 = array<Struct_1, 15>();
    return ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 6608i, -2147483647i), _wgslsmith_div_vec4_i32(arg_1, arg_1)), arg_1.x));
}

fn func_4(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = vec4<u32>(~abs(~u_input.e.x & ~9940u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), u_input.e.x, _wgslsmith_add_u32(u_input.e.x, 1u)), ~vec3<u32>(u_input.e.x, 1u, 1u)), _wgslsmith_mult_u32(firstTrailingBit(12964u >> (u_input.e.x % 32u)), countOneBits(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x)))), u_input.e.x, ~4294967295u);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_0, ~(var_0 >> (vec4<u32>(u_input.e.x, var_0.x, var_0.x, u_input.e.x) % vec4<u32>(32u)))), 61990u, ~65548u), 7u)];
    let var_2 = !vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), arg_0 != arg_0)), false, (i32(-1i) * -30028i) <= (_wgslsmith_mod_i32(51544i, arg_1) << (var_1.a.x % 32u)));
    var var_3 = global0[_wgslsmith_index_u32(~4294967295u, 7u)];
    var_3 = global0[_wgslsmith_index_u32(31688u, 7u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -971f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)))), ~arg_1 == _wgslsmith_div_i32(-u_input.b.x, u_input.b.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f + -700f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = arg_2;
    var var_2 = !arg_0;
    var_2 = select(vec4<bool>(!var_1.a.a.x & true, arg_0.x, var_1.a.a.x, true), select(arg_0, select(!arg_0, arg_0, !select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(var_1.a.a.x, arg_2.b.a.x, arg_0.x, false), vec4<bool>(false, arg_2.a.a.x, arg_2.a.a.x, false))), !arg_0.x), arg_0);
    let var_3 = any(arg_0);
    return ~firstLeadingBit(~u_input.e.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f + -185f))), _wgslsmith_f_op_f32(round(-382f)))), arg_1.x);
    var var_1 = Struct_1(vec2<bool>(arg_2.a.a.x, true));
    let var_2 = vec4<u32>(func_5(!vec4<bool>(select(false, false, var_1.a.x), any(vec4<bool>(false, var_1.a.x, arg_2.b.a.x, false)), all(vec4<bool>(true, true, arg_2.b.a.x, arg_2.b.a.x)), arg_1.x >= -1045f), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(var_0.x, arg_1.x), func_3(vec2<u32>(6931u, 11476u), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, -31232i, u_input.b.x), vec4<i32>(2147483647i, -33446i, -14068i, u_input.b.x))))), arg_2), abs(abs(reverseBits(~53249u))), _wgslsmith_mult_u32(u_input.e.x, _wgslsmith_clamp_u32(26018u, ~0u, arg_0) << (firstTrailingBit(_wgslsmith_clamp_u32(48072u, u_input.e.x, u_input.e.x)) % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, arg_0, 1u, 0u)), select(firstTrailingBit(vec4<u32>(arg_0, u_input.e.x, 4294967295u, 0u)), ~vec4<u32>(4294967295u, 4294967295u, 64524u, 4294967295u), select(vec4<bool>(true, arg_2.a.a.x, false, arg_2.a.a.x), vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(true, false, var_1.a.x, true))))));
    var var_3 = arg_2;
    var_1 = arg_2.a;
    return select(select(vec4<bool>(~(-9950i) != (u_input.d >> (u_input.e.x % 32u)), !all(vec3<bool>(var_3.b.a.x, true, var_3.b.a.x)), false, !(!var_1.a.x)), select(!(!vec4<bool>(arg_2.b.a.x, arg_2.a.a.x, arg_2.a.a.x, false)), select(vec4<bool>(arg_2.b.a.x, false, false, true), vec4<bool>(true, false, false, arg_2.a.a.x), var_3.a.a.x), arg_2.a.a.x), !var_3.a.a.x), select(!select(select(vec4<bool>(var_1.a.x, false, false, false), vec4<bool>(true, true, true, var_1.a.x), var_3.b.a.x), !vec4<bool>(true, false, var_3.b.a.x, false), any(var_1.a)), !select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_3.a.a.x), !vec4<bool>(true, false, true, arg_2.b.a.x), !vec4<bool>(arg_2.b.a.x, var_3.b.a.x, true, arg_2.a.a.x)), select(all(vec2<bool>(true, var_1.a.x)), false || select(var_1.a.x, arg_2.b.a.x, var_3.b.a.x), (1u >= u_input.e.x) & true)), vec4<bool>(false, all(select(vec4<bool>(false, true, arg_2.b.a.x, false), vec4<bool>(true, arg_2.b.a.x, true, false), var_1.a.x)) | false, _wgslsmith_add_u32(var_2.x, 1u) >= u_input.e.x, select(true & arg_2.b.a.x, all(select(vec2<bool>(false, false), var_3.b.a, var_3.b.a.x)), true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = 13966u ^ ~u_input.e.x;
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_1 = false;
    var var_2 = select(all(!select(vec4<bool>(arg_1.b.a.x, var_1, var_1, true), select(vec4<bool>(true, false, false, var_1), vec4<bool>(true, true, arg_1.b.a.x, true), false), func_2(4294967295u, vec4<f32>(-517f, -1123f, -1000f, -549f), arg_1))), true, select(!var_1, var_1, select(true, var_1, arg_1.a.a.x)));
    return ~abs(~(-_wgslsmith_mult_i32(u_input.b.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(~17947i, -u_input.a.x, func_1(vec2<i32>(u_input.a.x, u_input.a.x), Struct_3(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))))), vec3<i32>(u_input.a.x, ~27262i, 39668i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(select(vec3<i32>(-37425i, 1i, -2290i), vec3<i32>(2147483647i, u_input.a.x, u_input.c.x), false), u_input.b.zxw)), u_input.c.xyw, vec3<i32>(min(-2147483647i, u_input.b.x), u_input.c.x, func_3(u_input.e, u_input.b)) ^ vec3<i32>(i32(-1i) * -40307i, _wgslsmith_add_i32(u_input.c.x, u_input.b.x), 39181i)));
    var var_1 = vec3<i32>(~(-30448i), var_0.x, -_wgslsmith_mod_i32(u_input.a.x, -2147483647i));
    global1 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1587f, -1386f, -1266f)))))))));
    var_1 = -u_input.b.zwx;
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-((vec2<i32>(var_0.x, 0i) ^ vec2<i32>(-65097i, var_0.x)) & u_input.b.yz), vec2<i32>(0i, i32(-1i) * -2147483647i)), _wgslsmith_mod_vec2_i32(u_input.c.wx, select(vec2<i32>(-28874i, var_1.x), ~vec2<i32>(u_input.b.x, 1i), any(vec4<bool>(false, false, false, true))) << (abs(_wgslsmith_mod_vec2_u32(u_input.e, u_input.e)) % vec2<u32>(32u))), ~0i, 1472f, abs(abs(~vec4<u32>(u_input.e.x, 54209u, 33080u, u_input.e.x))));
}

