struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(37623u, 685u, 4294967295u), vec3<u32>(4294967295u, 88401u, 58659u), vec3<u32>(4294967295u, 1220u, 53378u), vec3<u32>(1u, 564u, 37619u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, abs(u_input.a & 4294967295u)), _wgslsmith_div_u32(abs(1u), ~78098u | u_input.a)));
    var_0 = Struct_1(u_input.a);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(4189u, 19487u) << (firstTrailingBit(u_input.a) % 32u)), select(vec2<u32>(~var_0.a, 0u), ~firstLeadingBit(vec2<u32>(u_input.a, var_0.a)), vec2<bool>(true, true))));
    global0 = array<vec3<u32>, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-751f * -683f), _wgslsmith_f_op_f32(-446f * -1592f)))));
    return !vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)), true, false, false);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    return Struct_2(vec3<bool>(false & all(vec4<bool>(true, true, true, true)), false, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)) || false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(564f)) - arg_1)))), func_3(), arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1776f, 123f, arg_1, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(arg_1)), -600f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(vec3<bool>(arg_1, true, arg_1 != arg_1), _wgslsmith_f_op_f32(abs(-2843f)), vec4<bool>(true, arg_1, !(!arg_1), !(!arg_1)), Struct_1(_wgslsmith_mult_u32(abs(arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, arg_0.x, u_input.a), vec4<u32>(arg_0.x, u_input.a, 44217u, 0u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1648f, arg_2, -1029f, -780f) + vec4<f32>(1688f, 967f, 1077f, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_2, 1341f, arg_2)))))))), func_2(Struct_1(26781u), -344f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f - -775f)), 949f, arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, 687f, arg_2, arg_2))))));
    global0 = array<vec3<u32>, 4>();
    global0 = array<vec3<u32>, 4>();
    global0 = array<vec3<u32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(select(arg_2, arg_2, false)))) * _wgslsmith_f_op_f32(-var_0.a.b));
    return func_2(Struct_1(4294967295u), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) * _wgslsmith_f_op_f32(-arg_2))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    var var_0 = -917f;
    let var_1 = Struct_3(arg_1, func_2(func_1(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_1.d.a, 1539u), vec2<u32>(0u, 36343u), arg_1.a.xy), ~vec2<u32>(64593u, u_input.a), countOneBits(vec2<u32>(u_input.a, u_input.a))), true, arg_1.b).d, func_1(vec2<u32>(arg_1.d.a, func_2(Struct_1(arg_1.d.a), 404f).d.a), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, 575f)), _wgslsmith_f_op_f32(-arg_1.e.x))).e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.e))))));
    let var_2 = ~(~func_1(vec2<u32>(32207u, 24494u) & (vec2<u32>(var_1.b.d.a, 20367u) | vec2<u32>(1u, arg_1.d.a)), func_3().x, -574f).d.a);
    let var_3 = arg_1;
    let var_4 = min(var_1.b.d.a, u_input.a);
    return !func_2(func_1(~vec2<u32>(arg_1.d.a, var_2), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.x)))).d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_1(vec2<u32>(4294967295u, var_1.a.d.a), arg_1.a.x, -986f).b), var_1.c.x))).c.wzx;
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 4>();
    var var_0 = func_2(arg_3.a.d, arg_2.e.x).d;
    var var_1 = arg_1;
    var_1 = arg_3.c.x;
    var var_2 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 11977i), vec2<i32>(1i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 921i), vec2<i32>(57365i, 19599i))), firstTrailingBit(6662i)) << (1u % 32u);
    return func_1(select(countOneBits(abs(max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_0.a, 4294967295u)))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.d.a, 24440u), vec2<u32>(var_0.a, 51018u)), ~vec2<u32>(0u, arg_2.d.a)), all(!vec3<bool>(arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x))), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.a.e.x)) - -303f)).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, -498f, 1064f, -737f) - vec4<f32>(858f, -1000f, 1269f, -727f))) + vec4<f32>(-738f, _wgslsmith_f_op_f32(f32(-1f) * -122f), -563f, -298f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 626f, -512f, -276f))))), _wgslsmith_f_op_f32(f32(-1f) * -620f), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1286f, -1050f, -461f))) + vec4<f32>(1793f, 396f, 293f, -361f)), func_1(_wgslsmith_add_vec2_u32(vec2<u32>(51831u, u_input.a), vec2<u32>(14474u, u_input.a)), true, _wgslsmith_f_op_f32(-1000f - 136f)), any(func_1(vec2<u32>(u_input.a, u_input.a), false, -797f).c.yz)), func_2(func_2(Struct_1(u_input.a), 1f).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))).e.x, select(vec4<bool>(any(vec3<bool>(true, true, true)), false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(func_2(func_2(Struct_1(u_input.a), 1080f).d, 1000f).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1606f - -1394f)))).d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-743f, -1216f, 232f, -1000f), vec4<f32>(549f, -1230f, 686f, 1071f), vec4<bool>(true, false, true, false))))))), Struct_3(func_1(vec2<u32>(u_input.a | u_input.a, u_input.a), true, 341f), Struct_2(func_1(abs(vec2<u32>(u_input.a, 1u)), any(vec3<bool>(true, false, true)), 1f).a, _wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(step(284f, 174f))), vec4<bool>(true, true, true, true), func_2(func_1(vec2<u32>(12578u, 12498u), true, 1000f).d, -2361f).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1100f, -1714f, 166f, 1548f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1392f, 2323f, 357f, 867f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1785f, -279f, -829f, -2009f))) + vec4<f32>(584f, -1542f, 422f, 321f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1062f), -1933f, abs(11580i));
}

