struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global0 = arg_2;
    var var_0 = arg_0;
    let var_1 = arg_3;
    var_0 = arg_0;
    let var_2 = select(!any(!(!vec2<bool>(true, global0.b))), !(!(!arg_0.b)), true);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-arg_2.a.x), var_0.c.x << (u_input.d % 32u), _wgslsmith_dot_vec3_i32(-arg_0.a, u_input.e.xxx >> (vec3<u32>(arg_1, 25901u, arg_1) % vec3<u32>(32u)))) >> (vec3<u32>(52888u, ~(~arg_1), 4294967295u) % vec3<u32>(32u)), arg_0.c);
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, u_input.c), global0.a.x, u_input.c), vec3<i32>(~global0.a.x ^ global0.c.x, 2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global0.c.x, -2147483647i, u_input.e.x), vec4<i32>(-1i, global0.c.x, u_input.c, global0.a.x)))), !(u_input.d < u_input.b), vec3<i32>(~(-4982i), func_3(Struct_1(u_input.e.wwz, global0.b, vec3<i32>(global0.c.x, u_input.c, u_input.e.x), global0.d, global0.e), u_input.a, Struct_1(vec3<i32>(-69688i, global0.c.x, global0.a.x), true, global0.a, global0.d, vec4<f32>(global0.d.x, global0.e.x, global0.d.x, -413f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, 227f, global0.e.x) - global0.d)) ^ u_input.e.x, firstLeadingBit(global0.c.x)), global0.e.yxx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e))));
    global0 = Struct_1(~(~(~vec3<i32>(global0.c.x, var_0.c.x, u_input.c))), true, _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.x, 37080i, global0.c.x), vec3<i32>(0i, 25833i, global0.a.x)), abs(vec3<i32>(global0.a.x, ~u_input.e.x, -5537i))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-862f, var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -427f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-211f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.d.x)), var_0.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2019f * 450f), _wgslsmith_f_op_f32(step(1600f, 415f)))), var_0.e.x))));
    let var_1 = global0.d.x;
    global0 = Struct_1(global0.a, any(vec3<bool>(false, !var_0.b, global0.b)), global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-var_0.e.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.e))));
    var var_2 = 1000f;
    return vec3<u32>(68861u, ~reverseBits(u_input.b), select(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(24682u, 35647u)), ~vec2<u32>(u_input.d, u_input.a)), reverseBits(2564u), true));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.yww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e.xwy - vec3<f32>(-101f, arg_3.e.x, arg_3.d.x))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1446f)))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(-327f + _wgslsmith_f_op_f32(global0.d.x + global0.d.x)))));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(arg_2, 23568u) & 0u, ~(arg_2 ^ _wgslsmith_mod_u32(~4294967295u, ~arg_2)), 4294967295u);
    var_1 = reverseBits(~_wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(64379u, u_input.d, 1u)), ~func_2()));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_i32(~firstTrailingBit(arg_3.c), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.e.xzy, global0.a), vec3<i32>(-31873i, u_input.c, 2147483647i)))), any(select(select(select(vec4<bool>(true, false, false, arg_3.b), vec4<bool>(false, false, false, arg_3.b), global0.b), vec4<bool>(arg_3.b, true, true, arg_3.b), 1u != var_1.x), vec4<bool>(arg_3.b, global0.b, select(true, true, true), global0.b | false), all(select(vec2<bool>(global0.b, arg_3.b), vec2<bool>(global0.b, false), vec2<bool>(arg_3.b, arg_3.b))))), vec3<i32>(max(u_input.c, 0i) ^ max(arg_3.a.x, global0.c.x ^ 13975i), -2147483647i, _wgslsmith_sub_i32(-5733i, 0i)), _wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1000f * var_0.x)))));
    var var_3 = select(!select(vec2<bool>(true, any(vec4<bool>(false, true, true, var_2.b))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, global0.b)), any(vec3<bool>(true, arg_3.b, true))), vec2<bool>(all(vec4<bool>(var_2.b, arg_3.b, arg_3.b, global0.b)), any(vec4<bool>(true, true, var_2.b, global0.b)))), select(vec2<bool>(any(vec4<bool>(var_2.b, true, false, false)), true), vec2<bool>(true, true), vec2<bool>(global0.b, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global0.b, false), var_2.b), vec2<bool>(var_2.b, !arg_3.b)));
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), _wgslsmith_sub_i32(global0.a.x, global0.c.x), -global0.c.x, _wgslsmith_add_i32(-2147483647i, global0.c.x)), u_input.e), ~vec4<i32>(-3769i >> (_wgslsmith_div_u32(u_input.a, u_input.d) % 32u), abs(-u_input.c), -_wgslsmith_div_i32(0i, u_input.c), func_1(global0.e, 242f, 1u | u_input.a, Struct_1(vec3<i32>(u_input.c, 1i, global0.a.x), global0.b, u_input.e.yyy, global0.e.xxy, global0.e))));
    let var_1 = Struct_1(vec3<i32>(-u_input.e.x, var_0.x, abs(-_wgslsmith_mult_i32(global0.a.x, 6481i))), all(vec2<bool>(global0.b, all(vec3<bool>(true, global0.b, false)))) || (true || (false && (global0.b | global0.b))), _wgslsmith_div_vec3_i32(-var_0.yzy, vec3<i32>(u_input.e.x, select(i32(-1i) * -11901i, -33856i, true), -max(var_0.x, 0i))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(floor(global0.e.x)), -527f), global0.e.wxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.e.x + global0.e.x), _wgslsmith_f_op_f32(exp2(global0.d.x)), -2384f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, 263f, global0.e.x) * vec3<f32>(global0.e.x, global0.e.x, -238f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * _wgslsmith_f_op_f32(-401f + -463f)), _wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(select(global0.e.x, -1132f, false)), any(vec4<bool>(true, global0.b, true, global0.b)))), 446f), global0.e)));
    var var_2 = var_1;
    let var_3 = Struct_1(-vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(39800i, u_input.c), global0.a.x), abs(abs(-51778i)), -2147483647i), var_1.a.x < var_2.a.x, vec3<i32>(_wgslsmith_sub_i32(-var_0.x, var_0.x & ~64565i), 32703i, var_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e.zzx)), vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) * _wgslsmith_f_op_f32(var_1.d.x * -727f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f * global0.e.x) + var_2.d.x)), _wgslsmith_f_op_f32(abs(-982f))));
    global0 = Struct_1(abs(~select(vec3<i32>(var_0.x, -10021i, var_1.c.x) >> (vec3<u32>(44013u, 114996u, u_input.a) % vec3<u32>(32u)), max(vec3<i32>(-3608i, u_input.c, -1i), var_3.a), true)), true, vec3<i32>(31719i, 25951i, -(~select(0i, -15557i, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.d, vec3<f32>(global0.d.x, var_2.e.x, global0.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.d.x, 1021f, var_1.e.x))) + vec3<f32>(-334f, var_2.d.x, -1808f)))), vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(var_3.d.x + global0.d.x), 1720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-178f, 928f))))));
    global0 = var_3;
    let var_4 = vec4<u32>(u_input.d << (u_input.a % 32u), u_input.b, 1u & _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b)), u_input.d), 15361u);
    let var_5 = u_input.d >= 1u;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x - -741f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, _wgslsmith_mult_i32(var_0.x, -_wgslsmith_mod_i32(14601i, -1i)), global0.a.x), var_2.c | (vec3<i32>(global0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(32351i, -2147483647i, -1i), u_input.e.wzz), _wgslsmith_dot_vec3_i32(vec3<i32>(-21835i, -2147483647i, 21803i), vec3<i32>(var_1.c.x, -1i, var_3.c.x))) & u_input.e.zxz), 1447f, var_4.yw, var_1.e.x);
}

