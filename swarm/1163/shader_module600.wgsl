struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    global0 = 41529u;
    let var_0 = select(!(!vec3<bool>(arg_1.x & arg_1.x, !arg_1.x, false)), vec3<bool>(!((9822i ^ arg_2) < (u_input.d.x >> (0u % 32u))), select(true, any(vec3<bool>(false, arg_1.x, true)), 74027u >= (arg_0 ^ 0u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -277f), -639f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_div_f32(2151f, -1071f), false))), all(vec2<bool>(true, false)));
    let var_1 = u_input.c.x;
    var var_2 = Struct_1(u_input.a);
    global0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 68230u, var_1, var_1))), ~_wgslsmith_dot_vec3_u32(u_input.c.xyz, vec3<u32>(arg_0, 1u, arg_0)), firstTrailingBit(u_input.c.x), ~0u ^ (u_input.c.x >> (31245u % 32u)))));
    return 1271f;
}

fn func_2() -> Struct_1 {
    var var_0 = !vec4<bool>(true, true, true, all(vec2<bool>(true, true)));
    global1 = array<Struct_1, 7>();
    let var_1 = 25098u;
    var var_2 = vec3<bool>(true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1276f))) != _wgslsmith_f_op_f32(max(-461f, _wgslsmith_f_op_f32(func_3(53533u, vec4<bool>(true, false, var_0.x, var_0.x), u_input.a.x))))) || !(!var_0.x), false);
    global0 = 4294967295u;
    return Struct_1(vec2<i32>(1i, -1i) >> (~(~select(vec2<u32>(u_input.c.x, var_1), vec2<u32>(22478u, var_1), vec2<bool>(true, false))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_sub_u32(u_input.c.x, u_input.c.x);
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    return !select(select(arg_1, select(vec3<bool>(true, arg_1.x, arg_1.x), !arg_1, true), false), arg_1, arg_1.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.xw, _wgslsmith_f_op_vec2_f32(sign(arg_3.zw)), !arg_0.xz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 3146f))))));
    var var_1 = arg_1;
    let var_2 = vec2<i32>(1i, -arg_2.x);
    var var_3 = var_2 & vec2<i32>(_wgslsmith_clamp_i32(~arg_2.x, _wgslsmith_sub_i32(-1i, -1i), arg_1.a.x) << (u_input.c.x % 32u), 0i ^ select(abs(2147483647i), abs(-1i), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))));
    let var_4 = Struct_2(~_wgslsmith_mult_u32(1u, u_input.c.x), Struct_1(func_2().a), u_input.c, func_2());
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, -1000f) + vec2<f32>(-618f, -521f))))) + vec2<f32>(-909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))));
    global0 = ~func_5(func_4(Struct_1(~vec2<i32>(u_input.a.x, 2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, false))), func_2()), func_2(), -vec2<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), u_input.d.x >> (u_input.c.x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(572f, -113f, true)), _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, 512f)));
    global0 = max(func_5(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(Struct_1(u_input.d.zx), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(7897u, 7u)])), func_2(), vec2<i32>(min(u_input.d.x, u_input.d.x), -u_input.a.x) >> (u_input.c.wx % vec2<u32>(32u)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-995f + -296f), 707f), var_0.x, -2096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), u_input.c.x);
    var var_1 = false;
    global1 = array<Struct_1, 7>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c.x, func_1(), _wgslsmith_mod_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(29264u, 1u, u_input.c.x, 0u) << (vec4<u32>(u_input.c.x, 1u, 1u, 1u) % vec4<u32>(32u)))), select(u_input.c, u_input.c, vec4<bool>(true, true, true, true))), global1[_wgslsmith_index_u32(4294967295u, 7u)]);
    global1 = array<Struct_1, 7>();
    var var_1 = select(vec3<bool>(true, true, !(!any(vec4<bool>(true, true, true, true)))), vec3<bool>(false, false, (all(vec4<bool>(false, true, false, false)) || true) | true), true);
    global0 = ~(min(~0u, u_input.c.x) | _wgslsmith_dot_vec3_u32(var_0.c.xzz, ~u_input.c.wzw));
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(var_0.b.a.x), max(u_input.d.x, var_0.d.a.x), i32(-1i) * -17474i, -23345i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.a.x, var_0.b.a.x, var_0.d.a.x, -52869i), -vec4<i32>(u_input.a.x, u_input.d.x, -1i, u_input.d.x))), ~_wgslsmith_mod_i32(firstLeadingBit(u_input.d.x), _wgslsmith_div_i32(-1i, var_0.d.a.x))));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(36549i, countOneBits(24972i)), countOneBits(max(-u_input.d.xy, vec2<i32>(0i, var_2.a.x)))) << (((vec2<u32>(u_input.c.x, var_0.a) << (vec2<u32>(var_0.c.x, 25184u | u_input.c.x) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, var_0.c.x, var_0.a), var_0.c.yww), ~(var_0.c.x << (var_0.a % 32u)))) % vec2<u32>(32u));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(670f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(450f, -1201f)), _wgslsmith_f_op_f32(-1000f * 1079f), false))))), _wgslsmith_f_op_f32(f32(-1f) * -858f), ~abs(vec3<i32>(abs(var_4.a.x), 12744i, -2653i)), vec2<u32>(u_input.c.x, var_0.c.x));
}

