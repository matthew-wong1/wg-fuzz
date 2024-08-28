struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1000f), Struct_1(-1801f), Struct_1(1623f), Struct_1(108f), Struct_1(-227f), Struct_1(416f), Struct_1(-368f), Struct_1(-923f), Struct_1(-1322f), Struct_1(-262f), Struct_1(-1352f), Struct_1(-968f), Struct_1(129f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = u_input.a;
    var var_1 = vec4<u32>(abs(~71124u), var_0.x, 46976u, 42090u);
    var var_2 = _wgslsmith_mult_vec3_i32(arg_0, arg_0);
    var_2 = ~_wgslsmith_sub_vec3_i32(-arg_0, vec3<i32>(min(firstTrailingBit(19787i), ~2744i), 31647i, ~_wgslsmith_mod_i32(arg_0.x, 2147483647i)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1078f + 795f))))));
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_div_i32(46063i, -(~46283i) ^ _wgslsmith_sub_i32(abs(u_input.c), u_input.c));
    global0 = array<Struct_1, 13>();
    let var_1 = Struct_1(-1278f);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(_wgslsmith_clamp_u32(u_input.a.x, 0u, arg_2.x) & u_input.d.x), countOneBits(select(u_input.d.x, 0u, false)), ~func_2(~vec3<i32>(u_input.c, u_input.c, -1i), u_input.c, true, _wgslsmith_div_i32(2147483647i, -13141i)), arg_2.x), vec4<u32>(69997u, _wgslsmith_sub_u32(u_input.a.x, ~(~arg_2.x)), reverseBits(44110u), firstTrailingBit(arg_2.x)));
    let var_3 = ~(~u_input.d.x << (0u % 32u));
    return var_1.a != 769f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_1(404f);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), true)), arg_0.a));
    var_0 = arg_0;
    let var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), !(!select(true, true, false))), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    var var_0 = !(!vec4<bool>(all(vec4<bool>(true, true, true, true)), func_1(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], vec4<u32>(24259u, 0u, u_input.d.x, 1u)) || any(vec3<bool>(true, false, false)), true, true));
    var var_1 = Struct_1(-378f);
    let var_2 = var_1.a;
    var_0 = select(!vec4<bool>(false, var_0.x, select(true, u_input.c <= u_input.c, all(var_0.yzx)), var_0.x), vec4<bool>(false, true, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-917f - var_1.a)) < 501f, !func_3(global0[_wgslsmith_index_u32(0u, 13u)], 2147483647i)), vec4<bool>(~(~u_input.d.x) <= select(_wgslsmith_dot_vec4_u32(vec4<u32>(28177u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(36848u, u_input.b.x, u_input.d.x, 76633u)), 83753u, all(vec3<bool>(var_0.x, true, var_0.x))), all(vec2<bool>(true, false)), var_0.x | func_3(Struct_1(var_1.a), firstLeadingBit(u_input.c)), var_0.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(~0u, 45105u, ~4294967295u, 1u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(9073u, u_input.b.x, u_input.b.x, 11152u), vec4<u32>(0u, u_input.d.x, 4294967295u, 0u)))), i32(-1i) * -2147483647i);
}

