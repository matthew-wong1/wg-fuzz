struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 66349i);

var<private> global2: u32 = 16869u;

var<private> global3: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    return 14976u;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = vec3<u32>(~40225u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~1u, ~14115u, arg_1.a, 2325u)), countOneBits(~vec4<u32>(arg_2.d.x, 18815u, arg_1.a, 13884u) ^ ~vec4<u32>(arg_2.d.x, 74938u, arg_2.d.x, arg_1.a))), arg_1.a);
    var var_1 = all(select(vec3<bool>(false, any(!arg_2.a.yy), arg_2.a.x), arg_2.a, select(vec3<bool>(false, -1i > global1.x, arg_2.a.x), !vec3<bool>(false, arg_2.a.x, true), arg_2.a.x)));
    var var_2 = Struct_1(arg_2.a, arg_2.b, 1804f, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~arg_2.d.x), ~(~var_0.x)), ~42978u, var_0.x));
    let var_3 = _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -285f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.yy));
    return firstLeadingBit(var_0.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0, 4294967295u), vec2<u32>(4294967295u, arg_0)), vec2<u32>(func_2(vec3<u32>(21079u, 6279u, arg_0), Struct_3(arg_2.zz, false, Struct_2(arg_0, false), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1378f, -678f, 224f), 505f, vec3<u32>(18457u, arg_0, 23222u)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(global3.x, -1691f, -1769f), global3.x, vec3<u32>(arg_0, arg_0, arg_0)))), ~arg_0)));
    global0 = countOneBits(1u);
    global0 = _wgslsmith_clamp_u32(func_3(_wgslsmith_mult_i32(u_input.a, arg_2.x) >> (select(4294967295u, 58749u, false) % 32u), Struct_2(~var_0.x, -1436f <= global3.x), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, 154f, 779f), vec3<f32>(global3.x, global3.x, 1051f))), global3.x, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(1u, var_0.x, 23399u))), all(vec3<bool>(false, false, false))) ^ arg_0, 4294967295u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(64583u, 4294967295u, _wgslsmith_clamp_u32(10340u, arg_0, arg_0)), ~(~var_0.x)));
    global1 = vec2<i32>(arg_1, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-arg_1, 1i), 1i));
    let var_1 = ~arg_2.zz;
    return Struct_1(vec3<bool>(any(vec2<bool>(true, true)), false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, global3.x, global3.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(991f, global3.x, global3.x), vec3<f32>(global3.x, global3.x, -1213f)), vec3<f32>(global3.x, -450f, global3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1000f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), countOneBits(firstLeadingBit(vec3<u32>(abs(0u), func_2(vec3<u32>(arg_0, 4294967295u, 58955u), Struct_3(arg_2.yz, true, Struct_2(var_0.x, true), Struct_1(vec3<bool>(false, true, true), vec3<f32>(global3.x, global3.x, -404f), 2420f, vec3<u32>(30457u, var_0.x, 1u)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1436f, global3.x, 1726f), global3.x, vec3<u32>(arg_0, arg_0, 0u)))), arg_0 | var_0.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = select(vec3<bool>(any(arg_2.a.xz) & (arg_0 != true), select(arg_3, !(!arg_3), !arg_3), arg_3), !select(select(vec3<bool>(arg_1.x, true, false), select(arg_1.yyy, arg_2.a, true), arg_2.a), func_1(37860u, 0i, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global1.x, global1.x), vec3<i32>(44721i, 0i, global1.x))).a, select(select(arg_1.yyx, vec3<bool>(true, false, false), arg_0), func_1(1u, -1i, vec3<i32>(-2147483647i, global1.x, 2147483647i)).a, true)), arg_3);
    global1 = countOneBits(~_wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, u_input.a)), min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a))) >> (arg_2.d.zx % vec2<u32>(32u)));
    let var_1 = -(~vec2<i32>(1i, global1.x));
    global2 = 73373u;
    global1 = vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(0i, global1.x, 1i, -1i)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -22914i, -46013i), vec4<i32>(u_input.a, u_input.a, global1.x, 0i), vec4<i32>(u_input.a, -49730i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, u_input.a, 8183i, 40804i), vec4<i32>(var_1.x, global1.x, 2147483647i, u_input.a)), arg_0))), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(29301i, 1i), -65765i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, vec4<bool>(true, !(_wgslsmith_f_op_f32(global3.x + -187f) != global3.x), all(vec3<bool>(true, true, global3.x > global3.x)), select(false, true, true)), func_1(0u, ~u_input.a, vec3<i32>(1i, _wgslsmith_mod_i32(countOneBits(-1i), global1.x), u_input.a)), true);
    let var_1 = var_0.b.yx;
    var var_2 = Struct_1(vec3<bool>(var_0.a.x, (min(u_input.a, -1i) > select(global1.x, u_input.a, var_0.a.x)) && all(func_4(true, vec4<bool>(true, var_0.a.x, true, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, false, false), var_0.b, global3.x, vec3<u32>(1u, var_0.d.x, 68911u)), true).a), all(vec4<bool>(true, var_0.a.x, any(vec3<bool>(var_0.a.x, false, true)), var_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(658f)), _wgslsmith_f_op_f32(-var_0.b.x), 1612f))), 147f, vec3<u32>(func_2(vec3<u32>(var_0.d.x, ~1u, 9764u), Struct_3(vec2<i32>(global1.x, global1.x) | vec2<i32>(1486i, u_input.a), true, Struct_2(61826u, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(1640f, var_0.b.x, var_1.x), global3.x, vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x)), Struct_1(var_0.a, vec3<f32>(var_1.x, -1677f, -148f), -599f, vec3<u32>(68650u, 1u, 4294967295u)))), var_0.d.x, max(func_4(var_0.a.x, vec4<bool>(false, var_0.a.x, var_0.a.x, false), Struct_1(var_0.a, vec3<f32>(404f, -1016f, 548f), 1848f, vec3<u32>(26786u, 1u, 8360u)), var_0.a.x).d.x, ~var_0.d.x) << (1u % 32u)));
    global2 = firstTrailingBit(var_2.d.x);
    var var_3 = true;
    var var_4 = Struct_3(vec2<i32>(min(global1.x, -35757i), u_input.a), !var_2.a.x, Struct_2(~(~0u), var_0.a.x), var_0, Struct_1(!(!(!var_2.a)), _wgslsmith_f_op_vec3_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(-var_1.x), vec3<u32>(var_2.d.x, 21302u, countOneBits(38306u))));
    var var_5 = Struct_1(!(!vec3<bool>(true, all(vec4<bool>(true, true, var_0.a.x, true)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + var_4.e.b.x)))), ~vec3<u32>(~var_0.d.x, min(~var_4.e.d.x, 54088u), var_2.d.x));
    var var_6 = firstLeadingBit(select(global1.x, 27777i, global1.x > 86083i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(24974u, ~_wgslsmith_div_u32(var_2.d.x, _wgslsmith_dot_vec2_u32(var_2.d.zz, var_0.d.yy))), ~(-22743i), 46129u);
}

