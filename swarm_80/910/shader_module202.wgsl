struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, vec4<f32>(946f, 1399f, -206f, -1173f), vec3<f32>(427f, 251f, 440f), vec3<bool>(false, true, true)));

var<private> global2: array<i32, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    let var_0 = -(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-33229i, global2[_wgslsmith_index_u32(10913u, 13u)]), select(vec2<i32>(global2[_wgslsmith_index_u32(9626u, 13u)], 0i), vec2<i32>(2147483647i, 1i), true), abs(vec2<i32>(29493i, -2147483647i))) << (vec2<u32>(countOneBits(~1206u), ~u_input.a) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_mult_vec2_i32(var_0, vec2<i32>(min(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(25030u, 13u)]), vec2<i32>(var_0.x, var_0.x)), ~var_0.x), ~var_0.x));
    global2 = array<i32, 13>();
    global0 = true;
    let var_2 = vec4<u32>(u_input.a, u_input.a | countOneBits(reverseBits(~56468u)), u_input.a, 40034u);
    return ~(firstTrailingBit(global2[_wgslsmith_index_u32(select(u_input.a, 0u, arg_0.a) << (~var_2.x % 32u), 13u)]) ^ _wgslsmith_sub_i32(abs(var_0.x), ~abs(-3104i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(u_input.a << (u_input.a % 32u)) >= ~(~abs(u_input.a) >> (25972u % 32u));
    global1 = array<Struct_1, 1>();
    let var_1 = firstLeadingBit(~(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(45640u, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]))) | vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(27895u, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)]), -2147483647i), -func_3(Struct_1(true, arg_1.b, arg_1.c, arg_1.d), arg_1, arg_1.c.yx), global2[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], -43934i), min(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], 2147483647i), vec2<i32>(63682i, 24832i))), -_wgslsmith_add_i32(15198i, -2147483647i)), _wgslsmith_sub_i32(-max(1i, global2[_wgslsmith_index_u32(42464u, 13u)]), 40615i), _wgslsmith_sub_i32(~0i, ~(-27063i)));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-func_3(Struct_1(arg_0.x, vec4<f32>(arg_1.c.x, -617f, arg_1.b.x, 344f), arg_1.c, arg_1.d), Struct_1(true, vec4<f32>(680f, arg_1.b.x, arg_1.c.x, arg_1.c.x), vec3<f32>(arg_1.b.x, arg_1.b.x, -1007f), vec3<bool>(true, false, arg_0.x)), vec2<f32>(-507f, -550f)), var_1.x), global2[_wgslsmith_index_u32(0u, 13u)], -2147483647i, -(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(40287u, 13u)]) << (~1u % 32u))), vec4<i32>(-(~global2[_wgslsmith_index_u32(~u_input.a, 13u)]), -2147483647i, -1i, func_3(global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 1u)], Struct_1(var_1.x >= var_1.x, arg_1.b, vec3<f32>(arg_1.c.x, 982f, -134f), !vec3<bool>(true, false, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 929f)))));
    let var_3 = Struct_1(!arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(532f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-709f * arg_1.c.x))), 1147f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-957f, arg_1.b.x, 1412f, arg_1.c.x))), _wgslsmith_f_op_vec4_f32(abs(arg_1.b))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.c.x) - _wgslsmith_f_op_f32(arg_1.b.x * -125f)), -1777f, true)), _wgslsmith_f_op_f32(step(405f, -1399f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.c.x))), _wgslsmith_f_op_f32(floor(arg_1.b.x)))), vec3<bool>(false, !arg_0.x || arg_0.x, true));
    return 0i;
}

fn func_1() -> vec2<bool> {
    global1 = array<Struct_1, 1>();
    return !vec2<bool>((i32(-1i) * -55054i) >= func_2(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(~u_input.a, 1u)]), 4294967295u < firstTrailingBit(2805u >> (u_input.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(806f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(518f, -824f))))), 788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1552f))))));
    var var_1 = vec3<bool>(any(select(!func_1(), vec2<bool>(true, true), vec2<bool>(true, func_1().x))), true, !any(select(vec2<bool>(true, true), func_1(), vec2<bool>(true, true))));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-548f, var_0.x, -268f, 259f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1964f, var_0.x, -514f, var_0.x))) + vec4<f32>(var_0.x, -1233f, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1594f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -193f, var_0.x) - vec4<f32>(-699f, 2828f, 567f, 1155f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, 847f)), 1f), var_0.x, _wgslsmith_f_op_f32(var_0.x + -143f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.zyy)))), !select(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, false, var_1.x), var_1.x), vec3<bool>(var_1.x, all(vec2<bool>(false, var_1.x)), global2[_wgslsmith_index_u32(52285u, 13u)] == 16582i), var_1.x));
    var var_3 = min(-vec3<i32>(28234i, -global2[_wgslsmith_index_u32(27u, 13u)], select(0i, global2[_wgslsmith_index_u32(u_input.a, 13u)], var_2.a)) | ~vec3<i32>(~global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mult_i32(33919i, -31331i), ~24377i), -(~vec3<i32>(-39i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i, global2[_wgslsmith_index_u32(1u, 13u)]), -global2[_wgslsmith_index_u32(18764u, 13u)])));
    let var_4 = Struct_1(true, var_2.b, _wgslsmith_f_op_vec3_f32(-var_2.c), vec3<bool>(var_1.x, var_1.x, false));
    var var_5 = vec2<i32>(~var_3.x, var_3.x);
    var_3 = vec3<i32>(1i, _wgslsmith_mod_i32(-(~var_5.x), -(var_3.x | -1i)) ^ ~abs(var_3.x), 41330i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(571f, 1324f, _wgslsmith_f_op_f32(floor(-579f)), _wgslsmith_f_op_f32(abs(var_4.c.x))))), reverseBits(-(-var_3.yx ^ _wgslsmith_clamp_vec2_i32(var_3.xy, var_3.zy, var_3.xy))), var_3.yz, ~var_5.x, 412f);
}

