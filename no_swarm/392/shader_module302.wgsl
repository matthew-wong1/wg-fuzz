struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(true, vec2<bool>(false, false), vec2<bool>(false, true), -991f, Struct_1(1u, vec2<bool>(false, false), vec4<i32>(-1i, i32(-2147483648), 11181i, 2147483647i))), Struct_2(false, vec2<bool>(false, true), vec2<bool>(true, true), 639f, Struct_1(1u, vec2<bool>(true, true), vec4<i32>(-1i, 2147483647i, 2147483647i, 0i))), Struct_2(false, vec2<bool>(false, false), vec2<bool>(false, true), -867f, Struct_1(4294967295u, vec2<bool>(false, true), vec4<i32>(1i, -11368i, 1i, 21423i))), Struct_2(true, vec2<bool>(false, true), vec2<bool>(true, true), -456f, Struct_1(16283u, vec2<bool>(true, true), vec4<i32>(20074i, -14891i, -15721i, 2147483647i))), Struct_2(true, vec2<bool>(true, true), vec2<bool>(false, false), 1199f, Struct_1(35213u, vec2<bool>(true, true), vec4<i32>(64159i, 16767i, 0i, -1i))), Struct_2(false, vec2<bool>(true, false), vec2<bool>(true, false), -731f, Struct_1(64235u, vec2<bool>(false, false), vec4<i32>(9828i, 2147483647i, 1i, 1i))), Struct_2(true, vec2<bool>(false, true), vec2<bool>(true, false), -222f, Struct_1(56348u, vec2<bool>(true, true), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648)))), Struct_2(true, vec2<bool>(true, true), vec2<bool>(false, false), -822f, Struct_1(1u, vec2<bool>(false, true), vec4<i32>(-1i, i32(-2147483648), 74820i, 0i))), Struct_2(true, vec2<bool>(true, true), vec2<bool>(true, true), -519f, Struct_1(0u, vec2<bool>(false, true), vec4<i32>(42683i, -40522i, 14251i, -1i))));

var<private> global2: i32 = 13023i;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = vec2<u32>(1u, countOneBits(1u)) & countOneBits(vec2<u32>(1u, abs(arg_0.e.a)));
    var var_1 = !(!arg_0.e.b.x);
    global0 = array<vec2<u32>, 4>();
    let var_2 = arg_0.e;
    let var_3 = 1u;
    return vec3<u32>(0u, var_3, arg_0.e.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = array<vec2<u32>, 4>();
    let var_0 = arg_0.d;
    var var_1 = arg_0.d;
    let var_2 = ~(-(vec3<i32>(-1i) * -arg_3.c.yyy));
    global2 = _wgslsmith_mod_i32(firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 45196i), arg_1.yx)), ~(~56801i));
    return ~2980u;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    global1 = array<Struct_2, 9>();
    global2 = min(-38066i, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), arg_3.e.c.ww) & abs(u_input.a)));
    let var_0 = Struct_2(arg_1.x, !vec2<bool>(arg_1.x, false), !arg_3.b, arg_3.d, arg_3.e);
    let var_1 = true;
    var var_2 = var_0.e.c;
    return arg_3.d;
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 25970u, 4294967295u), vec3<bool>(true, true, true)), ~vec3<u32>(1u, 4294967295u, 32422u), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 88913u, 26893u), vec3<u32>(92994u, 14904u, 9609u))), func_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1091u, 4u)], global0[_wgslsmith_index_u32(68193u, 4u)]), 9u)], ~vec3<u32>(66960u, 1u, 28002u)), true), vec3<u32>(~(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u) << (~4183u % 32u)), 4294967295u, ~_wgslsmith_mod_u32(0u, ~43864u))), 9u)];
    let var_1 = true;
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1844f)) * _wgslsmith_f_op_f32(func_4(vec2<i32>((i32(-1i) * -536i) & abs(u_input.c), 38787i), select(select(select(vec3<bool>(true, false, var_1), vec3<bool>(false, var_0.b.x, false), true), !vec3<bool>(false, var_1, var_1), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(var_0.b.x, var_1, var_1))), vec3<bool>(true, true, var_1), var_0.e.b.x), vec3<u32>(var_0.e.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(11943u, var_0.e.a), abs(var_0.e.a)), var_0.e.a), global1[_wgslsmith_index_u32(~func_3(Struct_2(var_1, vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), var_0.d, Struct_1(67172u, vec2<bool>(true, var_1), var_0.e.c)), -vec3<i32>(var_0.e.c.x, 18907i, -6764i), ~vec4<u32>(var_0.e.a, 14943u, var_0.e.a, 1u), var_0.e), 9u)])));
    var var_4 = Struct_1(var_0.e.a, !select(select(var_0.b, !vec2<bool>(var_0.e.b.x, var_1), var_0.c), vec2<bool>(true, var_0.b.x), select(select(vec2<bool>(var_1, var_0.e.b.x), vec2<bool>(false, var_1), var_1), !vec2<bool>(true, var_0.e.b.x), true)), select(select(var_0.e.c << (vec4<u32>(var_0.e.a, var_0.e.a, 4016u, var_0.e.a) % vec4<u32>(32u)), var_0.e.c, select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, var_0.e.b.x, var_1))), var_0.e.c, 2147483647i < countOneBits(var_2)) << ((~(~vec4<u32>(1u, var_0.e.a, var_0.e.a, var_0.e.a)) ^ ((vec4<u32>(39347u, var_0.e.a, var_0.e.a, 4294967295u) ^ vec4<u32>(72725u, 34838u, 84315u, 2273u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(7729u, 0u, var_0.e.a, 0u), vec4<u32>(25402u, 79980u, var_0.e.a, 24934u), vec4<u32>(16980u, 1u, var_0.e.a, 2714u)))) % vec4<u32>(32u)));
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 15697i;
    var var_0 = func_1();
    let var_1 = 1u;
    var var_2 = Struct_1(~48124u, var_0.b, var_0.c);
    var_0 = Struct_1(var_0.a | var_0.a, vec2<bool>(func_1().b.x | any(vec3<bool>(var_2.b.x, var_0.b.x, true)), var_0.b.x), ~var_0.c);
    var var_3 = var_0.b.x;
    global1 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(var_1, 4u)], vec2<u32>(var_1, func_1().a)), ~(_wgslsmith_div_u32(func_3(Struct_2(false, vec2<bool>(var_2.b.x, false), var_0.b, -1778f, Struct_1(0u, vec2<bool>(false, false), vec4<i32>(68519i, -34100i, -1i, 36760i))), vec3<i32>(u_input.c, -16336i, -1i), vec4<u32>(49557u, var_2.a, var_2.a, var_0.a), Struct_1(var_0.a, var_0.b, var_0.c)), select(78610u, var_0.a, var_2.b.x)) ^ ~(var_1 | var_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-341f * -1465f), -1366f), _wgslsmith_div_f32(669f, _wgslsmith_f_op_f32(floor(-353f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(123f + 1000f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1385f, _wgslsmith_f_op_f32(1000f + -291f), _wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(-290f + -156f)))), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.c.x), select(vec2<i32>(1i, -2147483647i), var_0.c.zz, vec2<bool>(false, false))));
}

