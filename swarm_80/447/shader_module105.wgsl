struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = select(all(select(select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(arg_0, false), true), vec2<bool>(arg_0 != false, true && arg_0), vec2<bool>(true, true))), false, false);
    var var_1 = 423f;
    let var_2 = Struct_2(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(865f, 226f, false)), _wgslsmith_div_f32(1080f, -570f))) >= _wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_div_vec4_i32(select(max(~vec4<i32>(-1i, -34504i, -27250i, 0i), vec4<i32>(-21598i, 28438i, -22088i, -5422i)), (vec4<i32>(7462i, -2147483647i, -2147483647i, 0i) >> (vec4<u32>(3307u, u_input.a.x, 32626u, 56283u) % vec4<u32>(32u))) ^ -vec4<i32>(2147483647i, -2147483647i, -25611i, 37967i), u_input.a.x > countOneBits(4294967295u)), firstTrailingBit(-vec4<i32>(23556i, -2147483647i, 28048i, 1508i))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
    var_1 = -1356f;
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~(~u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(93290u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 570u)))), u_input.a.x);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(293f, 680f, 392f) - vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x)), _wgslsmith_f_op_vec3_f32(var_2.c + _wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, -2817f, 608f) - var_2.c)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(187f, var_2.c.x, 1362f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-386f)), _wgslsmith_div_f32(var_2.c.x, var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_vec3_f32(trunc(var_2.c)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, arg_0.x, 1026f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, arg_0.x, arg_0.x) - arg_0) * _wgslsmith_f_op_vec3_f32(func_3(true)))))));
    var var_1 = ~vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), ~abs(u_input.a.x) ^ 48945u, ~6824u);
    let var_2 = vec2<i32>(_wgslsmith_add_i32(2147483647i, -25169i) >> (var_1.x % 32u), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-37743i, 5410i, 1i, -82136i), vec4<i32>(-1i, 46089i, 2147483647i, 0i)), 1i) >> (max(39717u & u_input.a.x, 4294967295u) % 32u)) >> ((vec2<u32>(~19759u, countOneBits(4294967295u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(33271u, select(u_input.a.x, 9244u, arg_1)), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(1u, var_1.x)))) % vec2<u32>(32u));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.x, var_1.x, 69427u, 46784u)), vec4<u32>(u_input.a.x, 19494u, u_input.a.x, u_input.a.x)), vec4<u32>(var_1.x, ~32713u, 4294967295u, firstLeadingBit(0u))), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(14921u, 16235u, 17860u), arg_1), ~vec3<u32>(4732u, u_input.a.x, 1u)), var_1.x ^ 0u, 1u)), 1u ^ abs(u_input.a.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, 280f, var_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, var_0.x, var_0.x, arg_0.x) - vec4<f32>(var_0.x, arg_0.x, -206f, 1662f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1197f, arg_0.x, arg_0.x) * vec4<f32>(var_0.x, -167f, -763f, 858f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, var_0.x, -744f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(122f, arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(376f)))), -1434f, var_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 147f, 784f, var_0.x)))));
    return !(!(any(!vec4<bool>(arg_1, arg_1, true, true)) && ((arg_1 & arg_1) && true)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = abs(1i);
    var var_1 = any(vec4<bool>(true, all(vec2<bool>(true, arg_0)), arg_0, true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2066f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1102f, -673f, false)))) * -400f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1283f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-2039f + _wgslsmith_f_op_f32(f32(-1f) * -1014f)), 1000f, _wgslsmith_f_op_f32(max(825f, var_3)), _wgslsmith_f_op_f32(min(-194f, 272f))))));
    return Struct_2(any(select(select(vec4<bool>(arg_0, true, true, false), !vec4<bool>(false, false, arg_0, arg_0), func_2(vec3<f32>(var_4.x, 247f, var_3), arg_0)), !(!vec4<bool>(false, arg_0, true, true)), true)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(0i, arg_1.x), 0i, abs(arg_1.x), ~arg_1.x)), vec4<i32>(arg_1.x, -120335i, 32492i, arg_1.x)), var_4.yyw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, vec2<i32>(-1i, i32(-1i) * -(~(-2147483647i))));
    var var_1 = Struct_1(var_0.b.xzy, var_0.c.yx, !(!(!select(vec2<bool>(false, var_0.a), vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a)))), u_input.a.x, all(!(!(!vec4<bool>(true, var_0.a, false, false)))));
    var var_2 = ~vec2<i32>(var_0.b.x, -1i);
    var var_3 = !var_1.c.x;
    var_3 = var_0.a;
    let var_4 = Struct_3(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x)))), Struct_1(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(0i, 5135i, 0i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-59999i, var_1.a.x, 0i), -var_0.b.zxy)), var_1.b, vec2<bool>(var_1.c.x, true), ~1u, var_0.a), Struct_1(-var_0.b.zww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(297f, 764f) * vec2<f32>(-1082f, var_1.b.x)) + var_0.c.xx)), !(!select(var_1.c, vec2<bool>(var_0.a, false), var_1.e)), _wgslsmith_div_u32(select(_wgslsmith_add_u32(u_input.a.x, 4294967295u), 4294967295u, var_0.a), ~_wgslsmith_add_u32(var_1.d, var_1.d)), false));
    let x = u_input.a;
    s_output = StorageBuffer(24926i, var_0.c.x, (u_input.a.x << (var_1.d % 32u)) ^ 0u, var_0.b, vec4<u32>(reverseBits(_wgslsmith_sub_u32(var_4.b.d, 127431u)), ~_wgslsmith_add_u32(var_1.d, var_4.b.d), var_4.c.d, 0u) << (abs(vec4<u32>(46191u, 1u, 1u, _wgslsmith_div_u32(83161u, var_1.d))) % vec4<u32>(32u)));
}

