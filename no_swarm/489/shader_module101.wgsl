struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<i32, 20>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 12417u);

var<private> global3: vec4<i32>;

var<private> global4: array<u32, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = all(!select(vec3<bool>(any(vec4<bool>(arg_1, true, false, true)), arg_1, any(vec2<bool>(false, arg_1))), vec3<bool>(-1000f <= arg_0.b.a.x, true, arg_1), arg_0.a.a.x <= arg_0.b.a.x));
    global1 = array<i32, 20>();
    let var_1 = arg_0.a.a.x;
    global0 = array<i32, 13>();
    global1 = array<i32, 20>();
    return select((61883i | ~(arg_0.b.b.x & 63355i)) ^ global3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(global2.x, 13u)], -1i, -8763i), max(arg_0.a.b, vec4<i32>(arg_0.b.b.x, 1i, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global2.x, 20u)])), abs(vec4<i32>(72751i, arg_0.b.b.x, arg_0.b.b.x, global1[_wgslsmith_index_u32(u_input.c, 20u)]))), arg_0.a.b) & _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(16223u, 13u)], ~(-2147483647i)), any(select(select(vec4<bool>(false, true, arg_1, true), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, false, true, false), false), arg_1), vec4<bool>(true, arg_1 || false, all(vec4<bool>(arg_1, arg_1, arg_1, true)), arg_1), select(!vec4<bool>(arg_1, arg_1, true, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, false), !arg_1))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_5 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(global2.x >> (global2.x % 32u), 31185u)) | _wgslsmith_sub_u32(global2.x, ~_wgslsmith_mod_u32(global2.x, global4[_wgslsmith_index_u32(global2.x, 22u)])), global2.x), 20u)];
    var_0 = min(-(~select(-36425i, 0i, true)) ^ global0[_wgslsmith_index_u32(~(~global2.x), 13u)], _wgslsmith_sub_i32(~func_3(Struct_2(Struct_1(vec4<f32>(568f, 1006f, 495f, 327f), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(18081u, 13u)], global0[_wgslsmith_index_u32(109091u, 13u)], 0i)), Struct_1(vec4<f32>(-793f, -345f, -1296f, -289f), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global3.x, -5193i, arg_0))), true) ^ (i32(-1i) * -1i), i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.d, 22u)], global4[_wgslsmith_index_u32(global2.x, 22u)]), 13u)]));
    global2 = ~max(max(select(u_input.b, vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(true, arg_1)), ~u_input.b) >> (~(~u_input.b) % vec2<u32>(32u)), select(u_input.b, vec2<u32>(4281u, 0u), vec2<bool>(false, arg_1)));
    global1 = array<i32, 20>();
    var var_1 = !(!(!(!(!vec3<bool>(arg_1, true, arg_1)))));
    return Struct_5(vec2<i32>(~(-9535i), global1[_wgslsmith_index_u32(0u, 20u)]), Struct_4(vec3<u32>(1u, select(~18798u, ~global2.x, true), _wgslsmith_sub_u32(u_input.c, global4[_wgslsmith_index_u32(11976u, 22u)] & u_input.b.x)), select(select(select(vec3<bool>(false, false, arg_1), vec3<bool>(true, false, false), var_1.x), vec3<bool>(true, true, true), global3.x >= global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 20u)]), !(!vec3<bool>(true, true, var_1.x)), !(!arg_1)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(301f, -1638f, -1010f, 1643f))), abs(firstLeadingBit(vec4<i32>(global3.x, 26457i, -1i, arg_0))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(min(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(arg_1.x, 4294967295u, 4294967295u, arg_2), arg_1, arg_0.b.b.x), arg_1), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global2.x, 24725u, 4294967295u) >> (firstTrailingBit(arg_1) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(arg_1, min(arg_1, vec4<u32>(global2.x, global4[_wgslsmith_index_u32(1076u, 22u)], 0u, 4294967295u))))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(74107u), firstLeadingBit(arg_2)), _wgslsmith_clamp_u32(1u, ~global2.x, 1u), arg_1.x, arg_1.x) ^ ~_wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(global2.x, 13658u, arg_1.x, 41584u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -211f))), -374f, -1719f, arg_0.b.c.a.x);
    var var_2 = abs(_wgslsmith_mod_u32(~arg_2, firstLeadingBit(_wgslsmith_div_u32(abs(1u), 4294967295u ^ global2.x))));
    var var_3 = arg_0.b;
    var var_4 = !(!func_2(1i, any(select(arg_0.b.b, vec3<bool>(var_3.b.x, var_3.b.x, true), false))).b.b);
    return ~arg_0.b.c.b.yz;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_5(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global3.x), global3.yx, vec2<i32>(arg_2.c.b.x, 37538i)) | func_4(func_2(70934i >> (u_input.c % 32u), arg_2.b.x), vec4<u32>(2346u >> (1u % 32u), ~arg_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global2.x, 0u, u_input.b.x), vec4<u32>(42777u, arg_1, 46915u, arg_2.a.x)), _wgslsmith_clamp_u32(1u, u_input.a, 18380u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_3, global2.x), vec3<u32>(global2.x, 3575u, arg_2.a.x)), _wgslsmith_div_u32(arg_1, 24482u), ~global4[_wgslsmith_index_u32(83810u, 22u)])), arg_2);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.b.c.a.wy, vec2<f32>(arg_2.c.a.x, -777f)))))));
    global0 = array<i32, 13>();
    var var_2 = arg_2.c.a.x;
    let var_3 = firstTrailingBit(min(_wgslsmith_sub_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, global0[_wgslsmith_index_u32(24859u, 13u)], global1[_wgslsmith_index_u32(40232u, 20u)]), arg_2.c.b), vec4<i32>(2147483647i, -8426i, global3.x, 19988i)), -_wgslsmith_sub_vec4_i32(arg_2.c.b, vec4<i32>(0i, 15275i, var_0.a.x, var_0.b.c.b.x))), var_0.b.c.b));
    return -select(var_3.xy, _wgslsmith_mult_vec2_i32(arg_2.c.b.xy, ~arg_2.c.b.yx << (~arg_2.a.yx % vec2<u32>(32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(func_1(global0[_wgslsmith_index_u32(~4294967295u, 13u)], 7345u, Struct_4(vec3<u32>(u_input.a, 102648u, u_input.d), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), Struct_1(vec4<f32>(795f, -732f, -134f, 1029f), vec4<i32>(global1[_wgslsmith_index_u32(16963u, 20u)], 0i, 2147483647i, 2147483647i))), 43243u), firstLeadingBit(vec2<i32>(~global0[_wgslsmith_index_u32(0u, 13u)], 1i))), ~(~global3.zw));
    var_0 = 31446i;
    let var_1 = _wgslsmith_f_op_f32(-131f * 601f);
    global0 = array<i32, 13>();
    global2 = select(vec2<u32>(_wgslsmith_mod_u32(1u, global2.x) & max(1u, 15402u), global2.x) & ~vec2<u32>(global4[_wgslsmith_index_u32(~55782u, 22u)], max(u_input.c, u_input.e)), ~(~(~max(u_input.b, vec2<u32>(4294967295u, u_input.d)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-251f, _wgslsmith_f_op_f32(-var_1)))));
}

