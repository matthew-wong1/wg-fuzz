struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<f32>(631f, -732f, -356f), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 16369u), vec3<f32>(-759f, 1969f, -208f), vec4<f32>(1031f, 606f, -524f, -1023f)), Struct_1(vec4<u32>(4294967295u, 10041u, 55847u, 0u), vec3<f32>(587f, -454f, 1368f), vec4<f32>(-1184f, 1000f, -205f, 1000f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 353u), vec3<f32>(-727f, 1492f, 1342f), vec4<f32>(-1404f, -1048f, 465f, 316f))), Struct_2(vec3<f32>(1000f, -1000f, 1470f), Struct_1(vec4<u32>(0u, 7743u, 1u, 1u), vec3<f32>(-1825f, -1048f, -148f), vec4<f32>(-2051f, -1476f, 342f, 952f)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 70169u), vec3<f32>(369f, 1034f, -161f), vec4<f32>(-540f, 1000f, 586f, 785f)), Struct_1(vec4<u32>(4294967295u, 52653u, 14238u, 1u), vec3<f32>(-1070f, 1501f, -529f), vec4<f32>(-1961f, -165f, -2082f, -1000f))));

var<private> global1: vec3<i32> = vec3<i32>(-1i, 1051i, 2147483647i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<i32> {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(2147483647i), -2147483647i, global1.x), ~(vec3<i32>(-2147483647i, 47016i, global1.x) ^ -vec3<i32>(-1i, -26991i, global1.x)));
    let var_0 = select(!vec3<bool>(!arg_2.x || arg_2.x, arg_2.x, true || !arg_2.x), vec3<bool>(select(arg_2.x, true, !(43992u > arg_3.x)), arg_2.x == all(vec3<bool>(arg_2.x, arg_2.x, false)), arg_2.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_2.x, true), !(!vec3<bool>(arg_2.x, true, arg_2.x))), !select(vec3<bool>(true, false, arg_2.x), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(true, arg_2.x, arg_2.x)), all(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x))), !arg_2.x));
    global1 = ~(-firstLeadingBit(vec3<i32>(u_input.a.x, -19328i, global1.x)) >> (arg_3 % vec3<u32>(32u)));
    return vec3<i32>(abs(0i), u_input.a.x, abs(u_input.a.x)) | ~(select(select(vec3<i32>(u_input.a.x, global1.x, global1.x), vec3<i32>(1i, u_input.a.x, u_input.a.x), true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(26862i, u_input.a.x, -42991i)), !var_0.x) | -vec3<i32>(29668i, u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    global1 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(min(i32(-1i) * -1i, arg_2), firstLeadingBit(arg_2), -37809i), ~_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, global1.x, arg_2), vec3<i32>(global1.x, 26596i, arg_2))), -_wgslsmith_clamp_vec3_i32(func_3(-1790f, vec2<f32>(1668f, 533f), select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x), true), ~vec3<u32>(arg_0.x, arg_0.x, 1u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 16463i), vec3<i32>(global1.x, u_input.a.x, global1.x)) & vec3<i32>(-1i, 0i, -1i), max(vec3<i32>(u_input.a.x, global1.x, u_input.a.x), ~vec3<i32>(global1.x, global1.x, 2147483647i))));
    var var_0 = arg_0.x;
    let var_1 = global0[_wgslsmith_index_u32(~min(1u, arg_0.x), 2u)];
    var var_2 = select(select(vec4<bool>(any(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true))), true, all(select(vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), !any(vec4<bool>(false, false, false, false))), select(select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x)), select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), !arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, arg_1.x, true, true), arg_1.x), !(-591f >= var_1.b.c.x)), arg_1.x), !vec4<bool>(true, true, arg_1.x, !arg_1.x), arg_1.x & select(arg_1.x, true, select(arg_1.x, arg_1.x, arg_1.x)));
    let var_3 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.c.a.x, 1u, var_1.b.a.x), vec4<u32>(arg_0.x, 25272u, var_1.d.a.x, 0u)) >> (vec4<u32>(1u, 1u, 66830u, arg_0.x) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-433f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))), _wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(ceil(-1072f)))), _wgslsmith_f_op_vec4_f32(var_1.d.c - _wgslsmith_f_op_vec4_f32(-var_1.d.c)));
    return firstTrailingBit(u_input.a.x);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_mult_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1, arg_3.a.x, 3063i, 74558i)), vec4<i32>(2147483647i, u_input.a.x, global1.x, arg_2.a.x)), select(-1i, u_input.a.x, false)), reverseBits(func_2(~arg_0.c.b.a.zz & arg_0.c.c.a.xw, vec2<bool>(arg_0.d.b, !arg_3.b), 1i)));
    var var_1 = true & arg_0.d.b;
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_3.c, arg_2.c, countOneBits(46557u)), min(vec4<u32>(~4294967295u, ~arg_0.c.c.a.x, 1u, arg_2.c), firstTrailingBit(vec4<u32>(arg_3.c, arg_3.c, 3678u, arg_3.c))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~23172u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(u_input.a.x, global1.x, global1.x), vec4<i32>(16799i, -1i, u_input.a.x, u_input.a.x), Struct_2(vec3<f32>(993f, 425f, 105f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4925u), vec3<f32>(-699f, -2000f, 262f), vec4<f32>(323f, -548f, -1397f, 573f)), Struct_1(vec4<u32>(3482u, 42736u, 50164u, 80649u), vec3<f32>(-1370f, -835f, -846f), vec4<f32>(-1399f, 310f, 1909f, 763f)), Struct_1(vec4<u32>(0u, 1u, 33427u, 49111u), vec3<f32>(1000f, -145f, 123f), vec4<f32>(-914f, 3404f, -212f, -1612f))), Struct_3(vec4<i32>(u_input.a.x, global1.x, global1.x, 43669i), true, 4294967295u), vec2<i32>(global1.x, 9224i)), u_input.a.x, Struct_3(vec4<i32>(global1.x, global1.x, u_input.a.x, 41359i), false, 0u), Struct_3(vec4<i32>(global1.x, 32403i, -50046i, global1.x), false, 12642u))), _wgslsmith_div_f32(696f, -911f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1744f, -239f)))))), _wgslsmith_f_op_f32(1667f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) - _wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(0i, global1.x, global1.x), vec4<i32>(global1.x, 10438i, -1i, -1i), Struct_2(vec3<f32>(1145f, 1000f, 519f), Struct_1(vec4<u32>(1u, 4294967295u, 62498u, 74919u), vec3<f32>(733f, -1000f, -1098f), vec4<f32>(-251f, 2021f, 1033f, -766f)), Struct_1(vec4<u32>(4294967295u, 1u, 24746u, 1u), vec3<f32>(-1446f, -861f, -592f), vec4<f32>(205f, 1292f, -222f, -2098f)), Struct_1(vec4<u32>(1u, 0u, 12338u, 31410u), vec3<f32>(1795f, -743f, -573f), vec4<f32>(2352f, 1109f, 243f, -2607f))), Struct_3(vec4<i32>(-1i, global1.x, global1.x, -1i), false, 1u), global1.zz), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), Struct_3(vec4<i32>(39422i, 2147483647i, u_input.a.x, u_input.a.x), false, 28389u), Struct_3(vec4<i32>(global1.x, 5308i, global1.x, -32092i), false, 42743u))))));
    let var_2 = true;
    var var_3 = Struct_1(vec4<u32>(~(~(~0u)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(2205u, 72259u, 61493u, 11804u), vec4<u32>(1u, 1u, 1u, 1u)), ~4294967295u), vec3<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1))))), _wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1210f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 172f, _wgslsmith_f_op_f32(exp2(var_1)), 248f))))));
    let var_4 = Struct_3(~reverseBits(~(vec4<i32>(u_input.a.x, -12479i, 22839i, -1i) ^ vec4<i32>(global1.x, 15268i, global1.x, global1.x))), any(!vec3<bool>(var_2, false, true)), ~(~(~1u)));
    global0 = array<Struct_2, 2>();
    let var_5 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(max(var_3.a.wzx, vec3<u32>(0u, 4294967295u, 32910u)), min(vec3<u32>(4294967295u, var_3.a.x, 1u), var_3.a.zyx)), var_3.a.wzx);
    global1 = var_4.a.wxy;
    let var_6 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(406f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-431f, var_1))))) * var_6.ww), select(vec2<bool>(any(vec2<bool>(var_4.b, var_4.b)), true), select(!vec2<bool>(true, var_2), !vec2<bool>(var_2, true), !var_2), select(!vec2<bool>(true, var_2), vec2<bool>(true, true), vec2<bool>(var_2, var_2))), var_3.a.yzw).x, vec3<u32>(var_4.c, 1u, select(~131222u, ~1u, false) >> (min(~1u, 1u) % 32u)), var_4.c, -(abs(global1.zx) | firstTrailingBit(min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, 1i)))));
}

