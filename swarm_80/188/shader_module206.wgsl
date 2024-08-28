struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = Struct_1(global0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(min(4294967295u, 43031u), 83510u, ~659u), abs(~vec3<u32>(global0.b, u_input.c, global0.a.x))));
    global1 = array<vec2<i32>, 27>();
    return _wgslsmith_mult_u32(1u, 874u);
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    global0 = Struct_1(firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(41677u, u_input.c, 31546u), global0.a) >> (arg_0 % vec3<u32>(32u))), ~global0.a.x);
    global0 = Struct_1(vec3<u32>(reverseBits(_wgslsmith_mult_u32(1u, 1u)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, 197f)))), ~min(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.a.x, 1u, u_input.c), vec4<u32>(global0.a.x, arg_0.x, global0.a.x, arg_0.x)))), 1u & ~_wgslsmith_mod_u32(10423u, global0.a.x));
    let var_0 = ~((_wgslsmith_add_u32(u_input.c, 74207u) & global0.a.x) | ~6345u);
    global1 = array<vec2<i32>, 27>();
    var var_1 = Struct_1(~global0.a, 2018u);
    return vec2<bool>(false, all(vec4<bool>(!all(vec3<bool>(true, false, false)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)))));
}

fn func_4(arg_0: vec2<bool>) -> bool {
    global1 = array<vec2<i32>, 27>();
    var var_0 = 18440u;
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(countOneBits(global0.a.x), 0u, 1u, ~1u), (~vec4<u32>(u_input.c, 4294967295u, 0u, 10905u) & vec4<u32>(8782u, 4294967295u, 1u, 4294967295u)) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 35225u, 65550u, 38787u), vec4<u32>(u_input.c, 1u, global0.a.x, 38200u)) ^ abs(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c))) % vec4<u32>(32u))));
    let var_1 = ~_wgslsmith_mult_u32(~(~global0.b), u_input.c) >> (~4788u % 32u);
    let var_2 = Struct_2(Struct_1(global0.a, 2330u >> ((u_input.c >> (~u_input.c % 32u)) % 32u)));
    return false;
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(func_2(vec3<u32>(_wgslsmith_sub_u32(u_input.c, 25274u), u_input.c << (u_input.c % 32u), ~(~49419u))));
    var var_1 = vec3<u32>(1u, global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, ~20204u, global0.b, 23743u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 38276u, u_input.c, u_input.c) << (vec4<u32>(global0.a.x, u_input.c, 37985u, global0.b) % vec4<u32>(32u)), ~abs(vec4<u32>(global0.a.x, u_input.c, u_input.c, u_input.c)))));
    var_1 = global0.a | ~(~select(vec3<u32>(var_1.x, global0.a.x, 88862u), vec3<u32>(1u, 0u, 4294967295u), true));
    var var_2 = vec4<f32>(146f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1064f, _wgslsmith_f_op_f32(floor(-1000f))) + _wgslsmith_f_op_f32(-599f + -1296f)), -769f, true)), 265f, 1000f);
    return Struct_3(var_2.wx, Struct_1(vec3<u32>(_wgslsmith_add_u32(35391u << (u_input.c % 32u), min(u_input.c, 53141u)), abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 0u, 38548u, 10251u), vec4<u32>(65832u, u_input.c, 67784u, 47652u)) << (1u % 32u)), ~(~4294967295u) & min(min(u_input.c, 0u), min(u_input.c, 18103u))), vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(var_1.x) << (min(global0.a.x, 1u) % 32u), u_input.c), 61706u ^ u_input.c, ~1u, global0.b), Struct_1(reverseBits(global0.a | global0.a), _wgslsmith_div_u32(4294967295u, min(1u, var_1.x) << (var_1.x % 32u))));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -816f);
    var var_1 = arg_3.b;
    global1 = array<vec2<i32>, 27>();
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = func_1().d;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_1.a.zy, select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.c, var_3.a.x, 13273u), vec4<u32>(50013u, var_1.a.x, 19809u, arg_1.x)), firstLeadingBit(var_3.a.x)), var_3.a.yx, arg_2.zx)), u_input.c);
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = firstLeadingBit(15194i);
    let var_2 = Struct_5(Struct_2(var_0.b), ~var_0.b.a, func_1().b, any(vec4<bool>(false, true, false, func_2(vec3<u32>(var_0.d.b, arg_1, u_input.c)).x)));
    let var_3 = ~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(~u_input.c, arg_0 & arg_1), 36105u, 4294967295u, ~min(4294967295u, arg_0)));
    var var_4 = Struct_1(firstLeadingBit(~vec3<u32>(firstLeadingBit(arg_2.x), ~34471u, min(4294967295u, 17794u))), ~44591u);
    return Struct_1(global0.a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_div_u32(u_input.c, u_input.c), ~4294967295u, ~vec3<u32>(func_5(true, _wgslsmith_clamp_vec2_u32(global0.a.yx, vec2<u32>(u_input.c, 19512u), vec2<u32>(u_input.c, 58788u)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), func_1()), _wgslsmith_clamp_u32(1u, 1u, global0.a.x << (1u % 32u)), global0.a.x));
    let var_0 = Struct_2(func_6(11061u, abs(~u_input.c), global0.a));
    var var_1 = select(vec4<bool>(-387f >= _wgslsmith_f_op_f32(floor(-1684f)), func_2(~vec3<u32>(4294967295u, 69349u, var_0.a.b)).x && true, (~var_0.a.b >= ~global0.a.x) | true, true), vec4<bool>(true, false, !(true & select(true, false, false)), false), !select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-365f, _wgslsmith_f_op_f32(ceil(-748f)))))));
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(227f * var_2) <= -100f, select(var_1.x, true, true), all(vec3<bool>(false, var_1.x, true)), all(func_2(func_1().b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1556f - 457f), vec3<u32>(_wgslsmith_add_u32(~4294967295u, countOneBits(4294967295u >> (global0.b % 32u))), 73588u, func_1().b.b));
}

