struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global1 = arg_1;
    global1 = Struct_1(!global1.a);
    var var_0 = arg_0.x;
    var var_1 = vec2<bool>(false, arg_1.a.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -575f) - arg_0.x))));
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = !global1.a.xz;
    global0 = Struct_1(vec3<bool>(!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, -1283f, -612f, -1369f)), Struct_1(vec3<bool>(global0.a.x, global0.a.x, false)), select(vec4<u32>(u_input.c, 0u, 16058u, u_input.a.x), u_input.a, vec4<bool>(global0.a.x, var_0.x, global1.a.x, global1.a.x))), global0.a.x, !(max(arg_2, 0u) == _wgslsmith_clamp_u32(0u, 1u, 51873u))));
    let var_1 = Struct_1(global0.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(572f, 1547f, 431f, 1167f) - vec4<f32>(-1269f, 1871f, -1916f, -107f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(569f, 936f, -1548f, 1563f), vec4<f32>(-866f, 848f, -615f, -652f), var_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), -294f, -526f, 103f) + vec4<f32>(-713f, _wgslsmith_f_op_f32(f32(-1f) * -868f), -1385f, _wgslsmith_f_op_f32(f32(-1f) * -965f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -633f, -1637f, -1634f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, 557f, 1552f, -665f) + vec4<f32>(-203f, 1996f, -363f, -1000f)) - vec4<f32>(-1211f, -1215f, -1707f, -1295f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, 587f, -1413f, 1425f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1623f, -437f, -182f, 1251f))))))));
    var var_3 = !vec2<bool>(all(vec3<bool>(var_2.x == var_2.x, select(false, true, true), var_0.x)), global1.a.x);
    return Struct_1(vec3<bool>(false, all(!global1.a), !(!any(vec3<bool>(global0.a.x, global0.a.x, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global1 = func_2(_wgslsmith_div_u32(u_input.d, abs(~1u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b, -13680i, 7707i), vec3<i32>(23717i, -1i, 2147483647i), global1.a), -vec3<i32>(-12810i, arg_1, u_input.b)), vec3<i32>(arg_1, -9918i, arg_1)), -(~vec3<i32>(arg_1, arg_1, 0i))), u_input.d);
    var var_0 = -abs(min(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b, arg_1, u_input.b), vec4<i32>(30160i, u_input.b, u_input.b, u_input.b)), vec4<i32>(arg_1, 1i, u_input.b, -42772i)), vec4<i32>(arg_1, 23047i, _wgslsmith_dot_vec3_i32(vec3<i32>(35432i, -1i, 2147483647i), vec3<i32>(u_input.b, arg_1, arg_1)), 38346i)));
    let var_1 = Struct_1(select(arg_0.a, vec3<bool>(var_0.x <= (var_0.x ^ -1i), func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(390f, 585f, 479f, 495f))), func_2(u_input.d, -54536i, 4294967295u), u_input.a), false), select(true, (global0.a.x && global1.a.x) & !global0.a.x, true)));
    var_0 = min(~vec4<i32>(reverseBits(var_0.x), firstTrailingBit(_wgslsmith_mult_i32(var_0.x, -15724i)), ~(~(-67131i)), i32(-1i) * -4573i), reverseBits(vec4<i32>(u_input.b, min(~arg_1, -1i), ~_wgslsmith_mult_i32(-2147483647i, var_0.x), arg_1)));
    var var_2 = -2147483647i;
    return !vec4<bool>(var_1.a.x, true, !(!global1.a.x), arg_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-16676i, u_input.b << (_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), vec4<u32>(0u, u_input.a.x, u_input.c, u_input.a.x)) % 32u), reverseBits(0i)), abs(~vec3<i32>(1i, 87841i, u_input.b)));
    let var_1 = -1419f;
    return func_2(u_input.c, -(~(_wgslsmith_mod_i32(u_input.b, 2147483647i) & firstTrailingBit(u_input.b))), ~_wgslsmith_mult_u32(~firstLeadingBit(0u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(global0.a), !vec4<bool>(global1.a.x, global1.a.x, all(func_1(Struct_1(global0.a), -83697i)), global1.a.x), global1.a.x);
    let var_0 = 917f;
    var var_1 = Struct_1(vec3<bool>(select(firstLeadingBit(u_input.c), u_input.a.x, -1172f <= var_0) < abs(u_input.c), true, var_0 != -1620f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-189f, var_0, -627f, var_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -642f, var_0, 539f) - vec4<f32>(var_0, var_0, -170f, var_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(392f, -431f, -1121f, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -543f, var_0, -1768f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(814f, var_0, var_0, var_0), vec4<f32>(-1047f, var_0, 540f, -467f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -350f, var_0, var_0), vec4<f32>(-1334f, 835f, var_0, var_0), vec4<bool>(false, var_1.a.x, global1.a.x, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 809f, var_0, 1319f)))))));
    var var_3 = Struct_1(select(vec3<bool>(!global0.a.x, true, !(!var_1.a.x)), !select(func_1(Struct_1(global0.a), 0i).wwz, !global0.a, vec3<bool>(global0.a.x, false, true)), global0.a));
    var var_4 = _wgslsmith_add_vec2_u32(u_input.a.zy, _wgslsmith_add_vec2_u32(~(u_input.a.xx & vec2<u32>(5016u, 1u)) & ~min(vec2<u32>(81767u, 11190u), u_input.a.xy), ~firstTrailingBit(abs(u_input.a.yw))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_sub_vec2_i32(abs(abs(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, u_input.b))), vec2<i32>(-1i) * -abs(vec2<i32>(2147483647i, 2147483647i))), select(abs(vec2<i32>(max(u_input.b, u_input.b), ~u_input.b)), abs(vec2<i32>(u_input.b, u_input.b)) | countOneBits(vec2<i32>(u_input.b, -1i)), !global1.a.xz), var_0);
}

