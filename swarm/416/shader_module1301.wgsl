struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: i32 = 1i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_4(~vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.c, u_input.a)), u_input.a, -1i), Struct_2(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 34055u, 4294967295u, 9951u), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), vec4<u32>(1444u, 6883u, u_input.b, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-272f - 405f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f + 406f) * _wgslsmith_f_op_f32(abs(-1652f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1415f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-158f))))))));
    var var_1 = vec4<bool>(true, !(!(var_0.b.a.x == min(53004u, var_0.b.a.x))), true, (false != any(vec4<bool>(true, true, true, true))) & (all(vec4<bool>(false, false, true, false)) | true));
    var_1 = vec4<bool>(var_1.x, var_1.x, false, true);
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, 4294967295u, _wgslsmith_sub_u32(min(8133u, 4294967295u), select(var_0.b.a.x, var_0.b.a.x, true)), 60810u), ~select(var_0.b.a >> (vec4<u32>(u_input.b, var_0.b.a.x, var_0.b.a.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(1u, u_input.b, 4294967295u, u_input.b)), !var_1.x));
    var var_3 = Struct_3(true, abs(4294967295u), vec3<bool>(all(var_1.wzx), any(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), var_1.x)), false));
    return vec3<f32>(1819f, var_0.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(-var_0.b.c))), var_0.b.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, 1000f, -2055f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))));
    var var_1 = vec4<bool>(true, false, true, u_input.b >= _wgslsmith_div_u32(u_input.b, 87346u));
    var var_2 = reverseBits(u_input.b);
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1282f, var_0.x))), 740f, -896f) * var_0);
    return 25026i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(max(firstTrailingBit(vec3<i32>(28134i ^ u_input.a, u_input.c << (4294967295u % 32u), firstTrailingBit(0i))), vec3<i32>(arg_0.a.x, 2147483647i & (u_input.a >> (u_input.b % 32u)), 1i & func_2(vec2<i32>(23811i, arg_0.a.x), vec2<i32>(u_input.a, -2147483647i)))), Struct_2(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(47593u, 1u, u_input.b, 0u) | vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), vec4<u32>(countOneBits(0u), ~1u, ~u_input.b, max(60885u, u_input.b))), arg_1.x, -1653f));
    global1 = u_input.c;
    global0 = array<Struct_3, 25>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - 1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -705f))))));
    global1 = func_2(~vec2<i32>(-2147483647i, firstTrailingBit(u_input.c)) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.a.x, 56683u) >> (var_0.b.a.xw % vec2<u32>(32u)), var_0.b.a.zz, vec2<u32>(0u, 45959u)) % vec2<u32>(32u)), max(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 11574i), arg_0.a.zw, vec2<i32>(37985i, 2147483647i)) & (arg_0.a.ww | arg_0.a.yy)), vec2<i32>(-arg_0.a.x, 42502i) | reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 1i), arg_0.a.xw, arg_0.a.yz))));
    return Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-(-2147483647i << (u_input.b % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, 2147483647i)), select(u_input.a | -1i, 0i, any(vec2<bool>(true, false)))), _wgslsmith_mult_vec3_i32(abs(var_0.a) | ~vec3<i32>(-2745i, var_0.a.x, 18136i), firstLeadingBit(max(vec3<i32>(-1i, 2147483647i, 22798i), vec3<i32>(1i, 1i, arg_0.a.x))))), var_0.b);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.c);
    var var_1 = vec2<bool>(!(!(!all(vec4<bool>(true, false, true, false)))), true);
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, 52112i, arg_0.a.x, arg_1), vec4<i32>(-1i, -2147483647i, arg_1, -32100i), vec4<i32>(1i, -6516i, -21795i, -31627i))), vec4<i32>(max(~u_input.a, arg_0.a.x), arg_0.a.x, 30741i, arg_0.a.x)));
    let var_3 = 1u;
    let var_4 = ~arg_2;
    return !select(!(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), !(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, true))), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(arg_0.b.b < 256f, any(vec2<bool>(var_1.x, false)), u_input.b < arg_0.b.a.x, var_1.x), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false), vec4<bool>(false, true, var_1.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<i32>(-u_input.a, u_input.a, u_input.c << (1u % 32u), -18521i) | (vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a) << (~vec4<u32>(30133u, 1u, u_input.b, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 1i, -64851i), vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.c)), vec4<i32>(-385i, 0i, -55711i, -2147483647i)), select(func_4(func_1(Struct_1(vec4<i32>(u_input.a, 1i, u_input.c, u_input.a)), vec3<f32>(-805f, -352f, -650f)), _wgslsmith_dot_vec2_i32(vec2<i32>(26660i, 51988i), vec2<i32>(0i, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b))), vec4<bool>(true, all(vec3<bool>(true, true, false)), u_input.b == u_input.b, true), select(false, true, all(vec3<bool>(false, true, false))))));
    var_0 = Struct_1(-vec4<i32>(-2147483647i, 11239i, var_0.a.x, u_input.a));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -abs(func_1(Struct_1(vec4<i32>(u_input.a, var_0.a.x, -2147483647i, -13754i)), vec3<f32>(1076f, -224f, 1000f)).a), vec3<i32>(~u_input.c << (~(~40895u) % 32u), _wgslsmith_mult_i32(min(func_1(Struct_1(var_0.a), vec3<f32>(1088f, -549f, -605f)).a.x, u_input.c & u_input.c), ~var_0.a.x), -u_input.a), -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c, -9999i, -2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a.xxy, vec3<i32>(var_0.a.x, 30504i, u_input.a)), -var_0.a.ywy)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1184f, 1000f), vec2<f32>(1000f, -521f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-674f, 782f) - vec2<f32>(-1000f, 1000f)), vec2<bool>(false, false)))))), vec2<f32>(296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-355f)))))), true));
    let var_3 = !(!vec4<bool>(var_1.x > 1598i, true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-783f, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(all(select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false), var_3)), true && (4294967295u > u_input.b), var_3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1120f)) - _wgslsmith_f_op_f32(-805f - var_2.x)), _wgslsmith_f_op_f32(min(var_2.x, 430f)), var_2.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + -390f))), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1396f))), _wgslsmith_f_op_f32(trunc(var_2.x)))));
}

