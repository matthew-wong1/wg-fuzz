struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-805f)), _wgslsmith_f_op_f32(floor(1000f))))));
    let var_1 = all(vec2<bool>(reverseBits(2147483647i) <= _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-83749i, -26650i, 2147483647i)), vec3<i32>(-2147483647i, 1i, -2147483647i) << (u_input.a % vec3<u32>(32u))), true || any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))));
    var var_2 = vec2<u32>(~(~(~(~u_input.a.x))), arg_0.x | 4579u);
    let var_3 = select(!vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, var_1), vec2<bool>(false, var_1))), !var_1, var_1), !vec3<bool>(true, var_1, !(!var_1)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, false), false), var_1), select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, false, var_1), var_1), vec3<bool>(var_1, var_1, false), select(vec3<bool>(var_1, false, true), vec3<bool>(false, var_1, var_1), false)), true), var_1));
    let var_4 = true;
    return abs(-firstLeadingBit(_wgslsmith_mult_i32(4919i, 14732i)) >> (_wgslsmith_dot_vec4_u32(~min(vec4<u32>(1u, var_2.x, 26188u, u_input.a.x), vec4<u32>(41029u, arg_0.x, 1u, var_2.x)), vec4<u32>(u_input.a.x | 0u, arg_0.x | 1u, 0u << (0u % 32u), _wgslsmith_mult_u32(var_2.x, 1u))) % 32u));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.d;
    var var_1 = -(~vec3<i32>(firstTrailingBit(arg_3.d.x), _wgslsmith_mult_i32(0i, -45315i), func_3(vec2<u32>(arg_3.e, 4294967295u))) << (~vec3<u32>(5935u, 4294967295u, ~21393u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, 974f, 1000f, -1000f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -752f, arg_0, arg_0)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1074f, arg_0, 686f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.c, arg_3.c, -1000f, 1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, arg_0, -107f, arg_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, -1121f, arg_0, 147f)))));
    let var_3 = ~arg_1;
    let var_4 = _wgslsmith_f_op_f32(step(-181f, arg_0));
    return u_input.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_3(!(!arg_0.yz), arg_1, arg_1.a, !select(vec4<bool>(any(arg_1.b.zy), !arg_1.a.a, all(arg_1.b), true || arg_1.a.a), !(!arg_0), u_input.a.x == (arg_1.a.e | 0u)));
    let var_1 = true;
    let var_2 = Struct_3(vec2<bool>(true, arg_0.x), Struct_2(Struct_1(true && (var_0.c.b > -1422f), _wgslsmith_f_op_f32(1886f - _wgslsmith_div_f32(-155f, arg_1.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.c, arg_1.a.c))), var_0.c.d, _wgslsmith_mod_u32(0u, 868u)), vec4<bool>(arg_0.x, true, var_1, 1055f > _wgslsmith_div_f32(var_0.c.b, var_0.b.a.b))), Struct_1(var_1, _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f - var_0.c.b) - arg_1.a.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(-32075i & arg_1.a.d.x, 47197i, 16898i), vec3<i32>(_wgslsmith_add_i32(var_0.b.a.d.x, arg_1.a.d.x), i32(-1i) * -2147483647i, -var_0.c.d.x)), arg_2.x), vec4<bool>(arg_2.x > ~select(4294967295u, u_input.a.x, var_0.a.x), all(select(vec2<bool>(arg_0.x, arg_1.a.a), var_0.d.xw, arg_0.zz)), all(vec2<bool>(all(var_0.d), true)), false));
    let var_3 = var_2.d.x;
    let var_4 = _wgslsmith_clamp_vec3_i32(arg_1.a.d, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.d.x, ~func_3(vec2<u32>(u_input.a.x, u_input.a.x)), 2147483647i), vec3<i32>(func_3(u_input.a.zy | vec2<u32>(32242u, 0u)), -18822i, arg_1.a.d.x & var_2.c.d.x)), vec3<i32>(countOneBits(~_wgslsmith_sub_i32(arg_1.a.d.x, -12211i)), -2147483647i, ~_wgslsmith_dot_vec3_i32(arg_1.a.d & vec3<i32>(arg_1.a.d.x, 2784i, 60921i), var_2.c.d)));
    return 1991i;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1176f + arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x);
    let var_1 = -17284i;
    let var_2 = -2147483647i & func_4(vec4<bool>(arg_2.x, !arg_2.x | arg_1, _wgslsmith_div_f32(1113f, -338f) < _wgslsmith_div_f32(788f, arg_0.x), all(!arg_2)), Struct_2(Struct_1(arg_0.x != arg_0.x, -198f, -802f, vec3<i32>(1i, -1i, -49i), func_2(arg_0.x, u_input.a.x, true, Struct_1(arg_1, var_0.x, var_0.x, vec3<i32>(2147483647i, var_1, 1i), 0u))), vec4<bool>(arg_1, false, arg_1, true == arg_2.x)), ~firstLeadingBit(u_input.a));
    let var_3 = abs(76184u);
    var var_4 = max(~vec2<i32>(-min(37215i, var_2), var_2), vec2<i32>(-1i) * -(select(vec2<i32>(1i, 6585i), vec2<i32>(0i, -2147483647i), vec2<bool>(arg_2.x, true)) >> (u_input.a.yz % vec2<u32>(32u))));
    return ~(~(~vec4<u32>(4294967295u, 1u, 0u, abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(max(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -535f, -173f, -1212f) + vec4<f32>(-258f, -1051f, -1616f, 132f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 1468f, 857f, 2117f) * vec4<f32>(-371f, 1007f, 823f, -619f))), true, !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), abs(firstLeadingBit(vec4<u32>(28738u, 85249u, u_input.a.x, 43294u)))), countOneBits(reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, 1253u, 16938u, 0u)))), all(vec3<bool>(true, true, !select(true, false, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2278f, -450f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -257f)) + vec2<f32>(1499f, -575f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3519f) * 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 105f))))))));
    let var_2 = ~var_0.x;
    let var_3 = 31000i;
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(468f, var_1.x), vec2<f32>(1768f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, 851f), vec2<f32>(var_1.x, 2000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-136f, 427f)))))), select(vec2<bool>(any(vec3<bool>(true, true, true)), -1624i <= var_3), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), 0i != var_3)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - -842f), -893f))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false)), true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(reverseBits(u_input.a.zy)) | ~0i, ~(~(~reverseBits(vec2<u32>(4294967295u, var_0.x)))));
}

