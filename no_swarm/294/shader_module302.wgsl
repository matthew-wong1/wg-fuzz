struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<f32>(372f, -522f, -245f, 176f)), Struct_2(vec4<f32>(-559f, -206f, 2095f, -760f)), Struct_2(vec4<f32>(1324f, -253f, 1441f, 1000f)), Struct_2(vec4<f32>(-259f, -187f, 770f, 203f)), Struct_2(vec4<f32>(1007f, 1359f, -268f, 1472f)), Struct_2(vec4<f32>(-196f, -191f, -1000f, -592f)), Struct_2(vec4<f32>(1995f, -1134f, -1140f, 1000f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1165f)) * _wgslsmith_f_op_f32(-1000f * -679f))))), Struct_1(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_vec2_i32(-u_input.b.zz, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.zz, u_input.c.zx), max(u_input.c.yy, u_input.b.yy)), vec2<i32>(u_input.c.x, 0i) | -vec2<i32>(u_input.b.x, u_input.c.x)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-674f, -709f, var_0.b.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(603f + var_0.a), var_0.a))), 556f));
    let var_2 = countOneBits(-countOneBits(vec3<i32>(var_0.b.b.x, min(49318i, 0i), _wgslsmith_mult_i32(u_input.c.x, 24730i))));
    global0 = array<Struct_2, 7>();
    return var_0.b.c;
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    global0 = array<Struct_2, 7>();
    var var_0 = Struct_1(~_wgslsmith_div_i32(~(-18346i), arg_0), firstTrailingBit(-vec2<i32>(firstLeadingBit(-71869i), arg_0)), !func_3(~(~arg_1)), select(vec4<bool>(~u_input.d < 4294967295u, true, true, !any(vec2<bool>(true, false))), !vec4<bool>(all(vec3<bool>(false, false, false)), u_input.b.x == arg_0, true, 65988u >= arg_1), true));
    var var_1 = vec4<bool>(var_0.c.x, true, _wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(u_input.c.zy, vec2<i32>(-1i, u_input.c.x)), vec2<i32>(u_input.b.x, arg_0), true), vec2<i32>(-u_input.c.x, abs(19192i))) != -19881i, !any(vec3<bool>(false, true, var_0.c.x | false)));
    var var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x >> (arg_1 % 32u), ~var_0.b.x), ~u_input.b.yx), vec2<i32>(var_0.b.x & -2147483647i, 1i), var_0.c, select(func_3((1u << (arg_1 % 32u)) << (1u % 32u)), vec4<bool>(false, any(!var_0.c.yx), select(var_0.a >= u_input.c.x, var_0.c.x, var_0.c.x), true), all(vec4<bool>(true, false, true, all(vec2<bool>(false, var_0.c.x))))));
    var var_3 = -763f;
    return any(var_0.d);
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(-1518f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f) - -1000f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-258f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(404f - -740f)))), true, func_2(u_input.b.x, reverseBits(u_input.d)), arg_0.x);
    var var_1 = Struct_3(-334f, Struct_1(select(u_input.c.x, u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 45919u, u_input.a.x, 60231u), vec4<u32>(u_input.d, u_input.d, u_input.d, 29172u)) % 32u), var_0.x), vec2<i32>(~_wgslsmith_add_i32(17215i, 1i), ~_wgslsmith_add_i32(u_input.b.x, 24181i)), vec4<bool>(false, true && !var_0.x, ~1i == -u_input.c.x, true), func_3(~1u)));
    var var_2 = var_1.b.b.x;
    var var_3 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.c) & -vec3<i32>(1i, _wgslsmith_mult_i32(u_input.c.x, var_1.b.a), -8896i), select(~(vec3<i32>(-53705i, u_input.c.x, 2147483647i) & u_input.c), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.b.yzw, vec3<i32>(34808i, u_input.c.x, 16926i)), u_input.c), arg_0.wwx), u_input.c);
    global0 = array<Struct_2, 7>();
    return reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~u_input.a.x, abs(u_input.d), u_input.d), vec4<u32>(select(u_input.d, u_input.d, var_0.x), 1u, 821u, 36641u)) ^ ~vec4<u32>(~0u, countOneBits(u_input.d), 1u & u_input.d, firstTrailingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 209f, 2967f, -791f), vec4<f32>(-674f, -891f, -960f, -191f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, -950f, 947f, -247f)))))));
    let var_1 = _wgslsmith_mult_vec2_u32(~max(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), abs(~u_input.a)), u_input.a);
    var var_2 = ~func_1(vec4<bool>(_wgslsmith_f_op_f32(-var_0.a.x) != _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), true, true, true));
    var var_3 = Struct_1(0i, vec2<i32>(-13764i, -48382i ^ _wgslsmith_mod_i32(u_input.c.x | u_input.b.x, u_input.c.x)), vec4<bool>(false, all(vec3<bool>(true, false, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec2<bool>(true, true)) && all(func_3(u_input.d).yzx)), vec4<bool>(!(_wgslsmith_f_op_f32(ceil(-853f)) != _wgslsmith_f_op_f32(trunc(var_0.a.x))), !any(vec2<bool>(true, true)), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-1108f * 219f)) <= var_0.a.x, !(_wgslsmith_div_f32(1392f, var_0.a.x) == var_0.a.x)));
    var_3 = Struct_1(_wgslsmith_sub_i32(~0i, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 12947i), u_input.c.zy), select(vec2<i32>(0i, u_input.c.x), var_3.b, vec2<bool>(var_3.c.x, var_3.d.x))))), u_input.b.yw, var_3.d, select(select(select(!var_3.d, var_3.d, func_2(22194i, 44397u)), var_3.c, var_3.d), select(vec4<bool>(true, !var_3.c.x, !var_3.d.x, var_2.x == var_1.x), select(func_3(var_2.x), vec4<bool>(false, false, false, true), var_3.c.x), var_3.d.x), vec4<bool>(true, var_3.c.x, true | !var_3.d.x, all(select(var_3.d.zz, var_3.c.wx, var_3.c.yx)))));
    global0 = array<Struct_2, 7>();
    var_3 = Struct_1(2147483647i, vec2<i32>(_wgslsmith_mod_i32(~var_3.a, 0i), u_input.c.x) & vec2<i32>(-4556i, -3818i), !var_3.d, var_3.c);
    var_2 = ~vec4<u32>(~(~u_input.a.x), var_2.x, 58347u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

