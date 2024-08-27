struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = 1000f;

var<private> global2: array<vec2<u32>, 12>;

var<private> global3: u32;

var<private> global4: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global4 = arg_0.c.zwy;
    let var_0 = Struct_2(false);
    let var_1 = arg_0;
    let var_2 = var_0.a;
    var var_3 = var_1;
    return ~(~var_1.d | (~1u << (var_3.d % 32u)));
}

fn func_2() -> vec2<f32> {
    global3 = abs(abs(_wgslsmith_mod_u32(~(~1u), 1u)));
    var var_0 = Struct_1(select(true, false, true || (u_input.a > 2147483647i)), !(!(global4.x | true) | true), !(!vec4<bool>(select(global4.x, true, true), all(vec3<bool>(global4.x, false, global4.x)), global4.x | true, true)), func_3(Struct_1(!global4.x, true, vec4<bool>(global4.x, false, global4.x, all(vec4<bool>(false, false, false, global4.x))), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(-558f, 726f)), ~_wgslsmith_div_vec4_i32(vec4<i32>(22490i, 2147483647i, u_input.a, u_input.a), vec4<i32>(26259i, -16853i, 23221i, -2147483647i)) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1142f) - _wgslsmith_f_op_f32(step(-611f, 1009f))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, var_0.e.x, var_0.e.x, 165f)) * vec4<f32>(-289f, var_0.e.x, var_0.e.x, -667f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, 166f, var_0.e.x, -1000f), vec4<f32>(-676f, var_0.e.x, var_0.e.x, -648f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.e.x, var_0.e.x, -448f, var_0.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, -180f) * vec4<f32>(var_0.e.x, 1000f, var_0.e.x, var_0.e.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, -113f, var_0.e.x, var_0.e.x)), vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, -880f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(381f + var_0.e.x), var_0.e.x, _wgslsmith_f_op_f32(784f + 186f), 391f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -103f, var_0.e.x, 1244f) - vec4<f32>(var_0.e.x, 236f, 147f, -1532f)))))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(abs(global2[_wgslsmith_index_u32(96250u, 12u)] >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) ^ vec2<u32>(var_0.d, abs(var_0.d)), ~_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(42524u, 12u)], global2[_wgslsmith_index_u32(71304u, 12u)], vec2<u32>(var_0.d, var_0.d)) & global2[_wgslsmith_index_u32(~19978u >> (1u % 32u), 12u)]);
    var var_3 = Struct_1(all(vec4<bool>(any(var_0.c.wzz), var_0.a, !all(var_0.c), true)), all(select(var_0.c.xxy, vec3<bool>(var_0.a, true, true), false)), select(vec4<bool>(true, false, !(!var_0.a), var_0.b), vec4<bool>(var_0.a, ~var_0.d > var_0.d, global4.x, (u_input.a | 2147483647i) < _wgslsmith_mult_i32(0i, u_input.a)), vec4<bool>(global4.x, any(vec4<bool>(var_0.b, true, true, false)), var_0.a, any(!vec4<bool>(false, true, var_0.c.x, false)))), 4294967295u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.e)))));
    return _wgslsmith_f_op_vec2_f32(select(var_3.e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.yx)))), var_0.e)), !select(select(!vec2<bool>(var_0.c.x, true), var_3.c.zw, global4.x), var_0.c.yy, vec2<bool>(true, var_0.a))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    global3 = arg_1.d;
    global0 = func_3(arg_1, (_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a), select(vec4<i32>(8195i, -2147483647i, u_input.a, u_input.a), vec4<i32>(1i, -1i, u_input.a, u_input.a), arg_2.a)) & vec4<i32>(u_input.a, u_input.a & u_input.a, 27623i, 398i)) | -select(vec4<i32>(-2147483647i, u_input.a, u_input.a, 19573i), vec4<i32>(-1i, u_input.a, u_input.a, -28607i), !vec4<bool>(arg_1.b, false, true, false)));
    var var_1 = arg_1.d;
    let var_2 = abs(~_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), u_input.a), select(firstLeadingBit(vec2<i32>(1i, -36551i)), ~vec2<i32>(21243i, -11323i), !vec2<bool>(true, arg_1.b))));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    global0 = 1u;
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)) - _wgslsmith_f_op_f32(min(881f, _wgslsmith_f_op_f32(trunc(2247f)))))), Struct_1(arg_0, true, !(!(!vec4<bool>(true, global4.x, arg_0, false))), ~arg_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, arg_1.e.x)))), Struct_2(4294967295u >= (arg_1.d ^ (0u << (arg_1.d % 32u)))));
    global0 = 4294967295u;
    let var_1 = any(arg_1.c.wwy);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(504f)))))), _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(max(arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(720f, arg_1.e.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2()).x, arg_1.e.x));
    return false;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> bool {
    global4 = vec3<bool>(false, global4.x, arg_3);
    var var_0 = abs(select(reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-37844i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<i32>(-1i, 0i, -49407i), vec3<i32>(-501i, u_input.a, u_input.a), false))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(20396i, 2147483647i), vec2<i32>(-8358i, 8035i)), 41090i >> (arg_2 % 32u), (u_input.a >> (4294967295u % 32u)) | u_input.a), vec3<bool>(false, true, func_4(_wgslsmith_f_op_f32(max(-712f, 933f)), Struct_1(true, arg_3, vec4<bool>(arg_3, false, true, arg_1.x), arg_2, arg_0), func_4(-408f, Struct_1(false, false, vec4<bool>(true, arg_3, false, global4.x), 7482u, vec2<f32>(1640f, -619f)), Struct_2(true))).a)));
    global1 = arg_0.x;
    let var_1 = arg_0.x != arg_0.x;
    global4 = vec3<bool>(true, func_1(false, Struct_1(arg_1.x, true, select(!vec4<bool>(true, global4.x, global4.x, false), vec4<bool>(true, false, arg_1.x, global4.x), true), arg_2, arg_0)), false);
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 12>();
    global2 = array<vec2<u32>, 12>();
    global3 = 0u;
    global3 = firstTrailingBit(1u);
    global4 = select(!(!vec3<bool>(true, all(vec4<bool>(global4.x, global4.x, global4.x, global4.x)), select(false, global4.x, global4.x))), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, true, true)), !vec3<bool>(true, true, global4.x), true)), func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(680f, -1134f) * vec2<f32>(213f, -1004f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-502f, 837f), vec2<f32>(1102f, -860f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-427f, -124f), vec2<f32>(180f, 802f)))))), global4.zx, 43035u, func_1(!global4.x, Struct_1(false, global4.x, vec4<bool>(true, global4.x, true, global4.x), 0u, vec2<f32>(1000f, 1909f))) & true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1258f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(564f + -275f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-reverseBits(i32(-1i) * -17725i), u_input.a, u_input.a, u_input.a), countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-20641i, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-52296i, 0i)), max(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)))));
}

