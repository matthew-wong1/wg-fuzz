struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 531f);

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> vec2<u32> {
    var var_0 = !select(vec4<bool>(true, global0.a, true, true), vec4<bool>(select(false, true, any(vec3<bool>(false, false, false))), false, all(!vec2<bool>(global0.a, arg_0.a.a)), any(vec2<bool>(true, true))), vec4<bool>(u_input.c < max(u_input.c, arg_1.x), false | global0.a, false, arg_0.a.a && global0.a));
    var var_1 = !(!vec4<bool>((arg_2 && true) & false, any(var_0.yyz), arg_0.a.a, true));
    let var_2 = arg_0.a;
    let var_3 = var_2;
    let var_4 = u_input.b.x;
    return vec2<u32>(51588u, abs(countOneBits(~var_4))) >> (~(~_wgslsmith_sub_vec2_u32(u_input.b, ~u_input.b)) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global0 = Struct_1(u_input.a <= _wgslsmith_dot_vec2_u32(func_3(Struct_3(Struct_1(false, global0.b), global0.b), ~vec2<i32>(u_input.c, u_input.c), true), vec2<u32>(select(u_input.a, 71059u, arg_0), ~u_input.b.x)), _wgslsmith_f_op_f32(global0.b - global0.b));
    let var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(arg_2, vec3<u32>(abs(43092u), 69145u, _wgslsmith_div_u32(64142u, arg_2.x))), arg_2);
    global1 = array<Struct_4, 20>();
    var var_1 = select(1u, 4294967295u, any(vec3<bool>(true, false, false)));
    let var_2 = arg_1;
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(ceil(1824f))) + _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-global0.b), Struct_1(u_input.c >= 99736i, _wgslsmith_f_op_f32(931f * 1000f)), countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.xz, var_0.zy), arg_2.xx)), Struct_1(all(vec4<bool>(true, true, true, global0.a)), global0.b));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_5(arg_1.e.a, Struct_4(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 1262i, 72731i, -40302i), vec4<i32>(7646i, arg_0, 2147483647i, 1i), vec4<i32>(arg_0, -2147483647i, u_input.c, 10868i)), arg_1.c, arg_1.e.b), _wgslsmith_f_op_f32(min(-554f, _wgslsmith_f_op_f32(-arg_1.a))), select(vec4<i32>(arg_3.x, arg_0, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(arg_3.x, u_input.c, u_input.c)), 1i << (abs(arg_1.d.x) % 32u)), ~reverseBits(vec4<i32>(arg_3.x, arg_3.x, u_input.c, arg_0) ^ vec4<i32>(2147483647i, -2147483647i, 8725i, -2147483647i)), global0.a));
    global1 = array<Struct_4, 20>();
    let var_1 = var_0.b.a;
    let var_2 = arg_1.c.b;
    let var_3 = 25421u;
    return arg_1.d.x;
}

fn func_1(arg_0: bool, arg_1: i32) -> vec4<u32> {
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    var var_0 = u_input.b.x;
    let var_1 = u_input.c == ~u_input.c;
    return _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(u_input.b.x, 16093u, 67127u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 1u, 1u), true), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 69730u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x)), ~vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x))), vec4<u32>(func_4(_wgslsmith_add_i32(-18310i, u_input.c), func_2(var_1, vec2<bool>(var_1, false), vec3<u32>(4294967295u, u_input.a, 1u)), Struct_3(Struct_1(global0.a, global0.b), 251f), abs(vec3<i32>(2147483647i, -43061i, arg_1))), countOneBits(u_input.a), max(20112u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~_wgslsmith_mult_u32(u_input.b.x, 4294967295u)), vec4<u32>(~(~1u), 18145u, u_input.a, u_input.a)), ~countOneBits(~vec4<u32>(u_input.a, 19116u, 4294967295u, 1u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_5 {
    var var_0 = !(!select(!vec4<bool>(global0.a, false, false, false), select(vec4<bool>(global0.a, false, arg_3.a, false), vec4<bool>(true, true, true, global0.a), select(vec4<bool>(global0.a, false, arg_3.a, arg_3.a), vec4<bool>(true, true, false, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, false, false))), vec4<bool>(true, false, arg_3.a, !arg_3.a)));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x & _wgslsmith_sub_u32(u_input.a, 26632u), 0u), 1u);
    var var_2 = func_2(global0.a, vec2<bool>(true, true & !var_0.x), abs(vec3<u32>(arg_1.x, arg_1.x, ~18590u ^ ~arg_1.x))).c;
    let var_3 = var_2.a;
    let var_4 = global1[_wgslsmith_index_u32(74050u, 20u)];
    return Struct_5(any(select(!vec3<bool>(false, var_2.a, arg_3.a), var_0.zyy, false)) | true, Struct_4(vec4<i32>(select(-20068i, -2147483647i, select(arg_3.a, true, true)), -var_4.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, u_input.c), firstTrailingBit(var_4.a.yzy)), arg_2.x), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(sign(457f))))), 1000f, select(var_4.a, -var_4.a, vec4<bool>(!var_4.b.a, !(var_4.c != global0.b), !any(vec3<bool>(var_2.a, false, var_2.a)), !any(vec4<bool>(true, var_0.x, true, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 20>();
    var var_0 = func_5(vec4<u32>(~(~u_input.b.x), 1u, 16310u, u_input.b.x) | max(~(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.a, 0u, u_input.b.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 65851u, u_input.a), vec4<u32>(17031u, 1u, u_input.b.x, 14004u)) >> (vec4<u32>(75530u, 34350u, 1u, u_input.b.x) % vec4<u32>(32u))), ~(vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, ~u_input.a, u_input.b.x) << (func_1(global0.a, _wgslsmith_div_i32(8098i, -35316i)) % vec4<u32>(32u))), firstLeadingBit(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.c, 0i)), firstTrailingBit(vec2<i32>(47333i, u_input.c)))), func_2(false, !(!select(vec2<bool>(true, global0.a), vec2<bool>(true, false), false)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 25944u, 4294967295u) | vec3<u32>(1u, 71820u, u_input.a), ~firstTrailingBit(vec3<u32>(u_input.b.x, u_input.a, u_input.a)), ~vec3<u32>(43027u, u_input.b.x, u_input.a))).c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(631f + global0.b))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1089f, -275f), _wgslsmith_f_op_f32(-var_0.b.c)))), var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * global0.b) - var_0.b.c)));
    let var_2 = func_2(false, vec2<bool>(true, false), _wgslsmith_mult_vec3_u32(select(vec3<u32>(func_4(2147483647i, Struct_2(1863f, var_0.c, Struct_1(var_0.a, -1000f), vec2<u32>(56187u, u_input.a), var_0.b.b), Struct_3(var_0.b.b, global0.b), var_0.b.a.zyy), u_input.b.x >> (u_input.a % 32u), u_input.a | u_input.b.x), vec3<u32>(10897u, 0u, ~16890u), vec3<bool>(!global0.a, true, all(vec4<bool>(false, var_0.a, false, global0.a)))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(11596u, 0u, u_input.a))) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(68246u, 72063u, 1u)))).c;
    var var_3 = var_0.b.b.b;
    let var_4 = -_wgslsmith_div_i32(-1i, ~0i);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true, u_input.c).x, abs(-46556i ^ var_4) | reverseBits(var_0.d.x), _wgslsmith_f_op_f32(ceil(-2220f)));
}

