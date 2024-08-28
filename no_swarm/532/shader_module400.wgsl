struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -88833i;

var<private> global1: array<f32, 27> = array<f32, 27>(-1953f, -172f, 1119f, -728f, 595f, 2573f, -437f, -1397f, 995f, -1790f, -1294f, -708f, 910f, 922f, -1322f, 691f, 106f, -2187f, 1572f, 1721f, -374f, -564f, -2271f, -1482f, -1465f, -459f, -1059f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(167f, 926f), vec4<f32>(1523f, 1197f, 728f, 1007f), 19095u), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(global2.a, global2.b || select(any(vec2<bool>(true, false)), 1u > (36007u ^ u_input.a), all(vec3<bool>(global2.b, global2.b, global2.b))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-333f)))), _wgslsmith_f_op_f32(min(-667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1257f)) + _wgslsmith_f_op_f32(-var_0.a.a.x))))));
}

fn func_2() -> u32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_add_i32(-abs(17169i), u_input.c.x);
    global0 = 1i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1759f), vec2<f32>(_wgslsmith_f_op_f32(274f * global2.a.a.x), 2073f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b.zy * vec2<f32>(global2.a.a.x, -1808f)) - global2.a.b.wz))), global2.a.b, u_input.a);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f))))));
    return 27031u;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(global2.a.b.yx, global2.a.b, func_2());
    global0 = 1i;
    global2 = Struct_2(global2.a, !(all(select(vec3<bool>(global2.b, arg_0, arg_0), vec3<bool>(global2.b, global2.b, arg_0), vec3<bool>(global2.b, global2.b, false))) != select(arg_0, arg_0, arg_0)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b.wz)));
    let var_2 = ~u_input.c.x;
    return Struct_2(global2.a, true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(1u, 27u)], global2.a.b.x), global2.a.b, ~14795u);
    var_0 = func_1(all(!vec4<bool>(false, global2.b, arg_0.b, any(vec2<bool>(global2.b, global2.b)))), firstTrailingBit(~(arg_3.xy | vec2<u32>(var_0.c, var_0.c)))).a;
    let var_1 = func_1(!arg_0.b, min(vec2<u32>(~_wgslsmith_clamp_u32(arg_0.a.c, 17395u, 4294967295u), 30455u), arg_3.wx)).a;
    let var_2 = ~14454u;
    var var_3 = func_1(arg_2.b, arg_3.zz >> (arg_3.xw % vec2<u32>(32u))).a;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(sign(170f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-532f * arg_2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(max(-1514f, var_3.a.x))), arg_0.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.b.yyx;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(u_input.a == _wgslsmith_add_u32(1u, global2.a.c), vec2<u32>(1u, _wgslsmith_mult_u32(global2.a.c, 1u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 53681u), _wgslsmith_add_vec2_u32(vec2<u32>(3487u, global2.a.c), vec2<u32>(global2.a.c, global2.a.c))), 1u, u_input.a, _wgslsmith_mod_u32(~u_input.a, max(u_input.a, u_input.a))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a.b.wx), global2.a.b, _wgslsmith_mod_u32(2952u, global2.a.c)), all(vec4<bool>(global2.b, true, true, false))), vec4<u32>(1u, global2.a.c >> (u_input.a % 32u), 0u, min(19601u, 0u)) >> (~abs(vec4<u32>(global2.a.c, 4294967295u, 0u, global2.a.c)) % vec4<u32>(32u)))));
    var var_2 = ~(global2.a.c & firstTrailingBit(~global2.a.c));
    var_2 = _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(86221u, 15753u), reverseBits(_wgslsmith_mult_u32(global2.a.c, u_input.a))) << (4294967295u % 32u);
    let var_3 = global2.a;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -1144f, global2.b && false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-547f))))))));
    let var_5 = func_1(func_1(~u_input.b == _wgslsmith_div_i32(-1i, u_input.b), vec2<u32>(u_input.a, abs(u_input.a))).b | true, firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(~21654u, global2.a.c), (global2.a.c & 79994u) << (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ 13980u);
}

