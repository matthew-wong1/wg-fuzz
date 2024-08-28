struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1013f, 3031f, -1250f, -993f, -945f, -1537f, 480f, 1274f, 1018f, -1684f, -1460f, -1000f, 1000f, -657f, -481f, -1241f, -2216f, 808f, 693f, -759f, -146f, -1000f, -1000f, 1552f, 1000f, 538f, -1141f, 566f);

var<private> global1: array<vec3<u32>, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec2<u32>(abs(max(abs(~u_input.b.x), ~(~u_input.b.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, 29390u), u_input.b.x), 2749u), u_input.b.x << (u_input.c % 32u)));
    let var_1 = Struct_4(_wgslsmith_div_i32(12694i, 9666i), !(!all(vec2<bool>(true, true))), select(52341u, var_0.x, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), false), Struct_3(vec4<i32>(u_input.a, -1994i, u_input.a & -16524i, u_input.a >> (countOneBits(65843u) % 32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 30993i, 35703i)) | vec3<i32>(_wgslsmith_div_i32(8645i, u_input.a), -16339i, u_input.a), Struct_2(vec3<bool>(true, true, true), u_input.b.x, ~(~vec4<u32>(u_input.c, var_0.x, 18801u, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 28u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(46161u, 28u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 28u)] * 147f))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(-arg_0))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_2 = var_1;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(var_1.e.d.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_2.e.c.c.x, 28u)] - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 28u)], -1325f)))), -643f)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = array<vec3<u32>, 19>();
    let var_1 = var_0;
    global0 = array<f32, 28>();
    global1 = array<vec3<u32>, 19>();
    return ~var_0.e.c.c;
}

fn func_2() -> vec4<u32> {
    global0 = array<f32, 28>();
    global1 = array<vec3<u32>, 19>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_0 = u_input.b.x;
    return func_4((select(all(vec2<bool>(true, true)), true, true) && select(true, global0[_wgslsmith_index_u32(u_input.c, 28u)] > global0[_wgslsmith_index_u32(0u, 28u)], all(vec4<bool>(true, false, false, false)))) && true, Struct_4(-(~24032i), select(func_3(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), 86971u >= _wgslsmith_sub_u32(u_input.b.x, u_input.c), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), min(~0u, ~19206u ^ u_input.c), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), false), Struct_3(vec4<i32>(firstLeadingBit(0i), -1349i << (u_input.b.x % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i), u_input.a), abs(-vec3<i32>(u_input.a, 0i, u_input.a)), Struct_2(vec3<bool>(false, false, false), 41399u, ~vec4<u32>(u_input.c, u_input.c, 1u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(91143u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), vec2<bool>(false, true))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = -2147483647i;
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.c.x, ~(~(~0u)), 45216u), ~global1[_wgslsmith_index_u32(u_input.c, 19u)]);
    let var_2 = vec3<bool>(true, 21593u < _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_2(), vec4<u32>(u_input.c, 0u, 0u, 0u) ^ arg_0.c.c), ~(vec4<u32>(u_input.b.x, 4294967295u, var_1.x, var_1.x) >> (arg_0.c.c % vec4<u32>(32u)))), 10456u != var_1.x);
    global0 = array<f32, 28>();
    global1 = array<vec3<u32>, 19>();
    return max(10497u, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 28>();
    var var_0 = true;
    let var_1 = Struct_1(vec2<u32>(u_input.c, countOneBits(u_input.b.x)), func_1(Struct_3(vec4<i32>(-12696i, ~u_input.a, 1i, -u_input.a), select(vec3<i32>(-2147483647i, u_input.a, -40875i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)), Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), u_input.b.x | 40036u, _wgslsmith_div_vec4_u32(vec4<u32>(21938u, 11479u, 31890u, u_input.b.x), vec4<u32>(u_input.c, 1u, 0u, 12480u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(22145u, 28u)], 1151f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2290f, global0[_wgslsmith_index_u32(4294967295u, 28u)], -295f, global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec4<f32>(1753f, 596f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 455f))))), vec2<bool>(true, true))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, ~u_input.c), firstTrailingBit(firstTrailingBit(u_input.b.x))), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 28u)] + _wgslsmith_f_op_f32(floor(225f)))), _wgslsmith_f_op_f32(step(2022f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 28u)] - -1819f)))), global0[_wgslsmith_index_u32(0u, 28u)]), 13560u, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~4294967295u, 28u)], global0[_wgslsmith_index_u32(func_4(false, Struct_4(u_input.a, false, u_input.c, vec4<bool>(true, false, false, false), Struct_3(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 2147483647i), Struct_2(vec3<bool>(false, true, true), u_input.c, vec4<u32>(26089u, 0u, 19088u, 40804u)), vec4<f32>(-890f, 830f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(false, false)))).x, 28u)]))))));
    let var_2 = firstTrailingBit(abs(-(~(-vec4<i32>(u_input.a, u_input.a, 22590i, u_input.a)))));
    let var_3 = 17981u;
    var_0 = false;
    let var_4 = Struct_4(~27112i, any(select(vec2<bool>(true, true), !select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, false), vec2<bool>(true, true)), true)), var_1.a.x, select(!(!select(vec4<bool>(false, var_1.e, var_1.e, false), vec4<bool>(var_1.e, false, false, false), false)), vec4<bool>(false, false, true, !var_1.e), false), Struct_3(~var_2, reverseBits(_wgslsmith_mod_vec3_i32(var_2.xzz ^ vec3<i32>(-2147483647i, u_input.a, var_2.x), vec3<i32>(2147483647i, -22406i, -2147483647i))), Struct_2(select(vec3<bool>(var_1.e, var_1.e, var_1.e), vec3<bool>(true, true, true), vec3<bool>(var_1.e, var_1.e, true)), 8551u, ~vec4<u32>(var_3, var_1.d, 0u, u_input.c) << (vec4<u32>(u_input.c, var_3, var_3, var_1.b) % vec4<u32>(32u))), var_1.c, select(vec2<bool>(true, true), select(vec2<bool>(var_1.e, var_1.e), select(vec2<bool>(true, true), vec2<bool>(var_1.e, var_1.e), vec2<bool>(true, var_1.e)), select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, false), vec2<bool>(var_1.e, true))), vec2<bool>(var_1.e, var_1.e))));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-166f, var_1.c.x));
}

