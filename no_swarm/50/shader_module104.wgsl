struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<bool>(true, false), 1i), Struct_3(vec2<bool>(true, false), 1i), Struct_3(vec2<bool>(false, true), -1i), Struct_3(vec2<bool>(false, false), 0i), Struct_3(vec2<bool>(true, false), 0i), Struct_3(vec2<bool>(true, false), i32(-2147483648)), Struct_3(vec2<bool>(false, true), 0i), Struct_3(vec2<bool>(true, true), -49558i), Struct_3(vec2<bool>(false, true), 2147483647i), Struct_3(vec2<bool>(true, true), 1i), Struct_3(vec2<bool>(false, false), 1i), Struct_3(vec2<bool>(true, true), 4615i), Struct_3(vec2<bool>(true, true), 1i), Struct_3(vec2<bool>(true, false), 2147483647i), Struct_3(vec2<bool>(false, false), 1i), Struct_3(vec2<bool>(true, true), 18013i), Struct_3(vec2<bool>(true, true), 2147483647i), Struct_3(vec2<bool>(false, false), -1977i), Struct_3(vec2<bool>(false, true), 6163i), Struct_3(vec2<bool>(true, true), i32(-2147483648)), Struct_3(vec2<bool>(false, false), 0i), Struct_3(vec2<bool>(false, false), -38323i), Struct_3(vec2<bool>(false, true), 1i), Struct_3(vec2<bool>(false, false), 44228i), Struct_3(vec2<bool>(false, false), i32(-2147483648)), Struct_3(vec2<bool>(true, false), -1i), Struct_3(vec2<bool>(true, true), -29529i), Struct_3(vec2<bool>(true, true), 31636i), Struct_3(vec2<bool>(false, true), -49300i), Struct_3(vec2<bool>(true, true), i32(-2147483648)));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(false, true), 5281i);

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(2996u, Struct_1(vec2<f32>(108f, -240f), vec3<bool>(true, true, true), 4294967295u, vec4<f32>(-1231f, 1225f, -250f, -945f))), Struct_2(0u, Struct_1(vec2<f32>(-143f, -731f), vec3<bool>(true, false, true), 4294967295u, vec4<f32>(1190f, -1000f, -714f, 346f))), Struct_2(1u, Struct_1(vec2<f32>(-707f, 136f), vec3<bool>(true, false, true), 14755u, vec4<f32>(-311f, 233f, -222f, -812f))), Struct_2(23879u, Struct_1(vec2<f32>(-195f, 571f), vec3<bool>(true, false, false), 1u, vec4<f32>(-506f, -300f, -279f, 1159f))), Struct_2(26031u, Struct_1(vec2<f32>(-1205f, 161f), vec3<bool>(true, true, false), 1u, vec4<f32>(604f, 394f, 1336f, 903f))), Struct_2(8201u, Struct_1(vec2<f32>(340f, -1000f), vec3<bool>(true, true, false), 4294967295u, vec4<f32>(228f, -794f, 646f, -563f))), Struct_2(0u, Struct_1(vec2<f32>(1029f, 1002f), vec3<bool>(false, true, false), 1u, vec4<f32>(1230f, 744f, -1826f, -546f))));

var<private> global3: vec4<u32> = vec4<u32>(62973u, 86421u, 1u, 1u);

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> i32 {
    return countOneBits(-12190i);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1543f)), _wgslsmith_f_op_f32(floor(-1000f))), select(!select(select(vec3<bool>(global4.a.x, arg_1, true), vec3<bool>(global4.a.x, arg_2, arg_1), vec3<bool>(true, arg_1, false)), select(vec3<bool>(true, global4.a.x, global4.a.x), vec3<bool>(true, false, global1.a.x), arg_2), vec3<bool>(arg_2, global1.a.x, true)), select(vec3<bool>(global4.a.x & global1.a.x, true, true), !select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, arg_1), vec3<bool>(arg_2, arg_2, arg_1)), !all(global4.a)), (false && any(vec4<bool>(false, false, arg_2, true))) && all(vec4<bool>(false, global4.a.x, arg_1, false))), ~_wgslsmith_add_u32(max(~u_input.e.x, global3.x >> (4294967295u % 32u)), countOneBits(firstLeadingBit(u_input.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1282f, 784f, -631f, 1743f) - vec4<f32>(-445f, -2487f, 664f, 1205f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f * -312f)), -832f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(-721f - -1000f), global4.a.x && false)), 1f)));
    var var_1 = select(select(select(!vec4<bool>(arg_2, global1.a.x, true, false), vec4<bool>(!arg_1, true, arg_2, any(var_0.b.xx)), any(!var_0.b)), !(!(!vec4<bool>(true, arg_1, global1.a.x, true))), false), vec4<bool>(select(!global4.a.x | (global1.a.x != global4.a.x), _wgslsmith_sub_u32(0u, u_input.e.x) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 126355u, 0u, u_input.e.x), vec4<u32>(4294967295u, 1u, 58572u, u_input.e.x)), all(!global1.a)), true, !arg_2, var_0.b.x), any(var_0.b));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, 493f)))))), var_0.a.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) - _wgslsmith_f_op_f32(floor(384f))), 1463f, _wgslsmith_f_op_f32(step(var_0.d.x, -2279f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    global4 = global0[_wgslsmith_index_u32(~var_0.c | (_wgslsmith_sub_u32(abs(u_input.e.x), var_0.c) ^ ~global3.x), 30u)];
    return var_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_3(abs(vec2<i32>(max(-55895i, abs(23066i)), 0i)), global4.a.x, !global1.a.x != true, _wgslsmith_sub_vec2_i32(select(vec2<i32>(~0i, ~1i), u_input.d.wy, true), vec2<i32>(global1.b, ~func_2())));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-873f - -168f), _wgslsmith_f_op_f32(-var_0.d.x), true)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, 570f))))), var_0.d.x);
    var var_2 = max(vec4<i32>(u_input.d.x, ~global4.b, global1.b, countOneBits(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global4.b, global1.b, global1.b, u_input.c), min(u_input.d, vec4<i32>(85457i, global1.b, 2147483647i, u_input.a)))), firstLeadingBit(vec4<i32>(u_input.d.x, -(u_input.d.x ^ u_input.b.x), reverseBits(_wgslsmith_mod_i32(u_input.b.x, global1.b)), func_2())));
    var var_3 = vec2<u32>(u_input.e.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 4294967295u, 66974u, 19374u)), abs(vec4<u32>(global3.x, global3.x, 16318u, 4294967295u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 1u, 0u, 0u), vec4<u32>(4294967295u, u_input.e.x, 0u, 34434u)))));
    global0 = array<Struct_3, 30>();
    return StorageBuffer(-vec3<i32>(global4.b, -1i, 2147483647i) & abs(u_input.d.xzz), -293f, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.b, u_input.b.x >> (4294967295u % 32u), ~u_input.a), firstLeadingBit(39435i | global4.b)), -2147483647i, ~0i ^ -var_2.x, ~_wgslsmith_div_i32(var_2.x << (0u % 32u), i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

