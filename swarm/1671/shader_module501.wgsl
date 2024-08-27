struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.c)))))), _wgslsmith_f_op_vec2_f32(exp2(arg_1.b)));
    var var_1 = firstTrailingBit(1u) ^ (arg_1.c.x << (1u % 32u));
    var_1 = abs(~(~u_input.a));
    var var_2 = Struct_4(-1498f);
    var_1 = max(arg_1.c.x, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~4294967295u, ~arg_1.c.x)) ^ u_input.a);
    return arg_3.x;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_4(1f);
    var var_1 = 1i;
    let var_2 = true;
    var_1 = (func_3(vec3<u32>(firstLeadingBit(u_input.a), ~11270u, _wgslsmith_mod_u32(43810u, u_input.a)), Struct_2(_wgslsmith_f_op_f32(-1000f + var_0.a), vec2<f32>(var_0.a, var_0.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 67003u, u_input.a))), Struct_1(var_0.a, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -913f))), -select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -8i), arg_0.zz)) >> (1u % 32u)) ^ -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, abs(u_input.b.x), _wgslsmith_mult_i32(u_input.c.x, 39286i)), _wgslsmith_dot_vec2_i32(~u_input.b.yx, -u_input.b.zx), func_3(vec3<u32>(31443u, 3279u, u_input.a), Struct_2(1592f, vec2<f32>(var_0.a, var_0.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), Struct_1(1189f, arg_0, vec2<f32>(var_0.a, -1486f)), u_input.b.yz));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -208f))) * _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(490f, 545f)))));
    return true;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = !(!(!vec2<bool>(func_2(vec3<bool>(arg_2, arg_2, true)), false)));
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(730f, 1435f) - vec2<f32>(1423f, 475f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(381f, -255f) + vec2<f32>(610f, 566f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-943f, -1598f))))), vec2<f32>(-859f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-179f, -665f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1141f, -1542f)))))));
    var var_2 = ~vec3<i32>(arg_0, 26537i, abs(u_input.c.x)) ^ vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~u_input.b.zx, u_input.b.xx | -vec2<i32>(2147483647i, 0i)), arg_0);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-773f, var_1.a.x), vec2<f32>(var_1.b.x, var_1.a.x), true))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -979f, _wgslsmith_f_op_f32(max(-1086f, -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -372f) - vec3<f32>(var_1.a.x, 312f, var_1.a.x)), vec3<f32>(-917f, var_1.a.x, 2311f))))));
    return Struct_2(var_1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(var_1.a.x, var_3.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1480f, 990f))))), ~select(~(vec4<u32>(17654u, 0u, 117099u, arg_1.x) | vec4<u32>(u_input.a, 10833u, 20668u, 0u)), countOneBits(~vec4<u32>(arg_1.x, u_input.a, u_input.a, arg_1.x)), vec4<bool>(true, true, arg_2, any(vec4<bool>(arg_2, true, false, var_0.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<i32>) -> u32 {
    var var_0 = ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a & u_input.a, u_input.a), ~_wgslsmith_mod_u32(1u, 4294967295u)), 15757u);
    let var_1 = func_1(-firstLeadingBit(2147483647i), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.c, vec4<u32>(61443u, arg_1.c.x, u_input.a, 14194u)), vec4<u32>(0u, 43876u, 28352u, 36774u) & arg_1.c), arg_1.c), u_input.a), true);
    var_0 = max(~_wgslsmith_clamp_vec2_u32(var_1.c.wx, arg_1.c.xw, vec2<u32>(7423u, firstTrailingBit(20302u))), _wgslsmith_add_vec2_u32(vec2<u32>(~(~var_1.c.x), _wgslsmith_dot_vec2_u32(arg_1.c.yy, vec2<u32>(37439u, 22807u))), ~vec2<u32>(_wgslsmith_div_u32(arg_1.c.x, var_1.c.x), _wgslsmith_clamp_u32(var_1.c.x, 132544u, var_0.x))));
    var_0 = arg_1.c.zx;
    var var_2 = any(!select(arg_2, !arg_2, true));
    return _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~(0u >> (u_input.a % 32u)), _wgslsmith_mod_u32(~4294967295u, max(var_1.c.x, 0u))), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(216f, -509f) * vec2<f32>(828f, -1444f))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 16848u), vec4<u32>(53994u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), vec4<u32>(u_input.a, 51882u, u_input.a, 56677u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 14380u, 0u, 1u), ~vec4<u32>(37494u, u_input.a, u_input.a, 0u))), vec4<u32>(func_4(Struct_4(-238f), func_1(u_input.c.x, vec2<u32>(52555u, 22549u), true), vec4<bool>(true, false, false, true), firstLeadingBit(u_input.c)), ~1u, _wgslsmith_mod_u32(~u_input.a, ~u_input.a), u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, 1u, ~118072u, ~u_input.a), firstTrailingBit(min(vec4<u32>(9781u, u_input.a, 13427u, u_input.a), vec4<u32>(5398u, 4294967295u, 89395u, 89855u))))));
    var var_1 = Struct_4(func_1(~2147483647i << (~_wgslsmith_mod_u32(var_0.c.x, u_input.a) % 32u), vec2<u32>(_wgslsmith_mod_u32(u_input.a, 1u) | func_4(Struct_4(639f), Struct_2(var_0.b.x, vec2<f32>(var_0.b.x, 604f), var_0.c), vec4<bool>(true, true, false, false), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 1i)), 4294967295u), !all(vec2<bool>(true, true))).a);
    var var_2 = Struct_2(_wgslsmith_div_f32(var_0.a, 354f), vec2<f32>(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a - var_0.b.x), -502f)))), vec4<u32>(u_input.a, _wgslsmith_add_u32(~38887u, 1u), ~_wgslsmith_add_u32(var_0.c.x, var_0.c.x), var_0.c.x));
    let var_3 = var_0;
    var var_4 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, _wgslsmith_f_op_f32(-1271f + -1082f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1877f, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, var_3.b.x)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)) * func_1(u_input.c.x, vec2<u32>(var_2.c.x, 21541u), any(vec2<bool>(false, true))).b));
    var var_5 = u_input.c.x;
    let var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.c.x, (~u_input.b.x | -u_input.b.x) ^ _wgslsmith_div_i32(min(u_input.c.x, -2147483647i), min(u_input.c.x, 2147483647i))), -abs(-u_input.c.x >> (var_3.c.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(-2147483647i, vec2<u32>(var_2.c.x, 62810u), true).b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.x, var_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(282f, var_0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a + var_2.b.x), 1967f)))));
}

