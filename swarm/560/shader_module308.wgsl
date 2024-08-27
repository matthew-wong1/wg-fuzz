struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<Struct_4, 31>;

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(15609i), false, Struct_1(-25124i), Struct_1(2147483647i)), vec3<u32>(44206u, 1u, 25687u), 0u, 68482u, 52742u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = vec4<bool>(global0.x, true, !any(select(vec3<bool>(true, global0.x, global2.a.b), select(vec3<bool>(global0.x, global0.x, global0.x), global0.zwy, global0.xzz), true)), !global2.a.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(120f + -932f), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1668f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f + 1169f) + 1f))) + vec4<f32>(-278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1271f, -874f) + _wgslsmith_f_op_f32(-324f - 285f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(748f, 1999f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-941f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-624f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(max(-1603f, 917f)))), !(!var_0.x)))));
    let var_2 = global2.a.c;
    var var_3 = countOneBits(global2.c);
    global0 = !select(vec4<bool>(select(all(var_0.zx), false & var_0.x, false), true, any(!global0.wy), global2.a.b), vec4<bool>(true, !var_0.x | global0.x, var_1.x == var_1.x, true), var_0.x);
    return 1i;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = min(global2.b.yz, global2.b.xx);
    let var_1 = Struct_1(func_3());
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1239f * 1163f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-156f)) * _wgslsmith_f_op_f32(step(429f, 1760f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-853f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1157f, 884f, 638f, 318f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1088f * 1938f), -697f), -1238f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(126f + 1380f) + -1489f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1429f, 901f))), _wgslsmith_f_op_f32(-1532f * -732f), true))), _wgslsmith_mult_u32(~select(global2.d, arg_0.x, false), arg_0.x) == var_0.x));
    let var_3 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(var_1.a | -9514i, global2.a.d.a, var_1.a >> (u_input.b % 32u)) ^ (vec3<i32>(2147483647i, global2.a.a.a, 49369i) & abs(vec3<i32>(-1i, u_input.c, 1i)))), vec3<i32>(~1i, _wgslsmith_add_i32(-1i, 0i), -44328i) & vec3<i32>(func_3(), ~18691i & global2.a.a.a, i32(-1i) * -22870i));
    let var_4 = 4294967295u;
    return -1650f;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = max(abs(abs(arg_0)), arg_0);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(-1262f, -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1377f, -1087f)), _wgslsmith_f_op_f32(func_2(~vec4<u32>(global2.b.x, u_input.b, 24209u, u_input.d.x))), !((var_0.x < var_0.x) && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(f32(-1f) * -483f)))), 978f);
    let var_2 = ~global2.d;
    let var_3 = 4294967295u;
    let var_4 = true;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(func_1(vec2<i32>(-1i) * -max(vec2<i32>(global2.a.a.a, -40961i), vec2<i32>(19069i, global2.a.d.a))), u_input.d.yzy, 4294967295u, 79327u, global2.c);
    global1 = array<Struct_4, 31>();
    var var_0 = Struct_1(global2.a.a.a);
    let var_1 = Struct_1(-18064i);
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f * -120f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-410f, -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-729f - -305f))))), _wgslsmith_f_op_f32(trunc(-1000f))), global2.a, global2.a.b, -2635f);
    let x = u_input.a;
    s_output = StorageBuffer(61439u, _wgslsmith_f_op_f32(floor(var_2.a.x)), vec4<i32>(~_wgslsmith_sub_i32(0i, global2.a.d.a) << (~1u % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.b.c.a, 894i), -2147483647i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, var_2.b.d.a), vec3<i32>(var_1.a, var_0.a, var_1.a)), vec3<i32>(0i, -2147483647i, -29723i)), max(-(~var_1.a), reverseBits(abs(1i))), 48329i), max(firstLeadingBit(_wgslsmith_mult_i32(~var_0.a, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.a.a, 20169i | var_1.a), -(~vec2<i32>(var_2.b.a.a, var_2.b.a.a)))), select(-vec4<i32>(-16931i, ~0i, _wgslsmith_mod_i32(global2.a.c.a, var_0.a), 66185i), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2958i, var_2.b.a.a, var_1.a), vec4<i32>(-1i, u_input.c, 2147483647i, var_1.a)), -1i, global2.a.c.a, func_3()), false));
}

