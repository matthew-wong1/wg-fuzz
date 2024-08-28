struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -38770i;

var<private> global1: Struct_2 = Struct_2(553f, vec3<f32>(-412f, 1000f, 2495f), Struct_1(vec4<f32>(548f, 1000f, 836f, -410f), 287f), vec2<u32>(4294967295u, 4294967295u));

var<private> global2: Struct_2;

var<private> global3: array<i32, 29> = array<i32, 29>(2147483647i, 0i, -12955i, -1i, 31162i, 2147483647i, 1i, 1i, i32(-2147483648), 1i, 1i, 40668i, i32(-2147483648), -1i, -1i, 70537i, -1i, -39240i, i32(-2147483648), 45285i, 1i, -18805i, -10825i, 1i, 0i, 5425i, -32969i, 39432i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(157259u), reverseBits(select(107356u, _wgslsmith_mod_u32(~7253u, _wgslsmith_sub_u32(u_input.a.x, arg_0.d.x)), !(global3[_wgslsmith_index_u32(4294967295u, 29u)] == global3[_wgslsmith_index_u32(1u, 29u)])))), 29u)];
    let var_2 = 52974u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(sign(arg_0.a)))) * _wgslsmith_f_op_f32(min(global2.b.x, -1173f))));
    global2 = arg_0;
    return vec2<bool>(true, any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)) & false);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(-824f, 305f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, global2.c.a.x)), _wgslsmith_f_op_f32(global2.b.x - global2.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1752f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.a.zw);
    let var_1 = true;
    let var_2 = !any(func_3(Struct_2(_wgslsmith_f_op_f32(-1117f * -730f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, 886f, arg_0.b), arg_0.a.xyw)), global2.c, abs(global1.d)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-617f))), var_0));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-373f, global1.b.x, true)), 685f)), _wgslsmith_f_op_f32(-189f * -1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.c.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.a.yw))))), _wgslsmith_f_op_vec2_f32(var_0.a.zx * vec2<f32>(_wgslsmith_f_op_f32(1059f * arg_0.a.x), 501f))));
    var var_4 = Struct_1(arg_0.a, var_3.x);
    return 2147483647i;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = 56047u;
    let var_1 = !(!vec4<bool>(false, !(global3[_wgslsmith_index_u32(u_input.a.x, 29u)] < 1i), func_2(global1.c) > _wgslsmith_mod_i32(1i, -19103i), true));
    var var_2 = select(vec3<u32>(global2.d.x, 0u, 1u << (~_wgslsmith_dot_vec2_u32(global1.d, vec2<u32>(86055u, 4294967295u)) % 32u)), ~(~vec3<u32>(1u << (u_input.a.x % 32u), ~var_0, ~global2.d.x)), func_3(Struct_2(global1.c.b, global1.c.a.wzx, Struct_1(global1.c.a, -1175f), (u_input.a.xx >> (vec2<u32>(global1.d.x, 28027u) % vec2<u32>(32u))) | vec2<u32>(4294967295u, 626u)), Struct_1(vec4<f32>(-445f, _wgslsmith_f_op_f32(1161f + 110f), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1668f)), _wgslsmith_f_op_f32(global2.c.a.x * _wgslsmith_f_op_f32(min(global1.a, global1.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(978f - global2.a), _wgslsmith_f_op_f32(-global1.b.x), var_1.x)), Struct_3(_wgslsmith_f_op_vec3_f32(step(global2.c.a.yzx, vec3<f32>(-208f, -870f, global2.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.c.a.yz)) * _wgslsmith_f_op_vec2_f32(global1.c.a.yy * global1.c.a.ww)))).x);
    var var_3 = abs(~(vec4<i32>(global3[_wgslsmith_index_u32(0u, 29u)] & 11422i, ~global3[_wgslsmith_index_u32(18567u, 29u)], 1i, arg_0) >> (vec4<u32>(~62735u, _wgslsmith_mod_u32(global1.d.x, 4294967295u), min(0u, var_2.x), 0u ^ var_2.x) % vec4<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_div_vec4_f32(vec4<f32>(655f, global1.a, 1944f, 737f), vec4<f32>(-758f, 1000f, global1.b.x, 187f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 827f, 164f, -923f) * global2.c.a) - global2.c.a)))), 351f);
    return -1i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(68915u, global1.d.x), 7713u), firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global1.d.x) | vec2<u32>(global1.d.x, u_input.a.x), abs(vec2<u32>(34067u, 0u))), max(~1u, 1594u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.d.x, global2.d.x, 4294967295u, global2.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 41624u, u_input.a.x, 4294967295u), vec4<u32>(9111u, u_input.a.x, u_input.a.x, u_input.a.x))), min(firstTrailingBit(vec4<u32>(global1.d.x, 1u, 4294967295u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.d.x, u_input.a.x, global2.d.x), vec4<u32>(u_input.a.x, global1.d.x, 4294967295u, 10764u))))), ~select(vec4<u32>(u_input.a.x, global2.d.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.d.x, 14817u, global2.d.x), vec4<u32>(global2.d.x, 8569u, 33015u, 57680u))), ~(~vec4<u32>(global2.d.x, u_input.a.x, 4294967295u, 79692u)), vec4<bool>(true, true, global2.c.a.x <= 2203f, arg_0.x)));
    let var_1 = false;
    global2 = Struct_2(236f, global2.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(993f, _wgslsmith_f_op_f32(global1.a - global1.b.x), global1.a, global2.a) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.a.x, global1.a, global1.b.x, global1.b.x)))), 915f), vec2<u32>(min(firstTrailingBit(firstLeadingBit(global1.d.x)), select(4294967295u, 0u, global1.c.a.x <= 1000f)), ~abs(0u)));
    global0 = arg_1.x;
    let var_2 = global2.c.a;
    return Struct_2(1019f, global2.c.a.xzw, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c.a)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, var_2.x, 1000f, global2.a))))), var_2.x), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    global1 = func_4(vec3<bool>(false, true, !(!var_0.x || false)), ~_wgslsmith_sub_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(global2.d.x, 29u)], 0i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)]) | firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(1u, 29u)], -41579i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global3[_wgslsmith_index_u32(41187u, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]) ^ vec3<i32>(-35327i, global3[_wgslsmith_index_u32(4294967295u, 29u)], 34057i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(global2.d.x, 29u)])))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(1u, u_input.a.x, 1u)), 29u)], ~global3[_wgslsmith_index_u32(4294967295u, 29u)], ~2147483647i), -22973i), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 29u)], -39700i), ~(-1i) & func_1(global3[_wgslsmith_index_u32(global1.d.x, 29u)]), -16551i & _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global2.d.x, 29u)], global3[_wgslsmith_index_u32(global2.d.x, 29u)]), vec2<i32>(25343i, -13916i)))));
    let var_1 = !select(!vec4<bool>(var_0.x, var_0.x, 1421f <= global2.b.x, true), vec4<bool>(any(!vec3<bool>(true, var_0.x, false)), func_3(Struct_2(global2.a, vec3<f32>(-481f, -517f, global1.c.a.x), Struct_1(vec4<f32>(677f, global1.b.x, global2.c.b, -169f), -1000f), global1.d), global2.c, -260f, Struct_3(global1.b, vec2<f32>(1277f, -306f))).x, true, var_0.x), true);
    let var_2 = Struct_3(global1.c.a.zzx, vec2<f32>(-828f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.b * _wgslsmith_f_op_f32(min(633f, 302f))), -846f))));
    var var_3 = Struct_1(global2.c.a, var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(-1i) * -(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(77573u, 29u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(global1.d.x, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]))), 25630i >> (1u % 32u));
}

