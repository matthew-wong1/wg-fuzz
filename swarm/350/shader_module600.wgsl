struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> bool {
    global0 = vec3<bool>(!(!any(vec4<bool>(true, true, true, true))), true, global0.x);
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_u32(arg_1, _wgslsmith_clamp_u32(~0u, ~arg_1, ~arg_1)), -28142i, 1162f, -2147483647i), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(arg_0.c.x, _wgslsmith_add_u32(4294967295u, arg_0.c.x) | ~85098u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.c, _wgslsmith_f_op_f32(1000f + arg_0.a.c), _wgslsmith_f_op_f32(floor(-1242f)), _wgslsmith_f_op_f32(141f - -288f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_0.a.c, -595f, arg_0.b.c)) * vec4<f32>(-1000f, arg_0.b.c, arg_3.x, 312f)))))), ~arg_0.a.a, abs(arg_1));
    global0 = select(select(vec3<bool>(all(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, false), global0.x)), any(vec3<bool>(true, true, true)), arg_2.x == -arg_0.a.d), vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), true)), !(global0.x != global0.x), _wgslsmith_f_op_f32(-1530f * arg_3.x) > 730f), !(!vec3<bool>(false, global0.x, global0.x))), !vec3<bool>(global0.x, select(false, false, true), all(global0.zy)), true);
    var var_1 = arg_0;
    let var_2 = Struct_3(var_1.b, _wgslsmith_dot_vec4_u32(arg_0.c | firstTrailingBit(_wgslsmith_mod_vec4_u32(var_1.c, var_1.c)), select(reverseBits(arg_0.c), arg_0.c, all(!vec3<bool>(false, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-var_0.c), arg_0.b.a, 72479u);
    return global0.x;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = select(~arg_0.a.a, arg_0.b.a, global0.x) << (~4294967295u % 32u);
    let var_1 = Struct_4(!vec4<bool>(arg_0.b.a >= 41720u, true & global0.x, false, select(true, func_3(Struct_2(Struct_1(u_input.b, arg_0.b.d, 948f, 1i), arg_0.a, arg_0.c, arg_0.d), u_input.a.x, vec2<i32>(0i, arg_0.a.d), vec3<f32>(1342f, 455f, -459f)), true)), -vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), abs(vec2<i32>(53796i, -40766i))), reverseBits(_wgslsmith_mult_i32(arg_0.a.d, 36160i))), 0u, !(_wgslsmith_f_op_f32(sign(arg_0.d.x)) < _wgslsmith_f_op_f32(step(arg_0.d.x, 1301f))) & global0.x);
    var_0 = var_1.c;
    var var_2 = vec3<f32>(arg_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2217f)), arg_0.b.c)), _wgslsmith_f_op_f32(arg_0.a.c - -587f));
    let var_3 = Struct_2(arg_0.b, Struct_1(var_1.c, arg_0.b.b, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_i32(firstLeadingBit(1i), -4311i)), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zy + _wgslsmith_f_op_vec2_f32(vec2<f32>(851f, -1631f) + var_2.yy)) - var_2.yx)));
    return global0.x;
}

fn func_1() -> Struct_1 {
    global0 = vec3<bool>(!(!(~4294967295u == max(u_input.a.x, u_input.a.x))), all(!vec3<bool>(true, global0.x, true)) || all(vec4<bool>(func_2(Struct_2(Struct_1(u_input.b, 1i, -1000f, 2147483647i), Struct_1(1u, -46674i, -1000f, 1i), u_input.a, vec2<f32>(583f, -122f))), global0.x, true, global0.x)), func_3(Struct_2(Struct_1(u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, 0i, -11716i), -1048f, i32(-1i) * -94574i), Struct_1(u_input.a.x, _wgslsmith_div_i32(0i, -2147483647i), -252f, 15889i), u_input.a, vec2<f32>(1f, 1f)), u_input.b, ~vec2<i32>(-1i, 1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, -1334f, 468f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1547f, -1311f, 106f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, 160f, 1000f)))))));
    global0 = select(select(!select(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, false), true), !vec3<bool>(global0.x, false, false), !vec3<bool>(false, true, global0.x)), select(vec3<bool>(true, true, !global0.x), vec3<bool>(true, true, true), select(vec3<bool>(true, global0.x, true), !vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(false, false, global0.x))), func_3(Struct_2(Struct_1(u_input.a.x, 35693i, 282f, -1i), Struct_1(u_input.b, 2147483647i, -481f, 1i), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 11945u, u_input.b), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 203f) - vec2<f32>(1548f, 973f))), ~u_input.b, vec2<i32>(1i, -1i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, -1130f, -915f)))))), !(!(!(!vec3<bool>(false, global0.x, true)))), global0.x);
    global0 = select(select(!select(!vec3<bool>(true, false, global0.x), vec3<bool>(true, true, true), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, false, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, global0.x), false), vec3<bool>(true, true, true))), select(vec3<bool>(global0.x, all(!vec4<bool>(false, false, global0.x, global0.x)), !all(vec2<bool>(global0.x, global0.x))), select(vec3<bool>(global0.x, all(vec4<bool>(global0.x, true, global0.x, global0.x)), false), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, true)), !(!vec3<bool>(global0.x, true, false))), true), select(true | global0.x, func_3(Struct_2(Struct_1(u_input.b, 2147483647i, -606f, -315i), Struct_1(23924u, 10375i, -513f, 0i), u_input.a, vec2<f32>(407f, 1272f)), 43073u, vec2<i32>(1i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-435f, 609f, -1000f) + vec3<f32>(342f, 640f, 659f))) & !global0.x, !global0.x));
    var var_0 = vec3<bool>(global0.x, !func_2(Struct_2(Struct_1(13466u, -2851i, -594f, 1963i), Struct_1(4294967295u, -2147483647i, 1324f, -45568i), vec4<u32>(u_input.a.x, 0u, u_input.b, 16845u), vec2<f32>(-2627f, 1213f))), !(!any(select(global0.yx, global0.zy, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -934f))));
    return Struct_1(22580u, ~min(0i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, 0i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(784f, var_1))), _wgslsmith_dot_vec2_i32(select(~(-vec2<i32>(-1i, -21349i)), ~(~vec2<i32>(1i, 10918i)), true), vec2<i32>(1i, -firstTrailingBit(48416i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<bool>(global0.x, false, true, !global0.x & global0.x), ~vec2<i32>(_wgslsmith_mult_i32(abs(-8895i), ~(-18511i)), 1i), ~48585u, global0.x);
    let var_1 = Struct_2(func_1(), Struct_1(u_input.a.x, var_0.b.x, 2009f, -2147483647i), reverseBits(u_input.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1900f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 930f))), _wgslsmith_f_op_f32(floor(758f))));
    global0 = !vec3<bool>(true, true, !func_3(Struct_2(var_1.a, Struct_1(var_1.b.a, var_1.a.b, var_1.d.x, -52954i), vec4<u32>(var_1.b.a, 14727u, 45714u, 31065u), var_1.d), _wgslsmith_clamp_u32(var_1.b.a, 51301u, 89078u), vec2<i32>(var_0.b.x, var_1.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -501f, var_1.d.x))));
    let var_2 = firstTrailingBit(vec4<i32>(var_0.b.x, 12402i, 41262i, -1i));
    global0 = vec3<bool>(var_0.d, true, any(var_0.a));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().c);
}

