struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(548f, vec4<bool>(false, false, false, true), vec2<i32>(-1i, -37715i), 75215u, vec4<f32>(655f, 384f, -842f, 564f)), Struct_1(-975f, vec4<bool>(true, true, true, false), vec2<i32>(38955i, 34133i), 1u, vec4<f32>(-248f, -304f, -782f, -289f)), Struct_1(364f, vec4<bool>(true, true, false, true), vec2<i32>(5432i, -20346i), 4294967295u, vec4<f32>(-486f, 1385f, 2408f, 566f)), Struct_1(112f, vec4<bool>(false, true, true, false), vec2<i32>(50988i, i32(-2147483648)), 1u, vec4<f32>(-379f, 223f, 167f, 689f)), Struct_1(1000f, vec4<bool>(true, true, false, false), vec2<i32>(-51559i, -6486i), 2403u, vec4<f32>(111f, -230f, -1218f, -1000f)), Struct_1(-1400f, vec4<bool>(false, true, false, true), vec2<i32>(-30180i, 0i), 1u, vec4<f32>(-1000f, -295f, 124f, -673f)), Struct_1(-143f, vec4<bool>(true, false, false, true), vec2<i32>(0i, 0i), 1u, vec4<f32>(810f, -714f, 1000f, 209f)), Struct_1(-1063f, vec4<bool>(false, false, true, false), vec2<i32>(-35392i, i32(-2147483648)), 12114u, vec4<f32>(475f, 633f, -393f, -1034f)), Struct_1(-1364f, vec4<bool>(true, true, true, false), vec2<i32>(-36870i, -16617i), 53435u, vec4<f32>(-1000f, -522f, 944f, -372f)), Struct_1(-1024f, vec4<bool>(true, false, true, true), vec2<i32>(-24249i, 26504i), 1u, vec4<f32>(-109f, 480f, 518f, 2226f)), Struct_1(806f, vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, 9301i), 1u, vec4<f32>(993f, -554f, -901f, -351f)), Struct_1(1087f, vec4<bool>(false, true, false, true), vec2<i32>(-1i, 2147483647i), 65649u, vec4<f32>(259f, -1426f, 393f, -2825f)), Struct_1(-830f, vec4<bool>(true, true, false, true), vec2<i32>(-1i, 2147483647i), 1u, vec4<f32>(-815f, -1332f, 944f, -2394f)), Struct_1(1000f, vec4<bool>(false, false, true, false), vec2<i32>(-1i, -20374i), 8470u, vec4<f32>(816f, 340f, -873f, 601f)), Struct_1(-1593f, vec4<bool>(true, false, false, true), vec2<i32>(-34882i, 0i), 4294967295u, vec4<f32>(-1755f, -840f, 197f, -701f)), Struct_1(1413f, vec4<bool>(false, false, true, true), vec2<i32>(1i, -11916i), 45548u, vec4<f32>(-2964f, 793f, 710f, 993f)), Struct_1(555f, vec4<bool>(false, true, false, false), vec2<i32>(7010i, -45881i), 64782u, vec4<f32>(-1487f, 638f, -463f, -928f)), Struct_1(-940f, vec4<bool>(false, true, true, true), vec2<i32>(18564i, -1i), 0u, vec4<f32>(-1418f, 1000f, -1000f, 1000f)), Struct_1(745f, vec4<bool>(true, true, false, false), vec2<i32>(-16398i, 1i), 40158u, vec4<f32>(507f, -579f, -2000f, -2116f)), Struct_1(-155f, vec4<bool>(false, true, true, true), vec2<i32>(0i, 1i), 49798u, vec4<f32>(1429f, -735f, 966f, 2560f)), Struct_1(820f, vec4<bool>(true, true, true, false), vec2<i32>(1i, 0i), 17346u, vec4<f32>(-1226f, 160f, -1015f, -1488f)), Struct_1(-854f, vec4<bool>(true, false, true, false), vec2<i32>(-704i, 46229i), 0u, vec4<f32>(-808f, -360f, 362f, 1192f)), Struct_1(-605f, vec4<bool>(false, true, false, false), vec2<i32>(3793i, -120i), 0u, vec4<f32>(234f, 799f, -384f, -349f)), Struct_1(583f, vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 3467i), 1u, vec4<f32>(3162f, 2508f, -1147f, -296f)), Struct_1(-1094f, vec4<bool>(true, true, false, true), vec2<i32>(-17229i, 2147483647i), 21978u, vec4<f32>(952f, 319f, 790f, -241f)), Struct_1(124f, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 11012i), 4294967295u, vec4<f32>(-498f, 1008f, 321f, 1692f)), Struct_1(2761f, vec4<bool>(true, true, false, false), vec2<i32>(20501i, i32(-2147483648)), 67956u, vec4<f32>(-637f, 310f, 1399f, -1193f)), Struct_1(-1085f, vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), 6529i), 1904u, vec4<f32>(-872f, -329f, 612f, -418f)), Struct_1(-1263f, vec4<bool>(true, false, false, true), vec2<i32>(-45988i, -35236i), 85466u, vec4<f32>(174f, -584f, -312f, -190f)), Struct_1(950f, vec4<bool>(false, false, false, true), vec2<i32>(9721i, i32(-2147483648)), 80031u, vec4<f32>(-1060f, 1273f, -973f, 786f)), Struct_1(897f, vec4<bool>(false, true, false, false), vec2<i32>(-32641i, -4035i), 45045u, vec4<f32>(-782f, 840f, -173f, 593f)));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(643f, vec4<bool>(true, false, true, false), vec2<i32>(0i, -30602i), 37814u, vec4<f32>(989f, -749f, -131f, -2111f))), Struct_2(Struct_1(-872f, vec4<bool>(false, true, true, false), vec2<i32>(-1i, 1i), 0u, vec4<f32>(760f, -1944f, 2895f, -182f))), Struct_2(Struct_1(-567f, vec4<bool>(true, true, false, true), vec2<i32>(-52739i, 27176i), 80241u, vec4<f32>(-846f, 1000f, 1502f, 614f))), Struct_2(Struct_1(-957f, vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), 15667i), 0u, vec4<f32>(256f, -750f, -1173f, -355f))), Struct_2(Struct_1(347f, vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, -1i), 28603u, vec4<f32>(1917f, 241f, 725f, -172f))), Struct_2(Struct_1(-876f, vec4<bool>(true, false, true, false), vec2<i32>(25436i, 5670i), 77088u, vec4<f32>(552f, -219f, -1515f, 1607f))));

var<private> global3: vec2<i32>;

var<private> global4: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-416f, -948f, 1000f, 181f), vec4<f32>(1651f, -1361f, -1243f, 1000f), vec4<f32>(813f, 1104f, -2267f, 579f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_u32(select(u_input.b.ww, firstTrailingBit(reverseBits(u_input.a)), select(!global0[_wgslsmith_index_u32(25672u, 20u)], global0[_wgslsmith_index_u32(29815u, 20u)] || global0[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i <= arg_0) && all(select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], false, global0[_wgslsmith_index_u32(14194u, 20u)]), vec3<bool>(true, true, false)))), _wgslsmith_div_vec2_u32(vec2<u32>(~(~1u), u_input.b.x), _wgslsmith_mult_vec2_u32(abs(reverseBits(vec2<u32>(u_input.d.x, u_input.d.x))), ~(~vec2<u32>(66651u, 3304u)))));
    global4 = array<vec4<f32>, 3>();
    var var_1 = global1[_wgslsmith_index_u32(~var_0.x, 31u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.e.zwz)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1182f))));
    let var_3 = ~select(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, min(reverseBits(u_input.b), ~u_input.b)), !vec4<bool>(global0[_wgslsmith_index_u32(~var_1.d, 20u)], global0[_wgslsmith_index_u32(arg_1, 20u)], true, var_1.b.x));
    return var_1.d;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    var var_0 = vec2<bool>(true, ((true && global0[_wgslsmith_index_u32(func_3(global3.x, u_input.a.x, 279f), 20u)]) || false) | (u_input.a.x >= _wgslsmith_mod_u32(abs(u_input.d.x), u_input.d.x)));
    let var_1 = Struct_4(Struct_3(Struct_2(Struct_1(1f, select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, global0[_wgslsmith_index_u32(73151u, 20u)]), var_0.x), ~vec2<i32>(0i, global3.x), u_input.a.x, _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 3u)]))), Struct_1(903f, select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.x, var_0.x, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false, true), false), ~vec2<i32>(-25155i, global3.x) >> (vec2<u32>(21596u, 4294967295u) % vec2<u32>(32u)), select(_wgslsmith_div_u32(74561u, u_input.a.x), u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), global4[_wgslsmith_index_u32(~(~23805u), 3u)])));
    global3 = vec2<i32>(-1i) * -var_1.a.b.c;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_2, 6>();
    var var_0 = vec4<u32>(u_input.b.x, u_input.d.x, u_input.a.x, 82971u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2362f - -448f))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(f32(-1f) * -1137f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<f32>(795f, -1111f, -327f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f * -337f)), !(u_input.c.x <= var_0.x))), all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(33018u, 20u)], true), vec2<bool>(false, true), true), true)))));
    var var_2 = vec4<f32>(-1609f, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1040f + -391f), -329f))));
    var var_3 = _wgslsmith_sub_u32(reverseBits(~abs(u_input.b.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b.wy, var_0.xy), ~vec2<u32>(0u, 76257u))) < 63980u;
    return StorageBuffer(var_0.x, firstLeadingBit(select(u_input.a, vec2<u32>(1u, u_input.a.x), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 20u)]))) & u_input.d, _wgslsmith_f_op_f32(ceil(-580f)), abs(vec2<i32>(-global3.x, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-(abs(reverseBits(vec4<i32>(global3.x, -1208i, global3.x, global3.x))) << (~(u_input.b << (vec4<u32>(45600u, u_input.d.x, 70611u, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, global3.x) >> (u_input.b % vec4<u32>(32u)), -vec4<i32>(0i, global3.x, global3.x, -2147483647i)) >> ((vec4<u32>(68027u, 0u, 59693u, u_input.b.x) & vec4<u32>(55522u, 16718u, 4294967295u, u_input.d.x)) % vec4<u32>(32u))), true);
    let var_1 = -(vec4<i32>(~(-2147483647i), global3.x, firstLeadingBit(_wgslsmith_mod_i32(12138i, global3.x)), select(var_0.x, -1278i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) | min(var_0.x, global3.x)) & vec4<i32>(1i, ~_wgslsmith_add_i32(global3.x, global3.x), -var_0.x, -43018i));
    global3 = countOneBits(~(~(~reverseBits(vec2<i32>(var_0.x, -2197i)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2293f * 1009f))) + 784f);
    global1 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = func_1();
}

