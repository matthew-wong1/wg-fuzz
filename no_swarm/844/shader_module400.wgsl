struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(6642i, 25934i, -12833i), vec3<i32>(2147483647i, 4679i, -35712i), vec3<i32>(i32(-2147483648), 56831i, 11863i), vec3<i32>(-11880i, 1i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 26066i), vec3<i32>(-29575i, 22619i, 1i), vec3<i32>(2147483647i, -13851i, -1i), vec3<i32>(i32(-2147483648), 17218i, 1454i), vec3<i32>(1i, -47222i, 0i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(0i, 12119i, -599i), vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(-42333i, -5734i, 0i), vec3<i32>(-32935i, 51999i, -22841i), vec3<i32>(-59046i, 0i, -1i), vec3<i32>(9046i, 12266i, 25598i), vec3<i32>(0i, 28445i, 93354i));

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, false)), vec4<f32>(-155f, 1040f, 188f, 450f)), Struct_4(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true)), vec4<f32>(275f, 2128f, 906f, 849f)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, true)), vec4<f32>(731f, -318f, -1000f, -1743f)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, true)), vec4<f32>(426f, -978f, 620f, 1680f)), Struct_4(vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, false)), vec4<f32>(1000f, -669f, 313f, 1000f)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, true)), vec4<f32>(843f, -847f, 213f, 412f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, true)), vec4<f32>(2107f, -2397f, 1126f, 132f)), Struct_4(vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, false)), vec4<f32>(-1271f, 811f, 1933f, 1505f)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec2<bool>(false, false)), vec4<f32>(-1252f, 1170f, -1100f, -1404f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, true)), vec4<f32>(485f, 418f, 127f, 446f)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec2<bool>(false, true)), vec4<f32>(1000f, 881f, -938f, 568f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, true)), vec4<f32>(-1165f, 926f, 172f, -560f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, false)), vec4<f32>(188f, 1140f, 1479f, 209f)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, true)), vec4<f32>(660f, -272f, 349f, 1714f)), Struct_4(vec3<bool>(false, true, true), Struct_1(vec2<bool>(true, true)), vec4<f32>(-115f, -715f, 819f, -1174f)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, true)), vec4<f32>(-358f, 807f, -1395f, 1189f)), Struct_4(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, false)), vec4<f32>(659f, -395f, -640f, -779f)), Struct_4(vec3<bool>(false, true, true), Struct_1(vec2<bool>(true, false)), vec4<f32>(217f, -215f, 1439f, -1802f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, false)), vec4<f32>(171f, 1009f, 381f, 1000f)), Struct_4(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, false)), vec4<f32>(688f, -886f, -786f, -1415f)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, true)), vec4<f32>(-244f, -697f, 827f, 736f)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, true)), vec4<f32>(-173f, 1600f, -279f, -170f)), Struct_4(vec3<bool>(false, true, true), Struct_1(vec2<bool>(true, true)), vec4<f32>(883f, 331f, -1000f, -521f)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec2<bool>(false, true)), vec4<f32>(-1401f, 1170f, 1604f, -273f)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, false)), vec4<f32>(1461f, -469f, -365f, -1000f)), Struct_4(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false)), vec4<f32>(-1778f, -891f, 1000f, -229f)));

var<private> global2: array<bool, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], false), vec2<bool>(arg_1.c.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), u_input.a < u_input.b.x), vec2<bool>(arg_0.x && global2[_wgslsmith_index_u32(u_input.a, 23u)], arg_0.x), arg_0.zx)), reverseBits(vec2<i32>(8439i, _wgslsmith_add_i32(countOneBits(arg_1.a.x), select(-1i, arg_1.a.x, arg_0.x)))));
    global1 = array<Struct_4, 26>();
    var_0 = Struct_2(Struct_1(vec2<bool>(~4294967295u > u_input.b.x, true)), -_wgslsmith_mult_vec2_i32(arg_1.a.zy, arg_1.a.xy & arg_1.a.yx) & select(~var_0.b >> (~u_input.b.yz % vec2<u32>(32u)), arg_1.a.zy, vec2<bool>(any(arg_0.yw), any(arg_0.wyx))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.x * -704f)))) + 245f) - arg_1.b.x);
    var var_2 = global1[_wgslsmith_index_u32(41309u, 26u)];
    return arg_1.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    var var_0 = ~(-select(-2147483647i, ~countOneBits(arg_0.b.x), true));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, ~u_input.a, u_input.b.x), u_input.b.x);
    var var_3 = Struct_1(arg_1.a.a);
    let var_4 = select(abs(vec3<i32>(arg_0.b.x, -15538i, max(var_1.b.x, -26384i))) | _wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(2751i, arg_0.b.x, arg_1.b.x)), -global0[_wgslsmith_index_u32(0u, 17u)]), reverseBits(firstTrailingBit(global0[_wgslsmith_index_u32(~var_2, 17u)])), arg_0.a.a.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1000f, -1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-844f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -981f))), _wgslsmith_f_op_f32(min(-795f, -444f)))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    global1 = array<Struct_4, 26>();
    var var_0 = Struct_3(-vec3<i32>(~0i, -2147483647i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(43155u, 17u)], vec3<i32>(22933i, -54113i, 0i))) ^ reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.b.x, 27239u), 17u)]), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(func_2(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 23u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 23u)], false, global2[_wgslsmith_index_u32(arg_1.x, 23u)], false), vec4<bool>(global2[_wgslsmith_index_u32(70101u, 23u)], false, false, true)), Struct_3(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(193f, -1879f, 1763f), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(80375u, 23u)], false)))), -(~vec2<i32>(arg_0, arg_0))), Struct_2(func_2(select(vec4<bool>(false, global2[_wgslsmith_index_u32(22131u, 23u)], true, global2[_wgslsmith_index_u32(arg_1.x, 23u)]), vec4<bool>(false, true, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], true, false)), Struct_3(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(-1949f, 406f, 450f), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 23u)], true)))), abs(~vec2<i32>(arg_0, -2147483647i))), func_2(vec4<bool>(-33412i == arg_0, true, any(vec2<bool>(true, true)), true), Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -1i, arg_0), vec3<i32>(arg_0, 1i, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, 283f, -311f)), Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 23u)])))), (any(vec2<bool>(true, false)) | global2[_wgslsmith_index_u32(39723u, 23u)]) && true)), func_2(vec4<bool>(true, true, select(func_2(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(91752u, 23u)]), Struct_3(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(188f, 996f, -106f), Struct_1(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 23u)])))).a.x, false, true), _wgslsmith_f_op_f32(trunc(-1041f)) >= _wgslsmith_f_op_f32(max(-600f, -645f))), Struct_3(global0[_wgslsmith_index_u32(~1u, 17u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(598f, 359f, -542f) * vec3<f32>(530f, 407f, 337f))), func_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], false, false), Struct_3(vec3<i32>(-2147483647i, -2147483647i, arg_0), vec3<f32>(119f, 599f, -1037f), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)], true)))))));
    var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.zz, -var_0.a.yy) & 0i, arg_0, ~(~(-2147483647i))), var_0.b, Struct_1(select(var_0.c.a, select(select(var_0.c.a, var_0.c.a, var_0.c.a), select(var_0.c.a, var_0.c.a, vec2<bool>(true, false)), global2[_wgslsmith_index_u32(1u, 23u)]), any(!vec3<bool>(true, var_0.c.a.x, var_0.c.a.x)))));
    global0 = array<vec3<i32>, 17>();
    var var_1 = _wgslsmith_sub_u32(1u, u_input.a) <= arg_1.x;
    return Struct_2(var_0.c, _wgslsmith_div_vec2_i32(min(-vec2<i32>(arg_0, -2147483647i) & vec2<i32>(-3376i, -1i), ~var_0.a.zz), abs(var_0.a.xz ^ max(vec2<i32>(-14717i, arg_0), var_0.a.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(-2147483647i), ~u_input.b);
    var var_1 = func_2(select(select(!(!vec4<bool>(true, var_0.a.a.x, true, false)), select(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 23u)], false), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 23u)]), true), select(vec4<bool>(var_0.a.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], var_0.a.a.x, var_0.a.a.x), vec4<bool>(false, global2[_wgslsmith_index_u32(51124u, 23u)], false, global2[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(31930u, 23u)], var_0.a.a.x, true)), false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11328u, 4294967295u, u_input.a), 23u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b.x), 23u)])), vec4<bool>(true, true, true, true), all(select(!vec4<bool>(true, var_0.a.a.x, true, var_0.a.a.x), select(vec4<bool>(var_0.a.a.x, global2[_wgslsmith_index_u32(49999u, 23u)], var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.a.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), var_0.a.a.x), global2[_wgslsmith_index_u32(u_input.a, 23u)]))), Struct_3(vec3<i32>(_wgslsmith_add_i32(-1i, var_0.b.x), -40347i, 4709i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, 266f, -690f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-690f, -846f, -2509f))) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, true)), var_0.b), Struct_2(Struct_1(var_0.a.a), var_0.b), var_0.a, false)).x, -1835f, _wgslsmith_f_op_f32(-1242f - 787f))), Struct_1(func_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], true, global2[_wgslsmith_index_u32(11935u, 23u)], false), Struct_3(vec3<i32>(var_0.b.x, var_0.b.x, 1i), vec3<f32>(-2049f, -2737f, 1142f), var_0.a)).a))).a.x;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) + -1282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(step(269f, 538f)))))), 176f));
    global0 = array<vec3<i32>, 17>();
    global1 = array<Struct_4, 26>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), vec2<f32>(-153f, -1300f)) * vec2<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -368f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(230f, 130f), vec2<f32>(-541f, var_2), vec2<bool>(false, true)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_2, -1000f, var_0.a.a.x)), _wgslsmith_f_op_f32(-var_2)), vec2<f32>(_wgslsmith_f_op_f32(-var_2), -959f), select(vec2<bool>(true, var_0.a.a.x), select(vec2<bool>(var_0.a.a.x, false), var_0.a.a, vec2<bool>(true, false)), global2[_wgslsmith_index_u32(~1076u, 23u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(580f, var_2) + vec2<f32>(496f, -397f)))))));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_4 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 649f, -1232f, var_3.x)))))), -697f, _wgslsmith_div_u32(75520u, u_input.a), u_input.b.x, var_3);
}

