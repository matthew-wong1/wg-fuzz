struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(4294967295u, 0u, -1324f, -462f, 2147483647i), Struct_1(82626u, 20121u, 649f, 1000f, 2147483647i), Struct_1(24209u, 52674u, 1300f, -1497f, i32(-2147483648)), Struct_1(1u, 57157u, 1658f, 476f, i32(-2147483648)), Struct_1(668u, 4294967295u, -1000f, 133f, -30981i), Struct_1(53790u, 1u, 1171f, -641f, 1i), Struct_1(24305u, 32388u, -1000f, 926f, -24076i), Struct_1(351u, 1u, -919f, -475f, i32(-2147483648)), Struct_1(1u, 114193u, 254f, 1192f, 21120i), Struct_1(0u, 22877u, -1000f, 2267f, 13764i), Struct_1(0u, 51612u, 1731f, 1066f, 0i), Struct_1(1u, 16156u, -171f, 1000f, -45950i), Struct_1(49197u, 4294967295u, -1196f, 282f, 0i), Struct_1(1u, 1u, 552f, -733f, 2147483647i), Struct_1(72460u, 4294967295u, -2210f, -827f, i32(-2147483648)), Struct_1(4294967295u, 32229u, -1319f, 1000f, 0i), Struct_1(0u, 4294967295u, -751f, -1000f, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    global1 = array<Struct_1, 1>();
    var var_0 = 97719u;
    global1 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + -524f), _wgslsmith_f_op_f32(round(142f))) - _wgslsmith_f_op_f32(max(-910f, _wgslsmith_f_op_f32(round(-161f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * global0.d)))), -492f));
    let var_2 = 89432u | (~0u >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(33018u, arg_2.b) << (~39764u % 32u), ~arg_2.b) % 32u));
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_2.b, 25781u, global0.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, global0.a, 2264u), vec3<u32>(52953u, arg_2.a, 4294967295u), vec3<u32>(0u, var_2, 0u))), reverseBits(reverseBits(vec3<u32>(var_2, var_2, 11166u))) | select(vec3<u32>(global0.b, 26644u, 0u), ~vec3<u32>(arg_2.b, 48692u, 4294967295u), -880f < var_1));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b, 4294967295u << (firstLeadingBit(_wgslsmith_div_u32(10966u, 1u | global0.a)) % 32u)), 17u)];
    global0 = global1[_wgslsmith_index_u32(1u, 1u)];
    var_0 = Struct_1(~0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(func_3(vec3<f32>(var_0.c, var_0.c, -1931f), false & arg_0, Struct_1(var_0.b, 1u, global0.d, -774f, var_0.e), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, true), vec3<bool>(arg_0, false, true))), ~vec3<u32>(var_0.a, global0.b, var_0.b)), 0u), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f - -471f) + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_mod_i32((min(global0.e, global0.e) & global0.e) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 52143u, 28780u, var_0.b), vec4<u32>(var_0.b, 21273u, 0u, 29052u)) % 32u), u_input.a));
    let var_1 = vec4<u32>(~16981u, ~(~global0.a), ~global0.a & 10564u, ~global0.a);
    global0 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.d)));
}

fn func_1(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), -1086f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(true)))), var_0.x);
    global0 = Struct_1(~48353u, global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * 245f))), var_0.x, u_input.b);
    let var_2 = global0.b;
    let var_3 = Struct_1(~reverseBits(0u), 0u, _wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(444f, -1357f, true)) * 382f)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, u_input.a) | vec2<i32>(1i, -1i), select(vec2<i32>(u_input.a, global0.e), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(false, true))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-80404i, -1i, u_input.b, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, global0.e, -2147483647i), vec4<i32>(u_input.b, u_input.a, 33996i, 2147483647i)))), -43623i));
    return select(vec3<bool>(true, true, false & (min(global0.b, 11301u) != firstLeadingBit(6854u))), vec3<bool>(!((var_3.b == var_3.a) && true), false, true), vec3<bool>(!(~(-36314i) < firstLeadingBit(u_input.a)), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, 1446f != global0.c, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), false), vec3<bool>(true, true, true)), vec3<bool>(false, true != (_wgslsmith_f_op_f32(ceil(global0.d)) < global0.d), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, global0.c, global0.d, global0.c), vec4<f32>(global0.d, global0.c, -392f, global0.c), vec4<bool>(false, false, false, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.c, global0.c, global0.d))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, global0.c, global0.d) - vec4<f32>(global0.d, 253f, global0.d, global0.c)), vec4<f32>(global0.d, -393f, global0.d, global0.c)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, 2511f, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, 301f, global0.c, -624f))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, global0.b, global0.b, 35690u), vec4<u32>(global0.a, 0u, global0.a, 28178u))) << (((vec4<u32>(4294967295u, 0u, global0.b, 4294967295u) & ~vec4<u32>(23358u, global0.b, global0.a, 81467u)) >> (~vec4<u32>(4294967295u, 26697u, 30817u, 89402u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~25430u, _wgslsmith_mult_u32(global0.b | min(global0.b, global0.a), global0.b), 1u, ~_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(1u, 4294967295u), global0.b))), 1u)];
    let var_3 = global2[_wgslsmith_index_u32(1u, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(-913f, var_1.yyx, _wgslsmith_f_op_f32(-global0.c), vec4<i32>(firstTrailingBit(-22665i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.e, global0.e), vec2<i32>(global0.e, 1985i)), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(_wgslsmith_mult_i32(-13477i, u_input.b), _wgslsmith_div_i32(-38294i, global0.e))), -33472i, ~(i32(-1i) * -var_3.e)), var_2.zzy);
}

