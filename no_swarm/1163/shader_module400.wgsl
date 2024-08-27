struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = u_input.b;
    var var_1 = ~(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, var_0) << (vec4<u32>(1u, u_input.c.x, 52003u, 1u) % vec4<u32>(32u)), vec4<u32>(var_0, u_input.d, u_input.d, var_0))) >> (select(~(~vec4<u32>(u_input.d, 6450u, u_input.a, 1u)), ~(~vec4<u32>(15812u, 0u, u_input.c.x, u_input.b)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    var var_2 = Struct_1(1277f, 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, arg_0, arg_0, var_2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -187f, -789f, 1472f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, var_2.a, 949f, 264f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(527f, -804f, global0.a, var_2.a), vec4<f32>(var_2.a, arg_0, 200f, arg_0), vec4<bool>(true, false, true, true))))))));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-arg_0), u_input.b);
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec3<i32> {
    global1 = arg_1.x;
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, 207f, true)))), arg_0));
    var var_1 = _wgslsmith_mult_i32(global0.b, arg_0);
    var_1 = select(~2147483647i >> (((26901u | (1u | u_input.a)) & _wgslsmith_clamp_u32(~41367u, ~20750u, 1u)) % 32u), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_0, 2147483647i, -53015i), max(vec4<i32>(-26300i, 2147483647i, global0.b, arg_0), vec4<i32>(var_0.a.b, arg_0, 37304i, 18934i))), arg_0), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -1342f))))));
    global0 = var_0.a;
    return ~(~min(countOneBits(vec3<i32>(52483i, global0.b, arg_0)), vec3<i32>(arg_0, 0i, -1i) ^ select(vec3<i32>(var_0.a.b, arg_0, global0.b), vec3<i32>(-20817i, arg_0, 30877i), false)));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(10983u, u_input.d);
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 652f))), -_wgslsmith_sub_i32(global0.b, ~global0.b)));
    let var_2 = -vec2<i32>(i32(-1i) * -13449i, -(~2147483647i << ((40155u ^ u_input.b) % 32u)));
    global2 = global0.b;
    var_0 = 4294967295u;
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_2 {
    global2 = 39542i;
    var var_0 = func_3(-1000f);
    let var_1 = ~countOneBits(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, 5257u, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, arg_1.x, 33792u, arg_1.x), vec4<u32>(arg_1.x, u_input.b, 51686u, arg_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(28098u, arg_1.x, arg_1.x, u_input.a), vec4<u32>(u_input.c.x, 14253u, 22683u, arg_1.x)))) >> (~_wgslsmith_add_vec4_u32(abs(firstLeadingBit(vec4<u32>(15667u, 4294967295u, arg_1.x, 0u))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(39210u, 16093u, 0u, 1u), vec4<u32>(arg_1.x, u_input.b, 97971u, arg_1.x)))) % vec4<u32>(32u));
    global2 = arg_3.x;
    var var_2 = func_4(arg_3);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) * _wgslsmith_div_f32(1454f, 1000f)) - -913f), -21660i));
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = global0.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - arg_0.a.a) + global0.a));
    var var_1 = func_5(Struct_2(func_4(~func_2(-1i, vec2<f32>(108f, global0.a)))), ~firstLeadingBit(min(u_input.c, _wgslsmith_mult_vec2_u32(u_input.c, u_input.c))), vec4<i32>(~_wgslsmith_sub_i32(global0.b, countOneBits(global0.b)), ~_wgslsmith_add_i32(~global0.b, -arg_0.a.b), arg_0.a.b, arg_0.a.b), select(vec3<i32>(arg_0.a.b & 1i, min(_wgslsmith_add_i32(arg_0.a.b, -6937i), -1i << (0u % 32u)), -_wgslsmith_div_i32(6403i, arg_0.a.b)), vec3<i32>(0i, ~(i32(-1i) * -30895i), func_4(firstTrailingBit(vec3<i32>(arg_0.a.b, -48442i, -56592i))).b), !(arg_0.a.a == global0.a)));
    let var_2 = 1u;
    global2 = -33897i;
    return -44647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, firstTrailingBit(-global0.b));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 962f, 248f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -1172f, -384f) + vec3<f32>(global0.a, global0.a, 999f)))))));
    global1 = _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 226f)))));
    global2 = func_1(Struct_5(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -343f), -1107f)), -global0.b)));
    global0 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), ~2147483647i >> (~u_input.c.x % 32u))), ~u_input.c, _wgslsmith_div_vec4_i32(~abs(vec4<i32>(30569i, -32807i, global0.b, -29918i)), vec4<i32>(~global0.b ^ 1i, ~firstTrailingBit(29171i), 4748i, global0.b)), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(global0.b, -31470i), -6556i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-82796i, global0.b), -19163i, -global0.b)))).a;
    global2 = _wgslsmith_clamp_i32(global0.b, countOneBits(global0.b), -2500i);
    global0 = Struct_1(var_0.x, global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(global0.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, global0.b, 0i) << (vec3<u32>(u_input.a, u_input.c.x, u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 6564i, global0.b), vec3<i32>(global0.b, global0.b, 0i), vec3<i32>(global0.b, global0.b, 0i))), _wgslsmith_mult_i32(~0i, -global0.b))), firstTrailingBit(u_input.a << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~u_input.a) % 32u)), ~0u);
}

