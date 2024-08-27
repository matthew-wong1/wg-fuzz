struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(59423u, 52149u, 1u, 6566u), vec4<u32>(1u, 14871u, 4294967295u, 45190u), vec4<u32>(17060u, 1u, 0u, 45472u), vec4<u32>(7649u, 0u, 1u, 85566u), vec4<u32>(78957u, 4294967295u, 90243u, 23539u), vec4<u32>(10879u, 1u, 4294967295u, 3924u), vec4<u32>(116822u, 2391u, 1u, 0u), vec4<u32>(8798u, 1286u, 1u, 13540u), vec4<u32>(9902u, 2394u, 4294967295u, 1u), vec4<u32>(1u, 1884u, 7534u, 7656u), vec4<u32>(91927u, 41610u, 55165u, 52098u), vec4<u32>(0u, 35129u, 4294967295u, 1u), vec4<u32>(0u, 34463u, 23472u, 46362u), vec4<u32>(19489u, 1u, 63745u, 23083u), vec4<u32>(33207u, 19218u, 4367u, 0u), vec4<u32>(0u, 11713u, 4294967295u, 37215u), vec4<u32>(31959u, 1u, 0u, 0u), vec4<u32>(41187u, 4294967295u, 42294u, 33744u), vec4<u32>(4294967295u, 4294967295u, 1512u, 45617u), vec4<u32>(1u, 1980u, 47648u, 4294967295u), vec4<u32>(28608u, 1u, 0u, 62873u), vec4<u32>(4294967295u, 97633u, 22176u, 5214u), vec4<u32>(1u, 36740u, 60459u, 10780u), vec4<u32>(4294967295u, 66861u, 1u, 48407u), vec4<u32>(0u, 4294967295u, 18694u, 15933u), vec4<u32>(0u, 2854u, 73577u, 12388u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 61675u, 0u), vec4<u32>(1u, 17101u, 0u, 12479u), vec4<u32>(31585u, 16226u, 4641u, 0u));

var<private> global1: f32;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(44085u, vec4<u32>(4294967295u, 24532u, 79575u, 0u), -1i, vec2<f32>(-399f, 1177f)), Struct_1(17648u, vec4<u32>(0u, 35203u, 0u, 11101u), -9249i, vec2<f32>(-288f, -309f)), Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 85576u, 0u), 1i, vec2<f32>(-440f, 1585f)), Struct_1(1u, vec4<u32>(65128u, 1u, 62295u, 51667u), 2159i, vec2<f32>(1781f, 1263f)), Struct_1(52075u, vec4<u32>(4294967295u, 17513u, 34682u, 30570u), 30795i, vec2<f32>(-960f, 419f)), Struct_1(1u, vec4<u32>(4294967295u, 1u, 35743u, 106820u), -27162i, vec2<f32>(-1000f, -704f)), Struct_1(53936u, vec4<u32>(27099u, 4294967295u, 1u, 4294967295u), -49032i, vec2<f32>(435f, -423f)), Struct_1(63206u, vec4<u32>(0u, 4294967295u, 4294967295u, 40622u), i32(-2147483648), vec2<f32>(912f, -1069f)), Struct_1(46028u, vec4<u32>(4294967295u, 1u, 0u, 32890u), -71317i, vec2<f32>(375f, -2271f)), Struct_1(4294967295u, vec4<u32>(13419u, 11225u, 53736u, 2681u), 450i, vec2<f32>(721f, 1000f)), Struct_1(88699u, vec4<u32>(0u, 4294967295u, 10467u, 25499u), -38739i, vec2<f32>(-669f, 1114f)), Struct_1(4294967295u, vec4<u32>(20626u, 2572u, 1u, 4294967295u), i32(-2147483648), vec2<f32>(352f, -452f)), Struct_1(4294967295u, vec4<u32>(0u, 21519u, 109735u, 308u), i32(-2147483648), vec2<f32>(-407f, 481f)), Struct_1(1u, vec4<u32>(78627u, 49015u, 56397u, 86051u), 0i, vec2<f32>(-533f, -436f)), Struct_1(1u, vec4<u32>(4294967295u, 4294967295u, 2714u, 211u), 2147483647i, vec2<f32>(1000f, 233f)), Struct_1(36577u, vec4<u32>(4294967295u, 4294967295u, 38967u, 4294967295u), 2147483647i, vec2<f32>(805f, -658f)), Struct_1(37356u, vec4<u32>(0u, 0u, 67326u, 13293u), -39907i, vec2<f32>(202f, 401f)), Struct_1(0u, vec4<u32>(8090u, 4294967295u, 43869u, 6176u), 0i, vec2<f32>(2436f, -587f)), Struct_1(38715u, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), -76743i, vec2<f32>(-789f, -2560f)), Struct_1(28265u, vec4<u32>(0u, 1u, 0u, 80438u), 2147483647i, vec2<f32>(-317f, -1000f)), Struct_1(39214u, vec4<u32>(112794u, 63878u, 29070u, 775u), 27044i, vec2<f32>(268f, 1212f)), Struct_1(1u, vec4<u32>(1u, 24598u, 4294967295u, 1u), 0i, vec2<f32>(-406f, -768f)), Struct_1(69492u, vec4<u32>(61293u, 0u, 8564u, 1u), 2147483647i, vec2<f32>(668f, -1000f)), Struct_1(42805u, vec4<u32>(4294967295u, 115269u, 1u, 21003u), i32(-2147483648), vec2<f32>(1000f, 2318f)), Struct_1(4294967295u, vec4<u32>(29604u, 1u, 89605u, 23604u), -46452i, vec2<f32>(1040f, 1047f)), Struct_1(1u, vec4<u32>(63004u, 4294967295u, 83266u, 1u), -9928i, vec2<f32>(345f, -1678f)), Struct_1(0u, vec4<u32>(0u, 0u, 1u, 1u), i32(-2147483648), vec2<f32>(-431f, -534f)), Struct_1(0u, vec4<u32>(0u, 1u, 55581u, 1u), 1i, vec2<f32>(-566f, 387f)), Struct_1(0u, vec4<u32>(1u, 4294967295u, 1u, 0u), -68509i, vec2<f32>(-564f, 341f)), Struct_1(12878u, vec4<u32>(0u, 0u, 1u, 4294967295u), 1i, vec2<f32>(-2996f, -999f)), Struct_1(4294967295u, vec4<u32>(0u, 17475u, 16197u, 0u), 1i, vec2<f32>(-1278f, -500f)));

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> u32 {
    global1 = 815f;
    let var_0 = 209f;
    return _wgslsmith_sub_u32(~_wgslsmith_div_u32(~14426u, 21915u) & arg_2, firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_3, arg_2), 6745u, _wgslsmith_sub_u32(4294967295u, 10053u) << (~global3.a % 32u))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    global1 = arg_2;
    let var_0 = Struct_1(abs(~min(u_input.a, u_input.a)) ^ u_input.b.x, global3.b, ~arg_0, global3.d);
    let var_1 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(~global3.c, _wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, -19281i), vec2<i32>(32672i, 22106i)), vec2<i32>(13664i, 1i))), reverseBits(~(~vec2<i32>(-3649i, -15809i)) << (var_0.b.yz % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-8820i, 39807i) >> (global3.b.wz % vec2<u32>(32u))), vec2<i32>(-1i, global3.c)), -vec2<i32>(~(-23167i), _wgslsmith_div_i32(global3.c, global3.c))));
    global3 = Struct_1(~(939u << (countOneBits(_wgslsmith_dot_vec4_u32(var_0.b, global3.b)) % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, var_0.b.x ^ arg_1.x, global3.a), vec4<u32>(min(global3.a, 4294967295u), global3.a, 72759u, ~func_3(vec3<i32>(var_1.x, global3.c, -1i), global3.d, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(max(max(vec4<u32>(22817u, 4294967295u, u_input.a, 88815u), vec4<u32>(u_input.b.x, u_input.b.x, 23581u, arg_1.x)), var_0.b), ~vec4<u32>(var_0.b.x, global3.a, global3.b.x, 4294967295u))), arg_0, vec2<f32>(_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))))), -1693f));
    let var_2 = reverseBits(vec2<u32>(18582u, ~(_wgslsmith_add_u32(arg_1.x, 12229u) >> (5912u % 32u))));
    return _wgslsmith_f_op_f32(arg_2 * arg_2);
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = global3.d.x;
    global0 = array<vec4<u32>, 30>();
    global2 = array<Struct_1, 31>();
    global3 = Struct_1(57344u, vec4<u32>(_wgslsmith_add_u32(~1u, u_input.b.x), ~8834u ^ global3.b.x, ~u_input.a, min(reverseBits(32228u), ~1u)) << (global3.b % vec4<u32>(32u)), arg_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global3.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, global3.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.x, vec3<u32>(69142u, u_input.b.x, 0u), 440f))), _wgslsmith_f_op_f32(global3.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1371f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.d.x - 124f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i, ~vec3<u32>(u_input.a, u_input.b.x, global3.a), 1453f))));
    return (vec2<i32>(-1i) * -(~vec2<i32>(arg_0.x, global3.c) << (vec2<u32>(32611u, global3.b.x) % vec2<u32>(32u)))) << (vec2<u32>(4294967295u ^ global3.b.x, ~min(_wgslsmith_mod_u32(u_input.b.x, global3.a), firstTrailingBit(u_input.a))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(func_1(~(vec4<i32>(-1867i, -13039i, global3.c, global3.c) << (vec4<u32>(0u, 0u, global3.b.x, 1u) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-1i) * -(vec2<i32>(global3.c, global3.c) | vec2<i32>(var_0.x, global3.c))), firstLeadingBit(vec2<i32>(0i, -1i)));
    global3 = global2[_wgslsmith_index_u32(global3.a, 31u)];
    let var_1 = -(vec4<i32>(-1i) * -(~(-vec4<i32>(var_0.x, var_0.x, 1i, global3.c))));
    global1 = _wgslsmith_f_op_f32(-1000f - 693f);
    var var_2 = -785f;
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(global3.b.x), 31u)];
    global2 = array<Struct_1, 31>();
    global0 = array<vec4<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(select(~59294i, _wgslsmith_mod_i32(var_3.c, -1i), true) >> (20987u % 32u)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.b.x, 0u, u_input.a), var_3.b.xwx), global3.b.xyy), u_input.a), countOneBits(~(~(~u_input.b))), select(var_1.zx, var_1.zz, true), 1u);
}

