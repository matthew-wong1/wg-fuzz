struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(2147483647i, -230f, Struct_1(vec4<u32>(58185u, 11541u, 4294967295u, 118872u), false, vec3<i32>(-18137i, 0i, -1i), 0u, vec2<bool>(true, false))), Struct_2(0i, 216f, Struct_1(vec4<u32>(4294967295u, 31586u, 16024u, 17396u), false, vec3<i32>(16528i, 0i, -23933i), 14365u, vec2<bool>(false, true))), Struct_2(-31973i, 258f, Struct_1(vec4<u32>(13740u, 4294967295u, 45588u, 4294967295u), false, vec3<i32>(-21292i, 0i, 21382i), 0u, vec2<bool>(true, false))), Struct_2(27628i, 1593f, Struct_1(vec4<u32>(36809u, 70760u, 0u, 14556u), true, vec3<i32>(-24617i, 0i, -46474i), 0u, vec2<bool>(true, true))), Struct_2(0i, 1631f, Struct_1(vec4<u32>(84071u, 59714u, 4294967295u, 42344u), false, vec3<i32>(17070i, -1i, -1i), 0u, vec2<bool>(false, true))), Struct_2(23195i, 779f, Struct_1(vec4<u32>(27274u, 51605u, 21186u, 46763u), false, vec3<i32>(-813i, i32(-2147483648), i32(-2147483648)), 112020u, vec2<bool>(false, false))), Struct_2(-1i, -1785f, Struct_1(vec4<u32>(0u, 5613u, 7682u, 1u), true, vec3<i32>(-31236i, -6152i, 6443i), 0u, vec2<bool>(false, true))), Struct_2(0i, 124f, Struct_1(vec4<u32>(1u, 8534u, 17488u, 25987u), true, vec3<i32>(2147483647i, 266i, 17911i), 26300u, vec2<bool>(true, true))), Struct_2(27470i, -733f, Struct_1(vec4<u32>(17567u, 7588u, 4294967295u, 19324u), false, vec3<i32>(-1i, -55161i, 9829i), 36013u, vec2<bool>(true, false))), Struct_2(20499i, 200f, Struct_1(vec4<u32>(0u, 45430u, 72300u, 90163u), true, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 22935u, vec2<bool>(false, true))), Struct_2(-11861i, 1693f, Struct_1(vec4<u32>(4294967295u, 1u, 16059u, 1u), true, vec3<i32>(i32(-2147483648), -1i, -17227i), 91226u, vec2<bool>(false, true))), Struct_2(2147483647i, 419f, Struct_1(vec4<u32>(36929u, 23462u, 43734u, 17823u), true, vec3<i32>(0i, 51903i, 9137i), 148766u, vec2<bool>(false, false))), Struct_2(2147483647i, 832f, Struct_1(vec4<u32>(1u, 111368u, 0u, 8003u), true, vec3<i32>(1i, -8495i, 6651i), 37279u, vec2<bool>(false, false))), Struct_2(2147483647i, 861f, Struct_1(vec4<u32>(101419u, 36335u, 0u, 25832u), false, vec3<i32>(1i, 0i, 9847i), 8046u, vec2<bool>(false, true))), Struct_2(-1i, 2179f, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 261u), false, vec3<i32>(2147483647i, -21023i, 1i), 72536u, vec2<bool>(false, true))), Struct_2(i32(-2147483648), 253f, Struct_1(vec4<u32>(90448u, 1u, 4294967295u, 53303u), false, vec3<i32>(6373i, 25650i, -15152i), 4294967295u, vec2<bool>(true, false))), Struct_2(1i, -768f, Struct_1(vec4<u32>(0u, 1u, 13249u, 833u), true, vec3<i32>(-41503i, 24282i, -11059i), 7138u, vec2<bool>(false, false))), Struct_2(33732i, 530f, Struct_1(vec4<u32>(21566u, 83550u, 37584u, 27515u), false, vec3<i32>(i32(-2147483648), -52194i, 0i), 1u, vec2<bool>(true, false))), Struct_2(-33875i, 1984f, Struct_1(vec4<u32>(49899u, 56802u, 4294967295u, 15890u), false, vec3<i32>(-32965i, 0i, i32(-2147483648)), 25099u, vec2<bool>(true, false))), Struct_2(0i, 844f, Struct_1(vec4<u32>(37655u, 17116u, 1u, 0u), false, vec3<i32>(2147483647i, -1i, 28095i), 4294967295u, vec2<bool>(false, true))), Struct_2(31155i, -1160f, Struct_1(vec4<u32>(1u, 1493u, 1203u, 0u), false, vec3<i32>(-54730i, -26157i, -34002i), 26962u, vec2<bool>(true, true))), Struct_2(46561i, -398f, Struct_1(vec4<u32>(0u, 65274u, 4215u, 1u), false, vec3<i32>(53117i, 15016i, 2147483647i), 4294967295u, vec2<bool>(true, true))), Struct_2(56415i, -383f, Struct_1(vec4<u32>(8365u, 1u, 35043u, 72050u), false, vec3<i32>(-20608i, 2147483647i, 2147483647i), 1u, vec2<bool>(false, true))), Struct_2(-1i, 528f, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), false, vec3<i32>(3980i, 1i, 42779i), 4294967295u, vec2<bool>(false, false))), Struct_2(-13936i, -1000f, Struct_1(vec4<u32>(6791u, 61877u, 31720u, 47629u), false, vec3<i32>(-58753i, 2147483647i, 1i), 1u, vec2<bool>(false, false))), Struct_2(2147483647i, -1453f, Struct_1(vec4<u32>(47113u, 0u, 35265u, 0u), true, vec3<i32>(0i, 6003i, 1i), 64522u, vec2<bool>(false, true))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = array<Struct_2, 26>();
    let var_0 = vec2<i32>(0i, -(~max(~u_input.a, -2147483647i)));
    global0 = array<Struct_2, 26>();
    let var_1 = 9492i;
    global0 = array<Struct_2, 26>();
    return firstTrailingBit(~arg_0.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_u32(~arg_3.c.d, _wgslsmith_mod_u32(firstTrailingBit(arg_1.d) ^ func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1.a.x, arg_3.c.a.x))), ~4294967295u));
    global0 = array<Struct_2, 26>();
    var_0 = func_2(arg_3.c.a.xy) >> (arg_1.d % 32u);
    global0 = array<Struct_2, 26>();
    let var_1 = 5128u;
    return 1i;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(~1u, countOneBits(4294967295u), _wgslsmith_clamp_u32(34576u, 4294967295u, 21472u), ~103607u)), vec4<u32>(reverseBits(1u >> (0u % 32u)), select(1u, 28610u, true), countOneBits(_wgslsmith_add_u32(20185u, ~4294967295u)), ~31651u));
    let var_1 = var_0;
    global0 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), -1531f) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-984f, 106f), vec2<f32>(-609f, -575f), false)) + vec2<f32>(-743f, 260f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(328f, -1237f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(100f, -1000f))))))));
    let var_3 = vec4<bool>((!all(vec3<bool>(true, false, true)) | any(vec3<bool>(true, true, true))) & !(!any(vec3<bool>(true, false, false))), select(false, !(!(-1000f != var_2.x)), select(any(vec2<bool>(false, true)), true, !(var_2.x == 1936f))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_2.x < 1180f), vec3<bool>(true, any(vec3<bool>(false, true, false)), false))), (abs(u_input.a) > 16644i) | true);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(abs(countOneBits(vec4<i32>(u_input.a >> (58481u % 32u), abs(u_input.a), max(-16283i, 2147483647i), _wgslsmith_sub_i32(-56475i, u_input.a)))));
    let var_1 = vec2<bool>(true, true);
    global0 = array<Struct_2, 26>();
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(65772i, -func_1(u_input.a, Struct_1(vec4<u32>(60289u, 37585u, 0u, 36587u), true, vec3<i32>(31247i, var_0.x, 2147483647i), 16627u, var_1), true, Struct_2(66131i, -1186f, Struct_1(vec4<u32>(1u, 38727u, 8891u, 53594u), var_1.x, vec3<i32>(-13867i, -2147483647i, var_0.x), 1u, vec2<bool>(false, var_1.x)))))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(func_3(), _wgslsmith_sub_i32(2147483647i, u_input.a)), countOneBits(-64353i) >> (reverseBits(0u) % 32u)), vec2<i32>(0i, firstTrailingBit(u_input.a))));
    var var_4 = _wgslsmith_f_op_f32(trunc(-1094f));
    var var_5 = select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, true))), select(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(var_1.x, true, !var_1.x), vec3<bool>(!var_1.x, false, var_1.x)), var_1.x), false);
    var_5 = vec3<bool>(!(!select(true, true, false)), var_1.x, any(select(vec4<bool>(false, true, true, true), !(!vec4<bool>(var_1.x, var_5.x, var_1.x, var_1.x)), !vec4<bool>(var_5.x, var_1.x, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(1u), _wgslsmith_sub_u32(max(0u, 4294967295u), 4294967295u), 1u), vec2<i32>(select(-22384i, var_3.x, var_1.x), u_input.a), -1303f);
}

