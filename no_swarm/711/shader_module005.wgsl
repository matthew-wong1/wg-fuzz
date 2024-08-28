struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: f32,
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

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, false, true), 12098i, vec4<u32>(23112u, 0u, 3196u, 67999u), vec3<bool>(false, false, false), -261f), Struct_1(vec4<bool>(false, false, false, true), 2147483647i, vec4<u32>(0u, 1227u, 0u, 4294967295u), vec3<bool>(true, true, false), 430f), Struct_1(vec4<bool>(true, true, false, false), 0i, vec4<u32>(0u, 45482u, 58537u, 1u), vec3<bool>(false, true, true), -548f), Struct_1(vec4<bool>(true, false, false, false), 41495i, vec4<u32>(16460u, 0u, 0u, 0u), vec3<bool>(true, false, false), 271f), Struct_1(vec4<bool>(true, true, false, true), -1i, vec4<u32>(4294967295u, 35659u, 4294967295u, 1u), vec3<bool>(true, true, true), -168f), Struct_1(vec4<bool>(true, true, true, true), -14419i, vec4<u32>(0u, 0u, 12908u, 41160u), vec3<bool>(true, true, false), -1350f), Struct_1(vec4<bool>(false, true, false, false), 9859i, vec4<u32>(0u, 27278u, 1u, 0u), vec3<bool>(true, true, true), -670f), Struct_1(vec4<bool>(true, false, false, true), 2147483647i, vec4<u32>(1u, 52212u, 80585u, 1u), vec3<bool>(true, false, true), -284f), Struct_1(vec4<bool>(true, false, false, true), 17378i, vec4<u32>(63478u, 4287u, 1u, 1u), vec3<bool>(true, true, false), -259f), Struct_1(vec4<bool>(true, false, true, true), 1i, vec4<u32>(18996u, 11927u, 0u, 1u), vec3<bool>(false, true, true), -573f), Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648), vec4<u32>(1u, 4294967295u, 1u, 1639u), vec3<bool>(false, true, true), 325f), Struct_1(vec4<bool>(true, false, false, false), 18466i, vec4<u32>(1u, 932u, 44924u, 1u), vec3<bool>(false, false, true), 675f), Struct_1(vec4<bool>(false, true, true, true), -23242i, vec4<u32>(0u, 110712u, 0u, 58739u), vec3<bool>(true, false, true), -721f), Struct_1(vec4<bool>(true, true, true, false), 10657i, vec4<u32>(19640u, 4294967295u, 4294967295u, 3008u), vec3<bool>(false, false, false), 709f), Struct_1(vec4<bool>(false, false, false, false), 37015i, vec4<u32>(50727u, 82474u, 14401u, 97210u), vec3<bool>(true, false, false), -349f), Struct_1(vec4<bool>(true, true, true, true), -1i, vec4<u32>(43285u, 1u, 0u, 13285u), vec3<bool>(false, false, true), -872f), Struct_1(vec4<bool>(true, true, false, true), 2147483647i, vec4<u32>(70402u, 1u, 32334u, 1u), vec3<bool>(false, false, true), 1770f), Struct_1(vec4<bool>(false, true, false, true), -1i, vec4<u32>(20582u, 32082u, 12099u, 16675u), vec3<bool>(false, true, false), 1703f), Struct_1(vec4<bool>(false, true, false, true), 2147483647i, vec4<u32>(70751u, 1u, 0u, 0u), vec3<bool>(true, true, true), -109f));

var<private> global1: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-801i, -2147483647i);
    var var_1 = global0[_wgslsmith_index_u32(select(0u, ~1u, true), 19u)];
    let var_2 = vec3<u32>(var_1.c.x, ~abs(firstTrailingBit(countOneBits(32155u))), 4294967295u);
    var var_3 = ~(-(~countOneBits(1i))) << (0u % 32u);
    var var_4 = var_2;
    return vec4<bool>(all(vec4<bool>(_wgslsmith_f_op_f32(var_1.e * var_1.e) != -331f, var_1.d.x, any(var_1.a) | true, false)), any(!var_1.a.xwz) || any(select(var_1.a, !var_1.a, select(var_1.a, vec4<bool>(false, arg_0, false, var_1.d.x), false))), !arg_0, true);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -arg_0.b;
    global0 = array<Struct_1, 19>();
    var var_1 = Struct_1(select(select(vec4<bool>(any(vec4<bool>(false, arg_0.d.x, arg_0.a.x, false)), select(arg_0.a.x, true, false), false, true), func_3(true, u_input.a.x | 1u), select(func_3(arg_0.a.x, u_input.a.x), !arg_0.a, !arg_0.a)), arg_0.a, true), _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(arg_0.b, arg_0.b)), ~((vec2<i32>(arg_0.b, arg_0.b) | vec2<i32>(58674i, 2147483647i)) | -vec2<i32>(-2147483647i, arg_0.b))), abs(select(~arg_0.c, vec4<u32>(1u, ~39721u, 1u >> (arg_0.c.x % 32u), u_input.a.x), arg_0.d.x)), !func_3(arg_0.a.x, u_input.a.x).ywx, arg_0.e);
    var var_2 = 61633u | arg_0.c.x;
    var var_3 = i32(-1i) * -1i;
    return var_1.d;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = ~firstLeadingBit(~reverseBits(vec4<u32>(36034u, arg_2.c.x, 68484u, arg_2.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(arg_1.zy));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, var_1.x, arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-863f, var_1.x)), 623f)), arg_1.x, 1179f));
    let var_3 = arg_2;
    return var_3;
}

fn func_1() -> u32 {
    let var_0 = 1434f;
    let var_1 = -_wgslsmith_div_i32(1i, firstLeadingBit(i32(-1i) * -30588i)) | firstTrailingBit(~(~(-35764i)));
    var var_2 = func_4(all(!select(vec3<bool>(false, false, true), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), false)), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f * _wgslsmith_f_op_f32(-var_0))), -1252f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(36818u, 1u)), vec2<u32>(firstTrailingBit(u_input.a.x), reverseBits(_wgslsmith_sub_u32(2337u, u_input.a.x)))), 19u)], func_3(all(vec3<bool>(true, true, true)) & false, u_input.a.x));
    var_2 = func_4(false, vec4<f32>(_wgslsmith_f_op_f32(round(var_2.e)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0)))), -651f, 451f), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], func_4(any(func_3(!var_2.d.x, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, 1616f, var_0, var_0) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1358f, var_2.e, var_2.e, 1528f))))), Struct_1(!vec4<bool>(true, false, var_2.a.x, true), -2147483647i, var_2.c, select(vec3<bool>(true, var_2.d.x, true), vec3<bool>(var_2.d.x, false, var_2.d.x), func_2(global0[_wgslsmith_index_u32(4294967295u, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e + 271f) + var_2.e)), !var_2.a).a);
    return 75920u;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    global1 = false;
    var var_0 = true;
    let var_1 = vec4<bool>(4294967295u == _wgslsmith_dot_vec3_u32((arg_2.c.wxx ^ arg_2.c.yxz) >> (~vec3<u32>(0u, 15585u, 5331u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_2.c.x, 0u) << ((arg_2.c.zxw ^ vec3<u32>(80714u, u_input.a.x, 1u)) % vec3<u32>(32u))), true, false && all(!select(arg_2.a.wzy, vec3<bool>(false, arg_2.a.x, true), arg_3)), true);
    let var_2 = Struct_1(var_1, 2147483647i, ~(~vec4<u32>(arg_1, 1u, 28338u, 1u)) >> (arg_2.c % vec4<u32>(32u)), arg_2.a.yzx, _wgslsmith_f_op_f32(arg_0 - arg_0));
    let var_3 = vec2<f32>(1f, _wgslsmith_f_op_f32(var_2.e + 726f));
    return ~(vec4<u32>(func_1(), min(countOneBits(arg_2.c.x), 44818u), max(var_2.c.x, ~u_input.a.x), ~_wgslsmith_mod_u32(u_input.a.x, 54484u)) & vec4<u32>(0u, u_input.a.x, ~1u, ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(716f, -2140f, true)), _wgslsmith_f_op_f32(f32(-1f) * -273f)))) + -729f) <= _wgslsmith_f_op_f32(1101f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f - -969f) + _wgslsmith_f_op_f32(f32(-1f) * -714f))));
    let var_1 = false;
    let var_2 = Struct_1(select(!select(!vec4<bool>(false, true, var_1, var_1), !vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, true, false, var_1)), vec4<bool>(!var_1, var_1, true, var_1), false), -24615i, func_5(489f, func_1(), global0[_wgslsmith_index_u32(1u, 19u)], -2147483647i > (select(2147483647i, 1i, var_1) >> (func_4(var_1, vec4<f32>(-1872f, 587f, -107f, -421f), Struct_1(vec4<bool>(false, false, false, var_1), 0i, vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec3<bool>(var_1, false, var_1), 590f), vec4<bool>(var_1, false, true, false)).c.x % 32u))), func_3(any(!(!vec3<bool>(false, var_1, true))), u_input.a.x ^ u_input.a.x).zyx, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -711f) - _wgslsmith_f_op_f32(sign(362f))))))));
    var_0 = !((28997u > ((u_input.a.x << (u_input.a.x % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(114026u, u_input.a.x), vec2<u32>(21121u, var_2.c.x)) % 32u))) || (14960u < firstTrailingBit(1u)));
    let var_3 = func_4(func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_2.c.zzw, ~var_2.c.yyy), 19u)]).x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, -529f, var_2.e, 1697f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, 1000f, -1160f, var_2.e) - vec4<f32>(-2872f, -341f, -1307f, 842f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, -887f, 1222f, var_2.e))))), func_2(func_4(any(vec4<bool>(var_2.a.x, true, var_1, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.e, 1168f, var_2.e, var_2.e), vec4<f32>(1000f, -1993f, var_2.e, 1216f), var_1)), func_4(false, vec4<f32>(var_2.e, var_2.e, 393f, 236f), global0[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(var_2.a.x, true, true, var_2.d.x)), vec4<bool>(true, var_2.a.x, var_1, var_2.a.x))).x)), var_2, vec4<bool>(true, false, true && !(!var_1), true));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.e)), 1000f, -1000f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 43865u);
}

