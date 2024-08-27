struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(599u, vec4<u32>(37808u, 20729u, 1u, 4294967295u)), Struct_1(1u, vec4<u32>(32813u, 0u, 19470u, 11450u)), Struct_1(1u, vec4<u32>(34787u, 1u, 34007u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(0u, 0u, 7165u, 1u)), Struct_1(0u, vec4<u32>(93679u, 34972u, 34874u, 1u)), Struct_1(32527u, vec4<u32>(4945u, 0u, 1u, 1u)));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(51561u, 10109u, 41923u, 4294967295u), vec4<u32>(0u, 7118u, 1u, 20314u), vec4<u32>(27810u, 0u, 39095u, 104769u), vec4<u32>(119184u, 0u, 4294967295u, 4294967295u), vec4<u32>(67266u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(3219u, 0u, 0u, 19070u), vec4<u32>(54459u, 14085u, 1u, 12831u), vec4<u32>(1u, 19950u, 53446u, 0u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(65022u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(45199u, 0u, 0u, 58588u), vec4<u32>(27469u, 0u, 2016u, 7796u), vec4<u32>(60114u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(96282u, 15028u, 10523u, 4294967295u), vec4<u32>(12366u, 4294967295u, 72790u, 16026u), vec4<u32>(4294967295u, 31712u, 4294967295u, 4294967295u), vec4<u32>(84577u, 120055u, 2012u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 33756u), vec4<u32>(33997u, 1u, 0u, 65228u), vec4<u32>(0u, 8204u, 11348u, 1u), vec4<u32>(71081u, 0u, 1u, 48835u), vec4<u32>(62508u, 1u, 45772u, 77626u), vec4<u32>(19216u, 38852u, 35891u, 4294967295u), vec4<u32>(50367u, 28554u, 1u, 1u), vec4<u32>(19686u, 89159u, 4294967295u, 47084u));

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = global2.c;
    global4 = any(global1.yx);
    global4 = !global1.x;
    return all(select(global1.zy, vec2<bool>(arg_0, 4294967295u != (var_0.a << (u_input.d.x % 32u))), any(select(vec3<bool>(false, arg_0, true), select(vec3<bool>(global1.x, arg_0, global1.x), vec3<bool>(true, arg_0, global1.x), vec3<bool>(false, true, global1.x)), true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = 10124u;
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_3(-arg_1.x);
    let var_2 = vec4<bool>(!global1.x, false, !global1.x, func_2(true));
    return u_input.d.x;
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = vec2<i32>(-(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-24115i, 39663i, u_input.a, u_input.b), vec4<i32>(-56590i, 7492i, u_input.b, u_input.a)))), ~(-1i));
    var var_1 = Struct_3(global2.b.x);
    let var_2 = any(vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -442f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-125f, 140f) - _wgslsmith_f_op_f32(abs(-434f))), !(!global1.x), any(!(!vec3<bool>(false, global1.x, true)))));
    var var_3 = true;
    var var_4 = 4294967295u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~func_1(vec3<f32>(656f, _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(select(345f, 360f, false))), countOneBits(vec3<i32>(-26196i, 1i, -43958i)) | max(u_input.e, vec3<i32>(2147483647i, 38581i, u_input.e.x))), (60683u | abs(u_input.c >> (13289u % 32u))) << (0u % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, max(countOneBits(global2.c.b.x), 1u)), u_input.d.x), func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 923f, -212f)), vec3<f32>(2145f, _wgslsmith_f_op_f32(f32(-1f) * -446f), -398f))), abs(u_input.e)));
    let var_1 = firstTrailingBit(vec4<u32>(func_3(var_0.x), 4294967295u, _wgslsmith_sub_u32(firstTrailingBit(min(108201u, 4294967295u)), _wgslsmith_sub_u32(1u, ~var_0.x)), ~firstLeadingBit(u_input.c)));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(global2.b, -_wgslsmith_div_vec2_i32(vec2<i32>(-1316i, -1i), abs(global2.b))), global2.b, Struct_1(34936u, var_1));
    let var_3 = global2.c;
    var var_4 = ~_wgslsmith_mult_u32(var_0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.x, global2.c.a), countOneBits(0u)), 14386u));
    let var_5 = Struct_2(-_wgslsmith_add_i32(14008i, global2.b.x), vec2<i32>(abs(u_input.b), _wgslsmith_mult_i32(1i, ~var_2.a) | var_2.b.x), Struct_1(var_1.x, vec4<u32>(79990u, 47734u, var_2.c.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.x, global2.c.a, u_input.d.x, var_3.b.x), var_3.b), vec4<u32>(global2.c.b.x, var_2.c.a, 44376u, 9986u) << (var_2.c.b % vec4<u32>(32u))))));
    var var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 831f)) + _wgslsmith_f_op_f32(trunc(458f)))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1038f, _wgslsmith_f_op_f32(f32(-1f) * -219f))) + -1101f);
    var var_7 = _wgslsmith_f_op_f32(select(-853f, -871f, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(var_2.a, var_5.b.x), -u_input.e.x), max(var_5.b.x, firstTrailingBit(4112i)), countOneBits(_wgslsmith_dot_vec2_i32(var_2.b, vec2<i32>(-2147483647i, global2.b.x)))), _wgslsmith_mult_vec4_i32(abs(firstLeadingBit(vec4<i32>(1i, var_2.a, 78148i, 0i))), vec4<i32>(-4808i, reverseBits(15914i), _wgslsmith_mult_i32(1i, var_5.b.x), -2147483647i)), u_input.e.x);
}

