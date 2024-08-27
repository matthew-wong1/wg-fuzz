struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(19910u, 1u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(17799u, 1u, 23556u, 1u), vec4<u32>(60648u, 3602u, 4294967295u, 22708u), vec4<u32>(78787u, 4294967295u, 0u, 62177u), vec4<u32>(11531u, 54641u, 27292u, 0u), vec4<u32>(26993u, 4886u, 1u, 1u), vec4<u32>(24580u, 0u, 44173u, 0u), vec4<u32>(4294967295u, 1u, 25418u, 1u), vec4<u32>(4762u, 27474u, 25495u, 0u), vec4<u32>(0u, 59632u, 32438u, 1u), vec4<u32>(1u, 1u, 40883u, 53949u), vec4<u32>(1u, 0u, 4294967295u, 17783u), vec4<u32>(4294967295u, 4294967295u, 7309u, 4294967295u), vec4<u32>(59069u, 4294967295u, 1u, 28264u), vec4<u32>(38579u, 0u, 0u, 4294967295u), vec4<u32>(0u, 8091u, 0u, 1u), vec4<u32>(1u, 9820u, 0u, 57579u), vec4<u32>(57081u, 21462u, 1u, 1690u), vec4<u32>(1u, 38284u, 0u, 1u), vec4<u32>(4294967295u, 47793u, 14630u, 4294967295u), vec4<u32>(4294967295u, 102201u, 1u, 0u), vec4<u32>(26640u, 0u, 47751u, 4294967295u));

var<private> global1: array<bool, 30>;

var<private> global2: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(max(arg_0, 1736u) | _wgslsmith_clamp_u32(0u, 0u, global2.x), _wgslsmith_dot_vec2_u32(max(global2.yz, global2.xx), vec2<u32>(arg_0, 4689u))), ~(~(arg_0 >> (arg_0 % 32u)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 57808u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(90912u, 0u), vec2<u32>(global2.x, arg_0)), vec2<u32>(~arg_0, _wgslsmith_sub_u32(arg_0, 4294967295u))), ~0u)), 23u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(710f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(265f, 170f)), 1f)), 2083f)));
    let var_1 = all(select(vec2<bool>(global1[_wgslsmith_index_u32(34825u, 30u)], any(vec2<bool>(true, true))), select(vec2<bool>(true, select(global1[_wgslsmith_index_u32(18655u, 30u)], global1[_wgslsmith_index_u32(arg_0, 30u)], true)), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 30u)]), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(34293u, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)])), global1[_wgslsmith_index_u32(global2.x, 30u)]), false), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(global2.x, 30u)]))));
    let var_2 = ~(~1u);
    global2 = abs(vec4<u32>(23401u, 84930u, ~global2.x, global2.x));
    return -258f;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u, (-u_input.b.zz >> ((vec2<u32>(4294967295u, 63024u) >> (global2.yy % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(50793u, 4294967295u) % vec2<u32>(32u)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1153f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -243f)))) - 2230f);
    global0 = array<vec4<u32>, 23>();
    let var_1 = Struct_1(vec2<u32>(global2.x, global2.x), vec4<bool>(false, arg_0.x, (false | !arg_0.x) | true, !any(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(global2.x, 30u)], true))), _wgslsmith_div_f32(_wgslsmith_div_f32(588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - 1040f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2060f - 1000f), 1f, all(vec3<bool>(global1[_wgslsmith_index_u32(12458u, 30u)], true, true)))))));
    var var_2 = select(!select(arg_0, vec2<bool>(1421f == var_1.c, !var_1.b.x), !select(arg_0, vec2<bool>(arg_0.x, false), global1[_wgslsmith_index_u32(49726u, 30u)])), !select(select(var_1.b.wx, arg_0, true), select(select(arg_0, arg_0, false), arg_0, var_1.b.x), arg_0), vec2<bool>(any(var_1.b), 57853u < (global2.x >> (31421u % 32u))));
    return _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2082f))))) - -1062f)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f), -949f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false & global1[_wgslsmith_index_u32(57653u, 30u)]))));
    var var_1 = !(!(all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(29042u, 30u)], false)) & select(global2.x == global2.x, true, !global1[_wgslsmith_index_u32(global2.x, 30u)])));
    let var_2 = !global1[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec3_u32(global2.zyz, vec3<u32>(global2.x, 0u, global2.x)) | _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(1u, 5594u)), 18691u, global1[_wgslsmith_index_u32(~global2.x, 30u)]), 30u)];
    var var_3 = Struct_2(Struct_1(abs(~vec2<u32>(4294967295u, global2.x) >> (_wgslsmith_add_vec2_u32(global2.zw, global2.xx) % vec2<u32>(32u))), vec4<bool>(true, true, !(!global1[_wgslsmith_index_u32(global2.x, 30u)]), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-213f))))), select(false, false, all(vec2<bool>(false, false)) && true));
    global2 = global0[_wgslsmith_index_u32(37391u ^ var_3.a.a.x, 23u)];
    return any(vec4<bool>(!(!all(var_3.a.b.xxy)), false, !var_2, any(vec2<bool>(true && var_3.b, any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_3.a.a.x, 30u)], true, global1[_wgslsmith_index_u32(37420u, 30u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(global2.xx ^ global2.wz, global2.xw), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(global2.x, global2.x)), ~global2.yy, global2.wz)) << (vec2<u32>(select(~global2.x, global2.x, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(27991u, 1u), vec2<u32>(4294967295u, global2.x))) % vec2<u32>(32u)), select(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(55079u, 30u)], true, false), true), !vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], false, false), global1[_wgslsmith_index_u32(global2.x, 30u)] | true), select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.x, 30u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)], true, global1[_wgslsmith_index_u32(global2.x, 30u)])), vec4<bool>(!global1[_wgslsmith_index_u32(global2.x, 30u)], func_1(), false, all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global2.x, 30u)], false))), false), select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(8733u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global2.x, 30u)], false, global1[_wgslsmith_index_u32(69532u, 30u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 30u)], true)), vec4<bool>(global1[_wgslsmith_index_u32(14344u, 30u)], true, global1[_wgslsmith_index_u32(13724u, 30u)], false), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(81077u, 30u)], global1[_wgslsmith_index_u32(23678u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(104162u, 30u)], false, true, false), false)), vec4<bool>(true, true, true, select(global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(15075u, 30u)])), select(u_input.c, 1i, global1[_wgslsmith_index_u32(global2.x, 30u)]) > ~48740i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-381f - -1000f)))))));
    global0 = array<vec4<u32>, 23>();
    global1 = array<bool, 30>();
    let var_1 = -(~abs(select(i32(-1i) * -14254i, 24436i, select(true, var_0.b.x, global1[_wgslsmith_index_u32(32098u, 30u)]))));
    var var_2 = -(~(-vec4<i32>(u_input.a, ~var_1, firstTrailingBit(4541i), var_1)));
    global1 = array<bool, 30>();
    var_2 = vec4<i32>(-75736i, _wgslsmith_div_i32(var_2.x, var_2.x), reverseBits(-firstTrailingBit(-13969i)), 40637i) << (~vec4<u32>(_wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_mod_u32(global2.x, 4294967295u)), _wgslsmith_div_u32(~18943u, ~var_0.a.x), 0u, 45238u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(global2.zzw >> (max(countOneBits(global2.xyy), ~vec3<u32>(11729u, 4294967295u, global2.x)) % vec3<u32>(32u))), var_1, vec2<f32>(1617f, _wgslsmith_f_op_f32(func_3(global2.x, ~(var_2.ww << (global2.ww % vec2<u32>(32u)))))), ~_wgslsmith_add_vec3_u32(vec3<u32>(abs(0u), 4294967295u, global2.x | 0u), countOneBits(countOneBits(vec3<u32>(38611u, global2.x, 4294967295u)))));
}

