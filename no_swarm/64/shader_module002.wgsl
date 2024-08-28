struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = firstLeadingBit(arg_0.e.zx);
    let var_1 = countOneBits(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 0u) << (min(vec3<u32>(u_input.d, arg_1.x, arg_2.x), vec3<u32>(3915u, 4294967295u, u_input.d)) % vec3<u32>(32u)), arg_2.wzx)));
    var var_2 = Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, -81312i)), ~vec2<i32>(-1i, 41116i)) >= _wgslsmith_mult_i32(abs(u_input.a), 0i)));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~(countOneBits(vec4<i32>(153i, -1i, 0i, 54730i)) & ~vec4<i32>(-15675i, u_input.e, -32841i, u_input.a)), vec4<i32>(u_input.c.x, -39150i >> (~var_1.x % 32u), ~(~(-1i)), 0i)), _wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(7733i, 2147483647i, u_input.a, u_input.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.e, u_input.a), vec4<i32>(u_input.e, 0i, -26817i, u_input.c.x), vec4<i32>(0i, u_input.a, 0i, u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i << (1u % 32u), u_input.c.x, _wgslsmith_div_i32(u_input.e, -16459i), u_input.e), vec4<i32>(u_input.e ^ u_input.c.x, -2147483647i, -2147483647i, _wgslsmith_mod_i32(10297i, -2147483647i)))));
    let var_4 = Struct_1(vec2<bool>(true, true));
    return !select(vec4<bool>(false, all(vec3<bool>(var_4.a.x, false, var_4.a.x)), !all(arg_0.b.yy), false), vec4<bool>(true, any(select(vec4<bool>(true, var_2.a.x, arg_0.c, false), vec4<bool>(false, false, false, var_4.a.x), true)), false, !any(arg_0.b.yy)), true);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = u_input.b;
    let var_1 = vec4<i32>(arg_0, arg_1.x, -31693i, arg_0);
    let var_2 = Struct_3(vec4<bool>(arg_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(round(938f)))) != _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -565f)), false, all(func_3(Struct_5(vec2<f32>(-277f, 474f), vec3<bool>(arg_2.a.x, true, arg_2.a.x), false, vec2<u32>(u_input.d, u_input.b), vec4<u32>(u_input.d, u_input.b, 4294967295u, 18302u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, u_input.d), vec4<u32>(u_input.b, u_input.d, u_input.b, u_input.d)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.b, u_input.d, 93595u), vec4<u32>(u_input.d, u_input.d, 32333u, u_input.b))))), func_3(Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -846f), vec2<f32>(-129f, -408f))))), !(!vec3<bool>(arg_2.a.x, false, arg_2.a.x)), !arg_2.a.x, reverseBits(~vec2<u32>(1u, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(3725u, u_input.b, 49271u, u_input.b), vec4<u32>(u_input.d, 52604u, 20821u, 1u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(43107u, u_input.d, 1u, u_input.d), vec4<u32>(15415u, u_input.d, 5058u, u_input.d))), vec4<u32>(u_input.d, firstTrailingBit(_wgslsmith_add_u32(4294967295u, u_input.d)), ~27484u, u_input.d), ~(~vec4<u32>(38633u, u_input.b, 1u, 88337u))).x, Struct_1(arg_2.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1731f + 174f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(1188f))), 375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1090f + 732f), -1614f)))), _wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-711f, 424f, arg_2.a.x)) + 1f)) >= -267f);
    var var_3 = var_2;
    var var_4 = var_3.b;
    return true;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_3(!vec4<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), (4294967295u ^ u_input.b) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 99468u, 4294967295u, u_input.b), vec4<u32>(4294967295u, 43124u, u_input.d, 4294967295u)), (-2147483647i > u_input.c.x) | true), true, Struct_1(select(vec2<bool>(true, true), vec2<bool>(func_2(1i, vec3<i32>(-7889i, 3453i, 35202i), Struct_1(vec2<bool>(true, true))), true), select(func_3(Struct_5(vec2<f32>(-497f, -602f), vec3<bool>(false, false, false), true, vec2<u32>(1u, 1u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), vec4<u32>(22938u, u_input.d, u_input.d, u_input.b), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b)).xz, vec2<bool>(true, true), u_input.c.x == 1i))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(ceil(-1311f))), _wgslsmith_f_op_f32(select(-833f, -963f, true)), _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1138f) * _wgslsmith_f_op_f32(-1014f - -437f))))), true | (true & any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var_0 = Struct_3(var_0.a, select(-1287f <= var_0.d.x, u_input.b > (u_input.d ^ firstTrailingBit(1u)), true), Struct_1(vec2<bool>(true, any(vec4<bool>(var_0.b, var_0.a.x, false, var_0.b)))), var_0.d, func_2(-2147483647i, vec3<i32>(u_input.c.x, 1i & u_input.a, u_input.a), var_0.c));
    var_0 = Struct_3(!var_0.a, false, var_0.c, vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -1082f, 254f, -1126f), all(var_0.a.yy));
    var_0 = Struct_3(select(vec4<bool>(true, false, var_0.e, false), select(vec4<bool>(0u > u_input.b, var_0.e, var_0.d.x <= var_0.d.x, var_0.e), var_0.a, func_3(Struct_5(vec2<f32>(-1303f, -396f), var_0.a.zxx, false, vec2<u32>(u_input.d, u_input.d), vec4<u32>(u_input.b, u_input.b, 0u, 0u)), countOneBits(vec4<u32>(9667u, 1u, 8671u, 4294967295u)), vec4<u32>(u_input.b, u_input.b, u_input.d, 33802u)).x), !var_0.a), false, Struct_1(var_0.c.a), _wgslsmith_f_op_vec4_f32(-var_0.d), var_0.c.a.x);
    var_0 = Struct_3(var_0.a, any(!(!var_0.a.zyz)) & (var_0.d.x < 1167f), Struct_1(select(var_0.a.xz, func_3(Struct_5(var_0.d.wz, var_0.a.wzx, false, vec2<u32>(u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.b, 0u, 33401u)), vec4<u32>(u_input.b, u_input.d, u_input.b, 3890u), vec4<u32>(5686u, 7206u, 42895u, u_input.d)).zz, (-1i << (0u % 32u)) < -u_input.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.d)))) - _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.d.x, var_0.d.x, -505f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, -1000f))))) > var_0.d.x);
    return Struct_5(var_0.d.xx, select(select(select(select(var_0.a.yyz, vec3<bool>(false, var_0.c.a.x, true), var_0.a.wzy), !var_0.a.wyy, vec3<bool>(true, true, true)), vec3<bool>(var_0.c.a.x, true, any(var_0.a.wzy)), var_0.a.x || true), vec3<bool>(true, ~37601u <= (1u << (u_input.d % 32u)), !(!var_0.a.x)), select(vec3<bool>(any(var_0.a.ywx), true, !var_0.b), var_0.a.zxw, var_0.a.wwy)), func_3(Struct_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.x, 1000f))), vec3<bool>(false, true, var_0.b), var_0.a.x, vec2<u32>(u_input.d, u_input.d), reverseBits(~vec4<u32>(u_input.b, u_input.d, 5410u, u_input.b))), ~(~(~vec4<u32>(u_input.d, 4294967295u, 12676u, u_input.d))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.d, 4294967295u, 45183u), vec4<u32>(0u, 4294967295u, u_input.d, u_input.b)))).x, vec2<u32>(4294967295u, u_input.d), vec4<u32>(u_input.d, _wgslsmith_div_u32(u_input.d, abs(u_input.b)), u_input.d, ~u_input.b ^ 38602u) << (vec4<u32>(1u, abs(~u_input.d), 21253u, 4294967295u >> (1u % 32u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = Struct_3(vec4<bool>(false, arg_0.b.x, arg_0.b.x, 738f == arg_0.a.x), true, Struct_1(select(!arg_0.b.yy, vec2<bool>(func_3(arg_0, vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.e.x), arg_0.e).x, true), false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 578f, arg_0.a.x) * vec4<f32>(arg_0.a.x, 979f, arg_0.a.x, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 896f, arg_0.a.x, 260f) * vec4<f32>(1000f, 1463f, arg_0.a.x, arg_0.a.x))))), false);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1))))));
    var var_3 = Struct_3(vec4<bool>(true, func_3(func_1(), _wgslsmith_add_vec4_u32(arg_0.e, countOneBits(arg_0.e)), ~arg_0.e).x, !arg_0.b.x, arg_0.b.x), u_input.a != _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(2147483647i, u_input.e)), 1i), Struct_1(arg_0.b.yx), vec4<f32>(-679f, 390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(126f, -265f)))) - _wgslsmith_f_op_f32(-func_1().a.x)), _wgslsmith_f_op_f32(609f * arg_0.a.x)), func_1().b.x);
    var var_4 = vec4<i32>(~(u_input.e >> (1u % 32u)), _wgslsmith_sub_i32(-45889i << (countOneBits(arg_0.d.x) % 32u), u_input.a), 1i, u_input.e);
    return reverseBits(~firstLeadingBit(_wgslsmith_div_i32(~var_4.x, -var_4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.c, vec2<i32>(_wgslsmith_sub_i32(-u_input.e, u_input.a), ~reverseBits(u_input.e) & func_4(func_1())));
    var var_1 = select(vec4<bool>((u_input.d >= u_input.d) | false, any(select(func_1().b.xz, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_3(Struct_5(vec2<f32>(1496f, -139f), vec3<bool>(true, false, true), true, vec2<u32>(4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.b, 55697u)), vec4<u32>(u_input.d, 4294967295u, u_input.d, 4294967295u), vec4<u32>(u_input.d, 0u, 1u, u_input.b)).x)), any(!func_3(Struct_5(vec2<f32>(-204f, -628f), vec3<bool>(true, true, true), true, vec2<u32>(u_input.d, 27271u), vec4<u32>(82097u, u_input.d, u_input.d, u_input.d)), vec4<u32>(25454u, 65295u, u_input.d, u_input.b), vec4<u32>(4294967295u, u_input.d, u_input.b, u_input.d)).yx), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 2147483647i, u_input.e, var_0.x), vec4<i32>(57470i, -28685i, var_0.x, u_input.e)), vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x)) <= u_input.c.x), !vec4<bool>(!(u_input.d > u_input.d), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), false, false), any(func_3(func_1(), vec4<u32>(u_input.b, abs(37191u), u_input.d, _wgslsmith_div_u32(u_input.b, 0u)), ~vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.b))));
    let var_2 = vec4<i32>(~var_0.x, (i32(-1i) * -1i) << (_wgslsmith_clamp_u32(u_input.d & ~76206u, u_input.b, u_input.b) % 32u), ~(~1i), u_input.e);
    let var_3 = func_1().b;
    var_1 = select(!(!func_3(func_1(), vec4<u32>(39186u, u_input.d, u_input.b, 0u) & vec4<u32>(62182u, 43891u, 633u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.b, 1u, u_input.d), vec4<u32>(16453u, u_input.d, 4151u, 77820u)))), !vec4<bool>(true, var_3.x, var_3.x, true), !vec4<bool>(all(!var_3.xy), true, !(false && var_1.x), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -1222f)), 1f, _wgslsmith_f_op_f32(-522f + 1842f), _wgslsmith_div_f32(163f, -221f))))), _wgslsmith_mult_vec4_u32(~((vec4<u32>(u_input.d, 2231u, u_input.b, u_input.b) & vec4<u32>(u_input.b, 17288u, 6273u, u_input.d)) >> (vec4<u32>(0u, u_input.b, 10583u, u_input.b) % vec4<u32>(32u))), vec4<u32>(abs(10112u), 20663u, _wgslsmith_mod_u32(72218u, 4294967295u), u_input.b) & vec4<u32>(~26702u, ~u_input.d, _wgslsmith_mod_u32(1u, u_input.b), min(99280u, u_input.d))));
}

