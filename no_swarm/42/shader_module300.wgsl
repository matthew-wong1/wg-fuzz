struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, true, true, true, false, false, false, false, false, true, false, true, true, false, false, true, false, true, true, false, false, false, false, true, false, true, false, false, true);

var<private> global1: array<bool, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(1043f));
    global0 = array<bool, 30>();
    global1 = array<bool, 13>();
    var var_1 = var_0;
    global1 = array<bool, 13>();
    return ~arg_2.a.x;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-679f, 551f, 1003f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1804f, 148f, 1927f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, 743f, 1223f))))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -417f);
    let var_2 = Struct_2(Struct_1(select(vec2<u32>(1u, 1u), vec2<u32>(~1u, 64044u), vec2<bool>(global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(128386u, 13u)], vec4<bool>(global0[_wgslsmith_index_u32(40284u, 30u)], global1[_wgslsmith_index_u32(48226u, 13u)], global1[_wgslsmith_index_u32(45650u, 13u)], false), Struct_1(vec2<u32>(1u, 29480u), false, 9806i), 79653u), 13u)], true)), global0[_wgslsmith_index_u32(select(0u, 17880u, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 30u)] || true), 30u)], -43904i), _wgslsmith_f_op_f32(f32(-1f) * -517f), vec2<bool>(select(all(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]), global0[_wgslsmith_index_u32(18597u, 30u)])), all(select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(25272u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(39979u, 13u)], true))), global1[_wgslsmith_index_u32(firstLeadingBit(1u), 13u)] & true), true));
    let var_3 = ~var_2.a.a.x;
    global1 = array<bool, 13>();
    return -1429f;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = vec4<i32>(arg_3.a.a.c, arg_3.a.a.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, u_input.b.x, arg_3.a.a.c, u_input.b.x), -arg_2), max(40266i, firstTrailingBit(arg_3.d.c ^ arg_3.b)));
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_1 = _wgslsmith_f_op_f32(556f * -1287f);
    var_0 = -firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 11783i, arg_2.x, 33910i), reverseBits(vec4<i32>(var_0.x, arg_2.x, 1i, -20207i))) | arg_2);
    return Struct_1(~(~(~vec2<u32>(arg_3.d.a.x, 0u))), true, _wgslsmith_mod_i32(-arg_2.x, -49908i));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    global1 = array<bool, 13>();
    var var_0 = arg_0.a.a.b;
    var_0 = true;
    var var_1 = Struct_4(arg_0.a, abs(u_input.b.x), arg_0.a.a.a.x, func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.a.b)), _wgslsmith_f_op_f32(-arg_0.a.b))), 218f), arg_0.a.b, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, -1i, arg_0.b, arg_0.d.c), vec4<i32>(u_input.a, u_input.a, arg_0.d.c, u_input.a) << (vec4<u32>(0u, 60739u, 4294967295u, arg_0.c) % vec4<u32>(32u))) << (vec4<u32>(abs(0u), ~4294967295u, arg_0.a.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.d.a.x), vec2<u32>(arg_0.c, arg_0.c))) % vec4<u32>(32u)), arg_0), vec3<bool>(!all(arg_0.e.xz), true, any(vec4<bool>(true, true, true, -1167f == arg_0.a.b))));
    global1 = array<bool, 13>();
    return Struct_4(arg_0.a, 2147483647i, 1u, var_1.d, select(select(arg_0.e, !select(arg_0.e, arg_0.e, arg_0.d.b), vec3<bool>(var_1.a.a.b, global0[_wgslsmith_index_u32(~12563u, 30u)], true)), !(!(!var_1.e)), var_1.e));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = arg_1.e;
    var var_1 = firstTrailingBit(-min(max(vec4<i32>(-14564i, -2147483647i, -1i, arg_1.a.a.c), _wgslsmith_div_vec4_i32(vec4<i32>(-27287i, -2147483647i, arg_0.x, u_input.b.x), vec4<i32>(arg_1.a.a.c, arg_1.d.c, u_input.a, u_input.a))), vec4<i32>(max(arg_0.x, 1i), i32(-1i) * -1i, -u_input.b.x, 2147483647i)));
    return _wgslsmith_clamp_u32(firstLeadingBit(abs(select(~arg_1.d.a.x, abs(arg_1.a.a.a.x), func_1(arg_1).d.b))), 4294967295u, select(1u, arg_1.d.a.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(19519u | ~firstTrailingBit(16409u), ~_wgslsmith_add_u32(1u >> (0u % 32u), _wgslsmith_mod_u32(7933u, 19177u)), ~4294967295u, ~(~2738u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(34084u, 0u), vec2<u32>(0u, 1u)), ~(~2313u), func_5(abs(vec3<i32>(u_input.a, -57947i, u_input.a)), func_1(Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 1u), true, -2147483647i), -619f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), -1i, 108095u, Struct_1(vec2<u32>(48752u, 0u), global0[_wgslsmith_index_u32(4294967295u, 30u)], -4372i), vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 13u)])))), 1u) & ~firstTrailingBit(~vec4<u32>(13651u, 6859u, 35763u, 1u)));
    global1 = array<bool, 13>();
    var_0 = vec4<u32>(~(~var_0.x), var_0.x, ~_wgslsmith_mod_u32(0u, firstTrailingBit(~var_0.x)), ~_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), var_0.xyy), 15193u), _wgslsmith_div_u32(firstLeadingBit(20616u), ~1u)));
    let var_1 = ~vec4<i32>(25131i, abs(~16130i), abs(u_input.a) | 47032i, u_input.a);
    var var_2 = Struct_1(var_0.yz | _wgslsmith_mult_vec2_u32(func_1(func_1(Struct_4(Struct_2(Struct_1(vec2<u32>(var_0.x, 65095u), true, u_input.a), -529f, vec2<bool>(false, global1[_wgslsmith_index_u32(60941u, 13u)])), 33553i, var_0.x, Struct_1(var_0.xw, global1[_wgslsmith_index_u32(var_0.x, 13u)], -17019i), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 13u)], true, global0[_wgslsmith_index_u32(0u, 30u)])))).a.a.a, vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, ~var_0.x), 1u), 30u)], u_input.a);
    global1 = array<bool, 13>();
    var_2 = Struct_1(firstTrailingBit(select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_0.wy, vec2<u32>(1u, 49294u)), _wgslsmith_add_vec2_u32(var_0.xw, vec2<u32>(1u, var_2.a.x))), ~reverseBits(var_0.zx), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(21255u, var_0.x, 38547u)), 13u)])), all(!select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, false, var_2.b), select(vec4<bool>(false, var_2.b, false, global0[_wgslsmith_index_u32(var_0.x, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], global1[_wgslsmith_index_u32(69893u, 13u)], true, false), global0[_wgslsmith_index_u32(var_0.x, 30u)]), true)), var_1.x >> (_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(27049u, 1u)), ~11986u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(9170u);
}

