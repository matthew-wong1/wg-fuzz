struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1057f, -901f, 1745f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(var_1.c.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a.x, -1067f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.a.x, 2233f) + vec2<f32>(arg_0.c.a.x, arg_0.c.a.x))))))))));
    global0 = arg_0;
    var var_3 = arg_0.a;
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(-2147483647i, ((u_input.b <= ~u_input.b) | global0.e.b.x) && ((reverseBits(u_input.b) & reverseBits(u_input.e.x)) <= _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 72143u, 4294967295u), vec4<u32>(4294967295u, u_input.e.x, 4294967295u, 11720u)), func_3(Struct_4(global0.a, global0.b, global0.c, global0.d, global0.e)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(global0.c.a)))));
    var var_2 = Struct_4(global0.a, ~abs(~0u) == ~u_input.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(1099f)), global0.d), vec3<bool>(any(vec4<bool>(true, true, true, false)), true, global0.b)), 248f, global0.c);
    let var_3 = countOneBits(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(23548u, 1u, u_input.e.x), vec3<u32>(4294967295u, u_input.b, 52055u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, u_input.e.x), vec3<u32>(u_input.e.x, 1u, u_input.e.x))) ^ (countOneBits(vec3<u32>(u_input.e.x, 38257u, 4294967295u)) | (~vec3<u32>(10527u, 61347u, u_input.b) | (vec3<u32>(u_input.b, u_input.e.x, 1u) & vec3<u32>(24361u, 0u, u_input.b)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~1u, 1u)]));
    return var_2.a.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global0 = Struct_4(Struct_2(Struct_1(global0.c.a, arg_1.c.b), true, Struct_1(arg_1.c.a, !select(arg_1.c.b, arg_1.a.b, arg_2)), Struct_1(global0.c.a, global0.e.b)), false, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.e.a - vec2<f32>(-1740f, 475f)), vec2<f32>(-1561f, arg_0.x), false)), vec3<bool>(true, false, !arg_2)), _wgslsmith_f_op_f32(-arg_1.a.a.x), func_2());
    let var_0 = Struct_3(Struct_2(Struct_1(vec2<f32>(-740f, 1306f), vec3<bool>(-6251i == u_input.c.x, false, true)), true, arg_1.d, arg_1.a), arg_1.d, 7382u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(40154u), _wgslsmith_sub_u32(u_input.b, 11257u), 0u), vec3<u32>(u_input.e.x, 4294967295u, 30998u >> (1u % 32u))) % 32u), Struct_2(func_2(), !arg_1.d.b.x, global0.e, arg_1.d));
    let var_1 = ~(-259i);
    var var_2 = Struct_5(~var_1, !arg_1.d.b.x);
    var var_3 = global0.a.a;
    return Struct_4(Struct_2(Struct_1(arg_1.c.a, func_2().b), !any(vec3<bool>(true, true, false)), func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.c.a * global0.a.a.a)), arg_1.d.b)), !arg_1.d.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.c.a)), vec3<bool>(_wgslsmith_mod_u32(4294967295u, var_0.c) < ~u_input.e.x, any(vec4<bool>(var_3.b.x, false, global0.b, var_0.b.b.x)), !all(var_0.d.c.b))), arg_1.d.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.d.a.x, -914f)), select(arg_1.a.b, vec3<bool>(any(var_0.b.b.xz), any(vec2<bool>(false, true)), u_input.e.x <= u_input.e.x), _wgslsmith_f_op_f32(floor(var_3.a.x)) <= _wgslsmith_f_op_f32(min(472f, var_3.a.x)))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = firstTrailingBit(-vec2<i32>(u_input.d.x, ~73697i)) ^ ~u_input.d.yy;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, 1065f, arg_3.d.a.a.x, 699f) + vec4<f32>(global0.d, arg_3.a.c.a.x, -810f, 743f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.d.a.x, global0.d, 1308f, arg_3.b.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, global0.e.a.x, 947f, arg_3.b.a.x))), vec4<bool>(arg_1.x, true, u_input.d.x < 16658i, global0.b | false))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f - -143f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b.a.x + 898f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.d.a.x - -931f) * _wgslsmith_f_op_f32(select(1469f, global0.d, global0.c.b.x))), 597f)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.c.a.x, -1000f) + arg_3.a.c.a)), !(!vec3<bool>(arg_3.b.b.x, arg_3.b.b.x, true))), arg_1.x, func_2(), arg_3.d.a), true);
    let var_2 = Struct_4(global0.a, !(arg_0 > _wgslsmith_dot_vec2_i32(vec2<i32>(-42398i, 0i), vec2<i32>(-2147483647i, u_input.d.x))), Struct_1(global0.a.a.a, vec3<bool>(!any(vec2<bool>(true, false)), true, arg_1.x != true)), 520f, var_1.c);
    var var_3 = u_input.c;
    var var_4 = vec2<i32>(arg_0, var_3.x);
    return select(_wgslsmith_sub_u32(~u_input.e.x, 15684u), ~u_input.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, ~u_input.b, u_input.e.x), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b, 10054u, u_input.b, u_input.e.x)), max(max(vec4<u32>(1u, 38465u, u_input.e.x, 0u), vec4<u32>(58450u, 0u, 17221u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 20496u, 0u), vec4<u32>(82967u, u_input.b, u_input.b, 1u))))), vec4<u32>(_wgslsmith_mod_u32(21767u, ~0u & ~u_input.e.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), 22026u, func_1(u_input.d.x, vec2<bool>(true, false), u_input.e, Struct_3(Struct_2(Struct_1(global0.a.c.a, vec3<bool>(false, global0.c.b.x, global0.b)), global0.c.b.x, Struct_1(vec2<f32>(-642f, global0.e.a.x), vec3<bool>(false, false, false)), global0.c), Struct_1(global0.e.a, global0.a.d.b), u_input.b, global0.a))), abs(vec3<u32>(u_input.e.x, 57062u, u_input.b)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.e.x), vec3<u32>(1u, 17275u, u_input.e.x))), func_3(Struct_4(func_4(vec4<f32>(-1000f, 278f, global0.a.c.a.x, 1312f), global0.a, global0.b).a, global0.a.a.b.x, global0.c, global0.a.c.a.x, global0.c))), 169f != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 610f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f))));
    var var_1 = global0.c.a.x <= -178f;
    var var_2 = global0.a;
    var_2 = global0.a;
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.c.x >> (18917u % 32u), u_input.a.x), global1[_wgslsmith_index_u32(u_input.e.x, 14u)], global0.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(602f, var_2.a.a.x)), global0.e.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.e.a.x, global0.a.d.a.x))))), 520f, _wgslsmith_f_op_f32(func_2().a.x - var_2.d.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(select(~49885u, u_input.b, global0.a.c.b.x), 1u)], vec3<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(var_2.a.a.x - 577f), _wgslsmith_f_op_f32(max(var_2.a.a.x, global0.c.a.x))))))));
}

