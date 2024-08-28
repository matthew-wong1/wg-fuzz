struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(335f, vec4<u32>(10130u, 56173u, 1828u, 35302u), -873f, vec3<u32>(3338u, 41635u, 27417u), vec4<f32>(1000f, -1170f, -1000f, -1538f));

var<private> global1: array<bool, 6>;

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = true;
    global2 = array<vec2<u32>, 31>();
    global2 = array<vec2<u32>, 31>();
    let var_1 = global1[_wgslsmith_index_u32(global0.b.x, 6u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1604f + -1000f), global0.b, -966f, _wgslsmith_sub_vec3_u32(global0.b.yzy, global0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, global0.a, global0.c, arg_1) * _wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(arg_1, global0.a, global0.a, global0.a))))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.b.x, 1u), vec3<u32>(1u, 4294967295u, global0.d.x)), var_2.b.zxx), var_2.d), ~(~global0.b.x));
}

fn func_3() -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~global0.b, _wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(1497u, global0.d.x, global0.b.x, global0.d.x))), ~0u)), 6u)];
    var var_1 = !select(vec2<bool>(false, true), !vec2<bool>(global0.b.x <= global0.d.x, !global1[_wgslsmith_index_u32(49542u, 6u)]), vec2<bool>(true, true));
    var var_2 = vec4<i32>(-8181i, -2147483647i, _wgslsmith_dot_vec4_i32((-vec4<i32>(u_input.b, 18703i, -26143i, u_input.c) >> (vec4<u32>(global0.d.x, global0.b.x, global0.d.x, global0.b.x) % vec4<u32>(32u))) & -(~vec4<i32>(u_input.c, u_input.b, u_input.c, 56738i)), ~vec4<i32>(u_input.b & -16221i, -29937i, ~34364i, 0i)), 1i);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1169f)), global0.b, global0.e.x, vec3<u32>(_wgslsmith_mod_u32(global0.d.x, _wgslsmith_div_u32(global0.b.x, reverseBits(36352u))), global0.d.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, global0.d.x), 16525u)), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(abs(1596f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - global0.e.x) - -1805f), global0.e.x)), 972f));
    let var_3 = var_2.xy;
    return vec2<u32>(103521u, ~global0.b.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + arg_3.x)))) + -559f), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_2.x, arg_1, _wgslsmith_dot_vec2_u32(func_3(), ~global0.b.xw), ~arg_2.x), global0.b), -1632f, global0.b.wwy, global0.e);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(157f - arg_3.x), _wgslsmith_f_op_f32(-1242f - -282f))))));
    global3 = array<vec4<bool>, 18>();
    var_0 = Struct_1(378f, firstTrailingBit(vec4<u32>(arg_1 << (~global0.d.x % 32u), firstLeadingBit(~arg_2.x), abs(var_0.b.x), arg_2.x)), 730f, var_0.d, vec4<f32>(_wgslsmith_f_op_f32(var_0.a * arg_3.x), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(540f, -718f), _wgslsmith_div_f32(global0.e.x, 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 1000f))), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))))));
    let var_2 = var_0.e.xwx;
    return vec3<u32>(_wgslsmith_add_u32(global0.b.x, _wgslsmith_clamp_u32(abs(4294967295u), 4294967295u, _wgslsmith_mod_u32(4294967295u, 4294967295u)) << (global0.b.x % 32u)), 14698u, var_0.d.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(vec2<bool>(true, true), !select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(32480u, 6u)]), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, !global1[_wgslsmith_index_u32(arg_0.x, 6u)]), all(vec3<bool>(false, true, false))), !vec2<bool>(true, true || (global0.d.x > arg_1.d.x)));
    let var_1 = Struct_1(arg_1.c, arg_1.b, _wgslsmith_f_op_f32(-global0.a), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - arg_1.e.x)), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(global0.c - -636f)), 613f) - global0.e));
    let var_2 = u_input.a.x;
    let var_3 = arg_1;
    var var_4 = var_3;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_4(_wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(global0.b.x, 0u), global0.b.x, abs(~global0.b.x)), vec3<u32>(_wgslsmith_add_u32(27954u ^ global0.d.x, min(global0.b.x, 44501u)), global0.d.x, global0.d.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_div_vec4_u32(vec4<u32>(63511u, func_1(52919i, global0.a), 69061u, 95544u), global0.b), 184f, func_2(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.d.x, 6u)], !global1[_wgslsmith_index_u32(0u, 6u)], false), ~(global0.d.x << (35665u % 32u)), ~vec4<u32>(global0.b.x, 15465u, global0.d.x, 1u) & ~vec4<u32>(16068u, global0.d.x, 1u, global0.d.x), vec2<f32>(_wgslsmith_f_op_f32(global0.e.x - global0.c), _wgslsmith_f_op_f32(-1044f - global0.a))), vec4<f32>(-285f, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -824f)), global0.c)));
    global1 = array<bool, 6>();
    var_0 = select(!any(select(global3[_wgslsmith_index_u32(4294967295u, 18u)], select(global3[_wgslsmith_index_u32(31507u, 18u)], global3[_wgslsmith_index_u32(29964u, 18u)], vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global0.b.x, 6u)], global1[_wgslsmith_index_u32(var_1.b.x, 6u)], global1[_wgslsmith_index_u32(15841u, 6u)])), !vec4<bool>(global1[_wgslsmith_index_u32(global0.d.x, 6u)], global1[_wgslsmith_index_u32(global0.b.x, 6u)], true, global1[_wgslsmith_index_u32(var_1.d.x, 6u)]))), global1[_wgslsmith_index_u32(global0.b.x, 6u)], all(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), false), false == global1[_wgslsmith_index_u32(4294967295u, 6u)]), !vec3<bool>(global1[_wgslsmith_index_u32(global0.b.x, 6u)], global1[_wgslsmith_index_u32(2550u, 6u)], global1[_wgslsmith_index_u32(var_1.b.x, 6u)]), global1[_wgslsmith_index_u32(var_1.b.x, 6u)])));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(-120f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, ~79822u, firstTrailingBit(91947u), global0.d.x << (~global0.b.x % 32u)), vec4<u32>(var_1.b.x, _wgslsmith_dot_vec2_u32(global0.d.zx, global0.b.wy), 0u, 27914u), ~(~global0.b)), _wgslsmith_div_f32(981f, _wgslsmith_f_op_f32(-1000f * var_1.e.x)), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_1.b.zwx, vec3<u32>(4294967295u, var_1.b.x, 50139u)), min(vec3<u32>(var_1.d.x, var_1.b.x, var_1.b.x), global0.b.ywz), global0.d >> (var_1.d % vec3<u32>(32u))), vec3<u32>(global0.d.x, 4294967295u & global0.b.x, 1u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1403f, _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -551f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, var_1.c) - -752f)), _wgslsmith_f_op_vec4_f32(floor(global0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-16737i, -34114i, 1i, u_input.a.x << (var_2.b.x % 32u)), -vec4<i32>(2147483647i, 0i, u_input.a.x, -14980i))));
}

