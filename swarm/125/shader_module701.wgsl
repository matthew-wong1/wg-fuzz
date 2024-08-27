struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-389f, -633f, 1299f, 1101f, 552f, 1203f, 416f, 2342f, 1159f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_0 = Struct_3(~vec3<u32>(0u, u_input.d, arg_0.x) ^ arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 9u)] - global0[_wgslsmith_index_u32(u_input.d, 9u)])), 238f, -2147483647i, 2147483647i), Struct_1(vec4<bool>(true, false, -905f < arg_2.x, all(vec4<bool>(true, false, false, false)))), !vec2<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(1u, 61404u)) < (arg_0.x & 27409u)));
    var var_1 = vec2<u32>(u_input.d, ~select(select(0u, 55593u, false), u_input.d, any(vec2<bool>(true, var_0.c.a.x))) & ~4294967295u);
    return !(!(!(!var_0.c.a.wxw)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: i32) -> bool {
    let var_0 = ~(~81710u);
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(arg_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(2269f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)])))));
    var var_3 = !(!(!(!arg_0.c.a.yyz)));
    var_3 = func_3(min(_wgslsmith_mult_vec3_u32(var_1 >> (~var_1 % vec3<u32>(32u)), (var_1 << (vec3<u32>(29120u, 48606u, var_0) % vec3<u32>(32u))) >> (arg_0.a % vec3<u32>(32u))), vec3<u32>(~50778u ^ var_0, ~countOneBits(var_0), 8970u)), u_input.c.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-829f)), arg_0.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-411f - 1000f), global0[_wgslsmith_index_u32(1u, 9u)])))));
    return (firstTrailingBit((arg_3 ^ 0i) << (_wgslsmith_sub_u32(39944u, var_0) % 32u)) <= -countOneBits(arg_1.x)) & true;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(!func_2(Struct_3(vec3<u32>(u_input.d, 22257u, u_input.d), Struct_2(1005f, global0[_wgslsmith_index_u32(arg_1, 9u)], 0i, 0i), Struct_1(vec4<bool>(false, true, true, true)), vec2<bool>(false, false)), u_input.c, u_input.c, 1i), any(vec3<bool>(false, true, true)), true, true), all(vec3<bool>(any(vec2<bool>(true, false)), true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, 206f, -245f)) - vec3<f32>(1427f, -1029f, global0[_wgslsmith_index_u32(u_input.d, 9u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 9u)], -687f, 241f), vec3<f32>(-1156f, global0[_wgslsmith_index_u32(arg_1, 9u)], -230f), var_0.a.xwy))))) * vec3<f32>(arg_0, 1f, _wgslsmith_f_op_f32(abs(arg_0))));
    global0 = array<f32, 9>();
    return Struct_3(firstLeadingBit(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 11906u, u_input.d), vec3<u32>(32776u, u_input.d, 41425u)), vec3<u32>(24196u, 4294967295u, 1u))), Struct_2(952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1999f))) + _wgslsmith_f_op_f32(step(227f, arg_0))), firstLeadingBit(_wgslsmith_add_i32(arg_2.x, arg_3)) & arg_3, u_input.b.x), var_0, select(!func_3(~vec3<u32>(arg_1, 41065u, 4294967295u), 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(674f, global0[_wgslsmith_index_u32(arg_1, 9u)]))).zz, var_0.a.wy, func_3(vec3<u32>(~61723u, u_input.d, 42179u), u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.xy + vec2<f32>(var_1.x, var_1.x))))).xy));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_i32(abs(u_input.c.yzw), reverseBits(vec3<i32>(~abs(5043i), arg_1.b.c | _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_1.b.c, -2147483647i)), u_input.b.x)));
    var var_1 = true;
    global0 = array<f32, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1324f - 118f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, arg_0.b.a) * vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -1000f))) + vec2<f32>(arg_0.b.b, arg_1.b.a)))));
    let var_3 = -151f;
    return func_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 9u)])) + func_1(var_2.x, 4294967295u, vec3<i32>(u_input.c.x, arg_1.b.d, arg_1.b.c), arg_1.b.c).b.b))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), 0u, firstLeadingBit(var_0), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.b.c, u_input.b.x), u_input.a & arg_0.b.c) & (i32(-1i) * -6270i)).a.x, (-vec3<i32>(-1i, 0i, -4325i) | ~(var_0 >> (vec3<u32>(arg_1.a.x, arg_0.a.x, 35012u) % vec3<u32>(32u)))) | abs(~var_0), var_0.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> vec3<i32> {
    global0 = array<f32, 9>();
    var var_0 = -317f;
    let var_1 = arg_2;
    return vec3<i32>(abs(-(i32(-1i) * -15832i)), u_input.b.x, 36310i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -452f;
    let var_1 = -(~(-6769i)) > ~reverseBits(-51862i ^ u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 9u)], -1008f, global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_f32(177f + global0[_wgslsmith_index_u32(u_input.d, 9u)])) + vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 9u)], 586f), global0[_wgslsmith_index_u32(~u_input.d, 9u)], 325f, -612f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -893f, global0[_wgslsmith_index_u32(4294967295u, 9u)], 1000f)) + vec4<f32>(global0[_wgslsmith_index_u32(12976u, 9u)], global0[_wgslsmith_index_u32(u_input.d, 9u)], -730f, -230f)))), u_input.d, -func_5(vec3<i32>(countOneBits(u_input.c.x), select(9978i, 5196i, true), 0i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7165u, 9u)]), func_4(Struct_3(vec3<u32>(1u, u_input.d, 0u), Struct_2(global0[_wgslsmith_index_u32(3988u, 9u)], global0[_wgslsmith_index_u32(u_input.d, 9u)], -44977i, u_input.b.x), Struct_1(vec4<bool>(var_1, var_1, var_1, false)), vec2<bool>(var_1, var_1)), func_1(1000f, 2756u, u_input.c.zzx, u_input.b.x))), vec4<f32>(-440f, 1516f, -1344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.d, 9u)])) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(67169u, 9u)])))));
}

