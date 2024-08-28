struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_1(vec3<bool>(true, false, false)), Struct_3(Struct_2(0u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false))), 7979u, false)), Struct_4(Struct_1(vec3<bool>(true, true, false)), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false))), 1u, true)), Struct_4(Struct_1(vec3<bool>(true, false, false)), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false))), 4294967295u, true)), Struct_4(Struct_1(vec3<bool>(true, false, false)), Struct_3(Struct_2(8952u, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true))), 54696u, true)), Struct_4(Struct_1(vec3<bool>(false, false, false)), Struct_3(Struct_2(18270u, Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false))), 4294967295u, false)), Struct_4(Struct_1(vec3<bool>(false, false, false)), Struct_3(Struct_2(0u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true))), 40141u, false)), Struct_4(Struct_1(vec3<bool>(false, false, true)), Struct_3(Struct_2(3220u, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false))), 0u, false)));

var<private> global1: array<vec2<f32>, 31>;

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(4294967295u, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true))), 4294967295u, false), Struct_3(Struct_2(6480u, Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true))), 16573u, false), Struct_3(Struct_2(0u, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false))), 26372u, false), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false))), 75171u, false), Struct_3(Struct_2(60242u, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true))), 39799u, false), Struct_3(Struct_2(3505u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true))), 20029u, true), Struct_3(Struct_2(5413u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true))), 152231u, false), Struct_3(Struct_2(67525u, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false))), 14774u, false), Struct_3(Struct_2(26798u, Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false))), 780u, true), Struct_3(Struct_2(4294967295u, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false))), 21120u, false), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true))), 4294967295u, false), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false))), 1u, true), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true))), 107208u, false), Struct_3(Struct_2(139892u, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false))), 50354u, false), Struct_3(Struct_2(25911u, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false))), 4294967295u, true), Struct_3(Struct_2(46332u, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true))), 0u, false), Struct_3(Struct_2(4294967295u, Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false))), 4294967295u, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    let var_0 = -(~(-23579i));
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    var var_1 = 4294967295u;
    return arg_3.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u & u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, u_input.a.x, arg_1.a, 0u), vec4<u32>(u_input.a.x, arg_1.a, 88316u, u_input.a.x))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x), arg_1.a)), Struct_1(select(!(!vec3<bool>(arg_1.d.a.x, arg_2.x, false)), vec3<bool>(true, all(vec3<bool>(true, false, arg_2.x)), true), !arg_1.b.a)), arg_1.d, arg_1.b);
    var var_1 = vec2<u32>(~(u_input.a.x << (firstTrailingBit(u_input.a.x) % 32u)), arg_1.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.a) % 32u)) ^ firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.a, arg_1.a, var_0.a)), firstLeadingBit(vec3<u32>(var_0.a, 32154u, u_input.a.x))), _wgslsmith_sub_u32(var_0.a, abs(var_0.a))));
    let var_2 = -arg_0;
    var_1 = vec2<u32>(max(var_1.x << ((u_input.a.x | abs(var_0.a)) % 32u), ~var_0.a), 57030u);
    let var_3 = u_input.a;
    return select(arg_0.x, u_input.b.x, any(!(!(!global2[_wgslsmith_index_u32(arg_1.a, 26u)]))));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    global3 = array<Struct_3, 17>();
    let var_0 = 66792u;
    var var_1 = func_3(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.wxz | vec3<i32>(arg_2, u_input.b.x, -32097i), _wgslsmith_sub_vec3_i32(u_input.b.xzz, u_input.b.xzx)), func_2(_wgslsmith_f_op_f32(max(865f, 1014f)), arg_1.b.c, arg_1.b.a, ~u_input.b)), Struct_2(min(0u, u_input.a.x) | ~4294967295u, arg_1.a, arg_1.b.a.d, arg_1.a), vec2<bool>(all(vec4<bool>(false, arg_1.b.a.d.a.x, arg_1.b.a.d.a.x, arg_1.a.a.x)), false)) > firstLeadingBit(arg_2);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2383f, 1000f)) + -865f))), 313f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1f)), 612f, select(arg_1.b.c, false, true))))), _wgslsmith_f_op_f32(2088f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 649f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(797f + -322f), _wgslsmith_div_f32(227f, 405f)))));
    let var_3 = abs(select(vec2<i32>(2147483647i, ~arg_2), u_input.b.yz, true));
    return Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 14073u, u_input.a.x), _wgslsmith_div_u32(arg_1.b.b, arg_0), firstTrailingBit(u_input.a.x)), ~vec4<u32>(1u, var_0, var_0, arg_0)), arg_1.b.a.b, arg_1.a, Struct_1(!vec3<bool>(!arg_1.b.a.b.a.x, true, 4294967295u > u_input.a.x)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_1(55115u, Struct_4(Struct_1(vec3<bool>(false, true, true)), Struct_3(Struct_2(57289u, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false))), u_input.a.x, false)), firstTrailingBit(2147483647i)))))), -8466i, func_3(u_input.b.xyx, func_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], countOneBits(firstLeadingBit(u_input.b.x))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 58072u, ~u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), 26u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(5647u, 31u)] + vec2<f32>(1451f, 1919f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 31u)]))))));
}

