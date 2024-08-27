struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    let var_0 = ~_wgslsmith_add_vec2_u32(~select(u_input.a | u_input.a, u_input.a, any(vec3<bool>(false, false, arg_1.c))), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), u_input.b) >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)));
    let var_1 = ~firstLeadingBit(var_0.x);
    let var_2 = u_input.a.x;
    let var_3 = vec4<bool>(select(false, arg_1.c, true), arg_1.c, !(0i > min(1i, arg_1.a)) & false, any(select(vec2<bool>(!arg_1.c, true), select(vec2<bool>(arg_1.c, arg_1.c), select(vec2<bool>(true, false), vec2<bool>(false, arg_1.c), arg_1.c), vec2<bool>(arg_1.c, arg_1.c)), !arg_1.c)));
    var var_4 = var_3.wwz;
    return abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(97651i, -2835i, -5510i, 6646i) ^ -vec4<i32>(arg_1.a, 47588i, -11842i, arg_2.x), min(vec4<i32>(arg_2.x, arg_2.x, arg_1.a, arg_2.x), vec4<i32>(1i, arg_1.a, -1i, arg_2.x))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    global0 = abs(firstLeadingBit(~reverseBits(arg_0.d.a.a)));
    global0 = ~(~_wgslsmith_div_i32(-21609i, arg_3));
    let var_0 = arg_0;
    global0 = min(~arg_0.b.a.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a.wwy, min(-arg_0.a.xzz, arg_0.a.yzx)), arg_0.a.zyw << (~(~vec3<u32>(4072u, u_input.b, u_input.b)) % vec3<u32>(32u))));
    global0 = arg_3 << (reverseBits(1u) % 32u);
    return 1i;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec4<i32> {
    global0 = arg_1.x;
    global0 = func_4(Struct_3(firstTrailingBit(-(vec4<i32>(2147483647i, arg_1.x, arg_1.x, -34874i) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u)))), Struct_2(Struct_1(_wgslsmith_mod_i32(-17935i, -93407i), -999f, arg_1.x < 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -480f))), -2018f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1120f, _wgslsmith_f_op_f32(-arg_0), arg_0) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, arg_0, 213f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1924f, -1000f, arg_0))))), Struct_2(Struct_1(func_3(vec4<f32>(476f, arg_0, -1011f, arg_0), Struct_1(arg_1.x, 1000f, true, vec3<f32>(-551f, -441f, -252f)), arg_1), -1000f, all(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, -1876f, arg_0) + vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(arg_0 + arg_0))), 1f, select(vec4<bool>(true, true, true, true), vec4<bool>(false, !select(true, false, false), true, true), !any(vec2<bool>(true, true))), ~_wgslsmith_dot_vec2_i32(arg_1, abs(vec2<i32>(0i, 0i))));
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), 1000f, _wgslsmith_f_op_f32(-1672f + 1137f))))))));
    let var_1 = arg_1.x;
    var var_2 = arg_1;
    return ~abs(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, var_2.x, var_2.x, var_2.x), vec4<i32>(arg_1.x, arg_1.x, 1i, var_1)) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 77320u, 27751u, 41171u), vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.b))) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    global0 = arg_1.a.a;
    let var_0 = reverseBits(_wgslsmith_mod_vec4_i32(func_2(arg_1.b, vec2<i32>(~(-33668i), max(30553i, arg_1.a.a))), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, -1i, 43183i), vec4<i32>(40460i, 1i, arg_1.a.a, arg_1.a.a)))));
    global0 = ~arg_1.a.a;
    global0 = arg_1.a.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(arg_1.a.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1363f)), arg_1.a.b, arg_1.a.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.d))), true));
    return -839f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(115f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(849f * -1768f), _wgslsmith_f_op_f32(f32(-1f) * -1306f)))), !any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -365f, 562f)) + _wgslsmith_div_vec3_f32(vec3<f32>(2091f, 218f, 231f), vec3<f32>(-1477f, -888f, 340f))), vec3<f32>(1f, 1f, 1f)));
    let var_1 = false | var_0.c;
    var var_2 = var_0.c;
    let var_3 = var_0;
    var_2 = var_0.c;
    let var_4 = vec4<bool>(false, !(!(!var_3.c) | !var_1), true, var_0.c);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(func_1(0u, Struct_2(var_0, var_3.d.x))), 1f, _wgslsmith_f_op_f32(-var_3.b), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

