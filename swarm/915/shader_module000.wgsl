struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 0u, 37945u));

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 7>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<bool>(true, true), -1i, false, vec4<i32>(-7417i, -1i, 1i, 52413i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = ~u_input.b;
    return _wgslsmith_dot_vec2_u32(~u_input.d, firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.d, u_input.d, u_input.d))));
}

fn func_2() -> vec2<bool> {
    let var_0 = func_3(1u);
    global1 = Struct_1(!select(vec2<bool>(true, true), global3.a, false), select(vec2<bool>(global3.b.x, false), global3.b, global1.b), firstTrailingBit(-4446i) | _wgslsmith_mod_i32(~(~43834i), -(~global3.e.x)), ~var_0 <= abs(u_input.d.x), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.e.x, -2147483647i, global1.e.x, global1.e.x), _wgslsmith_mod_vec4_i32(u_input.a, global3.e), -global1.e), global3.e) & u_input.a);
    global2 = array<vec4<u32>, 7>();
    global0 = array<vec3<u32>, 1>();
    global2 = array<vec4<u32>, 7>();
    return select(vec2<bool>(select(true, 5674i < u_input.c, global3.d), min(u_input.d.x << (u_input.d.x % 32u), u_input.d.x) == (_wgslsmith_mod_u32(u_input.b, u_input.b) | _wgslsmith_div_u32(9955u, var_0))), !select(select(global3.b, !global3.a, any(vec3<bool>(global3.b.x, true, global3.b.x))), !select(global3.a, global3.a, global3.b.x), global1.b), global1.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> f32 {
    global2 = array<vec4<u32>, 7>();
    let var_0 = Struct_1(global1.a, vec2<bool>(true, !(!global1.a.x)), global3.e.x, arg_2.a.x, vec4<i32>(_wgslsmith_dot_vec3_i32(global1.e.xxx << (vec3<u32>(19228u, 4294967295u, arg_3) % vec3<u32>(32u)), u_input.a.xwz) ^ abs(-2147483647i), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, 1i, global3.c), abs(global1.c))), max(arg_2.e.x, -15517i), i32(-1i) * -_wgslsmith_add_i32(10400i, u_input.c)));
    let var_1 = arg_2;
    var var_2 = Struct_1(func_2(), global1.b, _wgslsmith_mod_i32(u_input.a.x, select(arg_0.c, min(max(0i, global1.e.x), firstLeadingBit(-2147483647i)), all(select(vec4<bool>(var_1.b.x, var_0.a.x, true, global1.a.x), vec4<bool>(true, false, true, true), false)))), false, var_0.e);
    global1 = var_0;
    return _wgslsmith_f_op_f32(abs(158f));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(global3.a, global1.a, select(-4733i, u_input.c, any(vec2<bool>(any(vec4<bool>(false, global1.a.x, global1.b.x, false)), global1.d))), false, firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global3.e.x, global1.e.x, 13189i), vec4<i32>(u_input.a.x, -2147483647i, global3.c, u_input.c))), ~min(global1.e, global1.e))));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(global3.a, arg_0.a, arg_0.c, true, max(vec4<i32>(-2147483647i, u_input.a.x, firstLeadingBit(2147483647i), ~u_input.c), -u_input.a) & vec4<i32>(u_input.c, _wgslsmith_div_i32(0i, global3.e.x), global3.c, select(2147483647i, u_input.c & 16324i, !global1.d)));
    global0 = array<vec3<u32>, 1>();
    var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(false, true), func_2(), -5122i, any(vec4<bool>(global1.a.x, true, false, false)), vec4<i32>(var_0.c, u_input.c, -2147483647i, u_input.c)), u_input.d.x, arg_0, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, u_input.b, u_input.d.x)), vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 76603u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1112f, -839f))))), _wgslsmith_f_op_f32(max(-403f, 1000f))));
    let var_1 = vec4<i32>(-abs(~firstLeadingBit(global3.c)), -31619i, 1i, arg_0.c);
    let var_2 = vec2<i32>(-(~(0i & _wgslsmith_clamp_i32(0i, global3.e.x, 13379i))), global3.e.x);
    return _wgslsmith_add_vec4_i32(abs(var_0.e), min(-vec4<i32>(~(-1i), -global1.c, select(var_0.c, 1217i, arg_0.d), select(-21939i, 1i, arg_0.a.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, 9337i, 1i, -24733i), vec4<i32>(1i, global1.c, -30316i, 2147483647i) << (vec4<u32>(u_input.d.x, 1u, u_input.b, u_input.d.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -479f)))));
    let var_1 = Struct_1(select(select(!vec2<bool>(false, global3.a.x), global3.a, vec2<bool>(false, false)), vec2<bool>(global3.d, !(global3.d & global3.a.x)), all(vec2<bool>(global1.d, global1.a.x || true))), !vec2<bool>(false, _wgslsmith_f_op_f32(-var_0) <= -849f), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(func_1(Struct_1(global3.b, global3.b, -14751i, true, u_input.a)), select(u_input.a, vec4<i32>(u_input.a.x, global1.e.x, -13886i, u_input.c), global3.d) | _wgslsmith_mult_vec4_i32(global3.e, vec4<i32>(-27794i, global3.c, -1i, global3.e.x))), 11086i), false, global1.e);
    var var_2 = var_1;
    let var_3 = !vec3<bool>(false, !(true & (global3.e.x >= var_2.c)), all(vec4<bool>(global3.d & true, true, global1.b.x, false)));
    let var_4 = _wgslsmith_add_vec2_i32(-func_1(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1404f, var_0)))).wx, vec2<i32>(~55846i, _wgslsmith_add_i32(-1i, 1i)));
    global3 = var_1;
    let var_5 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-858f, -593f, -326f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1043f, -319f, var_0), vec3<f32>(-162f, -1129f, 1013f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, 299f), vec3<f32>(var_0, 1025f, var_0), var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(true && var_1.b.x, false == global1.d), func_2(), -33158i, var_3.x, ~var_1.e), 1u, var_1, abs(4294967295u ^ ~u_input.d.x))), ~_wgslsmith_sub_u32(~u_input.b >> (0u % 32u), 4294967295u), ~18854u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(abs(var_0))));
}

