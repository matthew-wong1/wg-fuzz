struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<bool>(false, false), vec2<u32>(26989u, 0u), vec3<i32>(-1i, 2147483647i, -1i), vec2<u32>(1004u, 34636u), 2147483647i), Struct_2(vec2<bool>(true, false), vec2<u32>(79189u, 27371u), vec3<i32>(2513i, -47547i, -25722i), vec2<u32>(0u, 11783u), 1i), Struct_2(vec2<bool>(true, false), vec2<u32>(47865u, 0u), vec3<i32>(0i, 9537i, i32(-2147483648)), vec2<u32>(44197u, 7006u), i32(-2147483648)), Struct_2(vec2<bool>(true, false), vec2<u32>(1u, 34191u), vec3<i32>(-5627i, -38680i, -12365i), vec2<u32>(16995u, 47350u), -8773i));

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = ~firstLeadingBit(u_input.d.x);
    var var_1 = select(!(!vec3<bool>(true, true, all(vec4<bool>(true, false, false, true)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(all(vec4<bool>(true, u_input.c.x < -2147483647i, u_input.b == u_input.d.x, true)), true, true));
    global1 = vec4<i32>(-global1.x, countOneBits(firstLeadingBit(1i) << (u_input.d.x % 32u)), _wgslsmith_sub_i32(u_input.c.x, -21669i), global1.x);
    global0 = array<Struct_2, 4>();
    global1 = u_input.c;
    return arg_0.ww;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = !(!vec4<bool>((-2147483647i == arg_2.x) && false, (52609u >= u_input.d.x) & false, true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_0.a)));
    global1 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(27006i, 36861i, 1i, -36762i)), -vec4<i32>(-u_input.c.x ^ _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, -20097i), ~u_input.c.x, -u_input.c.x, ~arg_2.x));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    let var_3 = !all(select(select(select(vec4<bool>(var_2.a.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_2.a.x, var_2.a.x), vec4<bool>(var_0.x, false, false, true)), vec4<bool>(true, true, var_2.a.x, var_2.a.x), !vec4<bool>(false, true, var_2.a.x, true)), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_2.a.x, var_0.x, var_2.a.x, false), vec4<bool>(true, var_2.a.x, true, var_2.a.x)), var_0.x));
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: i32) -> i32 {
    global1 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(0i), ~global1.x | u_input.c.x), ~arg_3, -select(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, global1.x, -11716i, u_input.c.x)), vec4<i32>(10319i, -18512i, u_input.c.x, u_input.c.x) ^ u_input.c), any(vec3<bool>(false, false, true))), -16169i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)));
    global0 = array<Struct_2, 4>();
    global1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(10964i, 2147483647i, arg_3, global1.x)), vec4<i32>(global1.x, -2147483647i, global1.x, u_input.c.x) << (u_input.d % vec4<u32>(32u)), u_input.c), ~vec4<i32>(-arg_3, u_input.c.x, u_input.c.x, global1.x), vec4<i32>(-29325i, 0i, arg_3, firstTrailingBit(51185i))) & u_input.c;
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(func_4(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(var_0, -1403f, -610f, 1673f)))))), abs(~u_input.c))), 4u)];
    return select(arg_3 >> (4294967295u % 32u), -_wgslsmith_dot_vec2_i32(var_1.c.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global1.x) >> (var_1.d % vec2<u32>(32u)), global1.xx, u_input.c.xw)), true);
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = Struct_2(vec2<bool>(all(!vec2<bool>(arg_0, arg_0)), arg_0), vec2<u32>(arg_1, 4294967295u), ~u_input.c.zwx, ~abs(abs(abs(vec2<u32>(arg_1, u_input.b)))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-u_input.c.x, func_2(Struct_1(-1389f), 69386u, u_input.b, u_input.c.x), u_input.c.x, 1i), vec4<i32>(2147483647i, _wgslsmith_clamp_i32(~1i, global1.x, ~u_input.c.x), -1i, -global1.x)));
    global0 = array<Struct_2, 4>();
    global1 = u_input.c;
    var var_1 = _wgslsmith_mod_i32(global1.x, global1.x);
    var var_2 = -855f;
    return all(vec3<bool>(arg_0 | all(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, var_0.a.x, true, false), var_0.a.x)), all(var_0.a), (true | var_0.a.x) && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(true, true, func_1(true, countOneBits(u_input.d.x)), false), vec4<bool>(true, true, true, !(u_input.d.x < u_input.d.x)), select(vec4<bool>(all(vec3<bool>(false, true, true)), false, true, true), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), true))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), true, any(vec2<bool>(true, true)), false), select(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

