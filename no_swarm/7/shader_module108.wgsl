struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: array<vec4<f32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = true;
    let var_1 = !vec2<bool>(!var_0, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, var_0, var_0)), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, false), var_0))));
    global2 = array<vec4<f32>, 10>();
    let var_2 = arg_2;
    let var_3 = 1u;
    return _wgslsmith_mod_vec2_u32(~u_input.d.xy >> (~_wgslsmith_add_vec2_u32(u_input.d.zz, vec2<u32>(arg_1.x, 1u)) % vec2<u32>(32u)), ~u_input.d.zw);
}

fn func_3() -> vec4<bool> {
    let var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b >> (u_input.c % 32u), 5u)] ^ reverseBits(vec3<i32>(u_input.a, -u_input.a, u_input.a)));
    var var_1 = _wgslsmith_mult_u32(u_input.d.x, countOneBits(~_wgslsmith_dot_vec2_u32(~u_input.d.zy, u_input.d.yx)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(1230f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -589f))))), var_0.yx);
    var_1 = ~(~_wgslsmith_div_u32(_wgslsmith_add_u32(7860u, 43255u), _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(u_input.d.ywx, u_input.d.xzz))));
    var var_3 = (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, reverseBits(u_input.d.x), _wgslsmith_mult_u32(4294967295u, 0u), 2523u), firstLeadingBit(select(u_input.d, u_input.d, vec4<bool>(true, true, true, true))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 39051u, u_input.b, u_input.d.x), u_input.d))) << ((u_input.d >> (_wgslsmith_sub_vec4_u32(~u_input.d, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~(~vec4<u32>(u_input.d.x, u_input.d.x, _wgslsmith_add_u32(u_input.d.x, u_input.c), u_input.c));
    return !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), false);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = 1139f;
    let var_1 = vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(61272i, u_input.a), vec2<i32>(60497i, 2147483647i))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), vec4<i32>(u_input.a, u_input.a, -12172i, 2147483647i))), 17120i, u_input.a, -reverseBits(_wgslsmith_mult_i32(select(u_input.a, u_input.a, true), -2147483647i)));
    global0 = array<Struct_1, 16>();
    var var_2 = true;
    let var_3 = -1228f;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    global2 = array<vec4<f32>, 10>();
    var var_0 = arg_1;
    var var_1 = ~u_input.a;
    var var_2 = true;
    var var_3 = Struct_3(Struct_2(false, 14929u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1699f) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(551f, -146f) + -880f))), arg_0.b, _wgslsmith_add_u32(~arg_0.b, ~1u), arg_1);
    return Struct_4(vec3<bool>(true, false, !var_3.a.a), u_input.c, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c, 4797u, u_input.b) | u_input.d.x, 5u)], global1[_wgslsmith_index_u32(func_4(func_4(var_3.a, false, vec4<bool>(false, var_3.a.a, false, var_3.a.a), var_3.d.a), arg_0.a || arg_0.a, !vec4<bool>(var_3.a.a, var_3.a.a, false, arg_0.a), _wgslsmith_f_op_f32(select(-367f, var_3.d.a, arg_0.a))).b >> (~0u % 32u), 5u)]));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1423f)), -205f, _wgslsmith_f_op_f32(766f - -552f), _wgslsmith_f_op_f32(1221f * -1692f)))))));
    var var_1 = func_5(func_4(Struct_2(true, _wgslsmith_dot_vec2_u32(func_2(vec3<f32>(-1922f, var_0.x, 1895f), vec3<u32>(4294967295u, 26334u, u_input.d.x), -1821f), ~vec2<u32>(u_input.b, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, 1247f))), any(vec2<bool>(true, false)) & false, !select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(938f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), global0[_wgslsmith_index_u32(reverseBits(~(~(~u_input.c))), 16u)]);
    var_1 = Struct_4(vec3<bool>(false, ~max(var_1.b, var_1.b) >= countOneBits(4294967295u), true), u_input.c, -_wgslsmith_clamp_i32(~(~10006i), var_1.c, var_1.c));
    global2 = array<vec4<f32>, 10>();
    var var_2 = 209f;
    return Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_mult_vec2_i32(select(-select(vec2<i32>(var_1.c, -1i), vec2<i32>(var_1.c, 23495i), var_1.a.x), min(firstLeadingBit(vec2<i32>(u_input.a, -31275i)), ~vec2<i32>(2147483647i, var_1.c)), true), vec2<i32>(-_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(0u, 5u)], vec3<i32>(45084i, 2147483647i, 29999i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 2717i, u_input.a, var_1.c)), vec4<i32>(u_input.a, 1i, var_1.c, var_1.c)))));
}

fn func_6(arg_0: Struct_3) -> f32 {
    var var_0 = vec3<f32>(arg_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.d.a)))) * arg_0.d.a), arg_0.d.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - -1713f), _wgslsmith_f_op_f32(f32(-1f) * -1173f))) - 1854f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) + var_0.zy), var_0.zz, !arg_0.a.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.yy - vec2<f32>(1018f, -1920f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), var_0.zx)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)))));
    global1 = array<vec3<i32>, 5>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f - arg_0.a.c) * _wgslsmith_f_op_f32(round(arg_0.d.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_3(Struct_2(false, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1374f, 1699f)))))), u_input.c, 44842u, Struct_1(_wgslsmith_f_op_f32(func_6(Struct_3(Struct_2(true, u_input.d.x, -476f), ~u_input.d.x, u_input.b, func_1()))), ~vec2<i32>(37935i, _wgslsmith_sub_i32(u_input.a, u_input.a))));
    let var_2 = vec2<bool>(var_1.a.a, true);
    var var_3 = _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(var_1.b, 10u)])))));
    let var_4 = var_2;
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1265f, -295f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1529f, -1360f) + var_3.yy))))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(var_1.c, var_1.c), var_1.b) & firstLeadingBit(~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f + _wgslsmith_f_op_f32(var_3.x + var_1.a.c)) - var_1.d.a) + 919f));
}

