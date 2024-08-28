struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wzw, u_input.a.xwx >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.xzz, vec3<u32>(1u, u_input.d, 21032u)) % vec3<u32>(32u))), vec3<u32>(~u_input.d, ~abs(0u), _wgslsmith_div_u32(4294967295u, u_input.a.x)));
    let var_1 = select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, select(false, true, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), vec3<bool>(arg_0 == 1364f, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, ~57737i <= u_input.c.x)));
    var var_2 = arg_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f - 109f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(448f * arg_0), _wgslsmith_div_f32(735f, 1947f), true)))))));
    let var_3 = var_0.x;
    return ~u_input.c.x;
}

fn func_4(arg_0: i32, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_1(~(-1i), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(145f, 1332f)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))))), firstLeadingBit(u_input.a.x), true);
    var_0 = Struct_1(max(-3982i, abs(_wgslsmith_add_i32(-1i, ~arg_0))), select(var_0.b, var_0.b, var_0.b.x), var_0.c, ~reverseBits(_wgslsmith_mult_u32(var_0.d ^ 30027u, u_input.a.x)), true);
    var var_1 = Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -50915i, u_input.b), vec3<i32>(2147483647i, arg_0, var_0.a)), vec3<bool>(var_0.e, (var_0.b.x & var_0.b.x) && true, var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1195f, var_0.c.x)))), ~_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(4294967295u, var_0.d)) ^ 29253u, var_0.b.x & any(var_0.b)), reverseBits(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 1i, var_0.a), u_input.c.xwz), 0i, 1i), _wgslsmith_div_i32(-u_input.c.x, var_0.a))), Struct_1(u_input.c.x, var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.c.x), vec2<f32>(1047f, -685f), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, var_0.c))), 51293u, true), -u_input.b, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(75893i, 0i), -2147483647i), -2147483647i, var_0.a, u_input.b));
    return vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(abs(var_1.e.zx), var_1.e.yy)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a | abs(arg_0), _wgslsmith_clamp_i32(~var_1.b, ~u_input.c.x, 59571i), -2921i), _wgslsmith_div_vec3_i32(~(~u_input.c.wxz), firstTrailingBit(u_input.c.wyy))));
}

fn func_2() -> f32 {
    var var_0 = u_input.c.zw;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(63324u, 20242u >> (0u % 32u))), ~30056u) ^ u_input.d;
    var_0 = firstTrailingBit(func_4(~func_3(_wgslsmith_div_f32(1574f, -1000f)), 348f));
    let var_2 = vec3<f32>(767f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 175f)) + -1075f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(728f, 1529f), true)), _wgslsmith_f_op_f32(ceil(-702f)), any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1960f - _wgslsmith_f_op_f32(max(1112f, _wgslsmith_f_op_f32(min(-2088f, -664f))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * -1063f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f - -1094f) * _wgslsmith_f_op_f32(-var_2.x))))), var_2.yy));
    return -226f;
}

fn func_1() -> bool {
    return -3031f < _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(func_1(), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true))));
    let var_1 = vec3<i32>(-8498i, -(~(-14027i)), u_input.b);
    let var_2 = select(u_input.c.wwx, (u_input.c.yxx | select(vec3<i32>(var_1.x, var_1.x, u_input.c.x) ^ u_input.c.yxw, countOneBits(var_1), true)) ^ (countOneBits(~vec3<i32>(var_1.x, var_1.x, -16876i)) << (firstLeadingBit(vec3<u32>(6198u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), !(!vec3<bool>(select(var_0.x, var_0.x, false), false, !var_0.x)));
    var var_3 = vec4<bool>(var_0.x, var_0.x, false, !(!(!var_0.x) & var_0.x));
    var_3 = select(!vec4<bool>(true, !all(vec3<bool>(true, var_0.x, true)), u_input.d > 4294967295u, all(var_3.yxy)), !(!select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_3.x, var_3.x, true, false)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_3.x, true, var_3.x, var_0.x))), var_3.x);
    let var_4 = countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-627f);
}

