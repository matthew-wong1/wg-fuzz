struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = max(u_input.b.wzy, u_input.b.zxx);
    global1 = false;
    var var_1 = arg_0;
    let var_2 = arg_1;
    let var_3 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, 56721u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.d.x, 1u))), _wgslsmith_add_vec2_u32(countOneBits(u_input.d.zx) | ~u_input.d.xy, vec2<u32>(var_2, arg_1))), 28u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(var_2, 22465u, u_input.d.x, 4294967295u))), ~vec4<u32>(~arg_1, var_2, _wgslsmith_mult_u32(4294967295u, arg_1), firstLeadingBit(65823u))), 28u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 28u)]);
    return any(vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 28u)], any(!var_3.zyx)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<bool, 28>();
    global1 = func_3(Struct_1(arg_2.a), _wgslsmith_div_u32(8804u, 4294967295u << ((_wgslsmith_div_u32(15188u, u_input.d.x) & u_input.d.x) % 32u)), arg_1);
    let var_0 = u_input.b;
    var var_1 = -vec2<i32>(-u_input.c, u_input.c);
    global1 = !global0[_wgslsmith_index_u32(0u, 28u)];
    return min(_wgslsmith_add_u32(~2516u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d.x, u_input.d.x, 7426u, 4294967295u), vec4<u32>(1u, u_input.d.x, 33511u, 38183u)), vec4<u32>(4294967295u >> (u_input.d.x % 32u), ~4294967295u, 0u | u_input.d.x, 1u))), ~_wgslsmith_add_u32(u_input.d.x | _wgslsmith_div_u32(u_input.d.x, 49168u), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.d.x), u_input.d.x)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global1 = all(vec4<bool>(true, global0[_wgslsmith_index_u32(min(func_2(u_input.a, Struct_1(vec3<f32>(1000f, 1538f, -578f)), Struct_1(vec3<f32>(1239f, -1000f, -299f))), arg_0), 28u)], all(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(27710u, 28u)]))), true));
    var var_0 = Struct_1(vec3<f32>(1242f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)), -1376f)), _wgslsmith_f_op_f32(f32(-1f) * -2131f)));
    var var_1 = select(_wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 44831u, 17769u, 26076u), abs(vec4<u32>(arg_0, 1u, 0u, 0u))), ~countOneBits(vec4<u32>(arg_0, 0u, u_input.d.x, arg_0))), _wgslsmith_sub_vec4_u32(vec4<u32>(min(arg_0, arg_0), 23912u, 16644u, ~u_input.d.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3215u, 0u, arg_0, 0u), vec4<u32>(43819u, arg_0, 0u, u_input.d.x)), firstTrailingBit(vec4<u32>(u_input.d.x, 90485u, arg_0, arg_0)), ~vec4<u32>(u_input.d.x, u_input.d.x, 22992u, 4294967295u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, _wgslsmith_div_u32(u_input.d.x, 4350u)), vec2<u32>(~4294967295u, 11648u)), 28u)]) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(18504u, 8328u, u_input.d.x), 1u, u_input.d.x | arg_0, arg_0), firstTrailingBit(vec4<u32>(u_input.d.x, 55452u, 0u, 49242u)), firstTrailingBit(vec4<u32>(arg_0, 0u, u_input.d.x, u_input.d.x))), vec4<u32>(arg_0, 5012u, abs(~arg_0), u_input.d.x), select(vec4<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 57103u), arg_0, arg_0), vec4<u32>(51983u, 4294967295u, arg_0, ~52348u), true)) % vec4<u32>(32u));
    return Struct_1(var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = Struct_1(var_0.a);
    global0 = array<bool, 28>();
    return func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), u_input.d.xx), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(26570u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, 40334u))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_4(false, Struct_1(vec3<f32>(arg_0.a.x, arg_0.a.x, -1858f)), arg_0).a.x, _wgslsmith_f_op_f32(min(arg_0.a.x, 664f)), _wgslsmith_f_op_f32(arg_0.a.x * 509f)))))));
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, !(!any(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 28u)], false)))), all(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 28u)], true, global0[_wgslsmith_index_u32(1u, 28u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(18819u, 28u)], global0[_wgslsmith_index_u32(arg_1, 28u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(40047u, 28u)], false)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(arg_1, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(arg_1, 28u)], global0[_wgslsmith_index_u32(88658u, 28u)]), global0[_wgslsmith_index_u32(0u, 28u)]), !vec4<bool>(global0[_wgslsmith_index_u32(14140u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(76992u, 28u)], global0[_wgslsmith_index_u32(22227u, 28u)])), vec4<bool>(true, true, var_0.a.x == -349f, global0[_wgslsmith_index_u32(arg_1 >> (20445u % 32u), 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], -26397i > u_input.a.x, true, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1150f, -1535f, -527f) + arg_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 798f, -450f)))));
    let var_3 = var_0;
    let var_4 = true == global0[_wgslsmith_index_u32(11267u, 28u)];
    return func_1(~1u).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -309f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-628f, 1092f)))));
    let var_0 = u_input.c;
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(true, Struct_1(vec3<f32>(-1000f, -176f, -1232f)), func_1(u_input.d.x)), abs(u_input.d.x))) + vec3<f32>(-515f, -1680f, _wgslsmith_f_op_f32(-func_4(var_1, Struct_1(vec3<f32>(-1625f, -420f, 197f)), Struct_1(vec3<f32>(-591f, 1514f, 242f))).a.x))));
    let var_3 = var_2.a.x;
    let var_4 = u_input.d.x ^ ~func_2(vec2<i32>(46314i, -2147483647i) & select(u_input.a, u_input.b.wy, vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)])), var_2, var_2);
    global1 = any(!select(!vec4<bool>(var_1, var_1, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec4<bool>(true, true, var_1 & true, true), _wgslsmith_f_op_f32(floor(-1088f)) > _wgslsmith_f_op_f32(-var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_f32(round(-1431f)), u_input.d << (vec3<u32>(u_input.d.x | ~9564u, ~(1u & var_4), 18613u) % vec3<u32>(32u)));
}

