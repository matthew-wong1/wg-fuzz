struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = -reverseBits(44789i);
    let var_1 = !vec4<bool>(false, true & any(vec3<bool>(true, true, true)), false, true);
    global0 = var_1.xxw;
    global0 = select(var_1.ywx, select(!var_1.xzx, vec3<bool>(true, global0.x, true & arg_2), !var_1.wwy), !(!(!select(vec3<bool>(false, false, true), var_1.yyz, vec3<bool>(var_1.x, arg_2, var_1.x)))));
    var var_2 = Struct_1(arg_3.a, firstLeadingBit(vec3<i32>(arg_1.c.x, _wgslsmith_dot_vec2_i32(countOneBits(arg_3.b.yy), ~vec2<i32>(arg_0.x, 5929i)), arg_3.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(44061i, arg_3.b.x, arg_0.x), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.c >> (arg_3.a.xyx % vec3<u32>(32u)), vec3<i32>(52204i, -37389i, 0i)), arg_3.c ^ u_input.b), arg_1.b));
    return !var_1.wzy;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec4<u32> {
    let var_0 = true;
    let var_1 = all(select(!select(vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(arg_1, false, arg_1), arg_1), select(func_3(u_input.b.xy, Struct_1(vec4<u32>(0u, 1u, 47694u, 10166u), vec3<i32>(u_input.b.x, u_input.a, 1i), vec3<i32>(1i, u_input.b.x, -2147483647i)), arg_0, Struct_1(vec4<u32>(21366u, 4294967295u, 18161u, 3869u), vec3<i32>(1i, 23451i, 0i), u_input.b)), !vec3<bool>(arg_1, true, global0.x), var_0 != true), select(vec3<bool>(true, arg_1, false), !vec3<bool>(var_0, true, true), false))) & (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-503f + -538f))))) < 716f);
    let var_2 = Struct_1(abs(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40584u, 0u), vec2<u32>(1u, 1u)), ~_wgslsmith_add_u32(86507u, 0u), ~0u)), -firstLeadingBit(~firstLeadingBit(vec3<i32>(-26429i, u_input.b.x, u_input.a))), vec3<i32>(_wgslsmith_div_i32(reverseBits(0i), u_input.a), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-35734i, u_input.a), u_input.a, u_input.b.x), u_input.b.x));
    let var_3 = Struct_1(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(var_2.a.x, max(var_2.a.x, abs(var_2.a.x)), ~(~var_2.a.x)), var_2.a.x, min(var_2.a.x, var_2.a.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, var_2.b.x), var_2.c.x ^ u_input.a, abs(-2147483647i)), -1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, var_2.c.x, var_2.c.x), var_2.c), 31715i), var_2.c);
    global0 = vec3<bool>(true, select(true, false, !(!all(vec3<bool>(var_0, true, var_0)))), !(false && any(vec3<bool>(true, true, true))));
    return var_3.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~func_2(global0.x, !all(vec4<bool>(false, true, false, false))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-26354i, -28156i, 0i), arg_0.b), reverseBits(30105i), _wgslsmith_add_i32(arg_0.b.x, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -55886i, -1i, 1i) ^ vec4<i32>(-1i, arg_0.b.x, u_input.a, arg_0.b.x), firstLeadingBit(vec4<i32>(u_input.b.x, arg_0.b.x, arg_0.b.x, -33410i)))), abs(~0i ^ arg_0.b.x), -arg_0.c.x), ~u_input.b);
    let var_1 = !(all(func_3(~vec2<i32>(arg_0.c.x, u_input.a), Struct_1(arg_0.a, vec3<i32>(arg_0.c.x, -9227i, arg_0.c.x), u_input.b), global0.x | true, Struct_1(vec4<u32>(arg_0.a.x, 1u, var_0.a.x, 8561u), var_0.c, vec3<i32>(45084i, 1i, -40347i)))) | global0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, _wgslsmith_f_op_f32(trunc(948f)), _wgslsmith_f_op_f32(-173f - 308f), _wgslsmith_f_op_f32(-238f * 592f))))) * vec4<f32>(437f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-418f, 842f, false)) - _wgslsmith_f_op_f32(ceil(296f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1776f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f + -232f)) - _wgslsmith_div_f32(-660f, -111f))));
    let var_3 = _wgslsmith_sub_i32(32212i, _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(~reverseBits(u_input.a), ~(i32(-1i) * -2147483647i))));
    var var_4 = 1u;
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global0 = func_3(-arg_1.c.yx, arg_1, _wgslsmith_div_u32(68125u, 1u) != arg_1.a.x, Struct_1(~arg_1.a, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, abs(vec3<i32>(u_input.a, arg_1.c.x, arg_1.b.x)), vec3<i32>(arg_1.c.x, u_input.a, 0i)), -vec3<i32>(u_input.a, u_input.a, 2147483647i)), min(-(~arg_1.b), vec3<i32>(u_input.b.x, u_input.a, 22418i))));
    let var_0 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(590f)))));
    global0 = !select(func_3(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), arg_1.c.x), Struct_1(~vec4<u32>(4294967295u, 0u, 1u, 0u), vec3<i32>(u_input.b.x, 0i, -1i) >> (vec3<u32>(arg_1.a.x, 4294967295u, 1u) % vec3<u32>(32u)), -u_input.b), global0.x | true, arg_1), vec3<bool>(false, true, true), vec3<bool>(true, true, true));
    var var_1 = Struct_1(reverseBits(reverseBits(~select(arg_1.a, arg_1.a, global0.x))), ~(vec3<i32>(u_input.a, -u_input.a, 109821i << (arg_1.a.x % 32u)) << (arg_1.a.xyz % vec3<u32>(32u))), firstTrailingBit(~vec3<i32>(u_input.a, _wgslsmith_mod_i32(6226i, -59348i), arg_1.b.x)));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(20272u), 1u), 0u, var_1.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!(!all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x)))), firstLeadingBit(~u_input.a) >= (u_input.b.x | 25029i), all(vec2<bool>(func_4(vec2<f32>(1213f, 472f), func_1(Struct_1(vec4<u32>(1u, 0u, 1u, 1u), u_input.b, u_input.b))), false)));
    let var_0 = func_1(Struct_1(func_2(true, false || (false | global0.x)), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, vec3<f32>(_wgslsmith_f_op_f32(-584f + -479f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1151f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-599f + -982f) * _wgslsmith_f_op_f32(f32(-1f) * -227f))), 588f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -261f))), 143f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(sign(1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(794f, 1101f))))));
}

