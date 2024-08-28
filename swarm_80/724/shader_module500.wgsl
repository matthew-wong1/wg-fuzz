struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(arg_0.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(arg_0.a, 34245i, arg_0.a, u_input.b)), -abs(vec4<i32>(arg_0.a, min(arg_0.a, 36149i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 4783i, -12144i), vec3<i32>(arg_0.a, 1670i, 364i)), 27196i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-555f, -454f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a, arg_0.b.a), vec2<f32>(arg_1.a, 552f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, -639f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a, 155f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(264f, arg_1.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_0.c.a) + vec2<f32>(525f, arg_1.a))))));
    let var_2 = !(!global0.ywz);
    let var_3 = -(~(~(~select(var_0, vec4<i32>(-32359i, -1i, arg_0.a, 2147483647i), arg_1.c))));
    global0 = vec4<bool>(-278f == arg_0.c.a, arg_1.c, !any(vec3<bool>(false, all(vec4<bool>(true, arg_0.c.c, false, arg_0.b.c)), u_input.a > arg_0.a)), arg_1.c);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.c.a, -1000f))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = ~(~3600i);
    var_0 = min(u_input.b, ~abs(-1i));
    global0 = select(!select(!vec4<bool>(arg_0.x, global0.x, true, global0.x), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(arg_0.x, global0.x, global0.x, false), global0.x), select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, true, false, global0.x), arg_0.x), true), vec4<bool>(false, global0.x, true, any(arg_0))), vec4<bool>(all(vec2<bool>(global0.x, all(vec3<bool>(true, arg_0.x, global0.x)))), arg_0.x, false, false), vec4<bool>(any(!(!vec4<bool>(true, arg_0.x, false, global0.x))), all(select(arg_0, vec3<bool>(true, false, arg_0.x), !global0.yxw)), false, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1202f * -216f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(497f + -1000f))) + -2240f)));
    var var_2 = global0.yx;
    return _wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(reverseBits(0u)), firstTrailingBit(_wgslsmith_mod_u32(0u, 18140u)), firstTrailingBit(~38018u)), ~(~(~reverseBits(vec3<u32>(69013u, 37793u, 42259u)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<u32>(22105u, ~(1u >> (~(~1u) % 32u)), 672u);
    var_0 = ~(~abs(vec3<u32>(var_0.x, var_0.x, var_0.x) << (vec3<u32>(var_0.x, 50930u, 1u) % vec3<u32>(32u))) >> ((func_3(vec3<bool>(global0.x, false, false)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(70178u, var_0.x, 51744u), vec3<u32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(var_0.x, var_0.x, var_0.x)))) % vec3<u32>(32u)));
    var var_1 = vec4<bool>(true, select(global0.x, !global0.x, !(!(global0.x || global0.x))), all(vec4<bool>(true, (var_0.x & 4294967295u) != _wgslsmith_div_u32(4294967295u, 48125u), true, 1u != firstTrailingBit(var_0.x))), !all(global0.zy));
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-477f, -1184f, 319f, arg_1.x))) * vec4<f32>(-2508f, 462f, -306f, arg_1.x)) * vec4<f32>(_wgslsmith_f_op_f32(810f * -380f), 338f, _wgslsmith_f_op_f32(-1000f - arg_1.x), _wgslsmith_f_op_f32(floor(427f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.x, -729f), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_div_f32(596f, arg_1.x), arg_1.x) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, -184f, 157f, -518f)))))), Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-998f, -1000f, arg_1.x))))), 868f);
    let var_3 = !var_2.b.a;
    return Struct_1(_wgslsmith_clamp_u32(var_0.x, 1u, ~var_0.x >> (_wgslsmith_div_u32(85197u, var_0.x) % 32u)) > ~var_0.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-688f, -1745f)) * -457f), -1039f, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(u_input.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1201f))), 2667f), _wgslsmith_f_op_f32(func_1(Struct_3(-u_input.a, Struct_2(-164f, 0u, global0.x, 25129u), Struct_2(-1100f, 7189u, false, 36105u), 1u), Struct_2(-229f, 48468u, true, min(4294967295u, 535u))))));
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), var_0.b.x, 1076f != var_0.b.x))), -240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(599f * 1000f)) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f)) + _wgslsmith_f_op_f32(max(584f, var_0.b.x)))), func_2(-1i, var_0.b.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -1000f))))));
    var var_2 = Struct_5(Struct_2(1000f, 4294967295u, all(vec3<bool>(!var_1.b.a, true, var_1.b.a || global0.x)), ~1u), Struct_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -1i, u_input.a), _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.a, -43379i))), Struct_2(_wgslsmith_f_op_f32(var_1.b.b.x + var_1.a.x), _wgslsmith_sub_u32(57124u, 1u), global0.x, func_3(global0.yxx).x), Struct_2(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))), 0u, any(select(vec4<bool>(false, false, false, var_0.a), vec4<bool>(false, global0.x, true, var_1.b.a), var_1.b.a)), ~_wgslsmith_div_u32(1u, 101595u)), 34516u), firstTrailingBit(_wgslsmith_div_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(52594i, u_input.b) & vec2<i32>(-65727i, -31225i), true && var_0.a), ~(vec2<i32>(u_input.a, u_input.b) << (vec2<u32>(0u, 49219u) % vec2<u32>(32u))))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(var_0.b.x)), ~0u, -abs(_wgslsmith_mult_i32(1i, var_2.b.a)) > max(~var_2.c.x, abs(~u_input.b)), 89283u);
    let var_4 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(30820u, 46349u)), vec2<u32>(1u, min(~1u, var_3.d)));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_2.b.a) << (vec2<u32>(var_4, 24433u) % vec2<u32>(32u)), var_2.c) | vec2<i32>(u_input.b, -18495i << (var_4 % 32u))), select(vec3<u32>(~1u, 42581u, _wgslsmith_div_u32(~var_5, max(var_3.b, var_3.d))), abs(vec3<u32>(var_3.d, _wgslsmith_div_u32(var_5, 0u), 0u)), global0.yzx), var_3.a);
}

