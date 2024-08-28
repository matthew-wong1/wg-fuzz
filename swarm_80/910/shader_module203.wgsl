struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(0i, 1i));

var<private> global1: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(249f, 148f, 886f, 1000f), vec4<f32>(649f, -135f, 1803f, -2062f), vec4<f32>(654f, 2187f, 717f, 792f), vec4<f32>(-1506f, 1234f, -358f, 641f), vec4<f32>(1184f, 252f, -1696f, 1599f), vec4<f32>(1274f, 1588f, -338f, 953f), vec4<f32>(535f, -191f, 1509f, -1918f), vec4<f32>(239f, -391f, 316f, 743f), vec4<f32>(-460f, 1991f, -941f, -737f), vec4<f32>(518f, -942f, -832f, 1096f), vec4<f32>(273f, -884f, -691f, -587f), vec4<f32>(948f, 951f, -1175f, -1000f), vec4<f32>(740f, 575f, -282f, 1167f), vec4<f32>(-410f, -316f, 1324f, 996f), vec4<f32>(1231f, 985f, 1000f, -1000f), vec4<f32>(-1000f, -1751f, 1000f, 927f), vec4<f32>(1394f, -1182f, -304f, -219f), vec4<f32>(1000f, 2077f, 735f, 2016f), vec4<f32>(-1611f, 1212f, -563f, 154f), vec4<f32>(497f, 310f, -547f, 449f), vec4<f32>(230f, -558f, 898f, -1632f), vec4<f32>(-1979f, -1000f, -1319f, -441f), vec4<f32>(-1035f, 1128f, -523f, 894f), vec4<f32>(1027f, 865f, 1209f, -970f), vec4<f32>(-566f, 578f, -1553f, -561f), vec4<f32>(478f, -238f, 2164f, 286f), vec4<f32>(-623f, 685f, 412f, -648f), vec4<f32>(-1110f, -1544f, 307f, 576f), vec4<f32>(-240f, 152f, 200f, 1000f), vec4<f32>(1232f, 1191f, -1000f, 2839f), vec4<f32>(495f, -162f, 963f, 1419f), vec4<f32>(1192f, 1000f, -956f, -865f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), 161f));
    var var_1 = vec2<u32>(~arg_2.a, arg_2.a);
    var_1 = arg_0.xz;
    var var_2 = !(!vec2<bool>(false, !(var_0.x != -589f)));
    global1 = array<vec4<f32>, 32>();
    return !(!(!vec4<bool>(!var_2.x, true, var_2.x && true, var_2.x)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    return _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_mult_u32(select(u_input.a & 1u, _wgslsmith_sub_u32(74519u, 61070u), arg_3.a < 10986u), 1u)), ~(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(42691u, 0u), vec2<u32>(u_input.b, 1u))) << (min(~vec2<u32>(4294967295u, 86975u), vec2<u32>(arg_3.a, u_input.a)) % vec2<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(countOneBits(1i), vec4<bool>(false, false | any(vec3<bool>(true, true, true)), false, !any(vec4<bool>(true, true, true, true))), 669f, func_2(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(62687u, 75888u, 1u), vec3<u32>(26234u, 37194u, u_input.b)) | vec3<u32>(u_input.a, 22022u, u_input.a), select(~vec3<u32>(55725u, 22499u, 49954u), vec3<u32>(1u, 1u, u_input.a) ^ vec3<u32>(9951u, u_input.a, u_input.b), vec3<bool>(true, false, true))), Struct_2(u_input.a), Struct_2(26887u), ~0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(floor(-100f))) - 754f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1048f)) - -1000f)));
    global1 = array<vec4<f32>, 32>();
    var var_1 = func_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, ~1u), ~vec3<u32>(26859u, u_input.a, u_input.b) ^ ~vec3<u32>(u_input.a, u_input.b, u_input.b), min(~vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(1u, u_input.b, u_input.a))), reverseBits(~(~vec3<u32>(37502u, 1u, 6026u))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, 97686u, 22721u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 1u, u_input.b)), abs(select(vec3<u32>(u_input.b, 38119u, 4294967295u), vec3<u32>(24233u, u_input.b, 73384u), vec3<bool>(false, var_0.b.x, var_0.b.x))))), Struct_2(_wgslsmith_dot_vec2_u32(func_3(var_0, true, var_0.e, Struct_2(u_input.a)) >> (~vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, firstTrailingBit(75457u)))), Struct_2(u_input.a >> (u_input.b % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, firstTrailingBit(firstTrailingBit(-33125i))), global0[_wgslsmith_index_u32(38407u, 1u)])).xy;
    global0 = array<vec2<i32>, 1>();
    let var_2 = Struct_2(_wgslsmith_div_u32(~min(u_input.b, u_input.b), ~(~u_input.a)));
    return var_2;
}

fn func_4(arg_0: Struct_2) -> bool {
    global1 = array<vec4<f32>, 32>();
    var var_0 = Struct_1(-50602i, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1303f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1186f))) - 1000f))), vec4<bool>((-2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 20119u, u_input.b), vec4<u32>(u_input.a, arg_0.a, arg_0.a, 4294967295u)) % 32u)) >= (~0i & _wgslsmith_dot_vec4_i32(vec4<i32>(24668i, 38818i, 0i, -56718i), vec4<i32>(-14555i, -4424i, 0i, 2147483647i))), arg_0.a < (1u & func_1().a), false, false), _wgslsmith_f_op_f32(ceil(-1681f)));
    let var_1 = select(vec2<i32>(var_0.a, countOneBits(var_0.a)), abs(vec2<i32>(14563i, var_0.a)) & global0[_wgslsmith_index_u32(1u, 1u)], var_0.d.ww) | vec2<i32>(var_0.a, -var_0.a);
    global1 = array<vec4<f32>, 32>();
    let var_2 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(max(18928u, u_input.a), 1u)], -vec2<i32>(-20569i, 16637i)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)), -(global0[_wgslsmith_index_u32(u_input.b, 1u)] << (vec2<u32>(23677u, 4294967295u) % vec2<u32>(32u))) >> ((vec2<u32>(1u, u_input.a) >> (vec2<u32>(1u, 62371u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec4<bool>(!all(vec2<bool>(true, true)), select(select(true, false, true), true, func_4(func_1())), all(vec2<bool>(true, any(vec4<bool>(false, true, false, false)))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1535f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1366f, 1185f), _wgslsmith_div_f32(426f, 189f))))) - _wgslsmith_f_op_f32(-323f - 1000f)), vec4<bool>(true, !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), any(vec4<bool>(true, true, true, true)), (firstLeadingBit(57169i) << (u_input.a % 32u)) == _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(5263i, 8165i, 9271i), vec3<i32>(33591i, -47037i, 1i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1916f + 145f))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663f - -1701f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)))));
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_mod_u32(reverseBits(u_input.b) << (func_3(Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, false, false), var_0.e, vec4<bool>(true, false, true, var_1), var_0.c), true, _wgslsmith_f_op_f32(max(var_0.e, -314f)), Struct_2(u_input.b)).x % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a) << (_wgslsmith_sub_u32(11291u, u_input.a) % 32u), 95561u)));
    var var_3 = Struct_1(abs(37216i), vec4<bool>(true, var_0.b.x, var_0.b.x, true), -1272f, vec4<bool>(func_4(Struct_2(1u)), var_0.c != var_0.c, true, var_0.c < var_0.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-455f)), var_0.e, false)));
    let var_4 = ~((~vec4<u32>(u_input.b, 0u, u_input.a, u_input.b) << (reverseBits(reverseBits(vec4<u32>(0u, u_input.a, 1u, var_2.a))) % vec4<u32>(32u))) | ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, 1u, var_2.a, u_input.b), vec4<u32>(u_input.a, 62185u, 4294967295u, var_2.a))));
    var var_5 = Struct_1(0i, select(vec4<bool>(true, any(!vec2<bool>(var_3.d.x, var_0.d.x)), var_3.b.x, var_4.x == var_2.a), vec4<bool>(!var_1, !(!var_3.b.x), select(all(var_3.d.xw), true, func_4(Struct_2(var_2.a))), !var_3.b.x != true), var_0.b), var_0.c, !var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) - var_0.e));
    let var_6 = _wgslsmith_clamp_i32(var_3.a, var_3.a, 49228i << (firstTrailingBit(var_4.x) % 32u));
    var_3 = Struct_1(var_0.a, var_3.b, var_0.e, func_2(vec3<u32>(~func_1().a, 52954u, 1u), Struct_2(abs(~4294967295u)), Struct_2(2192u), -44836i), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a, -17030i, 0i, var_0.a) ^ vec4<i32>(var_6, var_5.a, var_6, var_0.a), firstTrailingBit(vec4<i32>(20176i, var_6, -34833i, var_0.a))), -2147483647i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1221f, var_3.e), vec3<f32>(var_3.e, var_3.c, -977f), vec3<bool>(false, false, var_1))) * vec3<f32>(var_5.c, 1116f, var_5.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.c, var_5.e, var_3.e) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_3.e, var_0.c))))))), u_input.a);
}

