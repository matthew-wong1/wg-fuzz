struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<bool, 24>();
    return arg_0.c.x << (firstLeadingBit(u_input.c.x) % 32u);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<bool, 24>();
    var var_0 = arg_0.c.b.xyx;
    var var_1 = ~u_input.c.yyz;
    let var_2 = arg_0;
    var_0 = vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 24u)] || all(!vec2<bool>(arg_0.a.b.x, false)), any(!arg_0.c.b.yww), var_1.x >= (0u & min(_wgslsmith_dot_vec2_u32(var_1.xy, var_2.c.c.yz), 1u)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = false;
    global0 = array<bool, 24>();
    var var_1 = arg_1;
    var var_2 = Struct_1(arg_0.a, vec4<bool>(!(arg_0.b.x || (arg_0.b.x || false)), true, func_3(Struct_2(Struct_1(arg_1.a, arg_0.b, arg_0.c), vec2<bool>(global0[_wgslsmith_index_u32(11666u, 24u)], arg_1.b.x), Struct_1(var_1.c.x, var_1.b, vec3<u32>(0u, arg_1.c.x, arg_0.a)))), true), countOneBits(vec3<u32>(49057u, var_1.a, _wgslsmith_mult_u32(arg_0.c.x, 82269u))));
    return _wgslsmith_f_op_f32(-953f + _wgslsmith_div_f32(1672f, -1387f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(1u, select(vec4<bool>(arg_1.b.x, global0[_wgslsmith_index_u32(16268u, 24u)], false, global0[_wgslsmith_index_u32(arg_1.a, 24u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.c.x, 24u)], global0[_wgslsmith_index_u32(15881u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], false, global0[_wgslsmith_index_u32(arg_1.c.x, 24u)])), ~firstLeadingBit(arg_1.c)), vec2<bool>(true, func_3(Struct_2(arg_1, vec2<bool>(true, false), Struct_1(arg_1.a, vec4<bool>(arg_1.b.x, true, true, true), vec3<u32>(arg_1.a, 50122u, 1u))))), Struct_1(1u, arg_1.b, u_input.b.xzw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-354f))))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(min(4294967295u, _wgslsmith_sub_u32(0u, var_0.a.c.c.x >> (arg_1.c.x % 32u))), arg_1.a, var_0.a.a.a), 1u, 0u);
    global0 = array<bool, 24>();
    var var_2 = countOneBits(vec3<u32>(~var_0.a.a.a, 16836u, ~93258u));
    let var_3 = true;
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_0 = select(_wgslsmith_sub_vec2_u32(~vec2<u32>(func_1(Struct_1(4065u, vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, true, false), vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x))), u_input.c.x), u_input.c.zz), u_input.c.xz, vec2<bool>(true || global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~u_input.c.x), 24u)], false));
    let var_1 = Struct_2(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-311f, _wgslsmith_f_op_f32(trunc(-1481f)), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(81412u, 24u)]), vec3<u32>(0u, 0u, u_input.b.x)), Struct_1(var_0.x, vec4<bool>(true, global0[_wgslsmith_index_u32(60855u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], false), vec3<u32>(32457u, var_0.x, 21811u)), false, u_input.a)), -746f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, -256f, -406f, -855f))), Struct_1(u_input.c.x, !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), vec3<u32>(1u, 7671u, ~u_input.c.x)), select(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.a), ~1381i, !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], false, global0[_wgslsmith_index_u32(11163u, 24u)], global0[_wgslsmith_index_u32(98182u, 24u)]))), _wgslsmith_mod_i32(firstTrailingBit(-1i), 3559i)), vec2<bool>(any(!vec2<bool>(false, global0[_wgslsmith_index_u32(12326u, 24u)])), global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), Struct_1(~_wgslsmith_add_u32(4294967295u & var_0.x, ~9452u), func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(1000f - -1086f), _wgslsmith_f_op_f32(step(909f, 312f)), _wgslsmith_f_op_f32(min(-1056f, 211f))), func_4(vec4<f32>(1f, 1f, 1f, 1f), func_4(vec4<f32>(-871f, -1134f, 3598f, -1000f), Struct_1(1u, vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(70379u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], false), vec3<u32>(var_0.x, 24930u, u_input.b.x)), u_input.a, u_input.a), 0i, -63514i), _wgslsmith_div_i32(u_input.a, i32(-1i) * -2147483647i), 47793i).b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, var_0.x, var_0.x), u_input.c.wyz) | ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 6745u, u_input.b.x), vec3<u32>(u_input.b.x, var_0.x, var_0.x))));
    let var_2 = Struct_3(Struct_2(var_1.a, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, 1000f, 1517f, -1385f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(988f, 1079f, 2087f, 588f)))), var_1.a, _wgslsmith_clamp_i32(u_input.a, -19526i, 21205i) ^ 5432i, ~(-71310i)).b.xz, func_4(vec4<f32>(_wgslsmith_f_op_f32(select(-583f, 470f, true)), -724f, _wgslsmith_f_op_f32(round(-2051f)), _wgslsmith_f_op_f32(max(-1000f, -1523f))), Struct_1(~var_1.c.c.x, func_4(vec4<f32>(594f, -2368f, -499f, 155f), Struct_1(33823u, var_1.a.b, vec3<u32>(var_1.a.a, u_input.c.x, 4294967295u)), -1i, u_input.a).b, _wgslsmith_sub_vec3_u32(var_1.c.c, var_1.a.c)), select(~u_input.a, u_input.a ^ u_input.a, false), 422i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1705f, 851f) * _wgslsmith_f_op_f32(sign(594f)))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-1572f, ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_2.a.a.a), var_3.a.a.c) >> (abs(var_2.a.a.c) % vec3<u32>(32u))), vec4<f32>(1088f, var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1070f, global0[_wgslsmith_index_u32(15849u, 24u)]))))), var_3.b));
}

