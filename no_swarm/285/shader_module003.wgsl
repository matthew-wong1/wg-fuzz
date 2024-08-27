struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<f32>, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    return global0.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_2(vec4<i32>(i32(-1i) * -2147483647i, 1i, 9829i ^ global0.d, _wgslsmith_add_i32(-41037i, global0.a.c)), true & (false & global0.a.b.x), i32(-1i) * -63484i), !(!vec3<bool>(global0.e.x, global0.e.x, true)), 2147483647i, global0.a.d, _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(sign(-1528f)))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.x), abs(arg_0)), func_2(~countOneBits(vec4<i32>(global0.d, global0.a.c, 20999i, global0.a.c) << (vec4<u32>(10803u, 19577u, 37725u, arg_1.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(1675f + arg_1.c.x) >= -493f, 21898i), 0i, select(vec4<bool>(true, false, -2147483647i == _wgslsmith_add_i32(global0.d, -1i), select(global0.e.x, global0.e.x, all(vec3<bool>(global0.a.b.x, false, false)))), !(!select(global0.e, global0.e, global0.e)), !all(vec2<bool>(global0.e.x, global0.a.b.x))));
    let var_1 = 1u;
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    var var_2 = vec3<bool>(any(global0.e), true, var_0.a.b.x);
    return Struct_1(vec3<u32>(~_wgslsmith_add_u32(0u, var_0.b.x), 4294967295u, arg_1.b.x), vec4<u32>(var_0.c.a.x, countOneBits(min(0u, var_1) | ~var_1), 49373u >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, var_1), abs(4294967295u)) % 32u), 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d, 849f))), _wgslsmith_f_op_f32(752f - _wgslsmith_div_f32(var_0.a.d.x, var_0.a.a.c.x)))), _wgslsmith_f_op_f32(exp2(var_0.a.a.c.x)));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_3 {
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    let var_0 = max(vec4<i32>(arg_0, ~(~(-30908i)) ^ max(global0.a.c ^ global0.a.c, 0i & arg_0), arg_0, arg_0 & -abs(global0.d)), ~min(-vec4<i32>(-2147483647i, -1i, global0.d, arg_0) | -vec4<i32>(-44510i, arg_0, 0i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -29340i, -103812i, global0.a.c), select(vec4<i32>(2955i, 0i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, global0.d, -66673i), arg_1))));
    let var_1 = Struct_1(vec3<u32>(u_input.a.x, ~8288u, ~global0.a.a.a.x), reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.c.a.x, 0u, u_input.c.x, 0u), min(vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.c.x), vec4<u32>(global0.a.a.a.x, u_input.b.x, 2068u, u_input.a.x)))), vec2<f32>(global0.a.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.c.x)));
    var var_2 = -2719i;
    return Struct_3(Struct_2(global0.c, !vec3<bool>(false, arg_1, 2147483647i > arg_0), ~83419i, global0.a.d, _wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f - global0.a.a.c.x)))), vec2<u32>(global0.c.a.x, 4294967295u), func_3(global0.c.a.zz, func_2(var_0, !(!global0.a.b.x), (global0.d << (var_1.b.x % 32u)) | -arg_0)), reverseBits(arg_0 | _wgslsmith_mult_i32(firstTrailingBit(var_0.x), global0.a.c)), select(!vec4<bool>(any(vec2<bool>(global0.e.x, true)), all(global0.e), true, false), global0.e, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = func_1(abs(arg_1.d), false).a;
    let var_1 = vec2<f32>(arg_2.x, arg_2.x);
    global0 = Struct_3(func_1(-arg_1.a.c, arg_0.e.x).a, ~(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), firstLeadingBit(u_input.d.x)) << (u_input.c.yy % vec2<u32>(32u))), Struct_1(max(_wgslsmith_sub_vec3_u32(var_0.a.a, ~u_input.d.www), arg_0.c.a), ~((vec4<u32>(56347u, global0.a.a.b.x, arg_0.a.a.b.x, 1u) ^ u_input.a) >> ((arg_0.c.b >> (arg_0.a.a.b % vec4<u32>(32u))) % vec4<u32>(32u))), vec2<f32>(1275f, _wgslsmith_f_op_f32(trunc(func_1(0i, var_0.b.x).c.c.x))), func_3(~(~u_input.d.zz), func_1(10717i | arg_1.a.c, global0.e.x).a.a).c.x), max(~(-6345i), _wgslsmith_mult_i32(25537i, -_wgslsmith_add_i32(0i, 0i))), select(vec4<bool>(all(arg_1.e.xy) || false, func_1(i32(-1i) * -29872i, false).a.b.x, false, all(func_1(var_0.c, var_0.b.x).e)), vec4<bool>(var_0.b.x, arg_0.a.b.x, !global0.a.b.x == true, true), !arg_0.e));
    var var_2 = arg_0.a.a.c;
    var var_3 = ~1i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(933f, arg_2.x, var_2.x) + _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.d.yzz))))) * arg_2.xzx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.a.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a.d.yxz, vec3<f32>(global0.c.d, global0.c.d, -1628f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.c.x, 619f, global0.c.d) + vec3<f32>(global0.c.d, -205f, global0.c.c.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a.d.wwx, vec3<f32>(global0.a.a.c.x, 237f, 1459f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.c.c.x, global0.a.e)))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_3(global0.a, ~(~vec2<u32>(8440u, global0.b.x)), global0.c, select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2305i), vec2<i32>(global0.d, global0.a.c)), max(global0.d, global0.d), true), select(global0.e, vec4<bool>(false, global0.a.b.x, global0.e.x, global0.e.x), false)), func_1(_wgslsmith_sub_i32(41791i << (u_input.d.x % 32u), firstLeadingBit(global0.a.c)), true), global0.a.d)));
    let var_2 = -100f;
    let var_3 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(~global0.a.c, 5027i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(-vec2<i32>(-44888i, 1i)), ~select(select(vec2<i32>(global0.d, -2147483647i), vec2<i32>(-1i, -3439i), vec2<bool>(true, false)), -vec2<i32>(global0.d, global0.a.c), !vec2<bool>(global0.a.b.x, global0.a.b.x))));
    var var_4 = global0.c;
    let var_5 = var_4.b.x;
    let var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1778f * var_2))), -300f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2891f, -545f)) + var_6)), max(vec4<i32>(global0.a.c, _wgslsmith_add_i32(-global0.a.c, _wgslsmith_clamp_i32(var_3, 48670i, -2147483647i)), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3, 0i), -vec2<i32>(global0.a.c, -49671i))), vec4<i32>(-1i, 1i, -func_1(var_3, true).a.c, var_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy * global0.c.c) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.d + -568f), _wgslsmith_f_op_f32(f32(-1f) * -554f))), var_1.x)), (6605u ^ firstLeadingBit(global0.c.a.x)) | 38057u);
}

