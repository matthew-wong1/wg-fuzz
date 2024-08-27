struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec2<f32>(-998f, 140f), vec4<u32>(23125u, 0u, 23749u, 4294967295u), 2147483647i), Struct_1(vec4<u32>(0u, 4294967295u, 23680u, 0u), vec2<f32>(1592f, 279f), vec4<u32>(4294967295u, 4294967295u, 6531u, 52902u), 0i), true, vec2<bool>(false, false), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 13839u, 1u, 0u), vec2<f32>(-662f, -718f), vec4<u32>(0u, 46131u, 18983u, 42386u), 10091i), Struct_1(vec4<u32>(17528u, 71369u, 68011u, 0u), vec2<f32>(1202f, -945f), vec4<u32>(1u, 49680u, 4294967295u, 87481u), 0i), false, vec2<bool>(false, true), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 84469u, 6865u, 15950u), vec2<f32>(-693f, -786f), vec4<u32>(1u, 4294967295u, 0u, 0u), i32(-2147483648)), Struct_1(vec4<u32>(82856u, 4294967295u, 4294967295u, 1u), vec2<f32>(-270f, -1446f), vec4<u32>(35878u, 1u, 4294967295u, 1u), 2147483647i), true, vec2<bool>(false, false), false), Struct_2(Struct_1(vec4<u32>(5275u, 27432u, 45027u, 0u), vec2<f32>(124f, -313f), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 26724i), Struct_1(vec4<u32>(50603u, 0u, 72109u, 82087u), vec2<f32>(-1315f, 620f), vec4<u32>(1u, 11752u, 6416u, 0u), 2147483647i), true, vec2<bool>(false, false), false), Struct_2(Struct_1(vec4<u32>(38612u, 4294967295u, 58986u, 1u), vec2<f32>(-1351f, 1073f), vec4<u32>(0u, 1u, 4294967295u, 1u), i32(-2147483648)), Struct_1(vec4<u32>(2484u, 4294967295u, 55453u, 42314u), vec2<f32>(464f, 1836f), vec4<u32>(77450u, 0u, 4294967295u, 31913u), -1i), true, vec2<bool>(false, true), true), Struct_2(Struct_1(vec4<u32>(25572u, 0u, 1u, 4294967295u), vec2<f32>(-829f, -548f), vec4<u32>(3534u, 35016u, 15718u, 6448u), -38620i), Struct_1(vec4<u32>(20009u, 4294967295u, 0u, 4294967295u), vec2<f32>(1464f, -573f), vec4<u32>(4294967295u, 42386u, 1u, 4294967295u), 0i), false, vec2<bool>(false, false), false), Struct_2(Struct_1(vec4<u32>(31942u, 58336u, 105219u, 13631u), vec2<f32>(-1439f, -1345f), vec4<u32>(28373u, 4447u, 0u, 1u), -1i), Struct_1(vec4<u32>(1u, 49408u, 4294967295u, 4294967295u), vec2<f32>(2177f, -1282f), vec4<u32>(4294967295u, 1u, 61601u, 35874u), 9172i), true, vec2<bool>(false, false), false), Struct_2(Struct_1(vec4<u32>(21049u, 0u, 67339u, 8685u), vec2<f32>(1217f, 896f), vec4<u32>(50904u, 9952u, 44245u, 11121u), -44026i), Struct_1(vec4<u32>(11592u, 31652u, 1u, 33983u), vec2<f32>(503f, -1255f), vec4<u32>(55386u, 1u, 28116u, 0u), 0i), false, vec2<bool>(true, false), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 14794u, 4294967295u), vec2<f32>(-558f, -821f), vec4<u32>(7537u, 1u, 62305u, 4294967295u), -1i), Struct_1(vec4<u32>(0u, 0u, 41242u, 13993u), vec2<f32>(-207f, -377f), vec4<u32>(25014u, 21869u, 88662u, 4294967295u), 2147483647i), false, vec2<bool>(true, true), false), Struct_2(Struct_1(vec4<u32>(1u, 47534u, 4294967295u, 16206u), vec2<f32>(-395f, 139f), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 21314i), Struct_1(vec4<u32>(74393u, 4294967295u, 4110u, 4294967295u), vec2<f32>(2214f, 2195f), vec4<u32>(36677u, 40408u, 4294967295u, 4294967295u), 21924i), true, vec2<bool>(true, true), true), Struct_2(Struct_1(vec4<u32>(30573u, 0u, 38481u, 5417u), vec2<f32>(-1401f, -1688f), vec4<u32>(16669u, 56558u, 1u, 4294967295u), 0i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec2<f32>(1207f, -831f), vec4<u32>(4294967295u, 9876u, 0u, 43798u), -9683i), false, vec2<bool>(false, true), false), Struct_2(Struct_1(vec4<u32>(12545u, 24524u, 68548u, 70919u), vec2<f32>(1289f, -752f), vec4<u32>(1u, 5958u, 72402u, 0u), 2147483647i), Struct_1(vec4<u32>(4294967295u, 0u, 61704u, 4294967295u), vec2<f32>(-676f, 448f), vec4<u32>(22511u, 40570u, 20476u, 4294967295u), -215i), true, vec2<bool>(true, true), false), Struct_2(Struct_1(vec4<u32>(823u, 118928u, 35459u, 4294967295u), vec2<f32>(-331f, 891f), vec4<u32>(69477u, 1u, 2105u, 39003u), -1i), Struct_1(vec4<u32>(31815u, 52124u, 1u, 31893u), vec2<f32>(1966f, 467f), vec4<u32>(1012u, 10693u, 24223u, 49828u), -48763i), true, vec2<bool>(true, true), false), Struct_2(Struct_1(vec4<u32>(18660u, 235u, 21618u, 21307u), vec2<f32>(1646f, -686f), vec4<u32>(6764u, 51445u, 1u, 32971u), 2147483647i), Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<f32>(1646f, 1603f), vec4<u32>(0u, 4294967295u, 0u, 41407u), -2237i), true, vec2<bool>(true, false), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 8837u, 86652u, 9087u), vec2<f32>(285f, -228f), vec4<u32>(0u, 43101u, 47332u, 0u), -7174i), Struct_1(vec4<u32>(1u, 65899u, 4294967295u, 0u), vec2<f32>(343f, 536f), vec4<u32>(1u, 18730u, 50721u, 66541u), -23511i), false, vec2<bool>(false, false), false), Struct_2(Struct_1(vec4<u32>(51283u, 4294967295u, 1140u, 39203u), vec2<f32>(-381f, -508f), vec4<u32>(0u, 4294967295u, 57948u, 73966u), 16291i), Struct_1(vec4<u32>(11579u, 5224u, 4294967295u, 10032u), vec2<f32>(-223f, 277f), vec4<u32>(4294967295u, 33939u, 4294967295u, 1u), 29201i), true, vec2<bool>(true, true), true), Struct_2(Struct_1(vec4<u32>(4893u, 0u, 1u, 4294967295u), vec2<f32>(1475f, 266f), vec4<u32>(65149u, 49290u, 31396u, 7947u), -37160i), Struct_1(vec4<u32>(8688u, 9836u, 65625u, 1u), vec2<f32>(1527f, -332f), vec4<u32>(1u, 1u, 4294967295u, 68362u), 1i), true, vec2<bool>(false, true), false), Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec2<f32>(-842f, 533f), vec4<u32>(4294967295u, 27047u, 1u, 1u), 1i), Struct_1(vec4<u32>(0u, 11565u, 4294967295u, 0u), vec2<f32>(2170f, 1000f), vec4<u32>(50180u, 145625u, 1u, 0u), -43021i), false, vec2<bool>(false, true), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 41901u, 38243u, 15047u), vec2<f32>(741f, -2727f), vec4<u32>(24122u, 1u, 76284u, 114017u), -18711i), Struct_1(vec4<u32>(1u, 12274u, 4294967295u, 1u), vec2<f32>(868f, -1445f), vec4<u32>(1u, 6561u, 49969u, 4294967295u), 2442i), true, vec2<bool>(true, false), false), Struct_2(Struct_1(vec4<u32>(15830u, 4294967295u, 0u, 1u), vec2<f32>(3378f, -724f), vec4<u32>(4294967295u, 92284u, 18209u, 4294967295u), -14627i), Struct_1(vec4<u32>(53696u, 47250u, 13717u, 46589u), vec2<f32>(1000f, -425f), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), -8756i), true, vec2<bool>(false, true), false), Struct_2(Struct_1(vec4<u32>(0u, 39231u, 26342u, 66842u), vec2<f32>(680f, 1739f), vec4<u32>(0u, 0u, 30059u, 8424u), i32(-2147483648)), Struct_1(vec4<u32>(134046u, 8780u, 1u, 53432u), vec2<f32>(-1416f, -228f), vec4<u32>(4460u, 11750u, 36504u, 24969u), 64819i), false, vec2<bool>(false, true), true));

var<private> global1: Struct_3;

var<private> global2: array<f32, 10> = array<f32, 10>(-727f, -656f, -1408f, 446f, 1549f, -222f, -338f, -1570f, 1618f, -548f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 48929u, 0u), vec2<f32>(-1139f, 470f), vec4<u32>(30736u, 1u, 18969u, 4294967295u), 2147483647i), Struct_1(vec4<u32>(11185u, 26882u, 4294967295u, 1u), vec2<f32>(844f, -768f), vec4<u32>(4294967295u, 4294967295u, 80506u, 20544u), -56237i), false, vec2<bool>(true, false), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(u_input.a, i32(-1i) * -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(1i, global3.b.d))), countOneBits(~(-1i)));
    var var_1 = arg_0;
    var var_2 = global3.c;
    let var_3 = vec3<bool>(!any(select(vec2<bool>(false, global3.d.x), vec2<bool>(true, true), any(vec3<bool>(false, global3.e, global3.c)))), all(vec4<bool>(false, !global3.d.x, true, all(select(vec4<bool>(global3.e, true, true, true), vec4<bool>(true, global3.c, true, false), global3.c)))), !(false | !global3.c) & all(vec2<bool>(!global3.e, any(global3.d))));
    var_1 = arg_1.x;
    return 1f;
}

fn func_2() -> bool {
    global0 = array<Struct_2, 21>();
    var var_0 = vec3<bool>(!all(vec2<bool>(true, global3.e)) & (false && global3.e), global2[_wgslsmith_index_u32(55109u, 10u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(min(u_input.b.x, global1.a.x), 10u)] - _wgslsmith_f_op_f32(func_3(global3.b.a.x, global1.a.zxz, vec3<u32>(u_input.b.x, u_input.b.x, global1.a.x), vec2<u32>(4294967295u, u_input.b.x))))), any(global3.d));
    let var_1 = global0[_wgslsmith_index_u32(36789u, 21u)];
    global2 = array<f32, 10>();
    var var_2 = var_1.a.c.wyy;
    return true;
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = select(vec2<bool>(!any(!global3.d), all(select(global3.d, global3.d, select(global3.d, global3.d, global3.d)))), !select(global3.d, vec2<bool>(true, true), false), select(!global3.d, select(select(vec2<bool>(var_0, false), !global3.d, true), !(!global3.d), all(global3.d)), false));
    var var_2 = global0[_wgslsmith_index_u32(global3.a.c.x, 21u)];
    var var_3 = global3.b;
    let var_4 = 1u;
    return ~(-(~(vec2<i32>(var_2.a.d, 50406i) >> (vec2<u32>(60545u, 30760u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = select(!(!select(select(vec2<bool>(false, false), global3.d, false), global3.d, true)), select(vec2<bool>(true, global3.e), !vec2<bool>(true, global3.c), !(!select(global3.d, vec2<bool>(true, true), vec2<bool>(global3.e, global3.e)))), global3.e);
    global1 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.a.a.x, ~global1.a.x, arg_2.a.x, 1u), vec4<u32>(firstLeadingBit(18489u), 3428u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_2.a.x, 0u, 1u)), 1u)), select(global1.a, min(max(vec4<u32>(0u, 1u, 0u, 0u), global1.a), global1.a >> (global1.a % vec4<u32>(32u))), (true || var_0.x) & true)));
    return StorageBuffer(-2147483647i, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-12339i, 17186i, 76768i), ~vec3<i32>(arg_0.x, 2147483647i, arg_0.x))), min(-max(vec3<i32>(u_input.a, 49885i, u_input.a), vec3<i32>(arg_0.x, 0i, u_input.a)), ~vec3<i32>(global3.b.d, -2147483647i, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -770f)), firstLeadingBit(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global3.a.c.x, 4294967295u, global1.a.x), ~vec3<u32>(31877u, global3.b.a.x, 340u))), Struct_3(vec4<u32>(4294967295u, 24893u, countOneBits(u_input.b.x), 16134u)));
}

