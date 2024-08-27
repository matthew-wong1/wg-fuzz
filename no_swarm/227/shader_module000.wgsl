struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(2147483647i, -17401i, -1i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(2147483647i, 1i, 16045i), vec3<i32>(25635i, 27367i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(-52185i, 0i, -1i), vec3<i32>(-16668i, 85914i, 1i), vec3<i32>(34925i, 1i, 2147483647i), vec3<i32>(-7487i, 5804i, 0i), vec3<i32>(-32272i, 14830i, i32(-2147483648)), vec3<i32>(-8448i, 2147483647i, 38270i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(0i, 0i, -21927i), vec3<i32>(66425i, -9468i, 40990i), vec3<i32>(2147483647i, -49318i, 26474i), vec3<i32>(2147483647i, -33322i, -69360i), vec3<i32>(0i, -3202i, -20511i), vec3<i32>(44295i, -1i, -46814i));

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = ~(reverseBits(_wgslsmith_div_vec2_i32(abs(u_input.e), -vec2<i32>(arg_3.a, 12452i))) ^ u_input.e);
    let var_1 = arg_1;
    let var_2 = u_input.b;
    var var_3 = vec2<i32>(-7899i, firstTrailingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_0, arg_0, 7897i, u_input.d) << (var_2 % vec4<u32>(32u)), -vec4<i32>(arg_1.a, u_input.d, 1i, var_0.x)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 2147483647i, arg_3.a, arg_0), vec4<i32>(38733i, arg_0, var_1.a, u_input.d))))));
    var var_4 = 19378u & u_input.c;
    return _wgslsmith_div_f32(-344f, 806f);
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    global1 = !vec3<bool>(u_input.e.x < u_input.d, !(40950u > _wgslsmith_div_u32(u_input.a, 52636u)), all(select(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, global1.x), false), !vec4<bool>(false, true, true, global1.x), 8801i == u_input.d)));
    global0 = array<vec3<i32>, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -1268f, -768f) + vec4<f32>(395f, 1000f, -1208f, 490f)), vec4<f32>(666f, 1000f, 1667f, 2445f))))));
    return _wgslsmith_clamp_vec4_u32(~arg_0, reverseBits(~arg_0), _wgslsmith_div_vec4_u32((vec4<u32>(52996u, u_input.a, 1u, u_input.b.x) | vec4<u32>(u_input.c, 4294967295u, 85300u, u_input.a)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(239u, 4294967295u, 33436u, 0u), firstLeadingBit(vec4<u32>(42539u, 1u, 27986u, 46925u))), arg_0));
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~(vec4<u32>(max(arg_0.x, ~arg_0.x), u_input.b.x, min(~0u, u_input.a >> (u_input.c % 32u)), 0u) | firstLeadingBit(~select(u_input.b, vec4<u32>(u_input.c, arg_0.x, arg_0.x, 0u), global1.x)));
    var var_1 = _wgslsmith_f_op_f32(1184f * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1578f, -476f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 424f)))))));
    global1 = !select(!(!(!vec3<bool>(global1.x, global1.x, global1.x))), !select(!vec3<bool>(true, true, global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x)), vec3<bool>(global1.x, false, global1.x)), !vec3<bool>(all(vec3<bool>(true, global1.x, false)), false, 1u <= var_0.x));
    let var_2 = Struct_1((_wgslsmith_div_i32(u_input.d >> (0u % 32u), u_input.d) & ~u_input.e.x) ^ u_input.e.x);
    let var_3 = 1u;
    return 1i;
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    let var_0 = 34261i;
    var var_1 = Struct_1(~func_4(func_3(u_input.b) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.a, 4294967295u), vec4<u32>(u_input.c, 0u, 1u, u_input.a), vec4<u32>(23907u, u_input.b.x, u_input.a, 0u))));
    var var_2 = -106f;
    return !select(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false), global1.x)), vec3<bool>(any(global1.zx), select(true, false, global1.x), all(vec3<bool>(global1.x, false, global1.x))), vec3<bool>(all(vec4<bool>(false, global1.x, false, true)), true, true)), select(vec3<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), true, global1.x), vec3<bool>(u_input.c >= 66820u, true, global1.x), select(vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true)))), vec3<bool>(true, false, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u) != u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) - _wgslsmith_f_op_f32(-1410f * 601f)) + _wgslsmith_f_op_f32(sign(-766f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(220f, -534f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-182f, -1989f, global1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(var_0.a, Struct_1(var_0.a), global1.x, var_0)), -861f)) + -465f)));
    global1 = select(select(select(!(!vec3<bool>(true, global1.x, global1.x)), select(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, true, global1.x)), func_2(), vec3<bool>(true, global1.x, false)), !vec3<bool>(global1.x, global1.x, true)), !vec3<bool>(var_1.x > var_1.x, !global1.x, true), global1.x), vec3<bool>(!(_wgslsmith_div_f32(var_1.x, 1254f) < _wgslsmith_div_f32(490f, -744f)), global1.x, false), vec3<bool>(u_input.e.x >= u_input.d, true, true));
    let var_2 = all(vec2<bool>(global1.x, global1.x)) != (1u < u_input.c);
    let var_3 = vec3<bool>(!((u_input.e.x <= -1i) | true), all(vec4<bool>(!(!global1.x), false, !var_2, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 749f) - var_1.x), _wgslsmith_div_f32(1007f, _wgslsmith_f_op_f32(ceil(var_1.x))), global1.x)) >= _wgslsmith_f_op_f32(max(-287f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1153f)))));
    let var_4 = var_0;
    let var_5 = ~_wgslsmith_mod_vec2_u32(u_input.b.ww, u_input.b.ww);
    let x = u_input.a;
    s_output = StorageBuffer(~(max(vec3<u32>(1u, var_5.x, 4294967295u), u_input.b.zxw) ^ u_input.b.yzy) >> (u_input.b.wzy % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(369f, 181f, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1496f, var_1.x, -616f) - vec3<f32>(var_1.x, 151f, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-731f, var_1.x, 1786f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1845f, var_1.x, -434f))))))));
}

