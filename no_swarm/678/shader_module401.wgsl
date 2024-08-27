struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, Struct_1(29437u, vec4<u32>(67975u, 1169u, 59022u, 0u)), vec2<f32>(-1620f, -654f), Struct_1(63841u, vec4<u32>(14782u, 4294967295u, 0u, 50296u)));

var<private> global1: bool;

var<private> global2: array<Struct_3, 14>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(1u, Struct_1(19304u, vec4<u32>(0u, 1u, 28231u, 1u)), vec2<f32>(-802f, 1798f), Struct_1(4294967295u, vec4<u32>(1u, 67454u, 0u, 47443u))), Struct_2(38079u, Struct_1(8659u, vec4<u32>(32442u, 6870u, 4294967295u, 5739u)), vec2<f32>(-212f, 129f), Struct_1(0u, vec4<u32>(26513u, 46743u, 5530u, 21900u))), Struct_2(3542u, Struct_1(4294967295u, vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), vec2<f32>(-1612f, -384f), Struct_1(0u, vec4<u32>(25848u, 1u, 4294967295u, 4294967295u))), Struct_2(78558u, Struct_1(43946u, vec4<u32>(1u, 4294967295u, 1u, 90821u)), vec2<f32>(-540f, -1250f), Struct_1(27937u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), Struct_2(12677u, Struct_1(20683u, vec4<u32>(24550u, 16444u, 4294967295u, 86687u)), vec2<f32>(323f, 461f), Struct_1(42594u, vec4<u32>(40838u, 4294967295u, 1635u, 48189u))), Struct_2(29434u, Struct_1(22825u, vec4<u32>(1640u, 0u, 60199u, 39997u)), vec2<f32>(-140f, -550f), Struct_1(4294967295u, vec4<u32>(18460u, 1u, 96444u, 20083u))), Struct_2(75288u, Struct_1(43300u, vec4<u32>(1u, 4294967295u, 27219u, 0u)), vec2<f32>(658f, -385f), Struct_1(1036u, vec4<u32>(4294967295u, 4294967295u, 21517u, 41487u))), Struct_2(0u, Struct_1(1u, vec4<u32>(0u, 12878u, 0u, 0u)), vec2<f32>(-585f, -1221f), Struct_1(8077u, vec4<u32>(40003u, 4294967295u, 21685u, 40992u))), Struct_2(4294967295u, Struct_1(1293u, vec4<u32>(4294967295u, 1u, 21827u, 4294967295u)), vec2<f32>(1000f, 210f), Struct_1(57162u, vec4<u32>(40880u, 27099u, 4294967295u, 9115u))), Struct_2(25389u, Struct_1(5374u, vec4<u32>(10469u, 1u, 0u, 0u)), vec2<f32>(151f, 2141f), Struct_1(13205u, vec4<u32>(41336u, 4294967295u, 1u, 53905u))), Struct_2(8766u, Struct_1(52559u, vec4<u32>(4294967295u, 84358u, 0u, 50032u)), vec2<f32>(-438f, -122f), Struct_1(19007u, vec4<u32>(4294967295u, 0u, 60544u, 33711u))), Struct_2(46845u, Struct_1(4294967295u, vec4<u32>(19418u, 28998u, 1u, 4294967295u)), vec2<f32>(469f, -124f), Struct_1(429u, vec4<u32>(75986u, 9863u, 2524u, 4294967295u))), Struct_2(10717u, Struct_1(1u, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), vec2<f32>(-606f, -1756f), Struct_1(0u, vec4<u32>(1u, 20523u, 18875u, 36261u))), Struct_2(1u, Struct_1(4294967295u, vec4<u32>(16504u, 125917u, 0u, 0u)), vec2<f32>(1000f, 855f), Struct_1(1u, vec4<u32>(4294967295u, 1u, 49659u, 17532u))), Struct_2(45916u, Struct_1(1u, vec4<u32>(4913u, 6665u, 71408u, 1u)), vec2<f32>(-225f, -673f), Struct_1(1u, vec4<u32>(4294967295u, 60188u, 0u, 57583u))), Struct_2(14364u, Struct_1(54175u, vec4<u32>(1u, 0u, 8471u, 34905u)), vec2<f32>(-193f, -1636f), Struct_1(4294967295u, vec4<u32>(49801u, 4294967295u, 1u, 0u))), Struct_2(1u, Struct_1(1u, vec4<u32>(56213u, 27003u, 90151u, 1u)), vec2<f32>(1402f, 844f), Struct_1(0u, vec4<u32>(4294967295u, 39341u, 0u, 11445u))), Struct_2(0u, Struct_1(56058u, vec4<u32>(0u, 1u, 75831u, 31722u)), vec2<f32>(-1000f, -671f), Struct_1(1u, vec4<u32>(21919u, 64394u, 1u, 27587u))), Struct_2(4294967295u, Struct_1(1u, vec4<u32>(0u, 4294967295u, 4294967295u, 5612u)), vec2<f32>(1438f, -664f), Struct_1(34968u, vec4<u32>(32930u, 35332u, 17039u, 22405u))), Struct_2(1535u, Struct_1(34114u, vec4<u32>(117018u, 0u, 4294967295u, 1u)), vec2<f32>(-1000f, 892f), Struct_1(4607u, vec4<u32>(51024u, 49560u, 17593u, 24858u))), Struct_2(5556u, Struct_1(6260u, vec4<u32>(1u, 28543u, 35986u, 4294967295u)), vec2<f32>(-483f, -1175f), Struct_1(4294967295u, vec4<u32>(50698u, 110201u, 91337u, 78275u))), Struct_2(1u, Struct_1(0u, vec4<u32>(107516u, 0u, 4294967295u, 4294967295u)), vec2<f32>(-408f, 436f), Struct_1(10951u, vec4<u32>(4294967295u, 0u, 34441u, 1u))));

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1232f, 1917f, global0.c.x, global0.c.x) * vec4<f32>(global0.c.x, -1000f, 1469f, global0.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, -1485f, global0.c.x, 1321f) + vec4<f32>(1173f, global0.c.x, 1710f, 982f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-884f, 122f, global0.c.x, global0.c.x) + vec4<f32>(global0.c.x, global0.c.x, -157f, 1219f))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), -770f, 996f, _wgslsmith_f_op_f32(global0.c.x + 322f)))));
    var var_1 = Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, global0.d.b.x), _wgslsmith_mult_u32(firstTrailingBit(global0.b.b.x), _wgslsmith_mult_u32(global0.a, 1u)), 0u)), global0.b.b);
    global0 = Struct_2(1u, global0.d, vec2<f32>(var_0.x, -1028f), Struct_1(var_1.b.x, _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(1u), global0.b.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.b.x, global0.a, 44582u, global0.a), var_1.b), global0.d.b.x ^ var_1.a), var_1.b)));
    var var_2 = global0.d;
    let var_3 = reverseBits(firstLeadingBit(~global0.b.a & 1u));
    return _wgslsmith_add_u32(abs(~10503u), global0.d.a);
}

fn func_2(arg_0: f32) -> u32 {
    global2 = array<Struct_3, 14>();
    let var_0 = vec3<u32>(func_3(), 0u, ~24455u);
    var var_1 = true;
    var var_2 = select(vec4<bool>(true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), select(!select(true, false, true), true, select(true, true, true)), abs(u_input.a ^ 11474i) > (firstLeadingBit(-31814i) >> (global0.a % 32u))), vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, !all(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec4<bool>(false, true, true, true)) || any(vec4<bool>(true, true, true, true)), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true, !(-865f > arg_0) | false));
    global4 = array<Struct_2, 23>();
    return global0.d.b.x;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_u32(~global0.b.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(min(global0.b.a, global0.b.b.x), _wgslsmith_div_u32(1u, global0.b.a)), func_2(global0.c.x) & ~global0.d.b.x)), global0.d, global0.c, global0.d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(402f))));
    global2 = array<Struct_3, 14>();
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * global0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x - 2186f), var_0.c.x, true)), global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, 1796f, var_0.c.x, -1495f), vec4<f32>(global0.c.x, global0.c.x, 404f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, 1187f, 358f, var_0.c.x), vec4<f32>(global0.c.x, -168f, -1000f, 2099f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-618f, _wgslsmith_div_f32(global0.c.x, -362f), -813f, _wgslsmith_div_f32(1187f, 339f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, 469f, global0.c.x, -1166f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(181f, var_0.c.x, 244f, var_0.c.x))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)))))));
    global0 = Struct_2(global0.d.a & 1u, Struct_1(~(~var_0.a), countOneBits(abs(abs(vec4<u32>(23833u, 1u, 2176u, 5568u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * var_2.wx)))), Struct_1(8364u, vec4<u32>(~global0.b.b.x, global0.a, abs(global0.b.b.x), max(var_0.d.b.x, 49264u)) >> (vec4<u32>(var_0.a, ~0u, ~23117u, 0u) % vec4<u32>(32u))));
    return 2839u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = _wgslsmith_f_op_f32(abs(1000f));
    global4 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1207f))), 317f));
    global0 = global4[_wgslsmith_index_u32(~countOneBits(_wgslsmith_clamp_u32(firstLeadingBit(62012u), _wgslsmith_div_u32(firstLeadingBit(global0.d.b.x), global0.a), global0.a >> ((global0.b.b.x << (1u % 32u)) % 32u))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(global0.d.a, global0.b.a ^ _wgslsmith_mod_u32(0u, 4294967295u), func_1(), ~global0.b.a), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.a, 56828u, global0.a, 1u), global0.b.b), ~60136u, _wgslsmith_dot_vec2_u32(global0.b.b.xw >> (vec2<u32>(global0.d.a, 4020u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(global0.d.b.ww, global0.b.b.wz)))));
}

