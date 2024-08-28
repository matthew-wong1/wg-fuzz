struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = 987f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> vec2<f32> {
    let var_0 = Struct_1(any(vec3<bool>(true, arg_0.x && arg_0.x, true)));
    return _wgslsmith_f_op_vec2_f32(exp2(global0.wz));
}

fn func_2() -> i32 {
    var var_0 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_1 = Struct_1(var_0.x);
    let var_2 = Struct_1(var_1.a);
    let var_3 = Struct_2(Struct_1(u_input.a.x > u_input.a.x), var_1, Struct_1(false), var_2, var_2);
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1550f, global0.x)), global0.yy, any(!vec2<bool>(var_1.a, true))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(506f + global0.x)))))), var_2.a));
    return ~(~(~17690i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = firstLeadingBit(vec3<i32>(61746i, u_input.a.x, -arg_0.x)) | _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.x, arg_0.x), _wgslsmith_mod_i32(2147483647i, arg_0.x), u_input.a.x), arg_1.xwz), vec3<i32>(firstLeadingBit(-23783i), arg_1.x, max(-17968i, -2147483647i)));
    let var_1 = ~_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mod_u32(0u << (u_input.b.x % 32u), u_input.c.x | 4294967295u)), ~9813u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(global0.x - 630f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))))));
    return Struct_1(global0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -667f), -1941f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<u32> {
    global1 = global0.x;
    var var_0 = u_input.e.x;
    var var_1 = Struct_2(func_4(_wgslsmith_div_vec4_i32(reverseBits(u_input.a), vec4<i32>(u_input.a.x, abs(u_input.a.x), select(u_input.a.x, -48563i, arg_1.a), -33989i)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a.x, -1i)), func_2() | u_input.a.x)), func_4(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x >> (11496u % 32u), 1i), ~_wgslsmith_mult_i32(u_input.a.x, -14760i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-41749i, u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a.zzz))), u_input.a), func_4(u_input.a, vec4<i32>(-(i32(-1i) * -30574i), u_input.a.x, _wgslsmith_mod_i32(2644i, -7391i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x))), func_4(-vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), reverseBits(14186i), u_input.a.x), ~vec4<i32>(0i, ~u_input.a.x, ~1i, u_input.a.x & u_input.a.x)), arg_1);
    let var_2 = _wgslsmith_f_op_f32(max(-2083f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(897f))))));
    var_1 = Struct_2(var_1.d, Struct_1(false), func_4(u_input.a, -_wgslsmith_sub_vec4_i32(u_input.a, u_input.a ^ u_input.a)), Struct_1(var_1.c.a), func_4(select(vec4<i32>(i32(-1i) * -14424i, _wgslsmith_sub_i32(0i, u_input.a.x), u_input.a.x, u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(8747i, 15337i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, ~26817i), !vec4<bool>(arg_1.a, true, true, false)), (vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) >> (u_input.e % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 1i, u_input.a.x, -36006i)), u_input.a)));
    return reverseBits(~(vec2<u32>(u_input.e.x, u_input.d) & u_input.b) << (u_input.e.zz % vec2<u32>(32u))) | ~select(vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.b.x), u_input.d), u_input.b, any(vec4<bool>(var_1.d.a, false, var_1.d.a, arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.e.yz, ~firstLeadingBit(~func_1(vec2<f32>(-1000f, -634f), Struct_1(true))));
    global1 = 938f;
    let var_1 = 1u;
    let var_2 = Struct_2(Struct_1(true), Struct_1(false), Struct_1(func_4(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 29479i)), -_wgslsmith_div_vec4_i32(u_input.a, u_input.a)).a), Struct_1(select(true, all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)))), func_4(u_input.a, max(u_input.a, u_input.a) | (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, -3144i, u_input.a.x, -14569i))));
    let var_3 = (i32(-1i) * -2530i) <= u_input.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-649f, global0.x, global0.x, global0.x), vec4<f32>(144f, -283f, global0.x, 845f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 1598f, 2031f, -1819f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 160f, -176f, 483f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -664f, global0.x) * vec4<f32>(global0.x, global0.x, 1023f, global0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), 361f, 212f, 715f), var_2.d.a));
    var var_4 = select(select(var_3 & var_2.e.a, !func_4(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x), false), vec4<i32>(u_input.a.x, 1i, 2147483647i, -2147483647i)).a, true), false, var_2.b.a);
    var var_5 = true;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(select(vec2<bool>(false, any(vec4<bool>(true, false, true, var_3))), !vec2<bool>(var_3, var_3), true), global0.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.zyz)), u_input.a.x));
}

