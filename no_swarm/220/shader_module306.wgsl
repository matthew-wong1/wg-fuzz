struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-177f, -356f, -1000f);

var<private> global1: array<Struct_1, 28>;

var<private> global2: bool = true;

var<private> global3: Struct_3 = Struct_3(Struct_2(39720i, vec4<i32>(-1i, 6365i, 4526i, 0i), Struct_1(vec3<u32>(0u, 1u, 0u), 4294967295u, vec3<i32>(38726i, -4214i, -7352i), true, false)), Struct_1(vec3<u32>(28094u, 0u, 39308u), 0u, vec3<i32>(i32(-2147483648), 1i, -1i), true, true), vec3<u32>(4294967295u, 4294967295u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = 373f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(global0.yz)), global0.yz)));
    var var_2 = i32(-1i) * -global3.a.b.x;
    let var_3 = true;
    let var_4 = any(!(!(!vec3<bool>(true, var_3, var_3))));
    return countOneBits(global3.b.c.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    var var_0 = global3.a.b.x;
    global1 = array<Struct_1, 28>();
    var_0 = global3.a.b.x;
    global1 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global3.a.c.b, 62273u), vec4<u32>(71645u, 56666u, 49507u, global3.b.b)) | _wgslsmith_dot_vec2_u32(global3.a.c.a.yx, vec2<u32>(38972u, 4294967295u))), firstLeadingBit(25665u), global3.c.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)) | ~(~_wgslsmith_add_u32(1u, u_input.a.x));
    return ~global3.b.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -444f)));
    global2 = arg_3;
    let var_0 = func_3(global0.xx, _wgslsmith_f_op_f32(min(-1073f, global0.x)));
    var var_1 = vec4<f32>(global0.x, global0.x, global0.x, global0.x);
    var var_2 = Struct_3(global3.a, Struct_1(vec3<u32>(u_input.a.x, ~global3.a.c.b, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, ~(~0u)), global3.a.b.xyw, global3.b.d, true), ~global3.c);
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_2(firstLeadingBit(vec3<i32>(~global3.b.c.x, func_1(global3.a.c.d), i32(-1i) * -2147483647i)), true, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(53035u, u_input.a.x, 4172u), u_input.a), select(vec3<u32>(9087u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, global3.c.x), !global3.a.c.e)), !all(!vec4<bool>(true, false, false, global3.a.c.d))), Struct_1(vec3<u32>(~(global3.b.b | global3.b.a.x), global3.a.c.b, 1u), ~37599u, firstTrailingBit(vec3<i32>(-1i, 10768i | global3.a.b.x, func_2(vec3<i32>(-56016i, global3.b.c.x, global3.a.c.c.x), global3.b.e, u_input.a, global3.a.c.d).b.x)), (global3.b.d || false) && true, any(vec3<bool>(global3.b.d, global3.b.e, true))), global3.b.a);
    global2 = !(true | !((global0.x > -906f) | !global3.b.e));
    let var_1 = vec4<u32>(~25954u, 141885u, u_input.a.x, ~14620u);
    global1 = array<Struct_1, 28>();
    let var_2 = -(~_wgslsmith_clamp_i32(-7402i, _wgslsmith_clamp_i32(var_0.b.c.x, global3.a.b.x, var_0.a.b.x) & (i32(-1i) * -30602i), _wgslsmith_add_i32(global3.a.b.x, 1i)));
    global2 = var_0.a.c.d;
    var var_3 = Struct_2(min(_wgslsmith_clamp_i32(~var_2, -global3.a.a, -1i), _wgslsmith_mult_i32(var_0.a.c.c.x, var_0.b.c.x)), _wgslsmith_add_vec4_i32(-(~(-var_0.a.b)), -func_2(vec3<i32>(var_2, var_2, var_2), global3.b.d, var_1.xyy, false).b << (abs(_wgslsmith_div_vec4_u32(var_1, var_1)) % vec4<u32>(32u))), Struct_1(vec3<u32>(~firstTrailingBit(107489u), 0u, _wgslsmith_div_u32(~61795u, _wgslsmith_div_u32(var_1.x, 15129u))), global3.a.c.b, ~global3.b.c, var_0.a.c.d, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_div_f32(global0.x, -879f), var_1, vec4<f32>(1000f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(196f, -475f))), -1152f, global0.x), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, u_input.a.x, var_3.c.b) & vec3<u32>(23435u, 1u, var_0.c.x), max(vec3<u32>(109942u, 35569u, 68939u), var_3.c.a)), abs(u_input.a.x), firstLeadingBit(~var_1.x), ~(~var_1.x)));
}

