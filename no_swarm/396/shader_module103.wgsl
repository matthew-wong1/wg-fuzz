struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_1 = Struct_1(-23250i);

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(i32(-2147483648), 15727i), vec2<i32>(28488i, 1i), vec2<i32>(0i, 25120i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(19919i, -351i), vec2<i32>(69971i, -1i), vec2<i32>(0i, 26851i), vec2<i32>(-92332i, 1i), vec2<i32>(-3591i, -1i), vec2<i32>(1i, 0i), vec2<i32>(15231i, -1i), vec2<i32>(3547i, 2147483647i), vec2<i32>(33024i, -2205i), vec2<i32>(51993i, -35990i), vec2<i32>(-30412i, 0i), vec2<i32>(-13664i, -2427i), vec2<i32>(2147483647i, 0i), vec2<i32>(7685i, -27470i), vec2<i32>(1i, 1i), vec2<i32>(1580i, i32(-2147483648)), vec2<i32>(-9687i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 11780i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = 1231f;
    global3 = array<vec2<i32>, 24>();
    global1 = Struct_1(-(~33224i));
    global3 = array<vec2<i32>, 24>();
    let var_1 = ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 0u, 101213u, u_input.e), vec4<u32>(0u, 62565u, u_input.e, u_input.e)) & ~vec4<u32>(25473u, u_input.e, 0u, u_input.e))) >> (vec4<u32>(65996u, u_input.e, _wgslsmith_div_u32(abs(27511u), _wgslsmith_mult_u32(~u_input.e, 0u)), 336u) % vec4<u32>(32u));
    return 113435u;
}

fn func_2() -> u32 {
    global0 = 1000f;
    var var_0 = Struct_2(vec2<bool>(true, true || ((global1.a << (3993u % 32u)) <= 15026i)), _wgslsmith_sub_i32(u_input.d.x, 51605i), Struct_1(abs(i32(-1i) * -global1.a)));
    let var_1 = func_3(true, var_0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1364f), _wgslsmith_f_op_f32(f32(-1f) * -300f), 862f, -1516f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f - -1122f)), -551f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1393f, -332f)), -1400f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-287f, 156f, -718f, 327f)))))))));
    var var_3 = all(!(!(!select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(true, true, var_0.a.x), var_0.a.x))));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e | u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.e), vec3<u32>(u_input.e, var_1, var_1))), abs(vec2<u32>(4294967295u, var_1)) << (vec2<u32>(u_input.e, ~4294967295u) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1075f, 904f)) - -1791f)))));
    global2 = array<vec2<i32>, 13>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e, ~u_input.e, u_input.e), 4294967295u) << (func_2() % 32u), select(u_input.e, u_input.e, (_wgslsmith_dot_vec4_i32(vec4<i32>(-12248i, u_input.d.x, global1.a, global1.a), vec4<i32>(global1.a, global1.a, global1.a, global1.a)) >= ~global1.a) && true), 93794u);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.c.x, reverseBits(2147483647i), ~global1.a & (u_input.d.x << (65304u % 32u))) | firstLeadingBit(u_input.a), vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, 0i), min(-global1.a, _wgslsmith_div_i32(u_input.c.x, -30336i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(669i, 0i), max(u_input.a.x, u_input.d.x))) >> (var_0 % vec3<u32>(32u)));
    var_1 = u_input.c;
    return Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, -2147483647i, var_1.x ^ var_1.x), vec4<i32>(abs(global1.a), -1i & var_1.x, 39266i | global1.a, firstLeadingBit(var_1.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> StorageBuffer {
    global2 = array<vec2<i32>, 13>();
    let var_0 = Struct_1(arg_1.b);
    let var_1 = select(vec2<bool>(arg_1.a.x, true), select(!select(arg_1.a, !arg_1.a, any(arg_1.a)), arg_1.a, true), !select(!vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(true, false), arg_1.a));
    let var_2 = arg_1.c;
    global3 = array<vec2<i32>, 24>();
    return StorageBuffer(global1.a ^ _wgslsmith_add_i32(5124i, _wgslsmith_sub_i32(-5295i, arg_1.b) << (4654u % 32u)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-163f, Struct_2(vec2<bool>(true, true), ~abs(-14147i), func_1()), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, 516f)))), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1488f, -543f))), 1f))));
}

