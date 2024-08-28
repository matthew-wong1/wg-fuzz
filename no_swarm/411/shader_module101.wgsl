struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 32364i, -29696i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec3<bool>(false, true, false)), true, !select(true, false, false)), vec3<bool>(!all(vec2<bool>(false, true)), true, true), !vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), select(vec3<bool>(any(vec3<bool>(true, true, true)), select(u_input.d, global1.x, true) > -2147483647i, any(vec3<bool>(true, true, false)) | any(vec2<bool>(false, false))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(1i, _wgslsmith_sub_vec2_i32(vec2<i32>(~(~2147483647i), abs(min(1i, u_input.d))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-8917i, -16407i)), vec2<i32>(-2147483647i, global1.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, -16955i), global1.zy, global1.zx))), -vec4<i32>(-2147483647i, -1i, u_input.d, -1i));
    var_0 = select(vec3<bool>(all(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x)), var_0.x, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(any(vec3<bool>(false, var_0.x, true)) && (global1.x != var_1.a), !(!var_0.x), var_0.x), var_0.x), var_0.x);
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f * _wgslsmith_f_op_f32(-371f - -1000f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f), -2000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))));
    return _wgslsmith_sub_i32(u_input.d, i32(-1i) * -u_input.d);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = !vec2<bool>(all(vec2<bool>(true, true)), true);
    var_0 = select(vec2<bool>(var_0.x, !var_0.x), vec2<bool>(true, true), !(!any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, true)))));
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    let var_1 = vec4<bool>(!var_0.x != (all(!vec3<bool>(true, false, var_0.x)) && all(!vec3<bool>(true, var_0.x, var_0.x))), true, false, true);
    return Struct_1(-51363i, ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.d, -1i), arg_0), -arg_0), vec2<i32>(-u_input.d, 34983i)), vec4<i32>(func_3(reverseBits(u_input.a.x | u_input.a.x)), u_input.d, 1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i), -_wgslsmith_mult_i32(-29155i, u_input.d))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = !vec4<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), !all(vec3<bool>(false, true, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = array<vec3<f32>, 1>();
    var var_1 = func_2(max(~global1.xy, min(-global1.zz, global1.xy)));
    let var_2 = _wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), u_input.b.yx), firstTrailingBit(u_input.b.x)), u_input.b.x) ^ ~u_input.c.x;
    global0 = array<vec3<f32>, 1>();
    return vec3<bool>((all(vec4<bool>(var_0.x, var_0.x, true, false)) | !(var_0.x & true)) || all(!vec4<bool>(true, false, false, var_0.x)), !(all(var_0.xzw) && true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d, abs(_wgslsmith_sub_i32(u_input.d, u_input.d)), global1.x), -vec3<i32>(-1i, 33829i, -u_input.d) | vec3<i32>(-6546i | global1.x, -global1.x, -1i));
    global0 = array<vec3<f32>, 1>();
    var var_0 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.b.x, 18194u) >> (~vec3<u32>(u_input.a.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.b.xxw, ~vec3<u32>(65662u, 4294967295u, u_input.a.x))), select(_wgslsmith_div_vec3_u32(u_input.b.wwx, u_input.b.wzx), _wgslsmith_clamp_vec3_u32(abs(u_input.b.zzw), countOneBits(u_input.b.xxz), vec3<u32>(1559u, u_input.a.x, u_input.c.x)), select(func_1(1626f, Struct_3(Struct_2(-1332f, vec2<f32>(781f, 591f), vec2<f32>(188f, 1175f)), -1545f, vec4<f32>(-163f, 430f, -1285f, 393f))), vec3<bool>(true, true, true), func_1(-1098f, Struct_3(Struct_2(-1114f, vec2<f32>(-531f, 1008f), vec2<f32>(-276f, 1220f)), 1629f, vec4<f32>(220f, -247f, -790f, 319f)))))) ^ 9886u;
    global0 = array<vec3<f32>, 1>();
    var_0 = ~_wgslsmith_div_u32(u_input.b.x, 4294967295u);
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(0u), 77227u, ~u_input.a.x, u_input.b.x ^ 68441u), ~(vec4<u32>(0u, 0u, 81443u, 1u) & u_input.b), ~abs(vec4<u32>(44305u, u_input.b.x, u_input.b.x, 4294967295u))), u_input.b), Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -162f))), vec2<f32>(_wgslsmith_f_op_f32(508f * 1192f), _wgslsmith_f_op_f32(275f + 761f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1093f, -1432f))), vec2<f32>(-974f, 856f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(863f)) - _wgslsmith_div_f32(587f, 227f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1035f, -312f, 929f, -1371f), vec4<f32>(711f, 249f, 653f, 583f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, 1154f, -736f, 710f)))))), vec4<bool>(select(_wgslsmith_div_f32(-2160f, 233f) <= _wgslsmith_f_op_f32(sign(317f)), false, true), (any(vec3<bool>(true, false, true)) || true) & any(vec4<bool>(true, true, true, true)), !((0u >= u_input.b.x) & true), select(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec2<bool>(true, true)), _wgslsmith_mod_u32(1u, u_input.b.x) >= _wgslsmith_mod_u32(u_input.b.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(var_1.a)), u_input.b.wwz, _wgslsmith_sub_vec2_u32(u_input.a, ~u_input.a));
}

