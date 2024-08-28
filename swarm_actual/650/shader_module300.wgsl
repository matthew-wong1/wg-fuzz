struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(reverseBits(u_input.b.xz), u_input.b.zx);
    let var_1 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), vec2<bool>(true, ~u_input.b.x >= 1u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true)), 54832u, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = array<Struct_3, 20>();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(var_1.d));
    var_2 = var_1.d;
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(~(~u_input.b.x))), 4294967295u);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = 4294967295u;
    var_0 = ~((_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1, 1579u), arg_1) ^ countOneBits(func_3(u_input.b.x))) >> (0u % 32u));
    var_0 = 14548u;
    let var_1 = firstLeadingBit(1u);
    let var_2 = ~(~_wgslsmith_mod_u32(min(var_1, 4294967295u), u_input.b.x)) ^ u_input.b.x;
    return arg_2.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = !func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1512f, -1871f, 1000f, -962f), vec4<f32>(563f, 163f, 2691f, -1040f), arg_1)), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(true, arg_1, arg_2.c, arg_1), vec4<bool>(arg_2.c, arg_1, arg_1, false), vec4<bool>(arg_2.c, false, arg_2.c, false)))))), 0u, !vec3<bool>(true, arg_2.c, select(false, arg_1, arg_1)));
    var var_1 = ~vec4<i32>(-12865i, -28767i, -35345i, i32(-1i) * -select(u_input.a.x, u_input.a.x, true));
    let var_2 = vec3<u32>(36945u << (min(4294967295u, min(arg_2.d.x, 49946u) >> (~75761u % 32u)) % 32u), func_3(1u), 0u);
    var var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, -47796i), ~vec2<i32>(1i, u_input.a.x));
    global0 = array<Struct_3, 20>();
    return Struct_1(vec2<bool>(false, true), ~_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.x, 1u) | 14115u, var_2.x), var_0, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(113f, 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-417f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1501f + -1074f), _wgslsmith_f_op_f32(574f + 1843f), -167f), vec3<f32>(_wgslsmith_div_f32(-646f, -1334f), _wgslsmith_div_f32(-179f, 1000f), -1066f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> StorageBuffer {
    global0 = array<Struct_3, 20>();
    let var_0 = ~u_input.b;
    var var_1 = Struct_2(select(~_wgslsmith_add_vec2_u32(var_0.yz & vec2<u32>(arg_1.b, u_input.b.x), vec2<u32>(4294967295u, 1u)), vec2<u32>(_wgslsmith_mult_u32(~u_input.b.x, 58154u), 27997u), u_input.a.x != -arg_0));
    var_1 = Struct_2(vec2<u32>(arg_1.b, 1605u));
    let var_2 = select(max(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, arg_0, arg_0), vec3<i32>(-9723i, arg_0, 11527i), vec3<i32>(10107i, u_input.a.x, u_input.a.x)), abs(vec3<i32>(u_input.a.x & 0i, u_input.a.x, 1i))), firstLeadingBit(vec3<i32>(min(u_input.a.x, _wgslsmith_mod_i32(50791i, u_input.a.x)), u_input.a.x, u_input.a.x)), arg_2.x);
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1956f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    var var_0 = reverseBits(u_input.b.x);
    var var_1 = Struct_3(u_input.a.x, Struct_2(firstLeadingBit(~u_input.b.zz)), true, vec4<u32>(u_input.b.x, 0u, 54829u, select(countOneBits(u_input.b.x | 21054u), u_input.b.x, true)));
    var var_2 = max(-(~(-39613i)), ~(-40552i));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, 146f, 2023f, -352f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 697f, 227f, -784f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, 1134f, -756f, -580f) - vec4<f32>(-1126f, -463f, 1491f, 1000f)), vec4<f32>(438f, -2179f, 1573f, 641f), false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, _wgslsmith_f_op_f32(round(-1000f)), 1f, _wgslsmith_f_op_f32(1021f + -962f)) * vec4<f32>(1f, 1f, 1f, 1f))));
    global0 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = func_4(u_input.a.x, func_1(u_input.a, !var_1.c, Struct_3(18427i, var_1.b, !var_1.c, firstTrailingBit(~vec4<u32>(44705u, u_input.b.x, u_input.b.x, 19267u)))), !(!select(vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(false, true, var_1.c, true), var_1.c || false)), var_3.x < 741f);
}

