struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(88240u, 0u, 4294967295u, 1u), 4294967295u, vec4<bool>(true, false, false, false));

var<private> global1: array<f32, 5> = array<f32, 5>(2010f, -212f, -778f, -993f, 1386f);

var<private> global2: vec4<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~69289u, ~global2.x), 5u)]))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 5u)]))));
    var var_1 = global2.yxz << (~global0.a.zxy % vec3<u32>(32u));
    global1 = array<f32, 5>();
    return global0.b;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = !arg_1.c.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.a.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], 1000f) - vec3<f32>(1988f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2030f, -581f, global1[_wgslsmith_index_u32(global2.x, 5u)]) - vec3<f32>(-105f, -1088f, global1[_wgslsmith_index_u32(53218u, 5u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1246f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 5u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 5u)])), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 5u)]), 1675f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.a.x, 5u)]))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<u32> {
    return ~_wgslsmith_clamp_vec4_u32(arg_3.a, ~countOneBits(~arg_3.a), firstLeadingBit(abs(~vec4<u32>(u_input.e.x, global2.x, 45459u, 13247u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = !global0.c.xx;
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global0.a, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(75385u, 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)], 1331f, global1[_wgslsmith_index_u32(44499u, 5u)]), vec4<f32>(global1[_wgslsmith_index_u32(57250u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], 2232f, 119f), global0.c)), -vec2<i32>(55142i, u_input.a), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u, 22416u, u_input.c, 0u), Struct_1(global0.a, arg_2.x, vec4<bool>(var_0.x, false, global0.c.x, false)))), Struct_1(vec4<u32>(48988u, global0.b, arg_1.x, 3883u), u_input.e.x, vec4<bool>(global0.c.x, global0.c.x, true, var_0.x)))), ~vec4<u32>(_wgslsmith_clamp_u32(global2.x, global0.a.x, 0u), global2.x ^ u_input.e.x, arg_2.x, ~u_input.d)), 1u, vec4<bool>(true, all(global0.c), false, !var_0.x));
    var var_2 = vec2<u32>(434u, ~(var_1.a.x >> (_wgslsmith_mod_u32(1u, arg_1.x) % 32u)));
    var_2 = ~abs(arg_2);
    let var_3 = !(!select(!global0.c, select(vec4<bool>(true, true, var_0.x, global0.c.x), vec4<bool>(var_0.x, true, false, false), !var_1.c), true));
    return _wgslsmith_sub_u32(~(1u ^ (~arg_1.x ^ ~arg_2.x)), ~(~_wgslsmith_dot_vec3_u32(~var_1.a.xzw, select(vec3<u32>(0u, global0.b, 58299u), vec3<u32>(1u, 63129u, 1u), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!(global0.c.x || true), global0.c.x, true);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, 55362u), 5u)];
    var var_2 = Struct_1(vec4<u32>(func_1(), _wgslsmith_sub_u32(77823u, 1214u & u_input.d), ~(~global0.b), ~func_2(vec4<i32>(1i, u_input.b, -1i, u_input.a) ^ vec4<i32>(54375i, 17283i, u_input.a, u_input.a), vec2<u32>(global0.b, 0u), u_input.e)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.x ^ max(global0.b, 80317u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, global0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global2.x, global0.b), vec3<u32>(global2.x, 66431u, global0.b))), 1u, 71157u), vec4<u32>(countOneBits(abs(global2.x)), 4294967295u, ~firstLeadingBit(1u), global2.x)), select(select(global0.c, select(select(global0.c, global0.c, var_0.x), vec4<bool>(false, false, false, global0.c.x), global0.c), (global1[_wgslsmith_index_u32(u_input.e.x, 5u)] < 1000f) || var_0.x), vec4<bool>(all(!var_0.yy), _wgslsmith_f_op_f32(1401f + global1[_wgslsmith_index_u32(u_input.e.x, 5u)]) >= _wgslsmith_f_op_f32(step(1060f, global1[_wgslsmith_index_u32(global2.x, 5u)])), select(global1[_wgslsmith_index_u32(1u, 5u)] < global1[_wgslsmith_index_u32(global2.x, 5u)], global0.c.x, all(vec4<bool>(global0.c.x, var_0.x, false, var_0.x))), any(global0.c.zx)), !(!var_0.x)));
    var var_3 = ~(vec2<u32>(var_2.a.x, 1u) & _wgslsmith_add_vec2_u32(~global2.xy, abs(~global0.a.yy)));
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(abs(reverseBits(37170i)), 1i), select(firstTrailingBit(-vec2<i32>(u_input.b, u_input.a)), -(~vec2<i32>(u_input.a, u_input.a)), vec2<bool>(false, true))) >> (min(~vec2<u32>(_wgslsmith_mod_u32(u_input.d, 1u), global2.x), _wgslsmith_add_vec2_u32(global2.xx, firstTrailingBit(u_input.e))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~firstTrailingBit(var_3.x)), 0u));
}

