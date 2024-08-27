struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, false);

var<private> global1: f32 = 1157f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1503f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -273f), -306f))) + _wgslsmith_f_op_f32(floor(arg_2.x))));
    global0 = Struct_1(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(2147483647i, 0i) << ((u_input.b.x | arg_0.d.x) % 32u)), abs(1i)), arg_0.a.x);
    global1 = 391f;
    var var_0 = any(vec2<bool>(!(!global0.b), true)) | true;
    global1 = -604f;
    return !arg_0.a;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = select(vec2<bool>(abs(firstTrailingBit(4294967295u)) >= (~1u << (u_input.b.x % 32u)), all(!func_3(Struct_2(vec2<bool>(global0.b, global0.b), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), global0.b, vec2<u32>(4085u, u_input.d.x)), arg_0.x, vec4<f32>(arg_0.x, -2785f, 735f, 131f)))), func_3(Struct_2(vec2<bool>(global0.b && false, !global0.b), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(875f)), arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))), !(false && global0.b), min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 51316u), vec2<u32>(u_input.b.x, 34326u)), vec2<u32>(4294967295u, 1u))), _wgslsmith_div_f32(2073f, _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1317f, arg_0.x, arg_0.x, 548f) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1201f, -770f, arg_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -1015f, -236f, arg_0.x), vec4<bool>(global0.b, global0.b, global0.b, false)))))), true);
    global1 = arg_0.x;
    var var_1 = Struct_1(global0.a, all(func_3(Struct_2(var_0, vec4<f32>(1000f, 990f, arg_0.x, arg_0.x), global0.b, u_input.b), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -169f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    var_1 = Struct_1(_wgslsmith_div_i32(min(reverseBits(~var_1.a), min(countOneBits(-2147483647i), -17463i)), -41607i), var_1.b);
    let var_2 = Struct_1(~u_input.c, all(vec3<bool>(var_1.b, var_1.b, false)) | !(1021f >= _wgslsmith_f_op_f32(trunc(284f))));
    return var_2;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(863f * 748f), _wgslsmith_f_op_f32(sign(arg_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, arg_0.x))), arg_0.zz));
    var var_1 = Struct_2(!select(!select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, var_0.b), true), vec2<bool>(true, !var_0.b), vec2<bool>(global0.b, true)), vec4<f32>(_wgslsmith_div_f32(-1478f, 1f), -303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-299f)))), !global0.b, vec2<u32>(~0u, 0u));
    var_1 = Struct_2(!func_3(Struct_2(vec2<bool>(true, global0.b), _wgslsmith_div_vec4_f32(var_1.b, var_1.b), all(vec2<bool>(var_0.b, false)), vec2<u32>(6150u, var_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -244f))), vec4<f32>(1572f, -1817f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(trunc(-1001f)))), _wgslsmith_f_op_vec4_f32(-var_1.b), true, firstLeadingBit(~_wgslsmith_mult_vec2_u32(u_input.d, ~var_1.d)));
    var var_2 = all(!vec4<bool>(var_0.b, !var_0.b, arg_0.x > _wgslsmith_div_f32(-536f, 660f), var_0.b));
    var var_3 = ~(~min((vec4<u32>(u_input.b.x, u_input.d.x, 1u, 33179u) & vec4<u32>(4294967295u, 0u, 1u, u_input.a)) | vec4<u32>(33200u, var_1.d.x, 14935u, 0u), vec4<u32>(1u, u_input.d.x, u_input.a, var_1.d.x) | ~vec4<u32>(var_1.d.x, u_input.b.x, 52199u, 44498u)));
    return -780f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(278f)) + _wgslsmith_f_op_f32(func_1(vec3<f32>(786f, -456f, 2038f))))), -952f), true));
    global0 = Struct_1(abs(-2147483647i), true);
    let var_0 = ~vec3<u32>(max(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 3548u, 1u), ~(u_input.b.x | u_input.b.x)), u_input.d.x, 41513u);
    let var_1 = global0.b;
    global1 = -580f;
    let var_2 = reverseBits(~(~u_input.d.x));
    let var_3 = func_2(vec2<f32>(1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec2<i32>(_wgslsmith_div_i32(-28249i, -2147483647i), _wgslsmith_div_i32(var_3.a, 1i))), ~_wgslsmith_clamp_i32(select(firstTrailingBit(-1i), -2147483647i, false), u_input.c, select(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(var_3.a, u_input.c)), false && global0.b)), -149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -691f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1180f, 201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-273f)) + _wgslsmith_f_op_f32(-2029f + 784f)))), i32(-1i) * -(abs(2147483647i) << (~var_0.x % 32u)));
}

