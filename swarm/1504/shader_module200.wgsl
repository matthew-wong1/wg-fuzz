struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1000f, 933f, 1151f, 1944f, 628f, -1406f, -1055f, -954f, -986f, 618f, -111f, -425f, 1441f, -284f, -1850f, 828f, 1000f, 378f, 247f, -1416f, -732f, -1763f, -607f, -832f, 647f, -1187f, -699f, -1525f);

var<private> global1: i32 = 26455i;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(vec4<f32>(723f, -1083f, -659f, 1305f)), Struct_1(vec4<f32>(815f, 1069f, -1000f, -637f)), vec4<bool>(true, false, true, false), vec2<u32>(38622u, 76391u), 100630u), Struct_3(Struct_1(vec4<f32>(277f, 859f, -2035f, -739f)), Struct_1(vec4<f32>(-142f, -239f, -439f, -1495f)), vec4<bool>(false, false, false, true), vec2<u32>(45543u, 58583u), 36366u), Struct_3(Struct_1(vec4<f32>(-241f, 1913f, -1180f, 1000f)), Struct_1(vec4<f32>(-400f, 1455f, 369f, -1000f)), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 4852u), 1u), Struct_3(Struct_1(vec4<f32>(-1078f, 208f, -2692f, -1000f)), Struct_1(vec4<f32>(-1000f, 786f, 220f, 329f)), vec4<bool>(false, false, false, true), vec2<u32>(42853u, 75445u), 14923u), Struct_3(Struct_1(vec4<f32>(817f, 267f, 750f, 1000f)), Struct_1(vec4<f32>(-663f, -586f, 161f, 234f)), vec4<bool>(false, false, false, false), vec2<u32>(0u, 4294967295u), 13733u), Struct_3(Struct_1(vec4<f32>(-1442f, -150f, -431f, -1146f)), Struct_1(vec4<f32>(-1000f, 722f, -429f, 1008f)), vec4<bool>(true, false, false, true), vec2<u32>(23863u, 0u), 49405u), Struct_3(Struct_1(vec4<f32>(1350f, -1000f, 565f, 232f)), Struct_1(vec4<f32>(283f, -1772f, -1000f, 496f)), vec4<bool>(true, false, false, true), vec2<u32>(1u, 22275u), 16860u), Struct_3(Struct_1(vec4<f32>(452f, -1832f, 1000f, 1000f)), Struct_1(vec4<f32>(-767f, -1890f, 574f, 1215f)), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 30549u), 35639u), Struct_3(Struct_1(vec4<f32>(-636f, 648f, -622f, 110f)), Struct_1(vec4<f32>(-671f, -228f, -102f, 1138f)), vec4<bool>(true, false, false, false), vec2<u32>(47444u, 4294967295u), 4294967295u), Struct_3(Struct_1(vec4<f32>(508f, 1105f, -166f, 2033f)), Struct_1(vec4<f32>(-510f, -822f, 1044f, 700f)), vec4<bool>(true, true, true, false), vec2<u32>(49954u, 25097u), 44846u), Struct_3(Struct_1(vec4<f32>(-697f, -532f, 960f, 1162f)), Struct_1(vec4<f32>(895f, 609f, 1063f, -1293f)), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 1u), 4294967295u), Struct_3(Struct_1(vec4<f32>(1000f, -499f, -345f, -128f)), Struct_1(vec4<f32>(168f, 1315f, 144f, -1000f)), vec4<bool>(false, false, true, true), vec2<u32>(62779u, 4294967295u), 28802u), Struct_3(Struct_1(vec4<f32>(-949f, 1632f, 780f, -1443f)), Struct_1(vec4<f32>(-366f, -834f, -1138f, -660f)), vec4<bool>(true, true, false, true), vec2<u32>(7079u, 1u), 1u), Struct_3(Struct_1(vec4<f32>(-566f, 1397f, 357f, -869f)), Struct_1(vec4<f32>(-807f, 519f, 1217f, 1763f)), vec4<bool>(false, false, true, true), vec2<u32>(21879u, 40002u), 41432u), Struct_3(Struct_1(vec4<f32>(-106f, -822f, -1659f, -244f)), Struct_1(vec4<f32>(298f, 1203f, 1093f, 1711f)), vec4<bool>(false, false, false, true), vec2<u32>(98150u, 84367u), 4294967295u), Struct_3(Struct_1(vec4<f32>(764f, -439f, -177f, -1000f)), Struct_1(vec4<f32>(-613f, -1169f, 1147f, 209f)), vec4<bool>(false, true, true, true), vec2<u32>(8368u, 32912u), 41401u), Struct_3(Struct_1(vec4<f32>(909f, 1029f, 720f, 268f)), Struct_1(vec4<f32>(-571f, 1000f, -1655f, 1676f)), vec4<bool>(false, true, true, true), vec2<u32>(1u, 4294967295u), 5694u), Struct_3(Struct_1(vec4<f32>(-587f, 1040f, 1079f, -505f)), Struct_1(vec4<f32>(-1619f, -493f, -648f, 955f)), vec4<bool>(false, true, true, false), vec2<u32>(0u, 4294967295u), 57694u), Struct_3(Struct_1(vec4<f32>(352f, 866f, -668f, 464f)), Struct_1(vec4<f32>(1000f, 1000f, -173f, -1103f)), vec4<bool>(true, true, true, true), vec2<u32>(56668u, 108010u), 17788u), Struct_3(Struct_1(vec4<f32>(-1933f, -1234f, 157f, 1426f)), Struct_1(vec4<f32>(-406f, -440f, 387f, 398f)), vec4<bool>(true, false, false, true), vec2<u32>(25952u, 4294967295u), 4294967295u), Struct_3(Struct_1(vec4<f32>(-243f, 762f, -511f, -294f)), Struct_1(vec4<f32>(-615f, -974f, 1056f, 628f)), vec4<bool>(false, false, false, true), vec2<u32>(13695u, 12325u), 1u), Struct_3(Struct_1(vec4<f32>(497f, 498f, 1805f, -1438f)), Struct_1(vec4<f32>(151f, -847f, 1374f, 255f)), vec4<bool>(false, true, false, false), vec2<u32>(14030u, 0u), 4294967295u), Struct_3(Struct_1(vec4<f32>(-1027f, -880f, 328f, 191f)), Struct_1(vec4<f32>(1815f, -439f, -318f, -538f)), vec4<bool>(false, false, true, false), vec2<u32>(1u, 44388u), 12314u), Struct_3(Struct_1(vec4<f32>(1000f, 583f, 2157f, -498f)), Struct_1(vec4<f32>(116f, 629f, -463f, 426f)), vec4<bool>(false, true, false, true), vec2<u32>(97454u, 0u), 44516u), Struct_3(Struct_1(vec4<f32>(-665f, 1000f, 885f, -781f)), Struct_1(vec4<f32>(140f, -199f, -404f, 1697f)), vec4<bool>(true, false, false, false), vec2<u32>(50037u, 47582u), 7442u), Struct_3(Struct_1(vec4<f32>(1179f, -341f, -475f, 357f)), Struct_1(vec4<f32>(229f, -770f, 167f, -2119f)), vec4<bool>(true, false, false, true), vec2<u32>(21634u, 4498u), 8980u));

var<private> global3: array<i32, 3> = array<i32, 3>(i32(-2147483648), i32(-2147483648), -14047i);

var<private> global4: array<vec4<f32>, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_2.b.zw;
    let var_1 = select(vec3<bool>(any(arg_2.b.wx), arg_2.b.x && !any(arg_2.b.xwz), false), arg_2.b.zzy, -869f == _wgslsmith_f_op_f32(-arg_1.a.x));
    let var_2 = global2[_wgslsmith_index_u32(arg_0.x, 26u)];
    let var_3 = true && arg_2.b.x;
    var_0 = arg_2.b.xx;
    return arg_0;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 28u)] + 1926f), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c.x), 28u)], global0[_wgslsmith_index_u32(103030u, 28u)]), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(16077u, 28u)], 103f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-145f, global0[_wgslsmith_index_u32(4294967295u, 28u)], 1000f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 1087f, 1752f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-625f, -240f, 126f))), _wgslsmith_div_vec3_f32(vec3<f32>(403f, 1298f, global0[_wgslsmith_index_u32(50992u, 28u)]), vec3<f32>(-773f, -1109f, 1044f)))))), vec3<bool>(true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(5611u, 28u)] < 941f, -47569i <= global3[_wgslsmith_index_u32(0u, 3u)], true)), true)));
    let var_1 = i32(-1i) * -min(-2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 3u)]);
    global0 = array<f32, 28>();
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 124f, -779f))) + vec3<f32>(-1762f, _wgslsmith_f_op_f32(select(472f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10928u, u_input.c.x, 56291u), 28u)])))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-191f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] - 719f), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, -340f), 1320f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 28u)]))), vec3<bool>(min(-1i, var_1) <= 0i, true, true)))));
    return 0u >> ((_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), ~(~u_input.c.x)) >> (7004u % 32u)) % 32u);
}

fn func_2(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = !vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true)) | (max(arg_0.x, 0u) == func_3()));
    let var_1 = false;
    var var_2 = select(select(select(!select(vec4<bool>(var_1, var_0.x, false, var_1), vec4<bool>(true, false, false, true), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(false, var_1, true, false), vec4<bool>(var_1, false, true, var_1), vec4<bool>(false, false, var_1, var_1)), true), vec4<bool>(!var_0.x, any(vec3<bool>(false, var_0.x, var_1)), false, all(vec4<bool>(var_0.x, var_1, var_0.x, true)))), vec4<bool>(!var_1, !any(vec3<bool>(var_0.x, var_0.x, false)), all(vec4<bool>(false, true, var_0.x, var_0.x)), any(vec4<bool>(var_1, false, false, var_1))), !(!var_1)), !(!(!vec4<bool>(true, var_1, var_1, var_0.x))), var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(global4[_wgslsmith_index_u32(41890u, 20u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 1288f, 703f, 399f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(473f, global0[_wgslsmith_index_u32(4294967295u, 28u)], -352f, 1845f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-609f, 276f, 264f, global0[_wgslsmith_index_u32(61663u, 28u)]), global4[_wgslsmith_index_u32(u_input.c.x, 20u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, _wgslsmith_div_f32(1567f, 600f), _wgslsmith_f_op_f32(-116f - 890f), 1271f)), select(vec4<bool>(u_input.a.x < -2147483647i, true, true, any(vec4<bool>(false, var_1, false, true))), select(select(vec4<bool>(var_0.x, var_2.x, true, true), vec4<bool>(var_2.x, true, var_1, false), var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_2.x, var_1, var_0.x, var_1), vec4<bool>(false, var_2.x, true, var_2.x)), vec4<bool>(var_1, var_0.x, false, var_1)), !select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_2.x, true, true, var_2.x), var_0.x)))));
    global0 = array<f32, 28>();
    return StorageBuffer(-u_input.b, select(vec4<u32>(~(~21172u), 4294967295u, u_input.c.x, 4294967295u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(16585u, 18803u, u_input.c.x, 12006u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 8196u))), vec4<u32>(0u, arg_0.x, 53244u, u_input.c.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(47189u, u_input.c.x, 1u, 0u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -582f), 1359f, any(vec3<bool>(var_1, false, false)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f * global0[_wgslsmith_index_u32(56067u, 28u)]) + -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 7165i;
    global4 = array<vec4<f32>, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(~78435u, 28u)], _wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(43233u >> (u_input.c.x % 32u), 0u & u_input.c.x), 28u)])));
    var var_1 = firstLeadingBit(0u);
    global1 = global3[_wgslsmith_index_u32(max(u_input.c.x, ~6722u), 3u)] >> ((firstLeadingBit(u_input.c.x) | ~10052u) % 32u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 28u)]) * -786f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), 316f)), 1892f));
    let x = u_input.a;
    s_output = func_2(func_1(~abs(vec3<u32>(0u, 23355u, u_input.c.x) | vec3<u32>(u_input.c.x, 6205u, 10094u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1385f, 1126f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 558f) * vec4<f32>(var_0.x, -280f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], -394f)))), Struct_4(vec2<i32>(u_input.b.x, 1i), vec4<bool>(true, true, -1790f >= global0[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)] == global3[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-u_input.a, u_input.a), u_input.a.x)));
}

