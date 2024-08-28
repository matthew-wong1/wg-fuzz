struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<bool>(true, false), i32(-2147483648), 22692u), Struct_1(vec2<bool>(false, true), -13828i, 76308u), Struct_1(vec2<bool>(false, true), i32(-2147483648), 23455u), Struct_1(vec2<bool>(true, false), i32(-2147483648), 25056u), Struct_1(vec2<bool>(true, true), -47479i, 28495u), Struct_1(vec2<bool>(false, false), 0i, 25556u), Struct_1(vec2<bool>(true, false), 20046i, 1u), Struct_1(vec2<bool>(true, false), 38775i, 0u), Struct_1(vec2<bool>(true, false), 36948i, 30847u), Struct_1(vec2<bool>(true, true), -1i, 11431u), Struct_1(vec2<bool>(false, true), 0i, 7565u), Struct_1(vec2<bool>(true, true), -1i, 20493u), Struct_1(vec2<bool>(false, false), 2983i, 54996u), Struct_1(vec2<bool>(true, false), -17397i, 0u), Struct_1(vec2<bool>(false, true), i32(-2147483648), 11576u), Struct_1(vec2<bool>(true, false), 2147483647i, 45577u), Struct_1(vec2<bool>(true, false), -1i, 40024u), Struct_1(vec2<bool>(false, true), -51260i, 4294967295u), Struct_1(vec2<bool>(true, false), 51918i, 1u), Struct_1(vec2<bool>(true, false), -7697i, 3534u), Struct_1(vec2<bool>(true, false), 55022i, 1u), Struct_1(vec2<bool>(false, true), 2147483647i, 119979u), Struct_1(vec2<bool>(true, true), -1i, 0u), Struct_1(vec2<bool>(false, true), -1i, 68287u), Struct_1(vec2<bool>(false, true), 13245i, 65231u), Struct_1(vec2<bool>(true, true), 1i, 28258u), Struct_1(vec2<bool>(false, true), 2147483647i, 37781u));

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(true, true), 15715i, 4294967295u), Struct_1(vec2<bool>(false, true), -1i, 28739u), Struct_1(vec2<bool>(false, true), 0i, 80188u), Struct_1(vec2<bool>(false, false), 47009i, 4294967295u), Struct_1(vec2<bool>(false, false), 0i, 30217u), Struct_1(vec2<bool>(true, true), 2147483647i, 3254u), Struct_1(vec2<bool>(false, false), -73225i, 12918u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global0 = array<Struct_1, 27>();
    return Struct_1(vec2<bool>(false, false), -countOneBits(-(u_input.a << (4294967295u % 32u))), 1u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2627f, 407f, 405f, 371f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(893f, 1038f, 898f, 389f), vec4<f32>(-1898f, -1847f, -920f, 1275f)))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-242f, _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_div_f32(-1336f, 1203f), -2092f)))));
    var var_1 = min(~(~(u_input.e.zz << (u_input.e.yy % vec2<u32>(32u)))), select(u_input.e.yz, reverseBits(vec2<u32>(8589u, u_input.e.x)), !func_1(var_0).a.x)) << (vec2<u32>((u_input.e.x & u_input.e.x) << ((18909u & ~u_input.e.x) % 32u), min(4294967295u, 1u)) % vec2<u32>(32u));
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u) ^ (var_1.x | u_input.e.x), reverseBits(var_1.x)), ~abs(_wgslsmith_mod_u32(0u, var_1.x)));
    let var_3 = Struct_1(select(func_1(_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(var_0.x, 568f, var_0.x, -313f))).a, vec2<bool>(all(vec3<bool>(true, true, true)), select(true, true, true)), vec2<bool>(true & all(vec2<bool>(false, true)), true)), ~u_input.c, firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.e.xx, firstLeadingBit(vec2<u32>(var_1.x, var_1.x)))));
    var_2 = _wgslsmith_add_vec2_u32(reverseBits(u_input.e.zy), ~(u_input.e.zz & u_input.e.xx));
    return var_3.a.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = !func_3();
    let var_1 = Struct_1(vec2<bool>(false, any(select(select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, false), false), select(vec3<bool>(false, arg_0.a.x, false), vec3<bool>(false, true, false), arg_0.a.x), !vec3<bool>(arg_0.a.x, true, false)))), 40085i, countOneBits(_wgslsmith_clamp_u32(~u_input.e.x, reverseBits(68106u), 0u) & _wgslsmith_div_u32(u_input.e.x >> (1u % 32u), select(4294967295u, arg_0.c, arg_0.a.x))));
    var var_2 = vec2<bool>(all(arg_0.a), any(arg_0.a));
    global0 = array<Struct_1, 27>();
    var_2 = select(vec2<bool>(arg_0.a.x, true), var_1.a, !var_2.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -(~32626i);
    let var_1 = !vec4<bool>(false, true, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_mult_i32(-64986i, ~u_input.b.x) >= var_0);
    let var_2 = global1[_wgslsmith_index_u32(~6845u, 7u)];
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -602f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)))));
    var var_4 = func_2(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1361f, -444f, -595f, -1309f), vec4<f32>(-1694f, -951f, 714f, -295f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1578f, -904f, 247f, -249f), vec4<f32>(-756f, -589f, -1000f, 1354f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1327f, -2337f, 1285f, -473f) * vec4<f32>(-660f, 1159f, 1344f, -872f))))));
    let var_5 = Struct_1(vec2<bool>(false, true), ~(-34667i) | ~var_0, 4294967295u);
    global1 = array<Struct_1, 7>();
    var var_6 = max(reverseBits(~1u), ~(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(39734u, 4294967295u, 1u, 10560u), vec4<u32>(72641u, var_2.c, 28740u, 4444u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(firstLeadingBit(vec3<u32>(var_2.c, var_2.c, var_2.c)), ~(~vec3<u32>(105171u, 1u, 0u)), func_1(vec4<f32>(1260f, -980f, -2028f, 899f)).a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(977f, -164f, 286f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(140f, 234f, -1116f), vec3<f32>(1442f, 1014f, 1398f), var_1.x))))));
}

