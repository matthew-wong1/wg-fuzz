struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(5669i, i32(-2147483648), 0i, -15564i));

var<private> global3: vec4<f32> = vec4<f32>(235f, 1262f, -1000f, 791f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(-772i)), abs(arg_0)) << ((_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_mod_u32(17270u, u_input.b.x)) >> ((~u_input.b.x | reverseBits(u_input.b.x)) % 32u)) % 32u), abs(vec4<i32>(u_input.a.x, abs(_wgslsmith_mod_i32(2147483647i, 2147483647i)), 18283i, _wgslsmith_div_i32(~0i, arg_0))), ~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b))), !vec4<bool>(any(global0.yyz) & !global0.x, false, !(global0.x | global0.x), true));
    var var_1 = u_input.b.x;
    global3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global3.x, -1877f, global3.x), vec4<f32>(-1171f, -810f, -244f, 234f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -1193f, global3.x, -1178f), vec4<f32>(global3.x, global3.x, global3.x, 1179f)) - vec4<f32>(-1159f, global3.x, global3.x, global3.x))))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-432f + -191f) - global3.x)), _wgslsmith_div_f32(-1159f, 615f), global3.x)));
    global1 = array<Struct_1, 24>();
    let var_2 = Struct_1(u_input.a.x, ~vec4<i32>(abs(i32(-1i) * -2147483647i), var_0.b.x, -2147483647i << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u), var_0.a), u_input.b, select(var_0.d, vec4<bool>(var_0.d.x, all(vec4<bool>(true, true, true, true)), var_0.d.x, any(vec2<bool>(false, true))), vec4<bool>(all(!var_0.d.zx), true, all(!global0.yw), false)));
    return select(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(var_0.c.x, 0u) & u_input.b) >> (~(~u_input.b) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_2.c, firstTrailingBit(var_2.c)), var_2.c | ~(~var_0.c)), var_2.c, true);
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_1(u_input.a.x, global2[_wgslsmith_index_u32(1u, 1u)] & select(~(~global2[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(i32(-1i) * -1i, arg_0.x | arg_0.x, select(-42348i, 0i, global0.x), -1i), vec4<bool>(true, true, true, true)), abs(func_3(2147483647i) << (vec2<u32>(func_3(2147483647i).x, 57962u) % vec2<u32>(32u))), !vec4<bool>(global0.x, global0.x, global0.x, global0.x));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.x, 506f), _wgslsmith_div_f32(global3.x, 1198f))), global3.x, global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * global3.x)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = 73719u;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f - global3.x) + _wgslsmith_f_op_f32(arg_1.x - -799f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-global3.x), global0.x || true)), _wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -140f)))))));
    var var_3 = any(global0.zy);
    var var_4 = ~(_wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(-7457i, arg_0.x, 1i))) & (~(~arg_0.x) >> (u_input.b.x % 32u)));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 1u)], -global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), -2147483647i, 0i), -30712i) | select(u_input.a.x, u_input.a.x | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(59963i, 45138i)), firstLeadingBit(vec2<i32>(u_input.a.x, 35140i))), any(vec2<bool>(global0.x, !global0.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(min(arg_1.x & -(0i ^ arg_1.x), -1i), -3020i);
    var var_1 = global1[_wgslsmith_index_u32(1u << ((u_input.b.x & u_input.b.x) % 32u), 24u)];
    let var_2 = Struct_1(-17060i, -var_1.b, u_input.b, var_1.d);
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_2.c.x), 24u)];
    var_1 = Struct_1(-func_4(_wgslsmith_add_vec2_i32(firstTrailingBit(var_0), arg_1.yz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(var_2.a, 30828i, u_input.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, -995f, -1078f, -1569f) + vec4<f32>(global3.x, -581f, global3.x, global3.x)))), arg_1, u_input.b | vec2<u32>(4294967295u, var_1.c.x), !var_1.d);
    return global1[_wgslsmith_index_u32(17289u, 24u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1024f, 1714f)))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1827f, global3.x) + _wgslsmith_f_op_f32(-419f + 1000f)))), -1951f);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -446f);
    let var_1 = func_1(vec2<bool>(all(!vec4<bool>(arg_1.d.x, arg_1.d.x, false, global0.x)), arg_1.d.x), _wgslsmith_div_vec4_i32(~func_1(vec2<bool>(false, arg_1.d.x), vec4<i32>(0i, 2147483647i, -20575i, 0i), global3.wwy).b, arg_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-42781i, 1i, 963i), u_input.a), u_input.a))).wzx + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global3.zxx)))))));
    global2 = array<vec4<i32>, 1>();
    let var_2 = vec2<bool>(!(abs(u_input.a.x) != arg_1.a), var_1.d.x);
    return _wgslsmith_f_op_vec4_f32(func_2(~vec3<i32>(firstLeadingBit(var_1.a), arg_1.a, arg_0.b.x))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(func_1(vec2<bool>(select(true, true, false), global0.x), global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global3.zxy), func_1(!func_1(vec2<bool>(false, false), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec3<f32>(-1000f, 639f, global3.x)).d.wy, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(u_input.b.x)), 1u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 429f, -1127f))))));
}

