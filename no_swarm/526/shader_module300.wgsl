struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(0u, 13690u, 49062u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1u, 1u, 0u)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 55u, 15580u)), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(45989u, 38660u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1u, 7334u, 1u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(0u, 4294967295u, 23379u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(1u, 4294967295u, 8571u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 25374u, 12258u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(1u, 0u, 26389u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(0u, 52810u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 28245u, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(16661u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(9873u, 10224u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(0u, 0u, 78427u)), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(42338u, 68235u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(1u, 0u, 11101u)), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(0u, 25273u, 0u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 4294967295u, 28399u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(41777u, 24949u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 38805u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(1u, 0u, 1u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> u32 {
    let var_0 = -9435i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(246f, 1000f, 1151f))) - vec3<f32>(1f, 1f, 1f))))));
    global1 = -1i | firstLeadingBit(-_wgslsmith_sub_i32(arg_1.x, arg_1.x << (global0.x % 32u)));
    let var_2 = global2[_wgslsmith_index_u32(99590u, 22u)];
    let var_3 = vec2<i32>(~_wgslsmith_sub_i32(arg_1.x, 37225i), -1784i);
    return 39020u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec2<u32> {
    var var_0 = global0.x;
    global1 = _wgslsmith_mult_i32(-1i, u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-738f + -253f), _wgslsmith_f_op_f32(floor(822f))), -1975f) * vec3<f32>(-447f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f * -913f) + -743f), -864f)));
    var_0 = 21545u;
    let var_2 = var_1.x;
    return firstLeadingBit(global0.zw);
}

fn func_1() -> u32 {
    global0 = vec4<u32>(global0.x, _wgslsmith_add_u32(_wgslsmith_add_u32(func_2(vec2<bool>(true, false), vec2<i32>(51070i, 2147483647i) >> (global0.yz % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(func_3(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), global0.yz)), 25979u), 93633u | firstLeadingBit(global0.x), global0.x);
    global0 = ~countOneBits(select(~vec4<u32>(1u, 12822u, global0.x, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, 39147u, 0u), vec4<u32>(23113u, global0.x, global0.x, global0.x), vec4<u32>(1u, global0.x, 0u, 22819u)), true)) ^ ~firstLeadingBit(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(47981u, global0.x, global0.x, 24118u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 45819u, 97025u, 1u), vec4<u32>(4294967295u, 4294967295u, global0.x, 4294967295u), vec4<u32>(73855u, global0.x, global0.x, 42495u))));
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(false, false))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(false, true)), true), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(false, true, false) || true)), false);
    var var_1 = Struct_1(select(select(select(!vec4<bool>(var_0.x, false, var_0.x, false), !vec4<bool>(var_0.x, true, true, var_0.x), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, var_0.x, false), !vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, !var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, !var_0.x, all(vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x), vec4<bool>(true, select(var_0.x, true, var_0.x), all(vec3<bool>(true, true, var_0.x)), all(vec2<bool>(var_0.x, var_0.x)))), all(vec4<bool>(true, var_0.x | false, true, global0.x < global0.x))), global0.wxy >> ((global0.xww ^ ~(global0.xwx << (vec3<u32>(4294967295u, 34242u, global0.x) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_2 = -_wgslsmith_div_i32(abs(u_input.b.x | u_input.b.x), reverseBits(u_input.b.x >> (1u % 32u))) >> (_wgslsmith_add_u32(0u, 1u) % 32u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -2147483647i;
    global0 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.x << (global0.x % 32u), 6911u, 32288u, firstTrailingBit(43172u))), ~vec4<u32>(49292u, select(14707u, global0.x, true), func_1(), global0.x) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, 5698u) >> (vec4<u32>(global0.x, 0u, global0.x, 0u) % vec4<u32>(32u)), vec4<u32>(global0.x, global0.x, 1u, global0.x)));
    let var_1 = 15597u;
    global2 = array<Struct_1, 22>();
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1230f, 1178f) * vec2<f32>(926f, -546f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1241f, 1635f) - vec2<f32>(-2054f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1188f) - vec2<f32>(-713f, -2100f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1253f, 748f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1077f, -695f) + vec2<f32>(-240f, -1575f)) + vec2<f32>(751f, 864f)))), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f * -494f)), _wgslsmith_f_op_f32(trunc(389f)), _wgslsmith_f_op_f32(-305f * _wgslsmith_f_op_f32(-247f + 1760f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(select(822f, -434f, true))))), 0u, ~((countOneBits(u_input.b.x) >> (global0.x % 32u)) | (u_input.a.x | 1i)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(~53234u, min(var_1, 1u), 3059u, 1u), vec4<u32>(global0.x, (var_1 | var_2.d) ^ reverseBits(38181u), _wgslsmith_div_u32(~global0.x, global0.x), _wgslsmith_div_u32(4294967295u, func_1())), vec4<bool>(true, false, any(select(vec4<bool>(true, var_2.b.x, true, true), vec4<bool>(false, var_2.b.x, var_2.b.x, true), true)), any(vec2<bool>(var_2.b.x, var_2.b.x)))), ~select(vec4<u32>(1u, var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(55026u, global0.x, global0.x, 1u), vec4<u32>(global0.x, global0.x, 40889u, var_1)), global0.x), abs(~vec4<u32>(57556u, global0.x, var_1, 20391u)), all(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)))), 22u)];
    global1 = var_2.e;
    let var_4 = var_2.c.yzz;
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1410f))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(var_3.a.zzz, vec3<bool>(!var_2.b.x, !var_3.a.x, true), select(var_3.a.zww, !var_3.a.zyy, select(true, true, var_3.a.x))), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(var_2.e ^ ~u_input.a.x, (var_2.e << (19343u % 32u)) & u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.x & var_2.d, _wgslsmith_mult_u32(1u, 57271u)), func_3(select(var_3.a.xxz, vec3<bool>(false, true, false), var_3.a.x), vec3<bool>(var_2.b.x, var_2.b.x, false), var_3.a.wzy).x), var_1, _wgslsmith_add_u32(abs(global0.x), 15091u)));
}

