struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(2147483647i, ~u_input.c.x >> ((95575u ^ ~u_input.c.x) % 32u)), true, ~(~u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = _wgslsmith_f_op_f32(abs(-867f));
    let var_2 = min(~vec3<i32>(var_0.c, ~7405i, firstTrailingBit(abs(-2090i))), ~(-vec3<i32>(_wgslsmith_add_i32(2147483647i, -27849i), -2147483647i, _wgslsmith_clamp_i32(u_input.a, var_0.c, 5646i))));
    global0 = array<vec4<u32>, 7>();
    return Struct_2(Struct_1(-_wgslsmith_div_i32(u_input.a, -var_0.c), 1u), any(!vec4<bool>(true, var_0.b, true, true)), var_2.x);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(35897i, arg_0.a.a, 2147483647i);
    let var_1 = func_2();
    var var_2 = -min(~select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c, 1i, arg_1), vec3<i32>(-2147483647i, 24970i, 0i)), countOneBits(vec3<i32>(60315i, var_0.x, var_1.a.a)), vec3<bool>(true, false, false)), vec3<i32>(~1i ^ (-1i & arg_3.c), var_1.a.a, u_input.a));
    let var_3 = all(!(!select(select(vec4<bool>(false, arg_3.b, false, var_1.b), vec4<bool>(arg_3.b, arg_3.b, false, true), vec4<bool>(arg_0.b, false, true, false)), select(vec4<bool>(false, false, false, arg_0.b), vec4<bool>(false, var_1.b, var_1.b, false), var_1.b), true)));
    var_0 = vec3<i32>(_wgslsmith_div_i32(1i, 19984i), arg_0.a.a, _wgslsmith_mod_i32(-42909i, 12141i));
    return Struct_1(-2147483647i, var_1.a.b);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(~arg_2.b, arg_1.a.b, 4294967295u), arg_1.a.b, 1u, 2982u);
    let var_1 = func_2();
    global0 = array<vec4<u32>, 7>();
    let var_2 = 0i;
    global0 = array<vec4<u32>, 7>();
    return abs(arg_2.a);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<u32> {
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    let var_0 = func_4(1i, Struct_2(func_3(func_2(), -2147483647i ^ arg_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(1151f, 1341f, 253f) * vec3<f32>(-992f, -460f, 448f)), arg_0), !(arg_0.b && true), -63150i), arg_0.a, Struct_3(all(vec3<bool>(true, arg_0.b, arg_0.b)) & (4294967295u < arg_0.a.b), vec2<u32>(u_input.d.x ^ 1599u, ~u_input.b), u_input.b, arg_0.a)) << (1u % 32u);
    var var_1 = func_2();
    return _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zx, select(max(~vec2<u32>(80171u, 32536u), u_input.d.zx), vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_0.a.b), u_input.c.x), select(select(vec2<bool>(true, false), vec2<bool>(arg_0.b, false), false), !vec2<bool>(false, var_1.b), true | var_1.b))), ~abs(abs(vec2<u32>(arg_0.a.b, 134040u))) >> (select(vec2<u32>(~var_1.a.b, 1u), vec2<u32>(20364u, u_input.b & 44355u), true) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(-823f));
    var var_1 = reverseBits(~func_1(Struct_2(Struct_1(1i, u_input.b), false, 24873i), u_input.a));
    var var_2 = all(vec3<bool>(!(!(u_input.d.x == u_input.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(round(-1602f)))) == 737f, any(vec2<bool>(true, true))));
    let var_3 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(~70350u, ~26865u), var_1.x) <= (0u ^ var_1.x);
    let var_4 = Struct_2(Struct_1(u_input.a, 4294967295u), func_2().b, _wgslsmith_dot_vec2_i32(~max(vec2<i32>(21041i, u_input.a), vec2<i32>(1i, 2147483647i) << (u_input.c.zx % vec2<u32>(32u))), ~(-reverseBits(vec2<i32>(u_input.a, 0i)))));
    var var_5 = ~_wgslsmith_mod_i32(2147483647i, u_input.a);
    let var_6 = Struct_2(var_4.a, var_4.b, firstLeadingBit(select(_wgslsmith_add_i32(-2445i, var_4.a.a ^ var_4.a.a), 2147483647i, false)));
    let var_7 = ~(-29747i);
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec4<i32>(-1i, u_input.a, 1i, -1i) << (vec4<u32>(58659u, 14228u, 1u, var_6.a.b) % vec4<u32>(32u)), vec4<i32>(-18731i << (var_1.x % 32u), max(10005i, var_4.c), 0i, _wgslsmith_mod_i32(var_4.c, -1i))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1480f, var_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1348f + -719f), _wgslsmith_f_op_f32(840f * var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(620f, 1563f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1460f) * vec2<f32>(326f, 1327f))), true)))), var_4.a.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) - vec4<f32>(388f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(890f, 105f, var_0, -652f))))))));
}

