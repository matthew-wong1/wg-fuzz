struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_2(true, 2250f);
    return u_input.e.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_2(true, 1564f), 273f, Struct_2(arg_2.x, arg_0.x), Struct_2(select(true, true, false & arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -650f), 1f))));
    var_0 = Struct_4(var_0.a);
    var var_1 = Struct_1(min(1u, func_3(!select(vec3<bool>(false, arg_2.x, var_0.a.a.a), vec3<bool>(true, false, false), vec3<bool>(false, arg_2.x, false)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 17333u, 21743u, 0u), vec4<u32>(1u, 51327u, 94577u, u_input.e.x)), _wgslsmith_f_op_vec2_f32(sign(arg_0.zy)))), _wgslsmith_add_u32(u_input.c, 0u), vec4<bool>(arg_2.x, !(!var_0.a.c.a != true), select(!(!arg_2.x), var_0.a.a.a, -793f != var_0.a.d.b), false), abs(u_input.b.x), !(!vec2<bool>(201f >= var_0.a.d.b, u_input.b.x < -3712i)));
    var_0 = Struct_4(Struct_3(Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.b) - _wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.e.x, var_0.a.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1050f))), Struct_2(min(u_input.e.x, u_input.c) > _wgslsmith_add_u32(152139u, var_1.a), 1052f), Struct_2(!var_0.a.c.a != arg_2.x, -1379f), var_0.a.e));
    var var_2 = 17179i;
    return Struct_1(var_1.a, 0u, vec4<bool>(!var_0.a.c.a, !var_0.a.d.a, all(vec4<bool>(select(arg_2.x, true, false), var_0.a.d.b > 258f, true, arg_2.x)), true), max(-47109i, var_1.d), select(vec2<bool>(true, false), vec2<bool>(all(select(vec4<bool>(arg_2.x, true, var_1.c.x, true), vec4<bool>(var_1.e.x, true, false, arg_2.x), var_0.a.d.a)), true), vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.a.a.b) < _wgslsmith_f_op_f32(1553f - -1000f))));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec2<bool>(arg_0.c.x, arg_0.c.x);
    let var_1 = ~(arg_0.b | u_input.e.x);
    let var_2 = Struct_1(_wgslsmith_add_u32(firstTrailingBit(~u_input.e.x), firstTrailingBit(abs(~4294967295u))), 4294967295u, !(!arg_0.c), -(~_wgslsmith_div_i32(arg_0.d << (22604u % 32u), u_input.a.x ^ u_input.b.x)), arg_0.c.xx);
    var var_3 = ~u_input.b.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(abs(766f)))), -784f) + 1546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(ceil(1000f))))), -2605f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1012f * 2786f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1185f), -373f, true))))));
    return vec4<i32>(~(-1i), 1i, -(var_2.d & max(~51040i, ~u_input.a.x)), _wgslsmith_dot_vec2_i32(~max(u_input.a, u_input.b) >> ((~u_input.d.xx << (~u_input.d.xz % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(u_input.b)));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(Struct_2(all(vec2<bool>(arg_1, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 452f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f * -480f)))), Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(512f, 211f, true)))), Struct_2(!(true | arg_1), -381f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1913f, 680f, 579f, 1196f))))));
    let var_1 = vec3<bool>(arg_1, false, false);
    var var_2 = u_input.d.xx;
    var_2 = u_input.d.zy;
    var var_3 = Struct_4(Struct_3(var_0.a.c, var_0.a.b, var_0.a.c, var_0.a.d, _wgslsmith_f_op_vec4_f32(var_0.a.e + vec4<f32>(var_0.a.a.b, _wgslsmith_f_op_f32(-var_0.a.a.b), _wgslsmith_f_op_f32(f32(-1f) * -810f), var_0.a.d.b))));
    return var_3.a.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    return func_5(func_4(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_2.a.e.yyw, arg_1.a.e.yxx, false)))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -3766i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.a.x, 30688i, u_input.a.x)), -10101i, -u_input.a.x), !(!vec2<bool>(arg_0.x, false)))), true, -u_input.b);
}

fn func_6(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.d, countOneBits(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(18290u, 0u, u_input.e.x), u_input.d))));
    var var_2 = arg_1.a.d;
    let var_3 = u_input.d.x;
    var_0 = 1f;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_6(true | any(vec2<bool>(true, true)), Struct_4(Struct_3(Struct_2(true, 476f), _wgslsmith_f_op_f32(sign(1290f)), Struct_2(false, -1144f), func_1(vec2<bool>(false, true), Struct_4(Struct_3(Struct_2(true, -1259f), 483f, Struct_2(false, -802f), Struct_2(false, 350f), vec4<f32>(-1926f, 333f, 877f, 1263f))), Struct_4(Struct_3(Struct_2(false, -468f), -2171f, Struct_2(false, 1256f), Struct_2(true, 1781f), vec4<f32>(369f, -1384f, 1139f, -148f)))), vec4<f32>(-117f, -477f, -221f, 1008f)))));
    var_0 = Struct_4(func_6(true, Struct_4(func_6(func_5(vec4<i32>(u_input.a.x, 4329i, -4760i, 65810i), true, u_input.a).a, Struct_4(Struct_3(Struct_2(var_0.a.c.a, 1000f), 1735f, var_0.a.d, var_0.a.d, var_0.a.e))))));
    var var_1 = vec3<f32>(2458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(1449f)))) + var_0.a.a.b), var_0.a.d.b);
    var var_2 = all(vec2<bool>((max(u_input.e.x, 4294967295u) & ~13150u) < (4294967295u | u_input.d.x), true));
    var_2 = var_0.a.c.a;
    var_2 = any(!select(select(select(vec4<bool>(false, var_0.a.a.a, var_0.a.a.a, true), vec4<bool>(false, false, var_0.a.a.a, var_0.a.a.a), true), !vec4<bool>(var_0.a.c.a, var_0.a.a.a, true, var_0.a.c.a), vec4<bool>(false, var_0.a.c.a, var_0.a.d.a, false)), !vec4<bool>(false, true, var_0.a.d.a, var_0.a.a.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, 4772u, u_input.c) | vec4<u32>(u_input.c, 22201u, u_input.d.x, 39132u), vec4<u32>(u_input.d.x, 28532u, 12705u, u_input.d.x) >> (vec4<u32>(0u, 1u, 0u, u_input.c) % vec4<u32>(32u))) & max(~vec4<u32>(u_input.c, u_input.d.x, u_input.e.x, 1u), vec4<u32>(u_input.c, 1u, u_input.d.x, u_input.c))), -806f, abs(vec2<i32>(~(~u_input.a.x), 965i)), u_input.b);
}

