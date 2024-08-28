struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 17> = array<i32, 17>(1i, -45418i, -25976i, 33781i, -1i, 2369i, i32(-2147483648), 8846i, -188i, 1i, i32(-2147483648), -37365i, 0i, i32(-2147483648), 14491i, 0i, i32(-2147483648));

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, true);

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    var var_0 = arg_0;
    global2 = array<bool, 19>();
    global1 = array<i32, 17>();
    let var_1 = arg_0;
    let var_2 = global0.x;
    return vec2<i32>(u_input.c, -global1[_wgslsmith_index_u32(countOneBits(~(~4294967295u)), 17u)]);
}

fn func_1() -> i32 {
    global0 = abs(-_wgslsmith_add_vec2_i32(min(-vec2<i32>(-4232i, global0.x), ~vec2<i32>(1i, global1[_wgslsmith_index_u32(41209u, 17u)])), func_2(Struct_1(u_input.b.xyy), _wgslsmith_f_op_f32(1591f * -324f))));
    let var_0 = u_input.b;
    var var_1 = vec3<i32>(~_wgslsmith_add_i32(countOneBits(~global0.x), global1[_wgslsmith_index_u32(var_0.x, 17u)]), -28645i, _wgslsmith_clamp_i32(20240i, ~(-countOneBits(-23905i)), u_input.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1029f, 1800f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 143f)))))))));
    var var_3 = Struct_1(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(1u, var_0.x))), var_0.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.a), 4294967295u)));
    return global1[_wgslsmith_index_u32(6815u, 17u)];
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = (0u & u_input.b.x) >= 0u;
    let var_1 = Struct_1(firstLeadingBit(~abs(min(vec3<u32>(u_input.b.x, 0u, 4294967295u), u_input.b.xxx))));
    var var_2 = Struct_1(vec3<u32>(4294967295u, var_1.a.x, reverseBits(4294967295u)) ^ u_input.b.wzz);
    var var_3 = 71732u;
    let var_4 = var_1;
    return global2[_wgslsmith_index_u32(var_4.a.x, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 0i;
    global0 = countOneBits(_wgslsmith_div_vec2_i32(~firstTrailingBit(vec2<i32>(17111i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 17u)], -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(39524i, -1i), vec2<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]))))) >> (~(~(~vec2<u32>(18367u, 19280u) | vec2<u32>(u_input.a, 15342u))) % vec2<u32>(32u));
    var var_0 = _wgslsmith_div_i32(1i, ~_wgslsmith_mod_i32(func_1(), global0.x));
    let var_1 = select(!vec3<bool>(select(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(38932u, 19u)], true)), global0.x != -5288i, all(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(0u, 19u)]))), global2[_wgslsmith_index_u32(u_input.b.x >> (~0u % 32u), 19u)], global2[_wgslsmith_index_u32(28850u, 19u)]), !(!select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 19u)], true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 19u)])))), vec3<bool>(all(select(vec3<bool>(false, false, true), !vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(20910u, 19u)])))), (func_3(-1245f) != (true == global2[_wgslsmith_index_u32(u_input.b.x, 19u)])) | (true && all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(23939u, 19u)]))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.yzy, u_input.b.wyw), 19u)]));
    global0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(160i, -7123i), countOneBits(select(vec2<i32>(-18778i, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(8203u, 17u)], 1i), true)) & select(vec2<i32>(global0.x, global0.x), ~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(true, false))));
    let var_2 = ~(~23845u);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~reverseBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(66542u, ~5088u, 63382u, 1u), _wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(u_input.b.x, u_input.a, 33731u, u_input.b.x) | u_input.b))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-37456i, global1[_wgslsmith_index_u32(1u, 17u)]) ^ vec2<i32>(_wgslsmith_add_i32(min(u_input.c, -1i), ~0i), select(2147483647i, global0.x, true)));
}

