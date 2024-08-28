struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-15239i, 2147483647i, 44177i), vec3<i32>(-67045i, 0i, -35135i), vec3<i32>(i32(-2147483648), 18715i, 14361i), vec3<i32>(-30186i, 1i, 4141i), vec3<i32>(-89262i, -44947i, 5358i), vec3<i32>(-44586i, 2147483647i, 0i), vec3<i32>(41027i, 0i, -18090i));

var<private> global2: vec4<i32> = vec4<i32>(-28544i, 41939i, -18132i, 2147483647i);

var<private> global3: array<Struct_5, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    global0 = array<vec3<i32>, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(444f * -1162f) * arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))))));
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) - _wgslsmith_f_op_vec4_f32(-arg_0.b))), 1u, u_input.a.xz);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(f32(-1f) * -1054f))))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<f32> {
    global0 = array<vec3<i32>, 18>();
    global1 = array<vec3<i32>, 7>();
    let var_0 = Struct_3(abs(~3128i), -992f, Struct_1(all(vec3<bool>(true, true, true)), vec4<f32>(-249f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(328f)) * _wgslsmith_div_f32(arg_0, arg_0)), -2482f), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, u_input.a.x), 1u) << (~_wgslsmith_mod_u32(u_input.a.x, u_input.c) % 32u), _wgslsmith_sub_vec2_u32(u_input.a.ww, ~u_input.a.ww) << (vec2<u32>(u_input.a.x, u_input.c) % vec2<u32>(32u))), ~(~(~u_input.a.wyx) ^ u_input.a.yzz), arg_1.x);
    var var_1 = var_0;
    var var_2 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(var_0.c.a, false), vec2<bool>(var_0.c.a, var_1.c.a), false)), !select(vec2<bool>(true, true), vec2<bool>(var_0.c.a, var_0.c.a), var_1.c.a), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), var_0.c.a)), !select(select(vec2<bool>(false, false), vec2<bool>(var_0.c.a, var_1.c.a), true), !vec2<bool>(var_0.c.a, var_0.c.a), true)), select(select(vec2<bool>(true, true), !vec2<bool>(false, var_0.c.a), select(select(vec2<bool>(false, var_0.c.a), vec2<bool>(var_0.c.a, var_1.c.a), false), select(vec2<bool>(false, var_0.c.a), vec2<bool>(var_1.c.a, var_0.c.a), vec2<bool>(var_1.c.a, true)), any(vec3<bool>(var_1.c.a, true, var_1.c.a)))), select(select(!vec2<bool>(false, var_0.c.a), vec2<bool>(true, true), select(vec2<bool>(var_1.c.a, true), vec2<bool>(false, true), vec2<bool>(true, var_1.c.a))), !select(vec2<bool>(var_0.c.a, true), vec2<bool>(var_0.c.a, true), vec2<bool>(var_0.c.a, var_0.c.a)), (var_1.a <= 0i) & select(true, true, var_1.c.a)), vec2<bool>(var_0.c.a, _wgslsmith_f_op_f32(-var_1.b) >= 1000f)), true & (true && (_wgslsmith_clamp_i32(-2147483647i, -7552i, u_input.b.x) == _wgslsmith_mult_i32(global2.x, 7914i))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.e, 450f, -255f, var_1.c.b.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = ~(~(~(~18765u)));
    global3 = array<Struct_5, 14>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-755f)) * _wgslsmith_f_op_f32(max(arg_1.x, -1000f)))));
    var var_2 = Struct_1(false != arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(-1028f - -1219f)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-1068f * 1007f)), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1150f))), ~(_wgslsmith_sub_u32(~var_0, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0))) | u_input.c), reverseBits(~(~u_input.a.xy)));
    global1 = array<vec3<i32>, 7>();
    return _wgslsmith_div_vec3_u32(u_input.a.ywy, min(~_wgslsmith_mult_vec3_u32(u_input.a.yzz, _wgslsmith_clamp_vec3_u32(u_input.a.zzx, u_input.a.zyx, u_input.a.ywz)), vec3<u32>(reverseBits(var_0) & _wgslsmith_div_u32(var_0, var_0), u_input.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, 0u, 11532u), vec4<u32>(0u, 0u, 0u, 1u)), ~0u)));
}

fn func_2(arg_0: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 15704u), u_input.c, ~32395u), _wgslsmith_sub_vec3_u32(u_input.a.zyw, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32238u), u_input.a.yww))), func_4(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(1181f, vec3<f32>(-355f, -333f, -688f)))))));
    let var_1 = firstLeadingBit(3619u);
    var var_2 = Struct_1(true && !select(all(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, false)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(727f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2722f))), -458f, -607f)), 4294967295u, ~min(u_input.a.xw, ~(~u_input.a.xx)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1340f, var_2.b.x, _wgslsmith_f_op_f32(func_1(Struct_1(true, vec4<f32>(-376f, var_2.b.x, 1000f, -852f), 4294967295u, var_0.yx), vec3<bool>(var_2.a, false, var_2.a), var_2.b.wwy))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.b), var_2.b, select(vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<bool>(false, true, var_2.a, var_2.a), false))))) * vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(556f))))), var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), -138f))));
    return StorageBuffer(select(u_input.b, u_input.b, vec2<bool>(any(vec4<bool>(true, var_2.a, var_2.a, false)), true)), ~(abs(u_input.a | u_input.a) ^ select(u_input.a << (vec4<u32>(1u, var_2.c, var_2.d.x, 20244u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_1, var_1, 45667u), !var_2.a)), firstTrailingBit(u_input.a.zzy), var_0.x << (51543u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-291f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1254f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(min(806f, 111f))) + -514f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1011f + _wgslsmith_f_op_f32(func_1(Struct_1(false, vec4<f32>(-148f, 657f, -1216f, 725f), 0u, vec2<u32>(u_input.a.x, 103886u)), vec3<bool>(false, true, true), vec3<f32>(-2458f, 162f, -1331f)))), _wgslsmith_f_op_f32(f32(-1f) * -540f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) - _wgslsmith_f_op_f32(-746f + 265f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1231f, -893f)))))));
    let x = u_input.a;
    s_output = func_2(-43306i);
}

