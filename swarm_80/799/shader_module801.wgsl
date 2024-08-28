struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(0u, 1i, vec2<u32>(11024u, 67196u), vec2<f32>(-1848f, 390f), vec4<bool>(true, false, false, true)), i32(-2147483648)), Struct_2(Struct_1(1u, 36185i, vec2<u32>(0u, 95127u), vec2<f32>(-1044f, -775f), vec4<bool>(true, false, false, true)), -20754i), Struct_2(Struct_1(107821u, 23309i, vec2<u32>(1710u, 4749u), vec2<f32>(168f, -683f), vec4<bool>(false, false, true, false)), i32(-2147483648)), Struct_2(Struct_1(1u, 12236i, vec2<u32>(63257u, 15299u), vec2<f32>(946f, -658f), vec4<bool>(true, false, false, true)), 2147483647i), Struct_2(Struct_1(1u, -1i, vec2<u32>(0u, 23008u), vec2<f32>(580f, 720f), vec4<bool>(true, false, true, true)), -35832i), Struct_2(Struct_1(85717u, -29053i, vec2<u32>(56569u, 106560u), vec2<f32>(752f, -1000f), vec4<bool>(true, true, true, true)), -16824i), Struct_2(Struct_1(3025u, -1i, vec2<u32>(0u, 4294967295u), vec2<f32>(419f, -1311f), vec4<bool>(true, true, false, false)), -1i), Struct_2(Struct_1(70650u, 1i, vec2<u32>(9064u, 18724u), vec2<f32>(770f, -851f), vec4<bool>(false, false, true, false)), -1i), Struct_2(Struct_1(60626u, 2147483647i, vec2<u32>(36716u, 4294967295u), vec2<f32>(901f, 149f), vec4<bool>(true, true, true, true)), 60400i), Struct_2(Struct_1(10359u, -38813i, vec2<u32>(1u, 27055u), vec2<f32>(1018f, 847f), vec4<bool>(false, false, false, true)), -14244i), Struct_2(Struct_1(1u, 2147483647i, vec2<u32>(38149u, 4294967295u), vec2<f32>(-1670f, -265f), vec4<bool>(false, true, true, false)), -1i), Struct_2(Struct_1(30609u, -13807i, vec2<u32>(4294967295u, 0u), vec2<f32>(356f, -438f), vec4<bool>(true, true, true, false)), -18427i), Struct_2(Struct_1(30619u, 1i, vec2<u32>(49255u, 4294967295u), vec2<f32>(-454f, 601f), vec4<bool>(true, true, true, false)), -1i), Struct_2(Struct_1(0u, -42158i, vec2<u32>(1u, 17247u), vec2<f32>(-1232f, -548f), vec4<bool>(false, false, true, false)), i32(-2147483648)), Struct_2(Struct_1(1u, -39127i, vec2<u32>(1u, 0u), vec2<f32>(1354f, -951f), vec4<bool>(true, true, true, false)), 1i), Struct_2(Struct_1(26982u, -31169i, vec2<u32>(92172u, 0u), vec2<f32>(-1417f, 269f), vec4<bool>(true, false, false, true)), 53844i), Struct_2(Struct_1(0u, 47884i, vec2<u32>(1u, 0u), vec2<f32>(1000f, -449f), vec4<bool>(false, false, true, false)), i32(-2147483648)), Struct_2(Struct_1(63764u, 24582i, vec2<u32>(12699u, 89154u), vec2<f32>(-1067f, -2261f), vec4<bool>(false, true, true, false)), 2147483647i), Struct_2(Struct_1(10843u, 0i, vec2<u32>(23391u, 0u), vec2<f32>(1000f, 2594f), vec4<bool>(true, false, false, true)), -1i));

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, false, false, false, false, true, false, false, true, false, false, true, true, false, true, false, true, false, false, true);

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(1084f, -1171f, 1000f), vec3<f32>(-1335f, -459f, -1086f), vec3<f32>(-353f, -336f, -262f), vec3<f32>(-1308f, 868f, -2621f), vec3<f32>(423f, 172f, -931f), vec3<f32>(-1437f, -502f, -681f), vec3<f32>(349f, 539f, -140f), vec3<f32>(-1744f, 1169f, 2257f), vec3<f32>(-889f, -767f, 1513f), vec3<f32>(1428f, -1000f, -289f), vec3<f32>(504f, 580f, -1874f), vec3<f32>(542f, 1000f, 1948f), vec3<f32>(-266f, -1000f, 874f), vec3<f32>(-786f, -846f, -242f), vec3<f32>(-297f, 478f, 660f), vec3<f32>(711f, 378f, -253f), vec3<f32>(-562f, 403f, 174f), vec3<f32>(-1000f, -800f, 212f), vec3<f32>(1178f, -1000f, -1237f), vec3<f32>(-331f, 503f, -534f), vec3<f32>(264f, -960f, 1375f), vec3<f32>(1461f, -552f, 353f), vec3<f32>(-2091f, -529f, -1518f), vec3<f32>(-503f, 957f, -752f), vec3<f32>(-565f, -461f, -929f));

var<private> global3: vec3<i32>;

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_1(~0u, firstLeadingBit(global3.x), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 72596u, 20180u), reverseBits(vec4<u32>(4294967295u, 1u, 28990u, 40263u))), 1u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-736f, -441f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(861f, arg_1.x, arg_0.x)) - 1045f)))), select(!(!(!arg_0)), !vec4<bool>(global1[_wgslsmith_index_u32(~21358u, 22u)], true, arg_0.x, all(arg_0.xzx)), (global3.x | -47579i) == -24250i));
    global0 = array<Struct_2, 19>();
    let var_1 = u_input.a;
    let var_2 = Struct_1(~30836u, _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(_wgslsmith_add_i32(-27597i, var_1), reverseBits(1i)), 2147483647i, -_wgslsmith_mod_i32(i32(-1i) * -15521i, global3.x)), vec2<u32>(6712u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(220f, 583f)))))), vec4<bool>(all(vec4<bool>(arg_0.x, true, false, var_0.e.x)), !(arg_1.x == -1827f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-325f))) == 503f, arg_0.x));
    let var_3 = select(arg_0, vec4<bool>(!global1[_wgslsmith_index_u32(select(82495u, 35724u << (var_2.c.x % 32u), arg_0.x || false), 22u)], any(!select(vec3<bool>(false, var_0.e.x, false), var_0.e.zyz, true)), !global1[_wgslsmith_index_u32(0u, 22u)], true), all(var_2.e.wwz));
    return vec2<i32>(~(-28687i), global3.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f + -1113f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(675f - 896f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -512f), 950f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-562f, -1377f))), !global1[_wgslsmith_index_u32(~72569u, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))), 1696f);
    global4 = ~1u;
    var var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = ~vec3<u32>(8913u, ~(~79620u), ~(~_wgslsmith_div_u32(11549u, 54450u)));
    global4 = 58270u;
    return Struct_1(~(1u << (~var_2.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_3(vec4<bool>(true, global1[_wgslsmith_index_u32(86302u, 22u)], false, global1[_wgslsmith_index_u32(var_2.x, 22u)]), vec4<f32>(var_0.x, -566f, var_1.x, var_1.x)), u_input.d), global3.x) & ~_wgslsmith_div_i32(-27151i, ~8131i), ~var_2.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) * var_0.ww), !select(vec4<bool>(any(vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(var_2.x, 22u)], true, all(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(31731u, 22u)]))), vec4<bool>(false, all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(var_2.x >> (var_2.x % 32u), 22u)], all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_2.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]))), !all(vec2<bool>(true, global1[_wgslsmith_index_u32(92606u, 22u)]))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<Struct_2, 19>();
    global1 = array<bool, 22>();
    global0 = array<Struct_2, 19>();
    let var_0 = func_2();
    global4 = var_0.c.x;
    return vec2<bool>(false, 0i == arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(vec4<bool>(false, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true, false, true)), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14951u), vec2<u32>(1u, 5071u)), 22u)])), all(vec4<bool>(global1[_wgslsmith_index_u32(~41486u, 22u)], true, global1[_wgslsmith_index_u32(max(0u, 0u), 22u)], true))), !(!select(vec2<bool>(false, false), select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(9472u, 22u)], false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(21030u, 22u)])), true)), all(func_1(vec2<bool>(true, true), Struct_2(Struct_1(0u, global3.x, vec2<u32>(70554u, 1u), vec2<f32>(-215f, 898f), vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(47339u, 22u)], global1[_wgslsmith_index_u32(9526u, 22u)])), u_input.d.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 0u), 19u)])) != global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(30668u, 22671u)), ~1117u), 22u)]);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(1u, 1u), func_2().a), 19u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-541f, 495f, var_1.a.d.x, var_1.a.d.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(ceil(127f)), var_1.a.d.x, 414f) * vec4<f32>(var_1.a.d.x, func_2().d.x, _wgslsmith_f_op_f32(abs(var_1.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -940f))))));
    let var_3 = vec2<bool>(true, func_1(select(func_2().e.zy, !var_1.a.e.zw, func_2().e.xw), Struct_2(var_1.a, var_1.a.b), Struct_2(Struct_1(~1u, global3.x, min(var_1.a.c, var_1.a.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(156f, -660f), vec2<f32>(var_2.x, -183f))), !vec4<bool>(var_0.x, false, global1[_wgslsmith_index_u32(4294967295u, 22u)], true)), 1i)).x);
    global2 = array<vec3<f32>, 25>();
    let var_4 = _wgslsmith_sub_vec4_i32(u_input.c, select(-vec4<i32>(func_3(vec4<bool>(true, var_0.x, var_0.x, var_3.x), var_2).x, ~var_1.b, 1i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, -8112i, 0i, min(u_input.d.x, 0i)), u_input.c, vec4<i32>(global3.x, 1i, u_input.a, abs(var_1.a.b))), !global1[_wgslsmith_index_u32(var_1.a.a, 22u)]));
    var var_5 = var_1.a;
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(var_1.a.d.x, var_5.d.x, 377f, var_2.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.d.x, var_5.d.x, 664f, -1216f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-470f, -960f, -547f, var_2.x) - vec4<f32>(1000f, -278f, 120f, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(_wgslsmith_mod_u32(var_1.a.a, firstTrailingBit(76957u)))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global3.x, u_input.d.x, 1i), vec4<i32>(-1i, var_5.b, 0i, u_input.a)) | -_wgslsmith_div_i32(firstTrailingBit(-29327i), abs(global3.x)), var_6.x, _wgslsmith_add_i32(firstLeadingBit(2649i), ~21020i));
}

