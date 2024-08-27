struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    let var_0 = !(!vec2<bool>(any(vec2<bool>(true, false)), true));
    global0 = Struct_2(vec4<i32>(~(~(-125348i)), 30565i, _wgslsmith_sub_i32(-15383i, max(~u_input.b.x, ~u_input.a.x)), -2147483647i), ~(1u | arg_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.wz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1000f), vec2<f32>(-480f, -375f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -779f)))))), Struct_1(select(false, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, arg_0, -147f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.d.b, vec3<f32>(-989f, arg_0, 1627f), var_0.x)) + vec3<f32>(arg_0, -275f, global0.d.b.x)))), global0.e);
    global0 = Struct_2(u_input.a, global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -366f) - _wgslsmith_f_op_f32(arg_0 * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f) + _wgslsmith_f_op_f32(exp2(global1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.e.b.x + 604f), _wgslsmith_f_op_f32(f32(-1f) * -971f)))), global0.e, Struct_1(any(vec4<bool>(global0.d.a, true, false, var_0.x)) != all(vec2<bool>(true, global0.e.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.d.b.x, 363f)))));
    var var_1 = _wgslsmith_mult_u32(~(~select(arg_1.x << (u_input.c % 32u), 4294967295u, true)), global0.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(global0.d.b - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.e.b))))));
    return ~88056u;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = Struct_2(select(vec4<i32>(1i, -u_input.a.x, min(-34526i, ~global0.a.x), -(~u_input.b.x)), select(vec4<i32>(-60181i, global0.a.x, _wgslsmith_add_i32(-1i, u_input.a.x), global0.a.x), _wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.a), ~global0.a), true), any(!vec2<bool>(global0.d.a, true))), func_3(-1032f, min(abs(vec2<u32>(47324u, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, global0.b)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -1767f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, 826f))), !global0.d.a)), _wgslsmith_f_op_vec2_f32(-global1.zw))))), Struct_1(global0.d.a | global0.d.a, _wgslsmith_f_op_vec3_f32(-global0.e.b)), global0.d);
    var var_0 = global0.a.x;
    var var_1 = !select(vec3<bool>(global0.d.a, any(select(vec3<bool>(true, true, global0.d.a), vec3<bool>(global0.e.a, global0.d.a, global0.e.a), global0.e.a)), select(60737i, -61760i, false) < global0.a.x), !vec3<bool>(select(global0.e.a, global0.d.a, global0.d.a), global0.d.a & global0.e.a, global0.d.a), vec3<bool>(any(vec3<bool>(false, global0.d.a, global0.e.a)), true, all(select(vec2<bool>(false, global0.d.a), vec2<bool>(global0.e.a, false), vec2<bool>(false, false)))));
    global0 = Struct_2(vec4<i32>(max(firstTrailingBit(u_input.a.x << (34578u % 32u)), u_input.b.x), reverseBits(~0i), global0.a.x, ~_wgslsmith_add_i32(countOneBits(5437i), 1i)), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.zz)))), Struct_1(true | any(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -170f)) + _wgslsmith_f_op_vec3_f32(global0.d.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.d.b.x, 1000f))))), Struct_1(all(vec4<bool>(global0.d.a, true, true, global0.e.a)), _wgslsmith_f_op_vec3_f32(-global0.d.b)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-263f, global1.x, -717f, global1.x)))))))));
    return reverseBits(50874u);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global0 = Struct_2(vec4<i32>(-(0i << (func_2(arg_2) % 32u)), -14620i, abs(abs(~19908i)), -3903i), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 33936u), arg_2)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))))), arg_1, Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2385f, -2079f, global1.x)) * _wgslsmith_f_op_vec3_f32(select(global0.d.b, vec3<f32>(173f, arg_1.b.x, -1109f), vec3<bool>(true, false, true))))))));
    var var_0 = global0.b;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.x)), global0.e.b.x, _wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(abs(-417f))), vec4<f32>(global0.d.b.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.b.x) + global1.x), global0.e.b.x)), vec4<f32>(444f, 1820f, global1.x, 1000f));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~1u | _wgslsmith_clamp_u32(func_2(4294967295u), ~arg_2, ~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 0u, 18562u), vec3<u32>(arg_2, u_input.c, u_input.c), vec3<u32>(global0.b, 0u, 1u)) | abs(vec3<u32>(u_input.c, 40751u, u_input.c)), ~vec3<u32>(4294967295u, global0.b, global0.b) ^ firstLeadingBit(vec3<u32>(u_input.c, 0u, arg_2)))), ~_wgslsmith_sub_vec2_u32(select(max(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, arg_2)), _wgslsmith_mod_vec2_u32(vec2<u32>(85402u, global0.b), vec2<u32>(74764u, arg_2)), vec2<bool>(false, true)), vec2<u32>(35715u, ~1u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.d.b.x - -1000f), _wgslsmith_f_op_f32(floor(460f)), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1574f, 1292f, arg_1.b.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global0.c.x, global1.x, global1.x), vec4<f32>(arg_1.b.x, global0.c.x, global1.x, -806f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 498f, 594f, global0.c.x) - vec4<f32>(270f, global1.x, 1613f, global1.x))) - vec4<f32>(_wgslsmith_f_op_f32(global0.d.b.x * 498f), global1.x, _wgslsmith_f_op_f32(select(global1.x, 864f, global0.d.a)), _wgslsmith_f_op_f32(-680f * 209f))))));
    return Struct_2(vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), select(vec2<i32>(global0.a.x, 2147483647i), vec2<i32>(global0.a.x, arg_0.x), arg_1.a)), -30745i, -(~(i32(-1i) * -1i))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, 28470u)), abs(u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(step(818f, _wgslsmith_f_op_f32(min(global0.e.b.x, 129f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, 991f)) + vec2<f32>(1520f, 1836f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1162f), global0.d.b.zz, all(vec4<bool>(arg_1.a, false, arg_1.a, global0.d.a)))), !all(vec3<bool>(false, false, global0.e.a))))), Struct_1(global0.c.x >= global1.x, arg_1.b), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.d.b, global0.e.b, vec3<bool>(global0.d.a, global0.e.a, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.b) * _wgslsmith_f_op_vec3_f32(round(global0.d.b)));
    global0 = func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(u_input.a.x, u_input.a.x, -3274i, 0i)), ~global0.a.x), vec2<i32>(max(select(0i, -1i, global0.e.a), u_input.a.x), u_input.a.x)), global0.d, _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(u_input.c, global0.b)), global0.b >> (0u % 32u)));
    var var_1 = Struct_3(global0.d.a && !(!global0.e.a));
    let var_2 = Struct_1(any(!(!(!vec4<bool>(var_1.a, var_1.a, true, true)))), _wgslsmith_f_op_vec3_f32(func_1(global0.a.yx, Struct_1(!var_1.a, _wgslsmith_f_op_vec3_f32(global1.zxz + vec3<f32>(1441f, -660f, var_0.x))), ~(~u_input.c)).d.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.b)))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(-9681i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 386i), global0.a.yx)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i | global0.a.x, 1i, global0.a.x, -u_input.a.x), max(global0.a, ~vec4<i32>(2147483647i, u_input.a.x, -46534i, u_input.b.x))), ~(-63802i)), countOneBits(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - global0.e.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2385f + 2079f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + global0.e.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(181f - var_2.b.x), _wgslsmith_f_op_f32(floor(-910f)), _wgslsmith_f_op_f32(exp2(var_0.x)), global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1185f, -425f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.b.x, -554f, var_2.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.x, var_0.x, 392f, var_0.x))))));
}

