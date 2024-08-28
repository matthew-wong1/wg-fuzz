struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec2<u32>, 16>;

var<private> global2: array<u32, 25>;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(-3686f, vec4<f32>(1532f, -1632f, -359f, -370f), vec4<u32>(8048u, 4294967295u, 29119u, 1u)), Struct_4(-723f, vec4<f32>(-300f, 812f, -1836f, -915f), vec4<u32>(87387u, 4294967295u, 131159u, 1u)), Struct_4(-1088f, vec4<f32>(351f, 734f, 1000f, 648f), vec4<u32>(1u, 0u, 7698u, 1u)), Struct_4(456f, vec4<f32>(178f, 1000f, 626f, -2062f), vec4<u32>(30556u, 0u, 22836u, 1u)), Struct_4(-1785f, vec4<f32>(685f, 1716f, 672f, -1000f), vec4<u32>(55227u, 45383u, 11145u, 0u)), Struct_4(-1459f, vec4<f32>(188f, -1759f, 909f, -1000f), vec4<u32>(21564u, 4294967295u, 64359u, 0u)), Struct_4(-1000f, vec4<f32>(-516f, 1015f, -242f, 100f), vec4<u32>(3566u, 42259u, 20089u, 36633u)), Struct_4(-1000f, vec4<f32>(147f, -3489f, 141f, 822f), vec4<u32>(60865u, 20722u, 32363u, 4294967295u)), Struct_4(-1985f, vec4<f32>(-345f, 678f, -497f, 1613f), vec4<u32>(0u, 58835u, 52716u, 1u)), Struct_4(808f, vec4<f32>(-824f, -186f, -1999f, 1029f), vec4<u32>(4294967295u, 16860u, 44231u, 30404u)), Struct_4(-638f, vec4<f32>(-712f, 366f, -1547f, 545f), vec4<u32>(60724u, 4294967295u, 0u, 54585u)), Struct_4(550f, vec4<f32>(1000f, 273f, 907f, -1012f), vec4<u32>(112173u, 6352u, 0u, 13377u)), Struct_4(475f, vec4<f32>(620f, 1632f, 609f, 438f), vec4<u32>(0u, 23448u, 12341u, 44213u)), Struct_4(-689f, vec4<f32>(-387f, 1000f, 1000f, 627f), vec4<u32>(88061u, 0u, 24784u, 34413u)), Struct_4(-102f, vec4<f32>(965f, -212f, 766f, 273f), vec4<u32>(1u, 4294967295u, 1u, 31560u)), Struct_4(-575f, vec4<f32>(-989f, -542f, 1023f, -130f), vec4<u32>(11952u, 1669u, 18422u, 4294967295u)), Struct_4(541f, vec4<f32>(-1564f, 663f, -552f, -1000f), vec4<u32>(26852u, 4294967295u, 4294967295u, 1u)), Struct_4(465f, vec4<f32>(-1035f, 474f, 338f, 1590f), vec4<u32>(87828u, 14258u, 4294967295u, 46873u)), Struct_4(-252f, vec4<f32>(-807f, -216f, -853f, -501f), vec4<u32>(39765u, 18332u, 74u, 4294967295u)), Struct_4(1442f, vec4<f32>(571f, -1698f, 158f, 1832f), vec4<u32>(0u, 0u, 4294967295u, 69388u)), Struct_4(-651f, vec4<f32>(101f, 926f, 177f, -1630f), vec4<u32>(65018u, 0u, 5656u, 1u)));

var<private> global4: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(622f, -1000f), vec2<f32>(542f, 922f), vec2<f32>(1109f, 2075f), vec2<f32>(1177f, -409f), vec2<f32>(-258f, 208f), vec2<f32>(-601f, 1610f), vec2<f32>(-1106f, -339f), vec2<f32>(556f, -258f), vec2<f32>(268f, 1382f), vec2<f32>(-807f, -1296f), vec2<f32>(-260f, -2217f), vec2<f32>(1000f, -831f), vec2<f32>(-990f, 1196f), vec2<f32>(484f, -714f), vec2<f32>(-660f, -863f), vec2<f32>(258f, -895f), vec2<f32>(-715f, 714f), vec2<f32>(-1208f, 464f), vec2<f32>(671f, 258f), vec2<f32>(825f, -1000f), vec2<f32>(274f, 193f), vec2<f32>(849f, 773f), vec2<f32>(484f, 185f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0.b, arg_0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(var_0.b))))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -808f))), var_0.a, var_0.a)));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x << (abs(~13989u) % 32u), i32(-1i) * -2147483647i), u_input.b);
    global0 = array<Struct_1, 17>();
    global4 = array<vec2<f32>, 23>();
    return 449f;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1652f, _wgslsmith_f_op_f32(1000f + -528f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a.x, 25u)], 21u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_4(-1226f, vec4<f32>(-438f, -140f, -1728f, -429f), vec4<u32>(u_input.a.x, 1u, 0u, 7675u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -430f))))), _wgslsmith_f_op_f32(abs(642f)), _wgslsmith_f_op_f32(f32(-1f) * -1653f)), u_input.c);
    var var_1 = true;
    global1 = array<vec2<u32>, 16>();
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.b.x, u_input.d.x), ~u_input.d), u_input.d) >> (u_input.c.yxy % vec3<u32>(32u));
    return 628f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = vec3<u32>(1u, arg_0.c.x, 0u) & arg_0.c;
    var var_1 = any(!(!vec3<bool>(arg_1.a.a.a.x, any(vec4<bool>(true, false, true, false)), arg_1.a.a.e.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))) == -2520f;
    var var_3 = arg_0;
    global3 = array<Struct_4, 21>();
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !(!all(vec2<bool>(true, false))), !any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    let var_1 = -16678i;
    var var_2 = vec4<bool>(all(select(select(vec3<bool>(true, false, var_0.x), var_0.zzw, false | var_0.x), var_0.wxx, all(var_0.wzx))), any(!vec3<bool>(all(var_0.xz), var_0.x, true)), var_0.x, any(func_1(Struct_1(select(var_0.xz, var_0.wx, var_0.x), vec2<f32>(-342f, -1331f), u_input.a, vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec2<bool>(true, var_0.x)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(18399u, 17u)], vec2<bool>(true, true), var_1)))));
    let var_3 = Struct_1(vec2<bool>(true, true), global4[_wgslsmith_index_u32(u_input.c.x, 23u)], ~vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 46417u), u_input.c.www), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25508u, 25u)], 25u)], 25u)], 4294967295u, 60622u), true), 0u ^ (u_input.a.x & 1u), select(~global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], var_2.x)), abs(u_input.a), var_2.xy);
    let var_4 = vec2<bool>(any(!(!vec4<bool>(var_0.x, var_2.x, var_2.x, false))), any(select(vec3<bool>(var_3.b.x >= var_3.b.x, true, var_2.x | var_3.a.x), select(!vec3<bool>(var_0.x, var_0.x, var_3.a.x), vec3<bool>(true, var_3.a.x, true), vec3<bool>(var_3.a.x, false, false)), select(var_0.wzy, vec3<bool>(true, true, var_2.x), !vec3<bool>(var_3.e.x, var_3.e.x, var_0.x)))));
    var_2 = vec4<bool>(!all(select(select(vec4<bool>(true, false, true, var_4.x), vec4<bool>(true, false, true, var_0.x), true), !vec4<bool>(true, true, var_2.x, var_2.x), 15245u == u_input.a.x)), true, any(var_2.wyw), true);
    var var_5 = Struct_2(var_3, vec2<bool>(var_0.x, true), -33499i);
    var var_6 = Struct_4(var_5.a.b.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.b.x, var_3.b.x, 901f, var_5.a.b.x), vec4<f32>(var_3.b.x, var_3.b.x, var_5.a.b.x, -659f))))))), ~vec4<u32>(76013u, countOneBits(1u) << (~var_5.a.d.x % 32u), 25897u, var_5.a.c.x));
    var var_7 = select(!select(select(!var_0.xww, select(var_0.ywx, var_0.wyx, vec3<bool>(true, var_3.a.x, var_2.x)), !vec3<bool>(true, var_2.x, true)), select(!var_2.wyx, select(var_2.wzx, vec3<bool>(false, false, var_2.x), vec3<bool>(var_0.x, true, true)), var_3.a.x), !select(vec3<bool>(var_3.a.x, false, var_5.a.e.x), var_0.xwy, false)), !vec3<bool>(_wgslsmith_div_f32(var_3.b.x, var_6.b.x) >= _wgslsmith_f_op_f32(floor(var_6.a)), true, 381f < _wgslsmith_div_f32(-127f, var_3.b.x)), !(!(!vec3<bool>(var_0.x, false, var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(var_5.a.b.x - var_5.a.b.x)), firstLeadingBit(~(u_input.a.x << (var_6.c.x % 32u)) & _wgslsmith_mod_u32(11819u, var_5.a.d.x & var_3.d.x)), -max(-select(vec4<i32>(99702i, u_input.b.x, 15693i, 2147483647i), vec4<i32>(var_1, -18564i, -1i, -1i), var_3.e.x), _wgslsmith_sub_vec4_i32(max(vec4<i32>(2147483647i, var_1, var_1, 2147483647i), vec4<i32>(var_1, u_input.b.x, var_5.c, -2147483647i)), vec4<i32>(2147483647i, 24838i, 2147483647i, u_input.b.x))), _wgslsmith_mod_vec2_u32(~(~var_6.c.xy ^ vec2<u32>(var_3.c.x, global2[_wgslsmith_index_u32(var_6.c.x, 25u)])), vec2<u32>(var_5.a.d.x, reverseBits(23373u))), ~(select(var_1, i32(-1i) * -17353i, !var_5.a.a.x) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(6685u, u_input.c.x), 0u) % 32u)));
}

