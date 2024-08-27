struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
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

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = vec3<u32>(~(~_wgslsmith_sub_u32(reverseBits(4294967295u), arg_2.c.c.x)), _wgslsmith_add_u32(u_input.c.x, ~(~u_input.c.x) << (65290u % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.c.x, 1u), min(vec2<u32>(u_input.c.x, arg_2.c.c.x), arg_2.c.c.wy) << (u_input.c.zz % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(u_input.c.yz, countOneBits(u_input.c.xy) & _wgslsmith_div_vec2_u32(arg_2.c.c.yw, u_input.c.xy))));
    let var_1 = _wgslsmith_f_op_vec2_f32(global1.yw * _wgslsmith_f_op_vec2_f32(select(arg_2.c.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, 1361f)), !(!global0.x || (true & global0.x)))));
    let var_2 = ~(_wgslsmith_sub_vec3_i32(select(vec3<i32>(49028i, arg_2.a.x, -1i), firstTrailingBit(u_input.d), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), vec3<i32>(-1294i, u_input.a, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, -13499i))) << (reverseBits(~(vec3<u32>(4294967295u, u_input.c.x, var_0.x) & u_input.c.yzw)) % vec3<u32>(32u)));
    let var_3 = arg_2;
    global0 = vec4<bool>(true, false, true, all(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, global0.x)), vec4<bool>(false, any(vec4<bool>(global0.x, global0.x, false, global0.x)), !global0.x, !global0.x), true)));
    return all(vec2<bool>(any(vec2<bool>(false, global0.x)) | ((global0.x || true) & all(global0.yw)), select(global0.x, 49488u < u_input.c.x, any(!vec3<bool>(true, global0.x, global0.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> bool {
    var var_0 = arg_0.x;
    let var_1 = global0.xzz;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(global1.xxy));
    let var_3 = Struct_1(u_input.d.x, 13972i, ~vec4<u32>(arg_0.x, _wgslsmith_sub_u32(u_input.c.x, 14033u), arg_0.x, u_input.c.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.x))))), global1.x), var_2.x);
    let var_4 = select(vec2<bool>(true, !(!all(global0.zy))), select(select(var_1.yz, vec2<bool>(true, true), -2147483647i > (u_input.a ^ u_input.d.x)), !vec2<bool>(true, var_1.x), var_1.x), select(vec2<bool>(_wgslsmith_f_op_f32(trunc(-1715f)) == -2540f, global0.x), !select(var_1.zy, var_1.zz, vec2<bool>(arg_1, false)), !vec2<bool>(select(arg_1, global0.x, arg_1), var_1.x)));
    return any(select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(all(global0.yxy), true, false), vec3<bool>(true, false, !var_4.x)), !(!select(global0.yxx, global0.xwy, false)), select(vec3<bool>(global0.x, all(vec3<bool>(var_4.x, true, global0.x)), -2147483647i > u_input.d.x), select(vec3<bool>(var_4.x, arg_1, false), !global0.xxx, global0.zyy), any(!var_4))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global0 = !(!(!vec4<bool>(true, all(global0.xzz), all(vec2<bool>(global0.x, true)), true)));
    var var_0 = _wgslsmith_f_op_f32(select(787f, arg_0, func_4(u_input.c, all(vec2<bool>(!global0.x, func_3(vec4<i32>(0i, -42728i, arg_1.x, -29013i), u_input.b, Struct_2(vec4<i32>(-33931i, 26291i, 6223i, u_input.b), u_input.c.x, Struct_1(0i, 11529i, vec4<u32>(u_input.c.x, 44768u, u_input.c.x, 46677u), global1.zy, 1000f))))))));
    var var_1 = Struct_2(firstLeadingBit(vec4<i32>(-41936i, 2147483647i >> (~u_input.c.x % 32u), _wgslsmith_div_i32(~u_input.b, arg_1.x), abs(_wgslsmith_clamp_i32(2147483647i, 1i, u_input.d.x)))), 43164u, Struct_1((2165i ^ (arg_1.x | arg_1.x)) & firstTrailingBit(_wgslsmith_add_i32(12205i, arg_1.x)), u_input.b, ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 13023u, 0u, 50514u), vec4<u32>(9314u, 54440u, 1u, 4294967295u)), vec4<u32>(40837u, u_input.c.x, 0u, 0u)), _wgslsmith_f_op_vec2_f32(-global1.zx), -1353f));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.c.c.wzz, vec3<u32>(u_input.c.x, 1u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), var_1.b) << (countOneBits(~_wgslsmith_clamp_u32(~0u, 4294967295u & var_1.b, firstLeadingBit(var_1.b))) % 32u);
    var var_3 = var_1.c;
    return firstLeadingBit(_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_add_i32(-u_input.b, 2147483647i), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), var_3.a), -102427i)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(reverseBits(u_input.d.x), func_2(global1.x, u_input.d.yz), u_input.c | vec4<u32>(1u, u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30116u), ~vec2<u32>(1u, 86938u)), (u_input.c.x | 43761u) >> (u_input.c.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(trunc(global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + 1452f)))))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(var_0.b, var_0.b), -28176i, vec4<u32>(74336u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 22989u) >> (select(vec2<u32>(var_0.c.x, u_input.c.x), u_input.c.ww, arg_0.x) % vec2<u32>(32u)), u_input.c.xx), 1u, var_0.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(177f, _wgslsmith_f_op_f32(-global1.x)), vec2<f32>(-524f, _wgslsmith_f_op_f32(round(global1.x))), true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.wx)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, 2494f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 581f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e * 995f))))));
    var_0 = Struct_1(-var_0.a, reverseBits(reverseBits(-18151i)), vec4<u32>(49427u, var_0.c.x, _wgslsmith_dot_vec3_u32(~var_0.c.yyw, ~var_1.c.xxw), u_input.c.x) & min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, 0u, u_input.c.x, 13165u) ^ u_input.c, ~vec4<u32>(1269u, var_1.c.x, var_0.c.x, 1u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1313u)), var_0.c), global1.zz, _wgslsmith_f_op_f32(min(-1781f, -366f)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.yzy, global1.ywx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -460f, -660f) * global1.ywx)))) - vec3<f32>(1000f, 1245f, -1421f)), vec3<f32>(var_1.e, _wgslsmith_f_op_f32(round(var_1.e)), var_1.d.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1598f)), -196f), 707f)));
    return Struct_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.a, ~var_1.a, var_0.b), vec4<i32>(countOneBits(var_1.a), -1600i, func_2(var_3.x, vec2<i32>(var_1.b, var_0.a)), _wgslsmith_mult_i32(0i, var_1.a))), var_1.c.x, Struct_1(u_input.d.x, -2147483647i, ~(~var_1.c), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, 796f)), _wgslsmith_f_op_f32(var_2.x - 1583f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(-(-u_input.a ^ ~u_input.a), u_input.a), -_wgslsmith_sub_i32(-7236i, u_input.a), (~u_input.c | ~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 33434u, 1u, u_input.c.x), u_input.c)) & abs(_wgslsmith_div_vec4_u32(u_input.c, reverseBits(vec4<u32>(u_input.c.x, 21482u, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1503f, global1.x)) + global1.wz), global1.x);
    var var_1 = var_0.c.x;
    var_0 = Struct_1(var_0.a | -1i, ~4901i, ~var_0.c, vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-464f)))), _wgslsmith_f_op_f32(min(var_0.d.x, var_0.e)));
    let var_2 = func_1(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    var var_3 = var_0.c.x;
    var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), vec4<u32>(0u << (0u % 32u), _wgslsmith_div_u32(var_0.c.x, 48388u), 11201u, _wgslsmith_clamp_u32(var_2.b, 6514u, 9573u))), ~4294967295u);
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.d.x);
}

