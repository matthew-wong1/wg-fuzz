struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(25746i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(51134i, -6147i), vec2<i32>(31461i, -21354i), vec2<i32>(-20978i, -7403i), vec2<i32>(0i, -1i), vec2<i32>(-17020i, 0i), vec2<i32>(13980i, -45958i), vec2<i32>(8916i, 31256i), vec2<i32>(28247i, 12709i), vec2<i32>(-57720i, -1i), vec2<i32>(21789i, -12411i));

var<private> global2: array<bool, 5> = array<bool, 5>(false, false, true, true, false);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<i32>(38887i, 0i, -36485i), vec2<f32>(-264f, 552f)), Struct_2(vec3<i32>(-39425i, -8193i, 0i), vec2<f32>(-299f, -175f)), Struct_2(vec3<i32>(-20328i, 14566i, 64627i), vec2<f32>(526f, 265f)), Struct_2(vec3<i32>(-1i, 35163i, 2147483647i), vec2<f32>(-685f, 1501f)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -54040i), vec2<f32>(1257f, 1000f)), Struct_2(vec3<i32>(2147483647i, -33151i, -24125i), vec2<f32>(-314f, -207f)), Struct_2(vec3<i32>(0i, 2147483647i, 1i), vec2<f32>(394f, -495f)), Struct_2(vec3<i32>(-420i, 0i, -17747i), vec2<f32>(401f, 1482f)), Struct_2(vec3<i32>(-1i, 1i, 2147483647i), vec2<f32>(1169f, -394f)), Struct_2(vec3<i32>(1i, -1i, 30438i), vec2<f32>(-959f, 888f)), Struct_2(vec3<i32>(1i, 0i, 30086i), vec2<f32>(557f, 171f)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec2<f32>(-319f, 177f)), Struct_2(vec3<i32>(2147483647i, 27658i, 8610i), vec2<f32>(934f, 1000f)), Struct_2(vec3<i32>(20953i, 2147483647i, 1i), vec2<f32>(331f, 688f)), Struct_2(vec3<i32>(16239i, -7699i, -1i), vec2<f32>(1938f, 684f)), Struct_2(vec3<i32>(2147483647i, 2147483647i, -13798i), vec2<f32>(-365f, 930f)), Struct_2(vec3<i32>(-1i, -7904i, -58083i), vec2<f32>(-1120f, 431f)), Struct_2(vec3<i32>(-1i, 0i, 33908i), vec2<f32>(-427f, -526f)), Struct_2(vec3<i32>(-54114i, -1i, -52362i), vec2<f32>(305f, -354f)), Struct_2(vec3<i32>(47116i, 2147483647i, 2147483647i), vec2<f32>(-1171f, 979f)), Struct_2(vec3<i32>(-60958i, 1i, 41421i), vec2<f32>(-198f, -958f)), Struct_2(vec3<i32>(-3452i, 0i, -4930i), vec2<f32>(367f, 1630f)), Struct_2(vec3<i32>(-7497i, 1i, 31645i), vec2<f32>(-557f, 466f)), Struct_2(vec3<i32>(-1i, 0i, 2147483647i), vec2<f32>(1126f, -139f)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -11513i), vec2<f32>(-396f, -1251f)), Struct_2(vec3<i32>(20418i, -26925i, -15309i), vec2<f32>(1004f, 572f)), Struct_2(vec3<i32>(34677i, -1i, 2147483647i), vec2<f32>(-1258f, 996f)), Struct_2(vec3<i32>(30268i, -20253i, 2147483647i), vec2<f32>(1544f, -123f)), Struct_2(vec3<i32>(48589i, 57988i, i32(-2147483648)), vec2<f32>(1096f, -804f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    global3 = array<Struct_2, 29>();
    var var_0 = Struct_1(false);
    var var_1 = ~(~u_input.b.yw);
    let var_2 = vec3<u32>(~u_input.a.x & _wgslsmith_sub_u32(var_1.x, var_1.x), ~countOneBits(~var_1.x), var_1.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1097f)) - arg_1.b.x) * _wgslsmith_div_f32(arg_1.b.x, -907f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 385f))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    global3 = array<Struct_2, 29>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), -1821f, -346f);
    var var_1 = Struct_2(firstLeadingBit(select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.x, arg_0, 1i), arg_2.a), vec3<i32>(24685i, 28766i, 0i) | vec3<i32>(arg_0, arg_2.a.x, 0i), select(vec3<bool>(global2[_wgslsmith_index_u32(7000u, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(5445u, 5u)], true, true))) << (firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1063f, arg_2.b.x) - _wgslsmith_f_op_vec2_f32(-var_0.xz)));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(11322u, ~25468u), _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), u_input.a) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~u_input.a.x), _wgslsmith_sub_u32(40982u, u_input.a.x)), u_input.a);
    var var_3 = true;
    return var_0;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~(~_wgslsmith_clamp_i32(11144i, -2147483647i, -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, 1i), global3[_wgslsmith_index_u32(~4294967295u, 29u)])))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(20634u, abs(firstLeadingBit(1u))), 29u)])) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(436f, -1832f, 244f), _wgslsmith_f_op_vec3_f32(vec3<f32>(272f, -405f, -691f) - vec3<f32>(1000f, -1000f, -298f))) * vec3<f32>(1152f, -722f, _wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, -38022i, 31706i), Struct_2(vec3<i32>(12122i, 0i, 4384i), vec2<f32>(-1853f, 954f)))))))));
    global1 = array<vec2<i32>, 12>();
    let var_1 = Struct_1(false);
    let var_2 = global3[_wgslsmith_index_u32(reverseBits(min(u_input.a.x, 4294967295u)), 29u)];
    let var_3 = Struct_2(vec3<i32>(~var_2.a.x, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.a.x, var_2.a.x), var_2.a)), var_2.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, var_2.b.x)), var_0.xz))));
    return Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_3.b, vec2<f32>(var_0.x, var_2.b.x)))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = ~(~(~countOneBits(i32(-1i) * -42289i)));
    var var_0 = u_input.b.x;
    let var_1 = -arg_1.a.x;
    var var_2 = Struct_1(any(select(vec2<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], true, global2[_wgslsmith_index_u32(3605u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)])), arg_1.b.x > -2363f), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.b.x, 5u)], !global2[_wgslsmith_index_u32(0u, 5u)]), true)));
    global1 = array<vec2<i32>, 12>();
    return ~(-reverseBits(1i));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = 32105i;
    var var_0 = Struct_1(2181i < arg_1);
    global3 = array<Struct_2, 29>();
    var_0 = Struct_1(false);
    var_0 = Struct_1(true);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f * _wgslsmith_div_f32(-447f, 652f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(361f)), _wgslsmith_div_f32(-109f, -1000f)))) >= _wgslsmith_f_op_f32(-1f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.b.x) - -1278f)), _wgslsmith_div_f32(arg_2.b.x, -933f));
    var var_2 = var_1;
    var var_3 = u_input.a.x;
    var var_4 = func_6(Struct_1(true), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-21058i, arg_1.a.x, 0i, arg_0.a.x) ^ vec4<i32>(arg_1.a.x, 12649i, arg_2.a.x, arg_1.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, 0i, arg_2.a.x, 2147483647i), vec4<i32>(var_0.a.x, -44428i, var_0.a.x, 2147483647i))), vec4<i32>(func_5(1519f, func_2(), Struct_2(arg_2.a, var_0.b)), -abs(arg_2.a.x), -17254i, min(~arg_1.a.x, 2147483647i))), Struct_1(true));
    return 1264f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1038f, 1581f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) * _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(vec3<i32>(-19509i, 0i, 2147483647i), vec2<f32>(1400f, -546f)), global3[_wgslsmith_index_u32(u_input.a.x, 29u)]))), _wgslsmith_f_op_vec3_f32(func_4(~11251i, -1340f, global3[_wgslsmith_index_u32(1u, 29u)])).x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(445f, -518f, 1033f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1135f, 877f, -1000f) + vec3<f32>(-392f, 1909f, 753f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1291f))), -1790f))));
    var var_1 = Struct_1(any(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], false))));
    let var_2 = Struct_1(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) > ~0u);
    global1 = array<vec2<i32>, 12>();
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(~_wgslsmith_add_vec2_i32(~vec2<i32>(-26517i, 0i), ~var_3.a.zz)), ~(~(u_input.b.x << (var_4.x % 32u))) ^ select(abs(~var_4.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 22283u, u_input.a.x), u_input.b.xww), true), ~var_4.yw);
}

