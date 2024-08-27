struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-740f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))) * vec2<f32>(arg_0.a.x, -716f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.b.x, -606f)), _wgslsmith_f_op_f32(-arg_0.a.x))))))));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(~arg_1 ^ _wgslsmith_clamp_u32(4294967295u, 11058u, 75109u), ~_wgslsmith_sub_u32(1u, arg_1))));
    let var_2 = arg_0.c;
    var_1 = 18511u;
    global0 = array<Struct_4, 29>();
    return true;
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = (_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~(~u_input.a.x)) | max(~75972u, ~u_input.d.x)) >> (1u % 32u);
    var var_1 = !vec4<bool>(true, true | func_3(Struct_5(vec4<f32>(835f, 433f, -1338f, -1072f), vec3<f32>(1057f, 647f, -1065f), Struct_1(39740u, vec4<bool>(true, true, false, true), u_input.a.x, vec2<i32>(arg_0.x, -5850i))), ~50184u), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), -7915i != u_input.e.x)), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1142f, -1756f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-574f))))))));
    var_1 = !(!select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_1.x, true, true, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(false, false, var_1.x, var_1.x)), false), select(vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, true, false, true), var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)))));
    var_1 = select(select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, true), true), vec4<bool>(~u_input.b.x > (u_input.b.x >> (u_input.a.x % 32u)), select(true, all(var_1.zz), false), var_1.x, var_1.x), false), select(select(vec4<bool>(true, any(var_1.yxz), select(false, false, false), true), vec4<bool>(true, select(false, var_1.x, var_1.x), true && var_1.x, any(vec4<bool>(false, false, false, var_1.x))), vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, true, true)), all(vec4<bool>(true, false, false, true)), true, true)), select(vec4<bool>(u_input.a.x <= 0u, true, all(vec4<bool>(false, true, true, true)), false), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), var_1.x), select(vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, false, false, var_1.x), false))), select(vec4<bool>(true, func_3(Struct_5(vec4<f32>(-316f, 2250f, var_2.x, -1257f), vec3<f32>(var_2.x, var_2.x, var_2.x), Struct_1(9789u, vec4<bool>(false, var_1.x, var_1.x, var_1.x), 0u, vec2<i32>(u_input.e.x, 1i))), var_0), all(vec3<bool>(false, false, false)), true | var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), any(vec2<bool>(var_1.x, true))), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, false, var_1.x, false), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(true, var_1.x, true, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x))))), false);
    return u_input.d;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = vec4<u32>(~27766u, arg_1.b.c, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d.zxz, vec3<u32>(19586u, u_input.a.x, arg_1.b.c)), 1u), ~(arg_0.b & 18739u) >> ((4294967295u ^ ~arg_1.b.c) % 32u)) ^ vec4<u32>(~(_wgslsmith_mod_u32(0u, 39015u) ^ max(arg_0.b, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.d.x, 101410u), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, arg_1.b.d.x, -2147483647i), vec4<i32>(13748i, 0i, 1i, arg_1.b.d.x), vec4<i32>(-32434i, -10830i, -1i, u_input.b.x)))), reverseBits(~(~arg_0.b)), 4294967295u);
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(~max(36425u, 1u), 2930u), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(arg_1.b.a, var_0.x)) ^ max(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, u_input.a.x, var_0.x, 12388u)), firstTrailingBit(1u)), u_input.d.x);
    var var_2 = arg_0.b;
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    global0 = array<Struct_4, 29>();
    let var_0 = select(select(vec4<bool>(true, arg_0.a.x, arg_0.b.b.x, all(arg_2.a.ww) == true), select(arg_0.b.b, arg_0.b.b, arg_0.a), true), select(arg_2.a, vec4<bool>(arg_2.a.x, all(select(vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_0.a.x), vec4<bool>(arg_0.b.b.x, arg_0.a.x, arg_0.a.x, true))), true, 4294967295u == ~u_input.a.x), arg_0.a), vec4<bool>(true, arg_1, _wgslsmith_div_f32(-846f, _wgslsmith_f_op_f32(floor(-334f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1194f)))), arg_1));
    global0 = array<Struct_4, 29>();
    var var_1 = u_input.b.x;
    let var_2 = 65249u >> (arg_0.b.a % 32u);
    return Struct_3(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, -1661f, 1000f, -278f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, -229f, -1062f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1958f, -853f, 219f))), arg_0.b), u_input.d.x), Struct_2(arg_0.a, ~(~(~var_2))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) + -605f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-264f)))), -145f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(238f, _wgslsmith_f_op_f32(abs(654f))))))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    var var_0 = 72844u | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, u_input.d.yxy), vec3<u32>(1u, 4294967295u << (0u % 32u), 1u)), countOneBits(vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.d.x), ~u_input.d.x)));
    var var_1 = func_4(global0[_wgslsmith_index_u32(38875u, 29u)], true & func_1(Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_sub_u32(u_input.a.x, 1u)), global0[_wgslsmith_index_u32(~(~u_input.a.x), 29u)], _wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(f32(-1f) * -1514f))), Struct_2(vec4<bool>(true, !(u_input.e.x < u_input.b.x), false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true))), ~(~(1u >> (u_input.a.x % 32u)))));
    var var_2 = ~u_input.a.x;
    let var_3 = var_1.d;
    global0 = array<Struct_4, 29>();
    var_0 = 28126u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

