struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    global0 = -1410f;
    let var_0 = Struct_2(global1.b.a.x << (_wgslsmith_mult_u32(u_input.a.x, 69748u) % 32u), Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global1.b.a.x, u_input.e), global1.b.a | global1.b.a), !global1.b.d.yx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(922f)), -611f)), -474f), select(!global1.b.d, global1.b.d, global1.b.d.x), _wgslsmith_f_op_f32(round(-1306f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-422f, _wgslsmith_f_op_f32(var_0.b.e + global1.b.c)))))));
    var var_1 = Struct_3(!vec3<bool>(false, !(u_input.b.x >= u_input.b.x), global1.b.d.x), firstLeadingBit(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), min(u_input.a, u_input.a))), Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.a.x, -37388i, 2147483647i), u_input.d.xxw >> (vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))), vec2<bool>(true, all(select(vec3<bool>(var_0.b.b.x, false, global1.b.d.x), vec3<bool>(var_0.b.d.x, false, true), global1.b.d))), _wgslsmith_f_op_f32(step(-396f, global1.b.c)), vec3<bool>(false, any(select(vec3<bool>(false, global1.b.b.x, global1.b.d.x), global1.b.d, var_0.b.d)), !(-1000f >= var_0.b.c)), _wgslsmith_f_op_f32(ceil(-1000f))));
    let var_2 = Struct_1(firstTrailingBit(-reverseBits(vec3<i32>(var_1.c.a.x, var_0.b.a.x, -16390i))), select(!select(vec2<bool>(true, var_1.a.x), select(vec2<bool>(true, true), var_0.b.b, var_0.b.b.x), true), select(vec2<bool>(0u <= u_input.a.x, false), vec2<bool>(!var_1.a.x, any(vec4<bool>(false, true, true, true))), !(!var_0.b.d.xz)), var_1.a.x), -1000f, !(!vec3<bool>(!global1.b.d.x, var_1.a.x, var_0.b.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.c))));
    return var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1859f, global1.b.c) + vec2<f32>(global1.b.e, global1.b.e)), _wgslsmith_div_vec2_f32(vec2<f32>(2225f, global1.b.c), vec2<f32>(2661f, 175f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c, global1.b.c) - vec2<f32>(-140f, global1.b.c))))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-3195i, -u_input.d.x, func_3(), arg_1.x), arg_2 | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d.x, -2147483647i, global1.a), vec4<i32>(2147483647i, global1.b.a.x, -1i, 1i))), _wgslsmith_mult_i32(global1.b.a.x, u_input.b.x)), -global1.a, _wgslsmith_add_i32(max(min(_wgslsmith_mult_i32(2147483647i, u_input.e), ~(-16780i)), ~(-14201i)), -1i));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, -729f))))))));
    global0 = 1f;
    let var_2 = Struct_2(arg_2.x, Struct_1(min(~firstTrailingBit(vec3<i32>(arg_2.x, 7906i, -58794i)), firstTrailingBit(firstTrailingBit(vec3<i32>(arg_2.x, 16928i, 14506i)))), global1.b.b, _wgslsmith_f_op_f32(sign(546f)), select(select(global1.b.d, vec3<bool>(true, false, false), global1.b.b.x), global1.b.d, vec3<bool>(global1.b.b.x, true || global1.b.d.x, any(global1.b.d.xz))), _wgslsmith_f_op_f32(max(-1552f, global1.b.e))));
    return select(min(reverseBits(~arg_0), firstLeadingBit(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), arg_0, select(select(vec4<bool>(var_2.b.d.x, false, false, var_2.b.b.x), !vec4<bool>(var_2.b.b.x, false, global1.b.b.x, false), select(vec4<bool>(var_2.b.b.x, var_2.b.d.x, global1.b.d.x, var_2.b.b.x), vec4<bool>(global1.b.b.x, global1.b.b.x, true, var_2.b.d.x), false)), vec4<bool>(global1.b.d.x | false, var_2.b.b.x & true, global1.b.d.x & true, select(var_2.b.d.x, var_2.b.d.x, var_2.b.d.x)), !vec4<bool>(false, global1.b.d.x, false, true))) >> (~arg_0 % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = countOneBits(~abs(0u));
    var var_1 = !any(vec2<bool>(arg_3.d.x, any(select(arg_3.d.zx, vec2<bool>(false, arg_3.b.x), arg_3.b))));
    var var_2 = !(!(!arg_3.d.x));
    var var_3 = vec4<bool>(~_wgslsmith_sub_u32(1u >> (u_input.a.x % 32u), 55153u) < _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(arg_1, var_0) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 12016u), u_input.c)), (true | !(!global1.b.b.x)) || select(!global1.b.d.x, true, true), !(1565f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e + -801f))), false);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-818f, 282f)) * _wgslsmith_f_op_f32(-1f)));
    return Struct_3(vec3<bool>(any(vec4<bool>(var_3.x, true, all(vec4<bool>(true, true, true, true)), true)), !var_3.x | global1.b.d.x, global1.b.b.x), u_input.a, Struct_1(vec3<i32>(abs(-1i), u_input.b.x, u_input.b.x), select(select(vec2<bool>(true, true), select(global1.b.b, vec2<bool>(false, global1.b.d.x), arg_3.d.xy), !vec2<bool>(false, var_3.x)), vec2<bool>(true, true), arg_3.d.xz), _wgslsmith_f_op_f32(-arg_3.c), !select(select(vec3<bool>(global1.b.d.x, false, global1.b.d.x), global1.b.d, vec3<bool>(var_3.x, true, true)), !vec3<bool>(false, true, arg_3.b.x), !global1.b.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(587f * _wgslsmith_f_op_f32(trunc(global1.b.e)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = func_4(arg_1.b.x, ~58388u, countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(24838u, 1u, 0u, 4294967295u), vec4<u32>(31773u, 95633u, u_input.a.x, 1u), func_2(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.b.x, u_input.a.x), u_input.d.xwx, vec4<i32>(global1.b.a.x, global1.b.a.x, -25540i, 2147483647i))), ~vec4<u32>(0u, u_input.c.x, 0u, u_input.a.x))), Struct_1(u_input.d.xxy, arg_0.zy, global1.b.e, vec3<bool>(false, arg_1.b.x < arg_1.b.x, any(vec2<bool>(false, false))), arg_2));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f - global1.b.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c)))));
    var var_2 = select(vec4<bool>(false, any(arg_1.c.b) & global1.b.b.x, any(vec4<bool>(true, !var_0.a.x, any(arg_0), var_0.c.a.x != arg_1.c.a.x)), false), select(!(!select(vec4<bool>(false, true, arg_1.c.b.x, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_0.x, false, true, arg_0.x))), select(vec4<bool>(!global1.b.b.x, arg_0.x, true, false), !vec4<bool>(true, global1.b.b.x, true, false), select(!vec4<bool>(true, arg_0.x, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(global1.b.d.x, arg_1.c.d.x, var_0.a.x, false)), select(vec4<bool>(true, global1.b.b.x, arg_0.x, global1.b.d.x), vec4<bool>(false, arg_0.x, true, arg_1.a.x), vec4<bool>(false, global1.b.b.x, true, var_0.c.b.x)))), select(select(!vec4<bool>(true, arg_1.a.x, global1.b.d.x, arg_0.x), !vec4<bool>(false, arg_0.x, true, var_0.a.x), !vec4<bool>(false, false, var_0.a.x, var_0.c.d.x)), select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, arg_0.x, true)), vec4<bool>(var_0.a.x, global1.b.b.x, arg_1.c.b.x, arg_1.c.d.x), var_0.a.x), !(!var_0.c.b.x))), arg_1.c.b.x);
    var var_3 = !(var_0.c.e <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(203f, 795f)), _wgslsmith_f_op_f32(abs(-528f)))) * _wgslsmith_f_op_f32(-560f - arg_1.c.e)));
    var_0 = arg_1;
    return Struct_2(-2147483647i ^ u_input.e, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(1u, 4294967295u);
    var var_1 = func_1(global1.b.d, Struct_3(!global1.b.d, ~vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), u_input.a.x, firstTrailingBit(u_input.c.x)), Struct_1(global1.b.a, select(vec2<bool>(global1.b.b.x, global1.b.d.x), vec2<bool>(global1.b.d.x, true), global1.b.b), _wgslsmith_f_op_f32(-364f - 620f), !(!vec3<bool>(global1.b.b.x, false, false)), -673f)), 552f);
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(global1.b.a.x, u_input.d.x), abs(u_input.b));
    global1 = func_1(vec3<bool>(!((u_input.e & global1.b.a.x) < _wgslsmith_add_i32(-2147483647i, var_1.b.a.x)), false, var_1.b.b.x), func_4(~41347u, reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 76804u), vec4<u32>(u_input.a.x, 87040u, u_input.a.x, u_input.a.x))), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(25629u, u_input.a.x, u_input.a.x, 33102u))), func_1(vec3<bool>(any(var_1.b.d.zy), var_1.b.d.x, any(vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x))), func_4(_wgslsmith_add_u32(u_input.a.x, 8690u), select(u_input.c.x, u_input.a.x, false), vec4<u32>(0u, u_input.a.x, 16101u, 4294967295u), Struct_1(u_input.d.wzw, global1.b.d.zx, 720f, var_1.b.d, global1.b.c)), var_1.b.e).b), var_1.b.c);
    var_1 = Struct_2(var_2.x | firstLeadingBit(var_1.a), global1.b);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.c - global1.b.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b.e)), _wgslsmith_f_op_f32(-global1.b.c))) * _wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c)))), global1.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.b.e, -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, var_1.b.c, _wgslsmith_f_op_f32(global1.b.c - -583f), -260f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c, var_1.b.c, 774f, 325f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1372f, var_1.b.e, global1.b.e, global1.b.c))))), _wgslsmith_sub_vec3_i32(abs(select(vec3<i32>(var_2.x, var_2.x, 126i), vec3<i32>(-29008i, -32523i, 5153i) | var_1.b.a, true)), vec3<i32>(var_2.x, reverseBits(19560i), _wgslsmith_mod_i32(-32834i, -5542i))));
}

