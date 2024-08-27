struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32>;

var<private> global2: Struct_4 = Struct_4(Struct_3(i32(-2147483648)), 796f, 1i, vec2<bool>(false, false), vec4<u32>(4294967295u, 33864u, 56155u, 4294967295u));

var<private> global3: array<vec2<i32>, 11>;

var<private> global4: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 88621u), vec3<u32>(6346u, 16014u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 14990u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = global1.wz;
    let var_1 = 1u;
    global3 = array<vec2<i32>, 11>();
    global0 = Struct_2(global2.d, global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -40492i, -global1.x ^ global0.c, _wgslsmith_div_i32(_wgslsmith_mult_i32(-42924i, 0i), global0.d.a)), u_input.b), global0.d, select(select(!(!global0.e), vec4<bool>(!global0.e.x, global2.d.x | true, global2.e.x <= global2.e.x, any(vec4<bool>(global2.d.x, false, true, global2.d.x))), global0.b.x != global0.b.x), vec4<bool>(true, !(-1i > global0.c), !select(true, false, global2.d.x), any(!vec4<bool>(true, global0.e.x, true, false))), vec4<bool>(false, false, global2.d.x, true)));
    global2 = Struct_4(Struct_3(~1i), _wgslsmith_f_op_f32(floor(481f)), 4520i, !global0.e.yz, ~global2.e);
    return select(global0.e.yyz, global0.e.zzy, false);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(2147483647i);
    var var_1 = !(!select(true, false, true) & global0.a.x);
    let var_2 = vec4<bool>(global0.a.x, _wgslsmith_f_op_f32(global0.b.x * global2.b) >= global0.b.x, (true == !(!global0.e.x)) != global2.d.x, all(global0.e.xww));
    let var_3 = 0i;
    var_1 = all(!(!select(select(global0.e.www, global0.e.zww, global0.e.x), func_3(), false)));
    return select(!select(!(!var_2), select(vec4<bool>(global2.d.x, global0.e.x, false, true), vec4<bool>(false, false, var_2.x, global0.e.x), select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(global2.d.x, false, global2.d.x, global2.d.x), var_2.x)), var_2.x), var_2, true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32, arg_3: bool) -> vec4<f32> {
    global2 = Struct_4(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b * 203f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -256f)), -1i, vec2<bool>(true, any(global0.e.yx)), ~(~(~vec4<u32>(arg_2, global2.e.x, global2.e.x, 0u) << (_wgslsmith_div_vec4_u32(vec4<u32>(global2.e.x, 0u, arg_2, global2.e.x), global2.e) % vec4<u32>(32u)))));
    var var_0 = Struct_1(~global1.x);
    global3 = array<vec2<i32>, 11>();
    var var_1 = all(func_2());
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~global2.e.x), _wgslsmith_sub_u32(arg_2, global2.e.x), 4294967295u, 24802u) << (global2.e % vec4<u32>(32u)), reverseBits(~_wgslsmith_clamp_vec4_u32(global2.e, vec4<u32>(global2.e.x, 0u, arg_2, arg_2), _wgslsmith_clamp_vec4_u32(global2.e, global2.e, vec4<u32>(arg_2, arg_2, 0u, global2.e.x)))), reverseBits(reverseBits(_wgslsmith_div_vec4_u32(global2.e, vec4<u32>(arg_2, 20029u, 20798u, global2.e.x)) | global2.e)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1171f, 106f, -920f, arg_1.a)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-193f, 1176f, 2155f, global0.b.x), vec4<f32>(global2.b, -353f, -1914f, -328f), false)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, -568f, -1295f, 697f), vec4<f32>(global0.b.x, 1378f, global0.b.x, 520f), false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1406f, global0.b.x, arg_1.b.x, global2.b), vec4<f32>(934f, global0.b.x, arg_1.a, global0.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.b, global2.b, -453f))))));
}

fn func_4(arg_0: vec4<f32>) -> StorageBuffer {
    global3 = array<vec2<i32>, 11>();
    var var_0 = !(!func_2());
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -386f))) + global0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, _wgslsmith_f_op_f32(320f - global2.b), _wgslsmith_f_op_f32(f32(-1f) * -202f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, 437f, global0.b.x)))));
    global2 = Struct_4(Struct_3(i32(-1i) * -1i), 935f, abs(-8626i), func_2().zx, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global2.e, global2.e) & max(vec4<u32>(1u, 4294967295u, global2.e.x, global2.e.x), global2.e), min(global2.e, vec4<u32>(global2.e.x, 4294967295u, 4294967295u, global2.e.x)) >> (firstLeadingBit(global2.e) % vec4<u32>(32u))), vec4<u32>(20767u, _wgslsmith_mult_u32(~0u, global2.e.x | global2.e.x), global2.e.x, _wgslsmith_add_u32(0u << (global2.e.x % 32u), ~global2.e.x))));
    var var_2 = global2.a;
    return StorageBuffer(_wgslsmith_clamp_u32(min(8314u, global2.e.x), global2.e.x, _wgslsmith_dot_vec3_u32(~(global2.e.yyz & global2.e.zwx), vec3<u32>(~global2.e.x, ~global2.e.x, global2.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 11>();
    let var_0 = u_input.a.x;
    var var_1 = global2.e.x | ~global2.e.x;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(-42622i), Struct_5(global0.b.x, global0.b), 4294967295u, false))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b, global2.b, global0.b.x, 1029f))))));
}

