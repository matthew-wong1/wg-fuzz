struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<bool>(true, true, false), false);

var<private> global1: array<f32, 28> = array<f32, 28>(1000f, -712f, 1083f, 968f, -1514f, 1277f, 124f, -1164f, -1000f, 1000f, 817f, -1202f, 1878f, 667f, 232f, 110f, 1768f, 705f, 2555f, -961f, -690f, -1991f, 1649f, 344f, -438f, 469f, -615f, -436f);

var<private> global2: f32 = -741f;

var<private> global3: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(986f, 633f, -1283f), vec3<f32>(-1103f, 1163f, 1235f), vec3<f32>(1035f, 1528f, -1241f), vec3<f32>(-290f, 2181f, -670f), vec3<f32>(-1462f, -1418f, -640f), vec3<f32>(-1000f, -768f, 1479f), vec3<f32>(-3149f, 1599f, 807f), vec3<f32>(-1159f, 746f, 103f), vec3<f32>(-530f, 1000f, -957f), vec3<f32>(-681f, 1000f, 124f), vec3<f32>(440f, 1208f, -2074f), vec3<f32>(-256f, 191f, -2235f), vec3<f32>(1000f, -506f, -930f), vec3<f32>(1000f, -1418f, 931f), vec3<f32>(671f, 1000f, -749f), vec3<f32>(-441f, 693f, 1671f), vec3<f32>(292f, -336f, -255f), vec3<f32>(967f, 1000f, -344f), vec3<f32>(-621f, -1167f, -1585f), vec3<f32>(-589f, 123f, 252f), vec3<f32>(-1574f, 210f, -394f), vec3<f32>(250f, -1000f, 1384f), vec3<f32>(1572f, 229f, -1858f), vec3<f32>(-2646f, 700f, 149f), vec3<f32>(-668f, -321f, -653f), vec3<f32>(-1362f, -310f, -1333f), vec3<f32>(-1333f, 687f, -270f), vec3<f32>(754f, 1000f, -509f), vec3<f32>(958f, -184f, 945f), vec3<f32>(1387f, 2371f, -1381f));

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(13088u, vec3<bool>(true, true, false), true), Struct_1(4294967295u, vec3<bool>(false, true, true), false), Struct_1(1u, vec3<bool>(true, false, false), false), Struct_1(99067u, vec3<bool>(true, true, true), false), Struct_1(27518u, vec3<bool>(false, true, false), false), Struct_1(77284u, vec3<bool>(true, true, true), true), Struct_1(4396u, vec3<bool>(true, true, false), true), Struct_1(4294967295u, vec3<bool>(false, true, true), true), Struct_1(0u, vec3<bool>(true, true, false), false), Struct_1(0u, vec3<bool>(false, false, true), false), Struct_1(0u, vec3<bool>(false, true, false), true), Struct_1(0u, vec3<bool>(true, false, true), true), Struct_1(0u, vec3<bool>(true, false, false), false), Struct_1(55449u, vec3<bool>(true, true, true), true), Struct_1(1u, vec3<bool>(true, false, true), false), Struct_1(70155u, vec3<bool>(false, false, false), true), Struct_1(45543u, vec3<bool>(false, false, false), true), Struct_1(52323u, vec3<bool>(true, true, true), false), Struct_1(4294967295u, vec3<bool>(true, false, false), false), Struct_1(1u, vec3<bool>(true, true, false), false), Struct_1(4294967295u, vec3<bool>(false, false, true), true), Struct_1(35879u, vec3<bool>(false, true, true), true), Struct_1(52183u, vec3<bool>(true, false, false), true), Struct_1(18551u, vec3<bool>(false, false, true), false), Struct_1(443u, vec3<bool>(false, true, true), false), Struct_1(15660u, vec3<bool>(true, false, true), false), Struct_1(27837u, vec3<bool>(true, false, false), false), Struct_1(52240u, vec3<bool>(true, false, true), false), Struct_1(1375u, vec3<bool>(true, false, true), true), Struct_1(0u, vec3<bool>(false, true, false), false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = array<vec3<f32>, 30>();
    global4 = array<Struct_1, 30>();
    global0 = global4[_wgslsmith_index_u32(~(~(~67294u)), 30u)];
    let var_0 = global4[_wgslsmith_index_u32(~arg_0.a, 30u)];
    var var_1 = !(!var_0.b.zz);
    return max(1u >> (~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, u_input.b), 0u << (arg_0.a % 32u), 77907u) % 32u), 20181u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(func_3(global4[_wgslsmith_index_u32(reverseBits(~1u), 30u)]), _wgslsmith_clamp_u32(25292u, global0.a, 1u), 1u, global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(min(39312u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(94521u, 10166u, u_input.b, global0.a), vec4<u32>(global0.a, u_input.b, 80865u, 0u)))), 28u)], 2336f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 28u)]))) - global3[_wgslsmith_index_u32(0u ^ var_0.x, 30u)]);
    global2 = global1[_wgslsmith_index_u32(var_0.x, 28u)];
    global1 = array<f32, 28>();
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.yz))))))));
    return global4[_wgslsmith_index_u32(firstTrailingBit(countOneBits(_wgslsmith_mod_u32(var_0.x, countOneBits(3179u)))), 30u)];
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    global1 = array<f32, 28>();
    var var_0 = func_2();
    let var_1 = u_input.a.yz;
    var var_2 = Struct_5(vec3<bool>(true, false, arg_2 != -3836i), _wgslsmith_clamp_vec3_u32(~vec3<u32>(3231u, var_0.a, u_input.b) | select(vec3<u32>(u_input.b, global0.a, arg_0.b), vec3<u32>(var_0.a, 38352u, var_0.a), vec3<bool>(global0.c, var_0.b.x, global0.c)), ~vec3<u32>(global0.a, 43347u, var_0.a), vec3<u32>(_wgslsmith_add_u32(global0.a, 0u), abs(u_input.b), abs(arg_0.b))) << (vec3<u32>(~_wgslsmith_mod_u32(global0.a, u_input.b), min(u_input.b | 4294967295u, global0.a >> (arg_0.b % 32u)), 130960u) % vec3<u32>(32u)), arg_0);
    var var_3 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(196f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_0.a, 28u)])))))));
    return 28730u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((0u ^ global0.a) ^ ~func_1(Struct_3(global0.c, u_input.b, global0.c), select(global0.b.yx, global0.b.xz, false), ~(-47241i)), vec3<bool>(true || any(vec3<bool>(global0.c, global0.b.x, global0.b.x)), global0.b.x, all(vec3<bool>(true, false, !global0.b.x))), all(func_2().b.yx));
    let var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, u_input.b), vec2<u32>(63346u, u_input.b)) >> (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), global0.a), ~(vec2<u32>(1u, u_input.b) | vec2<u32>(var_0.a, u_input.b))), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(12012u, global0.a)), ~vec2<u32>(var_0.a, 1u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4539u, 41058u)) % vec2<u32>(32u))));
    global0 = global4[_wgslsmith_index_u32(30300u, 30u)];
    var var_2 = select(!vec4<bool>(false, all(vec4<bool>(false, false, global0.c, true)), true, false), select(!select(!vec4<bool>(false, true, false, var_0.c), !vec4<bool>(global0.b.x, false, false, var_0.b.x), !vec4<bool>(false, false, global0.b.x, global0.c)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(108669u, 28u)] <= global1[_wgslsmith_index_u32(26868u, 28u)], true, u_input.b == global0.a), vec4<bool>(true, true, 12752u <= var_0.a, true), !vec4<bool>(false, var_0.b.x, global0.b.x, true)), !select(!vec4<bool>(global0.b.x, true, global0.c, var_0.b.x), select(vec4<bool>(global0.b.x, var_0.b.x, global0.b.x, global0.c), vec4<bool>(false, true, false, false), true), vec4<bool>(global0.c, var_0.b.x, false, global0.c))), false);
    var var_3 = func_2().b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -reverseBits(45907i) & _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.zy), max(4294967295u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, global1[_wgslsmith_index_u32(global0.a, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], -898f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, global1[_wgslsmith_index_u32(20971u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], -176f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(710f, -268f, global1[_wgslsmith_index_u32(u_input.b, 28u)], -1427f), vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 28u)], global1[_wgslsmith_index_u32(13192u, 28u)], 394f, global1[_wgslsmith_index_u32(global0.a, 28u)]))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(global0.a, 28u)], -421f, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<f32>(-344f, global1[_wgslsmith_index_u32(u_input.b, 28u)], 1000f, global1[_wgslsmith_index_u32(17590u, 28u)]))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(~u_input.b, 28u)], -1031f, _wgslsmith_f_op_f32(-281f * global1[_wgslsmith_index_u32(var_1.x, 28u)]), _wgslsmith_f_op_f32(abs(-261f)))))), var_0.a << (max(1u, func_3(Struct_1(74407u, vec3<bool>(var_2.x, var_2.x, var_0.c), false)) | global0.a) % 32u));
}

