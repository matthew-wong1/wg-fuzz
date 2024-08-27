struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: f32;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(4294967295u, true, vec4<u32>(19422u, 1u, 1u, 100093u), -1101f, vec2<f32>(-2204f, -273f)), vec3<u32>(4294967295u, 1u, 65631u)), Struct_2(Struct_1(0u, true, vec4<u32>(61326u, 4684u, 1u, 1u), 199f, vec2<f32>(-136f, 1011f)), vec3<u32>(26670u, 4294967295u, 1u)), Struct_2(Struct_1(12454u, true, vec4<u32>(29862u, 4294967295u, 0u, 0u), -2114f, vec2<f32>(-414f, -807f)), vec3<u32>(0u, 1u, 68u)), Struct_2(Struct_1(70009u, true, vec4<u32>(126605u, 19169u, 4294967295u, 51913u), 651f, vec2<f32>(1366f, 2145f)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_2(Struct_1(1u, false, vec4<u32>(15312u, 1u, 17853u, 0u), 349f, vec2<f32>(-514f, 1013f)), vec3<u32>(78542u, 0u, 59246u)), Struct_2(Struct_1(18157u, true, vec4<u32>(55821u, 81108u, 1u, 78962u), -451f, vec2<f32>(-850f, 271f)), vec3<u32>(11535u, 0u, 4294967295u)), Struct_2(Struct_1(0u, false, vec4<u32>(1u, 26529u, 54509u, 0u), 768f, vec2<f32>(711f, -1000f)), vec3<u32>(4294967295u, 0u, 19599u)), Struct_2(Struct_1(13246u, false, vec4<u32>(4294967295u, 0u, 69255u, 4294967295u), 1000f, vec2<f32>(-990f, -559f)), vec3<u32>(1u, 4294967295u, 4879u)), Struct_2(Struct_1(4279u, true, vec4<u32>(4294967295u, 1u, 0u, 0u), -168f, vec2<f32>(-1361f, 148f)), vec3<u32>(0u, 48222u, 0u)), Struct_2(Struct_1(1u, true, vec4<u32>(44393u, 30572u, 47652u, 77844u), 639f, vec2<f32>(-809f, -1289f)), vec3<u32>(11619u, 64314u, 0u)), Struct_2(Struct_1(34954u, true, vec4<u32>(24032u, 0u, 37619u, 110233u), -639f, vec2<f32>(-1000f, -144f)), vec3<u32>(2777u, 1u, 31228u)), Struct_2(Struct_1(1u, true, vec4<u32>(4294967295u, 967u, 1u, 4294967295u), -625f, vec2<f32>(-144f, -739f)), vec3<u32>(27413u, 0u, 4294967295u)), Struct_2(Struct_1(67733u, false, vec4<u32>(11661u, 1u, 24203u, 4294967295u), -120f, vec2<f32>(247f, -1100f)), vec3<u32>(0u, 78231u, 53402u)), Struct_2(Struct_1(0u, true, vec4<u32>(2076u, 5163u, 8644u, 4294967295u), -881f, vec2<f32>(909f, -1000f)), vec3<u32>(0u, 48213u, 22163u)), Struct_2(Struct_1(57551u, false, vec4<u32>(0u, 4294967295u, 45639u, 4294967295u), 360f, vec2<f32>(-1456f, 1486f)), vec3<u32>(0u, 70152u, 4294967295u)), Struct_2(Struct_1(104958u, true, vec4<u32>(47429u, 1u, 0u, 1u), -1594f, vec2<f32>(-1487f, 450f)), vec3<u32>(78914u, 3560u, 27392u)), Struct_2(Struct_1(29732u, true, vec4<u32>(0u, 35196u, 0u, 38107u), -224f, vec2<f32>(-1078f, -123f)), vec3<u32>(53840u, 0u, 1u)), Struct_2(Struct_1(4294967295u, true, vec4<u32>(0u, 101079u, 0u, 29324u), -2756f, vec2<f32>(-270f, -1000f)), vec3<u32>(1u, 35952u, 0u)), Struct_2(Struct_1(32628u, false, vec4<u32>(26381u, 0u, 3851u, 118459u), 1351f, vec2<f32>(-1388f, 2190f)), vec3<u32>(4294967295u, 59376u, 1u)), Struct_2(Struct_1(4294967295u, true, vec4<u32>(13943u, 1u, 1u, 1u), 937f, vec2<f32>(556f, -1072f)), vec3<u32>(1u, 17383u, 62187u)), Struct_2(Struct_1(9949u, false, vec4<u32>(51023u, 1u, 83028u, 46547u), -727f, vec2<f32>(1348f, 921f)), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(Struct_1(0u, true, vec4<u32>(4294967295u, 1158u, 46467u, 4294967295u), -1528f, vec2<f32>(1382f, 847f)), vec3<u32>(16993u, 120159u, 41478u)), Struct_2(Struct_1(19977u, true, vec4<u32>(53334u, 1u, 4294967295u, 658u), 102f, vec2<f32>(-1002f, -448f)), vec3<u32>(160592u, 12178u, 1u)), Struct_2(Struct_1(4294967295u, true, vec4<u32>(78350u, 46995u, 25371u, 40246u), 895f, vec2<f32>(-1000f, -1214f)), vec3<u32>(1u, 1u, 0u)), Struct_2(Struct_1(0u, false, vec4<u32>(1u, 4294967295u, 29500u, 29131u), -208f, vec2<f32>(-228f, 107f)), vec3<u32>(1u, 0u, 4294967295u)), Struct_2(Struct_1(72776u, false, vec4<u32>(1u, 116772u, 4294967295u, 7206u), 368f, vec2<f32>(-338f, -846f)), vec3<u32>(11661u, 0u, 85736u)), Struct_2(Struct_1(4294967295u, true, vec4<u32>(94121u, 0u, 1u, 1u), -1281f, vec2<f32>(810f, 1173f)), vec3<u32>(1u, 4294967295u, 18514u)), Struct_2(Struct_1(50511u, true, vec4<u32>(0u, 10553u, 77257u, 13548u), -221f, vec2<f32>(-985f, -575f)), vec3<u32>(81967u, 0u, 38915u)), Struct_2(Struct_1(1u, true, vec4<u32>(0u, 61425u, 116119u, 35221u), -194f, vec2<f32>(1700f, 201f)), vec3<u32>(52584u, 28422u, 4294967295u)), Struct_2(Struct_1(50877u, false, vec4<u32>(0u, 7506u, 33868u, 1525u), -1000f, vec2<f32>(1610f, 1141f)), vec3<u32>(19021u, 1u, 48312u)), Struct_2(Struct_1(22608u, false, vec4<u32>(4294967295u, 4294967295u, 27348u, 4294967295u), -1468f, vec2<f32>(-1346f, 504f)), vec3<u32>(4294967295u, 53964u, 0u)), Struct_2(Struct_1(1u, true, vec4<u32>(0u, 79990u, 34272u, 4294967295u), 1123f, vec2<f32>(-1081f, -679f)), vec3<u32>(29594u, 0u, 1u)));

var<private> global3: array<i32, 9> = array<i32, 9>(1i, 6127i, 43175i, 2147483647i, 15267i, 2147483647i, -9905i, -4479i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    global2 = array<Struct_2, 32>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f - -1189f)))));
    return 45091i;
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(14980u, abs(1u), ~0u, u_input.b.x), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, u_input.b.x, 42138u, 0u), vec4<u32>(u_input.e, 0u, u_input.e, u_input.b.x) & vec4<u32>(u_input.e, arg_0, arg_0, 82992u))))), 32u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.e.x, var_0.a.e.x, -378f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a.d)), -290f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x + var_0.a.d) * var_0.a.d), -461f))));
    var var_2 = var_0.a;
    var var_3 = Struct_1(18563u, ~u_input.b.x == _wgslsmith_dot_vec4_u32(abs(~var_2.c), vec4<u32>(var_2.c.x, 51892u, 10281u, 45948u) & vec4<u32>(var_2.c.x, 0u, arg_0, 4294967295u)), ~(select(~vec4<u32>(arg_0, 97965u, 4294967295u, 25129u), abs(var_2.c), !vec4<bool>(var_2.b, var_2.b, true, var_2.b)) << ((_wgslsmith_clamp_vec4_u32(var_0.a.c, var_0.a.c, vec4<u32>(u_input.e, var_0.a.a, 4294967295u, 1u)) << (vec4<u32>(5009u, u_input.b.x, 20061u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.e.x, -545f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-644f, _wgslsmith_f_op_f32(-var_2.d))));
    global3 = array<i32, 9>();
    return select(vec2<bool>(arg_1, select(_wgslsmith_sub_i32(-57786i, 2864i), ~(-1i), var_2.b) >= ~0i), select(select(vec2<bool>(any(vec2<bool>(var_3.b, true)), false), !select(vec2<bool>(true, true), vec2<bool>(false, var_2.b), vec2<bool>(true, var_2.b)), select(!vec2<bool>(true, var_3.b), vec2<bool>(var_0.a.b, true), !vec2<bool>(true, var_3.b))), !vec2<bool>(-17142i < global3[_wgslsmith_index_u32(arg_0, 9u)], false), true), var_3.b);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = !(!select(!select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.b, false), false), func_3(firstTrailingBit(60680u), arg_1.a.b == true), vec2<bool>(true, true)));
    let var_1 = u_input.b;
    var var_2 = var_0.x;
    var_2 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(-global3[_wgslsmith_index_u32(var_1.x, 9u)], max(28444i, -33110i), u_input.d.x), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.x, u_input.a.x, global3[_wgslsmith_index_u32(arg_1.b.x, 9u)]), u_input.d)) >= 36621i, select(arg_1.a.b, true, arg_1.a.b), _wgslsmith_dot_vec2_u32(vec2<u32>(87011u, 4294967295u) << (_wgslsmith_add_vec2_u32(var_1, var_1) % vec2<u32>(32u)), var_1) == 56290u);
    var var_3 = arg_1;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.e, 11793u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), 1u) % 32u), select(max(u_input.e ^ 2112u, 81290u), 58131u, _wgslsmith_f_op_f32(f32(-1f) * -996f) <= _wgslsmith_f_op_f32(select(101f, -945f, false)))) << (~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 26722u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.b.x, u_input.b.x), vec3<u32>(u_input.e, u_input.e, 4294967295u)))) % vec3<u32>(32u));
    global0 = _wgslsmith_div_i32(-global3[_wgslsmith_index_u32(~(~(~var_0.x)), 9u)], _wgslsmith_div_i32(-_wgslsmith_mult_i32(max(u_input.a.x, 2147483647i), select(u_input.c, global3[_wgslsmith_index_u32(59942u, 9u)], false)), global3[_wgslsmith_index_u32(~90524u, 9u)]));
    var var_1 = vec3<i32>(func_1(-166f, u_input.d) >> (firstLeadingBit(abs(abs(0u))) % 32u), -13624i, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~1u, ~var_0.x) >> (countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 15595u)) % 32u), 9u)]);
    let var_2 = func_2(~101305u, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(35277i << (1u % 32u), 33752i)));
    var var_3 = func_3(~(~(~4294967295u)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, var_2.b), vec2<bool>(true, true)), vec2<bool>(var_2.b, true), var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~countOneBits(u_input.d))), 1509f, var_0.x, _wgslsmith_f_op_f32(-var_2.e.x), select(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, var_1.x, var_1.x, var_1.x), vec4<i32>(1i, var_1.x, -35507i, u_input.d.x)) | (vec4<i32>(var_1.x, 1i, u_input.d.x, global3[_wgslsmith_index_u32(var_0.x, 9u)]) << (var_2.c % vec4<u32>(32u))), abs(~(~vec4<i32>(2147483647i, -52793i, u_input.d.x, u_input.c))), func_2(~0u, Struct_2(var_2, var_0), ~(-var_1.yz)).b));
}

