struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1000f, 462f, 365f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = global2.b.x;
    var var_1 = !global1.a.x;
    let var_2 = Struct_2(Struct_1(!select(vec3<bool>(global2.a.x, global1.a.x, global2.a.x), global2.a, vec3<bool>(true, global2.a.x, global1.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(-278f, global2.b.x, global1.b.x)), _wgslsmith_f_op_vec3_f32(global1.b - global2.b))), global2.b)), 1i);
    let var_3 = Struct_3(Struct_2(Struct_1(vec3<bool>(any(global1.a.xz), true, !var_2.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.c.x), countOneBits(u_input.b))), var_2, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-var_2.a.b)));
    let var_4 = _wgslsmith_f_op_f32(round(var_2.a.b.x));
    return ~(~_wgslsmith_div_u32(25435u, ~0u));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(!global2.a, _wgslsmith_div_vec3_f32(vec3<f32>(-477f, 1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f * 2593f) + _wgslsmith_f_op_f32(135f + arg_0))), global1.b));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1458f)) * -855f) - 1070f), -1046f);
    global0 = array<vec4<f32>, 17>();
    let var_2 = !var_0.a.x;
    let var_3 = var_0.a.x;
    return func_3();
}

fn func_1() -> Struct_1 {
    let var_0 = select(-u_input.c.x, _wgslsmith_div_i32(u_input.c.x, 1i), true) <= 1i;
    let var_1 = u_input.b >> (vec4<u32>(~(~_wgslsmith_mult_u32(u_input.e, u_input.a)), firstLeadingBit(u_input.a), firstLeadingBit(4294967295u) & _wgslsmith_mod_u32(~u_input.d, 1u), u_input.a) % vec4<u32>(32u));
    global1 = Struct_1(!select(!(!global1.a), !select(global2.a, vec3<bool>(true, var_0, global2.a.x), global1.a), vec3<bool>(global2.a.x, true, u_input.e <= 35899u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.b, _wgslsmith_f_op_vec3_f32(abs(global2.b))) - vec3<f32>(global2.b.x, -2090f, -235f)))));
    var var_2 = min(vec4<u32>(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1405f)))), 9493u, countOneBits(u_input.e), _wgslsmith_sub_u32(10436u, u_input.d >> (1u % 32u))), max(abs(vec4<u32>(4294967295u, 1u, 17042u, u_input.e)), vec4<u32>(reverseBits(u_input.e), ~_wgslsmith_clamp_u32(1u, u_input.e, u_input.a), u_input.a, 45736u ^ _wgslsmith_sub_u32(u_input.a, u_input.a))));
    var var_3 = abs(~(~var_2.ww & ~abs(var_2.zy)));
    return Struct_1(vec3<bool>(global1.a.x, _wgslsmith_f_op_f32(1174f + _wgslsmith_div_f32(global2.b.x, global1.b.x)) != _wgslsmith_f_op_f32(845f - _wgslsmith_f_op_f32(global1.b.x * 163f)), all(!vec4<bool>(true, global2.a.x, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1512f)))), global1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 17>();
    global1 = func_1();
    var var_0 = Struct_4(u_input.b, !(!select(vec4<bool>(global2.a.x, false, true, global1.a.x), vec4<bool>(true, true, true, true), global1.b.x <= -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global2.b.x) * vec2<f32>(271f, global2.b.x))) * global1.b.zy) + global2.b.yx), _wgslsmith_mod_u32(countOneBits(~0u), abs(~(~u_input.a))), Struct_3(Struct_2(func_1(), 0i), Struct_2(func_1(), _wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), -10206i)), Struct_1(func_1().a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(476f, -714f, 542f))))))));
    global1 = var_0.e.a.a;
    var var_1 = -max(-firstTrailingBit(abs(var_0.e.b.b)), -17967i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 166f, global2.b.x)) - var_0.e.a.a.b), var_0.a, _wgslsmith_add_u32(20207u, _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, u_input.d, var_0.d), vec4<u32>(4294967295u, 6424u, u_input.d, var_0.d))), ~(~0u))), -(~u_input.c.x));
}

