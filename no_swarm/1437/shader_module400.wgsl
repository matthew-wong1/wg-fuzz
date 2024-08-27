struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<u32>(0u, 62755u)), Struct_2(vec2<u32>(8078u, 0u)), Struct_2(vec2<u32>(4294967295u, 28618u)), Struct_2(vec2<u32>(36981u, 63913u)), Struct_2(vec2<u32>(0u, 36734u)), Struct_2(vec2<u32>(56500u, 23215u)), Struct_2(vec2<u32>(22352u, 61147u)), Struct_2(vec2<u32>(92169u, 1u)), Struct_2(vec2<u32>(25199u, 1313u)), Struct_2(vec2<u32>(71815u, 4294967295u)), Struct_2(vec2<u32>(31123u, 56497u)), Struct_2(vec2<u32>(25950u, 62279u)), Struct_2(vec2<u32>(3831u, 0u)), Struct_2(vec2<u32>(18201u, 1u)), Struct_2(vec2<u32>(4294967295u, 16382u)), Struct_2(vec2<u32>(54600u, 0u)), Struct_2(vec2<u32>(17273u, 30847u)), Struct_2(vec2<u32>(32412u, 1u)), Struct_2(vec2<u32>(2364u, 1u)), Struct_2(vec2<u32>(77258u, 0u)), Struct_2(vec2<u32>(91469u, 1u)), Struct_2(vec2<u32>(3084u, 38625u)), Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(25274u, 35801u)), Struct_2(vec2<u32>(87600u, 74386u)), Struct_2(vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(42028u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(29782u, 0u)), Struct_2(vec2<u32>(12993u, 0u)));

var<private> global3: Struct_2 = Struct_2(vec2<u32>(1u, 103437u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    global3 = Struct_2(~abs(countOneBits(arg_0.yx)));
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global3.a.x, abs(1u)), vec3<u32>(_wgslsmith_sub_u32(select(0u, 34808u, arg_1.x), ~global0.x) & abs(global0.x), arg_0.x, u_input.e.x));
    var var_0 = -5579i;
    let var_1 = Struct_2(firstLeadingBit(abs(select(global0.yz, global0.yx, vec2<bool>(arg_2.a, arg_2.a)) & vec2<u32>(global3.a.x, 1u))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x >> (_wgslsmith_mult_u32(global3.a.x, 14364u) % 32u), _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_clamp_u32(arg_0.x, 1u, u_input.e.x)), u_input.e.x, global0.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.x, 4294967295u, global0.x, 1u)), ~select(vec4<u32>(4294967295u, 4294967295u, 49976u, global3.a.x), vec4<u32>(arg_0.x, arg_0.x, global3.a.x, global3.a.x), vec4<bool>(true, arg_2.a, false, false))))), 30u)];
    return 1000f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, 857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f + arg_2.a) - _wgslsmith_f_op_f32(arg_2.a + arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(387f, arg_2.a, _wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.e.x, 4294967295u, 0u), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), Struct_1(false))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, -378f, arg_2.a))))))));
    global2 = array<Struct_2, 30>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(-2080f, -256f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) * arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2544f * 767f) + -417f), true)) * var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * arg_2.a)));
    var var_2 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.c.ww, vec2<i32>(1i, -10296i)), _wgslsmith_add_vec2_i32(firstLeadingBit(u_input.c.xz), -(vec2<i32>(arg_2.b.x, 1i) ^ arg_2.b) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15132u, 2088u, arg_0.a.x, global0.x), vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b, 21766u)), 114u) % vec2<u32>(32u))));
    global0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(~12631u, 1u, 0u), ((u_input.e | u_input.e) ^ u_input.e) ^ vec3<u32>(0u, firstTrailingBit(global3.a.x), u_input.e.x));
    return ~(~_wgslsmith_add_u32(~min(1u, global0.x), arg_0.a.x ^ _wgslsmith_mod_u32(0u, u_input.e.x)));
}

fn func_1(arg_0: f32) -> u32 {
    global0 = vec3<u32>(15697u, 4294967295u, _wgslsmith_mult_u32(u_input.b, ((11445u ^ global0.x) ^ u_input.e.x) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(846u, 0u), 19686u | global0.x) % 32u)));
    global3 = global2[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(u_input.e.x, 30u)], !(!vec2<bool>(all(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, true)))), Struct_3(-718f, vec2<i32>(u_input.d, u_input.d))), 30u)];
    let var_0 = Struct_1(all(vec3<bool>(true && all(vec2<bool>(true, true)), true == (global0.x <= 32208u), all(vec2<bool>(true, true)))));
    let var_1 = global0.x;
    global0 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e, u_input.e) >> (countOneBits(u_input.e) % vec3<u32>(32u)), select(u_input.e, u_input.e, !vec3<bool>(true, false, var_0.a))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.e) << (~vec3<u32>(4294967295u, ~u_input.e.x, 1u) % vec3<u32>(32u));
    global2 = array<Struct_2, 30>();
    var var_1 = Struct_1(true);
    global1 = true;
    var_0 = vec3<u32>(_wgslsmith_mod_u32(var_0.x, ~(~0u)), u_input.e.x & ~(~1u), 1u << (0u % 32u)) >> (vec3<u32>(func_1(_wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(round(150f)))), max(firstLeadingBit(u_input.e.x) >> (_wgslsmith_add_u32(1u, 42278u) % 32u), var_0.x), 1u) % vec3<u32>(32u));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(-firstTrailingBit(_wgslsmith_clamp_i32(u_input.c.x, -12645i, -2147483647i)), u_input.c.x), 2147483647i, min(1i ^ ~countOneBits(u_input.d), -48516i));
    var_0 = ~vec3<u32>(~31578u, global0.x, var_0.x);
    let var_3 = var_1.a;
    let var_4 = min(vec3<u32>(u_input.e.x, u_input.b ^ _wgslsmith_dot_vec2_u32(countOneBits(global0.zz), _wgslsmith_div_vec2_u32(u_input.e.zy, vec2<u32>(15593u, global3.a.x))), global0.x), ~(~u_input.e) << (~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global3.a.x, u_input.b), _wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(4294967295u, 1u, global3.a.x))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_2.x, ~_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(60557u, 0u, 1u, 72560u), vec4<u32>(0u, 1u, global0.x, var_4.x), false), reverseBits(vec4<u32>(global0.x, 28510u, var_4.x, 66504u)), !vec4<bool>(var_1.a, true, false, var_1.a)), ~(vec4<u32>(39617u, 0u, 32857u, 23117u) & vec4<u32>(24026u, global0.x, var_0.x, global3.a.x))), ~27614i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(423f, 524f))), _wgslsmith_f_op_f32(select(875f, 204f, var_1.a))))));
}

