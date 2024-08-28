struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(249f, 1000f, -598f, 457f), 0u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1.b, global0.b), vec4<u32>(16485u, 4294967295u, u_input.a.x, 4294967295u)), vec4<u32>(17634u, arg_1.b, u_input.a.x, u_input.a.x)), countOneBits(vec4<u32>(u_input.a.x, arg_0.b, 4294967295u, arg_0.b))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, arg_1.b), reverseBits(vec4<u32>(4432u, arg_0.b, 37945u, 33857u))), firstLeadingBit(countOneBits(vec4<u32>(1u, arg_1.b, global0.b, 4294967295u))))), abs(select(~(vec4<u32>(arg_1.b, 30955u, 2252u, 24764u) >> (vec4<u32>(31795u, 0u, 1u, 4294967295u) % vec4<u32>(32u))), abs(vec4<u32>(global0.b, 25150u, arg_0.b, arg_1.b)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)))));
    return -2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = all(vec3<bool>(false, all(vec2<bool>(any(vec2<bool>(arg_1, true)), !arg_1)), any(select(vec4<bool>(true, true, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, arg_1, false, true)), !vec4<bool>(arg_1, true, arg_1, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, global0.a.x, _wgslsmith_f_op_f32(max(-1047f, arg_0.a.x)), -592f) * _wgslsmith_f_op_vec4_f32(ceil(global0.a)))), ~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.b, _wgslsmith_sub_u32(19896u, u_input.a.x)), 0u));
    var var_2 = vec2<i32>(func_2(arg_0, arg_0), ~arg_2.x);
    let var_3 = Struct_1(arg_0.a, ~(~u_input.a.x));
    let var_4 = false;
    return firstTrailingBit(4294967295u & _wgslsmith_clamp_u32(var_3.b, ~u_input.a.x, firstLeadingBit(0u))) | _wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(27065u, u_input.a.x) >> (u_input.a % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.a.x, var_1.b)))), ~(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a) ^ vec2<u32>(1u, 1u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(324f, -329f, -1173f, -452f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -683f, var_1.a.x)), true)), countOneBits(~730u)), arg_1);
    let var_3 = all(vec4<bool>(any(!(!vec2<bool>(true, arg_2))), func_3(Struct_1(vec4<f32>(801f, 561f, -1669f, -1171f), var_0.b), true, select(vec2<i32>(var_2, 0i), vec2<i32>(var_2, -2147483647i), arg_2)) != select(4294967295u, arg_3.b, select(true, arg_2, arg_2)), all(!vec4<bool>(true, arg_2, true, false)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)), arg_2))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_3.a)), ~var_0.b);
    return -vec2<i32>(-var_2, var_2);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))))), 1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-975f, -154f)))), _wgslsmith_f_op_f32(sign(global0.a.x))), firstLeadingBit(firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, arg_1, global0.b))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = func_5(_wgslsmith_mult_vec4_i32(arg_1 & vec4<i32>(_wgslsmith_add_i32(arg_1.x, arg_0), -arg_1.x, arg_0, ~arg_1.x), -vec4<i32>(func_2(Struct_1(var_0.a, 14677u), arg_3), _wgslsmith_div_i32(15453i, arg_1.x), arg_0, _wgslsmith_mod_i32(arg_0, arg_0))), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(~1u, arg_3.b)), _wgslsmith_mult_u32(arg_3.b, 1u)), func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, arg_3.a.x)), _wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(global0.a.x, -751f, global0.a.x, 775f)))), (arg_2.x >> (72911u % 32u)) << (37572u % 32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-1365f, 1534f, true)), 328f, _wgslsmith_f_op_f32(-999f + -373f), 1717f), ~u_input.a.x | func_3(arg_3, true, arg_1.zx)), false, arg_3), arg_1.yy);
    var var_2 = !all(vec4<bool>(false, !any(vec3<bool>(true, false, true)), true, true));
    return arg_2.x;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.yyw) * vec3<f32>(_wgslsmith_f_op_f32(-312f - 256f), _wgslsmith_f_op_f32(-1572f - arg_0.a.x), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec3_f32(global0.a.zwy + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.wzx, vec3<f32>(-124f, -2342f, 355f)) * arg_0.a.xyw)))) + global0.a.zxz);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-434f, -415f)), -1000f, global0.a.x) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -208f, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(806f, global0.a.x, var_0.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.x, -1034f, 1142f), vec3<f32>(arg_2.x, arg_2.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(623f, 1719f, global0.a.x) * vec3<f32>(arg_2.x, arg_0.a.x, -946f)))))));
    global0 = func_5(vec4<i32>(2147483647i, reverseBits(_wgslsmith_add_i32(-3543i, abs(10066i))), 1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-18783i, 27757i), -59508i, func_2(arg_0, arg_0)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(21648i, 18793i), vec2<i32>(-24039i, 2147483647i)), -vec2<i32>(-1i, -2147483647i)))), 1119u, _wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(0i, -2147483647i)), reverseBits(vec2<i32>(-2147483647i, 2147483647i)))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(63142i, -2147483647i), vec2<i32>(-1i, 0i))), ~select(vec2<i32>(_wgslsmith_sub_i32(-18296i, -1i), 1i), vec2<i32>(~(-1i), _wgslsmith_sub_i32(-12503i, 16997i)), arg_1.x));
    var var_1 = func_5(-vec4<i32>(-17235i, ~func_2(arg_0, Struct_1(arg_0.a, u_input.a.x)), -939i, -2147483647i), ~(~select(_wgslsmith_div_u32(3342u, 1u), u_input.a.x, select(false, false, true))), reverseBits(~countOneBits(max(vec2<i32>(6987i, 1i), vec2<i32>(34280i, 2147483647i)))), reverseBits(abs(vec2<i32>(29448i, 1i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, global0.b), u_input.a) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(1i, abs(-2147483647i)), vec2<i32>(abs(-1i), ~(-24006i))));
    var var_2 = -(~max(i32(-1i) * -14736i, 1i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.a + global0.a), var_1.a, vec4<bool>(true, true, arg_1.x, arg_1.x))))) * vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-427f, -103f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x) + 1f), 144f)), _wgslsmith_mult_u32(max(~_wgslsmith_mult_u32(global0.b, 0u), ~(~var_1.b)), countOneBits(~(~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.a))), _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, global0.a.x, global0.a.x, -1402f) - global0.a)))), 1u >> (~func_1(-1i, vec4<i32>(-16485i, 0i, 1i, -1i), vec4<u32>(1992u, 4294967295u, u_input.a.x, global0.b), Struct_1(global0.a, 0u)) % 32u)), vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))))), global0.a.yww);
    var var_0 = !vec4<bool>(!(1127f > func_5(vec4<i32>(-2147483647i, 2147483647i, 1i, 0i), 52294u, vec2<i32>(7751i, -22109i), vec2<i32>(-37012i, 14652i)).a.x), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), !((global0.a.x <= -1127f) & true), any(vec4<bool>(true, 0u >= global0.b, false, all(vec3<bool>(false, false, false)))));
    var var_1 = true;
    var var_2 = vec3<bool>(all(!var_0.zxw), !(!all(vec3<bool>(true, var_0.x, var_0.x))), (firstTrailingBit(select(9918i, 1i, true)) | -34968i) != _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-41702i, -33375i, 91302i, 21222i), vec4<i32>(9164i, 29410i, 0i, 0i)) << ((vec4<u32>(41949u, global0.b, u_input.a.x, u_input.a.x) | vec4<u32>(112365u, 56063u, 4294967295u, 1927u)) % vec4<u32>(32u)), -vec4<i32>(13402i, -69785i, -1i, -2147483647i)));
    let var_3 = abs(-(~1i)) <= (~(1952i << (global0.b % 32u)) & -1i);
    global0 = Struct_1(global0.a, global0.b | _wgslsmith_div_u32(global0.b, 2790u));
    var_0 = !select(select(select(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, true, false, false)), vec4<bool>(true, true, var_2.x, var_3), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<bool>(false, false, true, any(vec4<bool>(false, var_0.x, true, false))), true), vec4<bool>(any(!var_0.yz), !var_2.x, _wgslsmith_f_op_f32(-global0.a.x) < global0.a.x, any(!vec3<bool>(var_0.x, true, false))), vec4<bool>(_wgslsmith_f_op_f32(-global0.a.x) >= global0.a.x, all(vec2<bool>(var_2.x, var_3)), false, 1f < _wgslsmith_f_op_f32(-2024f * global0.a.x)));
    let var_4 = !(!(!select(!vec4<bool>(var_2.x, true, false, var_0.x), vec4<bool>(false, false, var_3, true), all(vec2<bool>(true, false)))));
    global0 = func_6(func_6(Struct_1(global0.a, ~1u), select(vec3<bool>(false, false, true), select(select(var_0.xzz, var_4.wxy, var_0.x), vec3<bool>(false, var_4.x, var_0.x), true), vec3<bool>(global0.a.x == -132f, true, !var_0.x)), _wgslsmith_f_op_vec3_f32(max(global0.a.xzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, -627f)))))), var_4.wwy, _wgslsmith_f_op_vec3_f32(sign(global0.a.wxy)));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(~vec3<u32>(76213u, global0.b, global0.b)) << (~firstLeadingBit(vec3<u32>(4294967295u, 21970u, 4294967295u)) % vec3<u32>(32u)), ~vec3<u32>(firstTrailingBit(global0.b), 0u, ~global0.b), !(!vec3<bool>(var_0.x, true, true))), ~select(vec3<u32>(1u, 1u, global0.b), vec3<u32>(1u, 1u, 1u), var_3) << ((vec3<u32>(func_3(Struct_1(global0.a, global0.b), var_2.x, vec2<i32>(1i, -2147483647i)), u_input.a.x, global0.b >> (34387u % 32u)) << (vec3<u32>(u_input.a.x, u_input.a.x << (84982u % 32u), u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<f32>(990f, global0.a.x), _wgslsmith_sub_i32(-firstTrailingBit(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-58145i, 2147483647i, 0i, -1i), vec4<i32>(-41697i, 458i, -2147483647i, 0i)) & _wgslsmith_mult_i32(abs(28620i), firstLeadingBit(-29313i))), global0.a.xzw);
}

