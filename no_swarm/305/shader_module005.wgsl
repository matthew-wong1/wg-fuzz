struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec2<u32>, 14>;

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(19732u, arg_0.a.b.x), 14u)];
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f - 446f)))), -530f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -238f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1321f)) + 1920f)));
    global0 = array<vec2<f32>, 13>();
    global1 = array<vec2<u32>, 14>();
    let var_1 = arg_0.a;
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, countOneBits(-60192i)), vec2<i32>(countOneBits(u_input.b.x), 1i)), -u_input.b.x), u_input.a.x, u_input.a.x);
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(~(-u_input.c.x), -var_0));
    var var_2 = !(!arg_1.wx);
    global0 = array<vec2<f32>, 13>();
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_2.a, vec4<u32>(21851u, 83236u, 4294967295u, arg_2.b.x))), global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -470f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2106f))), _wgslsmith_f_op_f32(f32(-1f) * -348f))));
    return Struct_1(any(vec3<bool>(arg_2.a, true, true)) | all(!arg_1.yzy), ~arg_2.b);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 13>();
    var var_0 = arg_0;
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = !vec4<bool>(true, -798i >= _wgslsmith_mult_i32(-var_1, u_input.a.x >> (4294967295u % 32u)), true, arg_0.a.a);
    let var_3 = var_0.a.a;
    return 14347u;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<vec2<u32>, 14>();
    let var_0 = arg_2;
    let var_1 = Struct_1(true, ~arg_2.a.b);
    var var_2 = global0[_wgslsmith_index_u32(1u, 13u)];
    var var_3 = -1000f;
    return Struct_2(var_0.a);
}

fn func_1() -> vec4<u32> {
    global2 = abs(~vec2<u32>(firstTrailingBit(countOneBits(global2.x)), 1u & countOneBits(global2.x)));
    global0 = array<vec2<f32>, 13>();
    var var_0 = func_5(func_4(Struct_2(func_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true), Struct_1(false, vec4<u32>(34530u, global2.x, global2.x, global2.x))))), u_input.a.x, Struct_2(Struct_1(true, vec4<u32>(32881u, 60315u, global2.x, global2.x) & _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x)))));
    var var_1 = Struct_2(func_2(select(vec2<bool>(false, false), select(!vec2<bool>(var_0.a.a, false), vec2<bool>(true, var_0.a.a), !vec2<bool>(true, var_0.a.a)), !var_0.a.a), select(select(select(vec4<bool>(true, true, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, false, var_0.a.a, true), vec4<bool>(false, true, var_0.a.a, var_0.a.a)), select(vec4<bool>(false, var_0.a.a, true, var_0.a.a), vec4<bool>(var_0.a.a, true, true, var_0.a.a), var_0.a.a), var_0.a.a), vec4<bool>(true, false & var_0.a.a, true, var_0.a.a), vec4<bool>(true, select(var_0.a.a, false, var_0.a.a), true, any(vec4<bool>(var_0.a.a, var_0.a.a, false, true)))), Struct_1(true, var_0.a.b)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-152f * 1157f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1430f)) * _wgslsmith_f_op_f32(695f - -2867f))))));
    return vec4<u32>(58232u, 27958u, 37181u, select(global2.x, 30456u, var_1.a.b.x != global2.x));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(0i, -(i32(-1i) * -3928i));
    var var_1 = -u_input.c;
    var var_2 = Struct_1(any(!(!(!vec3<bool>(arg_1.a, true, arg_1.a)))), vec4<u32>(func_1().x, 17548u, _wgslsmith_div_u32(abs(~arg_1.b.x), 65489u), arg_0.x));
    var var_3 = var_0;
    var var_4 = select(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, _wgslsmith_add_i32(var_1.x, 0i), abs(-31269i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, u_input.c.x, -2147483647i), u_input.c))), u_input.c), vec4<i32>(abs(i32(-1i) * -14362i), u_input.b.x << (abs(4294967295u << (arg_0.x % 32u)) % 32u), var_0, _wgslsmith_add_i32(firstTrailingBit(countOneBits(u_input.b.x)), 1i)), func_5(arg_0.x, _wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.xw, vec2<i32>(-25151i, u_input.b.x)), 9285i)), func_5(1266u, _wgslsmith_mod_i32(~var_1.x, var_1.x), Struct_2(Struct_1(true, vec4<u32>(global2.x, global2.x, var_2.b.x, 1u))))).a.a);
    return Struct_1(var_2.a, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    var var_0 = func_6(abs(~func_1()), func_2(!vec2<bool>(all(vec2<bool>(true, true)), true), vec4<bool>((u_input.a.x ^ -74343i) != ~u_input.b.x, false || all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true))), func_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 12740u, 0u, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 60010u, 20507u, global2.x), vec4<u32>(global2.x, 0u, 17099u, 30996u))), 60837i, func_5(~62784u, ~(-2147483647i), func_5(1u, -22763i, Struct_2(Struct_1(false, vec4<u32>(31442u, global2.x, global2.x, 0u)))))).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) - _wgslsmith_f_op_f32(f32(-1f) * -1046f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1377f))))));
    var_0 = func_2(select(!(!vec2<bool>(true, var_0.a)), select(vec2<bool>(all(vec2<bool>(true, var_0.a)), !var_0.a), vec2<bool>(true, true), max(2053i, -2147483647i) >= select(u_input.c.x, u_input.a.x, var_0.a)), _wgslsmith_dot_vec3_i32(~u_input.c.xyy, u_input.c.xyz ^ vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x)) == u_input.b.x), select(!select(vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), !vec4<bool>(var_0.a, false, var_0.a, var_0.a)), vec4<bool>(var_0.a, any(vec2<bool>(true, false)), !var_0.a, true), vec4<bool>(var_0.a, true, var_0.a, true)), func_6(reverseBits(select(vec4<u32>(global2.x, global2.x, var_0.b.x, 15831u) ^ vec4<u32>(4294967295u, global2.x, 0u, var_0.b.x), ~var_0.b, func_2(vec2<bool>(false, true), vec4<bool>(false, false, var_0.a, true), Struct_1(var_0.a, var_0.b)).a)), func_6(_wgslsmith_sub_vec4_u32(var_0.b, var_0.b >> (var_0.b % vec4<u32>(32u))), Struct_1(true, var_0.b), _wgslsmith_div_f32(var_1, 1180f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(357f, var_1)), _wgslsmith_div_f32(-939f, 1656f))))));
    var var_2 = var_0.a;
    global0 = array<vec2<f32>, 13>();
    let var_3 = Struct_2(func_2(!vec2<bool>(var_0.a, all(vec3<bool>(var_0.a, true, false))), !(!(!vec4<bool>(true, var_0.a, true, var_0.a))), func_2(select(select(vec2<bool>(false, var_0.a), vec2<bool>(true, true), false), !vec2<bool>(var_0.a, true), true), select(!vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(var_0.a, true, true, false)), func_5(var_0.b.x, reverseBits(1i), func_5(global2.x, u_input.c.x, Struct_2(Struct_1(var_0.a, vec4<u32>(var_0.b.x, var_0.b.x, global2.x, global2.x))))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(~var_3.a.b.x, _wgslsmith_sub_u32(global2.x, 4294967295u)) << (max(~var_0.b.yy, global1[_wgslsmith_index_u32(~1u, 14u)]) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(671f)) * 980f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 1212f))));
}

