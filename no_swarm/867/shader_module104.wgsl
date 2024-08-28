struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1i, true, false, vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<bool> {
    global0 = Struct_4(-1i, true, all(vec3<bool>(18777u < u_input.b, !(false && global0.d.x), global0.b)), vec2<bool>(global0.c, global0.b));
    global0 = Struct_4(global0.a >> (abs(~u_input.a.x & 1184u) % 32u), global0.d.x || !any(!vec3<bool>(false, global0.d.x, global0.d.x)), global0.a >= _wgslsmith_mult_i32(~_wgslsmith_sub_i32(global0.a, global0.a), firstLeadingBit(1i)), select(vec2<bool>(!global0.c, global0.c), select(vec2<bool>(global0.c, !global0.c), select(select(vec2<bool>(global0.d.x, global0.c), vec2<bool>(global0.b, false), true), select(vec2<bool>(global0.c, false), vec2<bool>(false, global0.b), vec2<bool>(false, global0.c)), global0.c | true), all(!vec3<bool>(global0.b, false, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + 655f))) != arg_0.a));
    global0 = Struct_4(_wgslsmith_sub_i32(global0.a, min(13547i, 2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 26534i), vec2<i32>(global0.a, 0i)))), false, any(vec3<bool>(all(vec3<bool>(false, false, true)) && true, true, true)), vec2<bool>(global0.d.x, global0.b));
    var var_0 = Struct_1(~_wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(u_input.b, 18922u)), _wgslsmith_mod_u32(~arg_2.x, ~u_input.a.x)), any(!(!global0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -281f, _wgslsmith_f_op_f32(f32(-1f) * -402f))) + arg_1));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x)))), 384f), var_0.c.xx);
    return vec4<bool>(var_0.b, var_0.b && any(vec3<bool>(global0.b & var_0.b, false, -2147483647i >= global0.a)), var_0.b, false);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> vec2<bool> {
    let var_0 = ~global0.a;
    let var_1 = !func_3(Struct_5(_wgslsmith_f_op_f32(min(-1170f, _wgslsmith_f_op_f32(f32(-1f) * -1992f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1, -1938f)), ~(~(~vec2<u32>(u_input.a.x, 13601u))));
    var var_2 = 102784u;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(753f, _wgslsmith_f_op_f32(f32(-1f) * -337f))) * -769f));
    global0 = Struct_4(global0.a, arg_2.a.x, false, func_3(var_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1000f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-905f, var_3.a, arg_1) - vec3<f32>(arg_0, 449f, -2035f)))), u_input.a.yx).wy);
    return var_1.zx;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = -133f;
    var var_1 = var_0;
    var var_2 = Struct_1(~62467u, all(select(!func_3(Struct_5(var_0), vec3<f32>(var_0, 889f, 916f), arg_2), !vec4<bool>(false, false, true, global0.d.x), !any(arg_3))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-986f, -1541f, -1439f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1365f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 837f, -422f) + vec3<f32>(var_0, 1335f, var_0))), vec3<bool>(!global0.d.x, func_2(-1204f, 1241f, arg_0, arg_0.a.x).x, u_input.b != arg_1.x))))));
    var var_3 = u_input.a.yy;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-780f, _wgslsmith_f_op_f32(var_2.c.x + var_2.c.x), _wgslsmith_div_f32(var_0, 152f), _wgslsmith_f_op_f32(select(1000f, var_2.c.x, true))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.c.x, 1401f, -1000f, var_2.c.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, 817f, -1530f, var_2.c.x)))));
    return !(!func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x))), 1000f, arg_0, true));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = Struct_4(-49976i, !(!(global0.a != 0i)), select(arg_0.b, true, !(!global0.d.x)), !func_4(Struct_3(func_2(-133f, 223f, Struct_3(vec2<bool>(global0.b, global0.c)), false)), countOneBits(vec4<u32>(741u, 17828u, u_input.b, arg_0.a)), abs(u_input.a.zz), !select(vec3<bool>(global0.d.x, arg_0.b, global0.d.x), vec3<bool>(false, false, true), vec3<bool>(false, global0.d.x, arg_0.b))));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(609f + 914f));
    let var_1 = any(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-299f, 632f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1543f, -921f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1312f) - vec2<f32>(1088f, -527f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(298f, 719f))))) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(1u, true, vec3<f32>(-1000f, 1298f, 880f)))))));
    var var_1 = Struct_1(firstTrailingBit(u_input.b), true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -441f, -664f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.xy + _wgslsmith_f_op_vec2_f32(var_1.c.xy - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), var_1.c.zy)))));
    var var_2 = abs(1i);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.c.x) + -519f))));
    var var_4 = var_1.a;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(34800u, false, var_1.c))).x, _wgslsmith_f_op_f32(step(-806f, _wgslsmith_f_op_f32(var_1.c.x * var_3.a)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.c.yx + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_3.a), vec2<f32>(1802f, -434f)))), _wgslsmith_f_op_vec2_f32(-var_1.c.zy)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~vec4<u32>(u_input.b, 26231u, 15219u, 0u)) & (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 26339u, 134238u), vec4<u32>(14674u, 34656u, 25063u, u_input.a.x)) << (~vec4<u32>(46216u, u_input.a.x, 26089u, u_input.b) % vec4<u32>(32u))), countOneBits(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b, 0u, 16934u, 89669u)), _wgslsmith_mult_vec4_u32(vec4<u32>(12234u, u_input.b, var_1.a, var_1.a), vec4<u32>(1u, var_1.a, var_1.a, u_input.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(184f, 530f)), _wgslsmith_f_op_f32(f32(-1f) * -1747f)) * _wgslsmith_f_op_vec3_f32(-var_1.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, -756f, -2058f), var_1.c))))));
}

