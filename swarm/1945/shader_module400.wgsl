struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2360f, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1405f, -361f))))), abs(-global0.b) ^ global0.b, global0.c);
    let var_1 = Struct_1(arg_1.a, 16066i, firstTrailingBit(vec3<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(47790u, u_input.a, arg_0, global0.c.x), vec4<u32>(8307u, var_0.c.x, var_0.c.x, 1u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(11034u, arg_1.c.x, u_input.b.x, 7474u), vec4<u32>(var_0.c.x, arg_1.c.x, 4294967295u, arg_0)), arg_1.c.x)));
    global0 = Struct_1(global0.a, var_1.b, var_1.c);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(var_0.a, vec2<f32>(var_1.a.x, var_0.a.x))), -arg_1.b, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~global0.c.x, ~global0.c.x, _wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 26269u, 1u) << (vec3<u32>(arg_1.c.x, 0u, 0u) % vec3<u32>(32u)), vec3<u32>(35803u, var_1.c.x, 2552u))), max(arg_1.c ^ (vec3<u32>(1u, 17251u, 0u) | global0.c), abs(var_1.c))));
    global0 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1318f - 1f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(vec2<f32>(854f, _wgslsmith_f_op_f32(func_3(global0.c.x, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, 1855f), vec2<f32>(arg_0.x, -574f)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 32777i, global0.b, 0i), vec4<i32>(22170i, global0.b, 2147483647i, -33236i)), vec3<u32>(global0.c.x, 78789u, 0u) | vec3<u32>(u_input.a, 17055u, u_input.b.x))))), -7908i, select(max(~vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(32844u, u_input.b.x, u_input.a)) | ~max(vec3<u32>(4294967295u, 29865u, global0.c.x), u_input.b), vec3<u32>(select(u_input.a, select(global0.c.x, u_input.b.x, false), 1i < global0.b), max(~3322u, _wgslsmith_div_u32(global0.c.x, u_input.b.x)), u_input.b.x), select(true, any(vec3<bool>(true, true, false)), true) || (any(vec2<bool>(true, true)) == true)));
    var var_0 = ~u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xw) - arg_0.yz), _wgslsmith_dot_vec3_i32(vec3<i32>(-79829i, _wgslsmith_div_i32(~global0.b, -global0.b), countOneBits(-49754i) & (global0.b | global0.b)), max(-(~vec3<i32>(global0.b, -11282i, -1435i)), vec3<i32>(-1i, ~(-2147483647i), global0.b))), select(u_input.b, global0.c, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))))));
    var var_2 = var_1;
    let var_3 = var_1;
    return Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))), 14363i, _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(firstTrailingBit(var_1.c), var_3.c), _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_2.c, vec3<u32>(var_2.c.x, 1u, 53400u), var_1.c), ~(var_3.c | vec3<u32>(var_1.c.x, var_1.c.x, u_input.b.x)), abs(var_3.c))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1895f), arg_2.x)), -1138f) + arg_3.a), arg_1.b, vec3<u32>(global0.c.x | 1u, arg_1.c.x, u_input.b.x));
    global0 = func_2(vec4<f32>(450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) * _wgslsmith_f_op_f32(f32(-1f) * -876f))));
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + 344f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(127f, 838f) * _wgslsmith_f_op_f32(2442f * global0.a.x)))));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), 530f), arg_0.b, vec3<u32>(~select(~4294967295u, ~global0.c.x, true), abs(arg_0.c.x), 69719u));
    let var_1 = Struct_1(global0.a, func_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), 742f, _wgslsmith_f_op_f32(f32(-1f) * -1272f), arg_3.a.x)).b, _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(global0.c.x), var_0.c.x, firstTrailingBit(~var_0.c.x)), vec3<u32>(1u, ~(~31925u), arg_3.c.x), arg_3.c));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f + -1234f) - _wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1105f, 747f)), vec2<f32>(var_1.a.x, arg_3.a.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -156f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(601f, _wgslsmith_f_op_f32(-var_1.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.x, var_0.a.x, false)), _wgslsmith_f_op_f32(-832f + arg_3.a.x))) + arg_3.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.c.x;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * 1187f)))))), global0.b, ~func_2(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - -847f), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(round(1079f)), 1303f)).c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(566f, 1549f, 1546f, -796f), vec4<f32>(-460f, arg_0.a.x, _wgslsmith_f_op_f32(-global0.a.x), -930f)))));
    global0 = arg_0;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1535f), -610f, _wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(ceil(arg_0.a.x)), true)))));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(554f, -1342f, var_1.x, -180f), vec4<f32>(-146f, -524f, global0.a.x, -783f)))).a + func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-399f, -2191f, 315f, -1613f), vec4<f32>(277f, 841f, 721f, global0.a.x)))).a)), reverseBits(_wgslsmith_add_i32(arg_0.b, arg_1.x)), ~vec3<u32>(11047u, 4294967295u, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-490f, 201f), 0i, global0.c), Struct_1(global0.a, 3449i, global0.c), vec3<f32>(-102f, -1000f, 268f), Struct_1(global0.a, global0.b, vec3<u32>(11516u, u_input.a, u_input.a)))), false))), global0.b, max(u_input.b >> ((u_input.b >> (vec3<u32>(0u, global0.c.x, 48304u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(global0.c.x, global0.c.x, u_input.a)))), firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(global0.b, global0.b), 1i, ~(-global0.b), _wgslsmith_mod_i32(firstLeadingBit(-754i), func_2(vec4<f32>(-270f, global0.a.x, -1000f, global0.a.x)).b))));
    let var_0 = max(abs(_wgslsmith_sub_u32(32659u, ~u_input.b.x)), 0u);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -806f)))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(abs(-1000f)))), -867f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) - 557f), -1831f, select(true, false, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1732f, 372f, 851f, 820f))) - vec4<f32>(318f, _wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(f32(-1f) * -186f), global0.a.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1978f + _wgslsmith_f_op_f32(275f + global0.a.x)))), 1826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(899f, var_1.x, select(true, false, true))), 327f)), -2147483647i, vec3<u32>(84601u, ~_wgslsmith_mod_u32(u_input.a, 5415u) & var_0, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~(~7660u), 1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.c.x, u_input.b.x), 5472u), select(u_input.b.x, ~var_0, true))));
}

