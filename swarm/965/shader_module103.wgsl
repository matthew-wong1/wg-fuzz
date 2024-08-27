struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 20>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(1090f));
    global1 = array<vec3<i32>, 20>();
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-530f)), _wgslsmith_f_op_f32(global0.a.x + 411f)));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-174f - -1062f), _wgslsmith_f_op_f32(max(-169f, -1153f))))), _wgslsmith_f_op_f32(abs(1808f))));
    global1 = array<vec3<i32>, 20>();
    return ~arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> bool {
    let var_0 = vec2<bool>(true, true);
    global0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2291f, 1791f) + _wgslsmith_div_f32(global0.a.x, 507f)), _wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.x, arg_1.e))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)) + global0.a))));
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    var var_1 = arg_3.ywx;
    return !select(all(!(!vec2<bool>(var_0.x, var_0.x))), !(-1305f <= arg_3.x), var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = select(vec2<bool>(false, true), vec2<bool>(func_4(func_3(all(vec2<bool>(true, false)), u_input.b.x & 28338i, 4294967295u, false), Struct_2(Struct_1(vec2<f32>(800f, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x), arg_0, global0.a.x, _wgslsmith_f_op_f32(-482f + arg_0.a.x)), vec3<i32>(u_input.a << (1u % 32u), u_input.a ^ 1i, -14022i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, 500f, arg_0.a.x, global0.a.x)))), !any(vec2<bool>(true, true))), vec2<bool>(func_4(~(4294967295u >> (0u % 32u)), Struct_2(Struct_1(vec2<f32>(arg_0.a.x, -900f)), 1168f, Struct_1(vec2<f32>(arg_0.a.x, -104f)), _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(select(global0.a.x, 486f, false))), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 27169i, 2974i), global1[_wgslsmith_index_u32(4294967295u, 20u)])), vec4<f32>(_wgslsmith_f_op_f32(min(177f, -574f)), _wgslsmith_f_op_f32(select(495f, global0.a.x, false)), -627f, -1000f)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)) | true));
    let var_1 = arg_0;
    global0 = var_1;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(591f, arg_0.a.x))));
    var var_2 = 80011u;
    return _wgslsmith_mod_u32(countOneBits(_wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(39308u, 1u))), ~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9974u, 40961u, 15283u), vec4<u32>(45804u, 4294967295u, 4294967295u, 25608u)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    var var_0 = vec4<u32>(reverseBits(firstLeadingBit(min(func_2(arg_1, 1i), _wgslsmith_mod_u32(89555u, 4294967295u)))), 4021u, ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(77207u, 16908u, 4294967295u), ~1u, reverseBits(53427u))));
    var var_1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.a), min(-(global1[_wgslsmith_index_u32(var_0.x, 20u)] >> (vec3<u32>(var_0.x, 42158u, 63347u) % vec3<u32>(32u))), vec3<i32>(abs(arg_0), 1332i, _wgslsmith_mult_i32(22728i, 0i)))));
    var var_2 = Struct_2(Struct_1(arg_1.a), _wgslsmith_f_op_f32(round(global0.a.x)), Struct_1(vec2<f32>(global0.a.x, 521f)), _wgslsmith_f_op_f32(select(arg_1.a.x, 1000f, arg_2)), global0.a.x);
    let var_3 = select(_wgslsmith_add_u32(~var_0.x << (_wgslsmith_mod_u32(0u, 37635u) % 32u), max(~var_0.x, 15454u)), 4294967295u, arg_2) & var_0.x;
    var var_4 = Struct_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * arg_1.a.x)))) + _wgslsmith_f_op_f32(sign(2286f))), arg_1, _wgslsmith_f_op_f32(-1126f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-356f, global0.a.x))) + _wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(arg_1.a.x - -291f)))), _wgslsmith_f_op_f32(-2565f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) * _wgslsmith_f_op_f32(global0.a.x * -1468f))));
    return vec2<i32>(~1i, ~_wgslsmith_mult_i32(arg_0, -1i));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    let var_0 = !any(vec2<bool>((arg_0 & arg_0) | !arg_0, arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1867f, global0.a.x, var_0)))), _wgslsmith_f_op_f32(-1105f - _wgslsmith_f_op_f32(min(global0.a.x, 591f))))));
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_1.a, var_1.a, vec2<bool>(any(vec4<bool>(var_0, true, var_0, var_0)), !func_4(31561u, Struct_2(Struct_1(vec2<f32>(-169f, var_1.a.x)), global0.a.x, Struct_1(vec2<f32>(-1211f, 131f)), 699f, 368f), global1[_wgslsmith_index_u32(0u, 20u)], vec4<f32>(global0.a.x, 773f, 884f, var_1.a.x))))));
    return countOneBits(72745u | func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))), -48743i));
}

fn func_6(arg_0: u32) -> StorageBuffer {
    global0 = Struct_1(vec2<f32>(global0.a.x, global0.a.x));
    global1 = array<vec3<i32>, 20>();
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.b.x, 55826i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -30905i, -27249i, u_input.b.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(-37169i, 2147483647i, 2147483647i, u_input.b.x), -vec4<i32>(2147483647i, u_input.a, u_input.b.x, u_input.a))), u_input.a), vec4<i32>(-_wgslsmith_mod_i32(u_input.a, -u_input.b.x), abs(-1i), 0i, _wgslsmith_dot_vec2_i32(~select(u_input.b, vec2<i32>(0i, -1i), true), ~(u_input.b << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_f_op_f32(-global0.a.x), Struct_1(vec2<f32>(global0.a.x, 1506f)), global0.a.x, _wgslsmith_div_f32(-119f, -1000f));
    global0 = var_1.a;
    return StorageBuffer(~(~max(vec3<u32>(45599u, arg_0, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 128323u, arg_0), vec3<u32>(4294967295u, arg_0, 0u)))), ~_wgslsmith_sub_i32(~min(-33494i, 1i), -countOneBits(u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-588f, -276f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f), global0.a.x))), _wgslsmith_clamp_u32(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 26531u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(1u, 13808u), vec2<u32>(arg_0, 23832u)))), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -155f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(-2147483647i == -_wgslsmith_mult_i32(u_input.b.x, -13479i), firstTrailingBit(25460u), select(vec2<i32>(1i, min(-1i, -2933i)), _wgslsmith_clamp_vec2_i32(-u_input.b, -vec2<i32>(u_input.a, -40476i), func_1(-1i, Struct_1(vec2<f32>(global0.a.x, 1649f)), false)), vec2<bool>(true, true))));
}

