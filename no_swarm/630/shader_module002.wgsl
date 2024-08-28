struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2105f, Struct_1(vec4<i32>(-1i, i32(-2147483648), 24685i, 1i), -27751i, vec3<f32>(-547f, -180f, -405f)), 1u, -1i, vec3<i32>(0i, 0i, i32(-2147483648)));

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(58390i, -52019i), vec2<i32>(i32(-2147483648), -8238i), vec2<i32>(40515i, 1i), vec2<i32>(20486i, 50583i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-44431i, -26987i), vec2<i32>(47145i, -23775i), vec2<i32>(1i, 42496i), vec2<i32>(2147483647i, 18139i), vec2<i32>(-23120i, 25296i), vec2<i32>(4257i, -38635i), vec2<i32>(0i, 25069i));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-1220f, Struct_1(vec4<i32>(-33529i, 2147483647i, 2322i, 15887i), 47295i, vec3<f32>(280f, 530f, 2279f)), 64917u, -1i, vec3<i32>(-20543i, -1i, -38217i)), Struct_2(-1597f, Struct_1(vec4<i32>(0i, 21856i, 1i, 6140i), -42594i, vec3<f32>(1277f, -1002f, 162f)), 21085u, i32(-2147483648), vec3<i32>(15166i, 0i, -1i)), Struct_2(1921f, Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -13370i), -49175i, vec3<f32>(858f, -1000f, 1155f)), 62338u, -63469i, vec3<i32>(-23509i, -33328i, -69801i)), Struct_2(-413f, Struct_1(vec4<i32>(-37353i, 0i, 46920i, 1i), -11287i, vec3<f32>(-1000f, -409f, 150f)), 4294967295u, 52612i, vec3<i32>(i32(-2147483648), 2147483647i, -76103i)), Struct_2(1094f, Struct_1(vec4<i32>(-1i, 2147483647i, 17772i, i32(-2147483648)), -25893i, vec3<f32>(-753f, 652f, 933f)), 21764u, -1i, vec3<i32>(77690i, -18565i, 2147483647i)), Struct_2(-798f, Struct_1(vec4<i32>(0i, -11050i, -10869i, 2147483647i), 0i, vec3<f32>(-2073f, -910f, 612f)), 35181u, -45786i, vec3<i32>(2479i, 1i, i32(-2147483648))), Struct_2(-959f, Struct_1(vec4<i32>(13213i, 0i, -1i, -85633i), -1957i, vec3<f32>(815f, 873f, 485f)), 0u, 1i, vec3<i32>(-1i, -42731i, -81609i)), Struct_2(271f, Struct_1(vec4<i32>(-1285i, i32(-2147483648), -44787i, 26814i), 12981i, vec3<f32>(-951f, -1329f, 409f)), 4294967295u, 1i, vec3<i32>(-14285i, 2147483647i, 6140i)), Struct_2(476f, Struct_1(vec4<i32>(35067i, 28417i, 1193i, -5308i), 917i, vec3<f32>(-1436f, 313f, 464f)), 1u, 1i, vec3<i32>(-16945i, 5754i, i32(-2147483648))), Struct_2(-184f, Struct_1(vec4<i32>(i32(-2147483648), -35267i, 22110i, 2147483647i), 0i, vec3<f32>(376f, 1596f, -116f)), 1u, 46192i, vec3<i32>(37330i, 66507i, 21038i)), Struct_2(654f, Struct_1(vec4<i32>(-9481i, 20873i, -1i, -1i), -1i, vec3<f32>(-722f, -1000f, -509f)), 1200u, -58751i, vec3<i32>(-33293i, -21845i, 5277i)), Struct_2(995f, Struct_1(vec4<i32>(1i, 36609i, 16134i, i32(-2147483648)), 0i, vec3<f32>(-215f, 978f, -1858f)), 25621u, -50306i, vec3<i32>(1i, -10742i, -1332i)), Struct_2(453f, Struct_1(vec4<i32>(15751i, 1i, 0i, i32(-2147483648)), -1i, vec3<f32>(1276f, 1163f, 644f)), 0u, i32(-2147483648), vec3<i32>(1i, 0i, 28230i)), Struct_2(1654f, Struct_1(vec4<i32>(42300i, 24687i, -1i, -8915i), 0i, vec3<f32>(-1998f, 1000f, -752f)), 38261u, -1i, vec3<i32>(-6475i, -26849i, 1i)), Struct_2(-1718f, Struct_1(vec4<i32>(2147483647i, 0i, -39024i, 0i), 23799i, vec3<f32>(-114f, 376f, 547f)), 0u, 79606i, vec3<i32>(0i, -19101i, 0i)), Struct_2(1189f, Struct_1(vec4<i32>(2179i, 2147483647i, 1i, -1i), -17490i, vec3<f32>(-346f, -780f, -720f)), 4790u, 8388i, vec3<i32>(19681i, 2147483647i, 1i)), Struct_2(-995f, Struct_1(vec4<i32>(35324i, 37824i, 54995i, 1i), 0i, vec3<f32>(-454f, 153f, -1280f)), 1u, -1i, vec3<i32>(-37777i, 61854i, 2147483647i)), Struct_2(155f, Struct_1(vec4<i32>(-1i, -12532i, -1i, 1i), -1i, vec3<f32>(116f, 1000f, 267f)), 4294967295u, i32(-2147483648), vec3<i32>(-38227i, -41070i, 1368i)), Struct_2(1921f, Struct_1(vec4<i32>(2147483647i, 7988i, -44377i, 2147483647i), 23462i, vec3<f32>(-1365f, -1736f, -984f)), 1u, 45195i, vec3<i32>(i32(-2147483648), 1i, 62053i)), Struct_2(151f, Struct_1(vec4<i32>(27093i, -51556i, 12524i, -1i), 33225i, vec3<f32>(-794f, -1093f, 1439f)), 0u, -13053i, vec3<i32>(-1i, -1565i, -8077i)), Struct_2(-528f, Struct_1(vec4<i32>(-11879i, 2147483647i, -21296i, 2147483647i), -18396i, vec3<f32>(755f, -1243f, -817f)), 0u, -11366i, vec3<i32>(49609i, 2147483647i, 8363i)), Struct_2(-545f, Struct_1(vec4<i32>(-14182i, 10088i, 1i, -1i), -1i, vec3<f32>(-175f, -416f, -1186f)), 4294967295u, i32(-2147483648), vec3<i32>(-23591i, i32(-2147483648), 46446i)), Struct_2(677f, Struct_1(vec4<i32>(-18054i, 21686i, 12951i, -27629i), 2147483647i, vec3<f32>(-349f, 1173f, -936f)), 53323u, -1i, vec3<i32>(18310i, 13426i, -1i)), Struct_2(-246f, Struct_1(vec4<i32>(-41007i, 2147483647i, 1288i, -31509i), -1i, vec3<f32>(-653f, -1357f, -1106f)), 35935u, 1i, vec3<i32>(1i, -32360i, -1i)), Struct_2(261f, Struct_1(vec4<i32>(2147483647i, 0i, 1i, 29192i), 1i, vec3<f32>(-1632f, -522f, 1094f)), 90391u, 0i, vec3<i32>(1i, 20105i, -28325i)), Struct_2(-315f, Struct_1(vec4<i32>(2340i, i32(-2147483648), 0i, -27437i), 11705i, vec3<f32>(856f, 2398f, 423f)), 80991u, 40552i, vec3<i32>(-23967i, 70622i, 44056i)), Struct_2(869f, Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -28372i), 5590i, vec3<f32>(234f, 236f, -812f)), 0u, 42317i, vec3<i32>(-23565i, 1i, 2147483647i)), Struct_2(253f, Struct_1(vec4<i32>(4278i, -1i, -1i, -25617i), -21559i, vec3<f32>(810f, 1027f, 1473f)), 0u, 57188i, vec3<i32>(2079i, 26194i, 0i)), Struct_2(331f, Struct_1(vec4<i32>(55381i, 2147483647i, i32(-2147483648), 65375i), 2147483647i, vec3<f32>(277f, -174f, 1028f)), 32259u, 12993i, vec3<i32>(-1i, -7396i, 27703i)));

var<private> global3: array<f32, 21>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = global0.b.c.zy;
    let var_1 = global0.b;
    var var_2 = vec3<bool>((any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)) | select(false, any(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, false, false)))) && ((_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(4294967295u, arg_0.x)) & arg_1.x) < global0.c), false, true);
    global3 = array<f32, 21>();
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(global0.c), 29u)];
    return global2[_wgslsmith_index_u32(arg_0.x, 29u)];
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = ~firstLeadingBit(4294967295u);
    let var_1 = reverseBits(global0.e.yy);
    let var_2 = !(var_1.x == -arg_0.x) && (true && !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)));
    global3 = array<f32, 21>();
    let var_3 = -arg_1.b.a;
    return _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_1.d, -1i), ~vec2<i32>(arg_0.x, 2147483647i));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_2 {
    let var_0 = 0i;
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_dot_vec2_i32(func_3(abs(global0.b.a.xwy ^ vec3<i32>(global0.b.a.x, global0.e.x, var_0)), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a.x, 0u)), ~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x))), select(firstTrailingBit(vec2<i32>(2147483647i, 1i)) << (u_input.a % vec2<u32>(32u)), max(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), vec2<bool>(select(arg_0.x, true, arg_0.x), true))) | arg_1;
    var var_3 = firstLeadingBit(-countOneBits(~reverseBits(vec4<i32>(arg_1, 46617i, global0.e.x, var_0))));
    var var_4 = !select(select(vec4<bool>(arg_0.x, arg_0.x, all(arg_0.xx), !arg_0.x), select(select(arg_0, arg_0, arg_0.x), arg_0, false), vec4<bool>(!arg_0.x, arg_0.x, !arg_0.x, select(arg_0.x, false, true))), select(vec4<bool>(false, !arg_0.x, arg_0.x, var_2 <= 2147483647i), !arg_0, any(arg_0)), !select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(arg_0, arg_0, arg_0.x), false));
    return Struct_2(-425f, Struct_1(-(global0.b.a ^ vec4<i32>(arg_1, global0.b.a.x, arg_1, global0.e.x)) | vec4<i32>(var_2, arg_1, 62149i ^ var_0, var_0), -func_3(vec3<i32>(var_0, 0i, arg_1), Struct_2(-732f, Struct_1(vec4<i32>(-87505i, -23360i, 30119i, -20624i), 19496i, global0.b.c), 19060u, 0i, vec3<i32>(49061i, var_2, -1i))).x, vec3<f32>(global3[_wgslsmith_index_u32(~global0.c, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2863f * -769f)), func_2(~vec2<u32>(48663u, 1u), abs(vec4<u32>(80181u, 4294967295u, 89114u, 0u))).a)), u_input.a.x, _wgslsmith_dot_vec3_i32(global0.b.a.yzx, vec3<i32>(_wgslsmith_mod_i32(10787i, 2147483647i), select(14112i, -2147483647i, true) ^ _wgslsmith_div_i32(var_2, global0.b.a.x), abs(_wgslsmith_mod_i32(0i, 2147483647i)))), -(~(~(-vec3<i32>(global0.d, -13336i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, global0.b.b > -11589i, false, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), countOneBits(42666i));
    global0 = global2[_wgslsmith_index_u32(select(func_2(abs(u_input.a), countOneBits(firstTrailingBit(vec4<u32>(global0.c, 4294967295u, global0.c, 29978u)))).c, 44862u, (-global0.d == _wgslsmith_add_i32(global0.e.x, global0.d)) | !(16724i < global0.e.x)) >> (u_input.a.x % 32u), 29u)];
    global3 = array<f32, 21>();
    let var_0 = Struct_1(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-8632i, 31514i, 2147483647i, 0i), global0.b.a, global0.b.a), ~global0.b.a)), ~_wgslsmith_add_i32(global0.e.x | ~(-1i), ~(~global0.e.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.b.c))), global0.b.c)));
    global1 = array<vec2<i32>, 12>();
    global1 = array<vec2<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-473f, 26896u);
}

