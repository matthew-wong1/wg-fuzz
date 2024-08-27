struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(-1176f, Struct_3(-571f, vec3<u32>(4294967295u, 23196u, 4294967295u), 1i, 27339u, 669f), false, Struct_3(-799f, vec3<u32>(72079u, 10967u, 39593u), 15441i, 1u, -302f), vec3<f32>(1534f, -1355f, -1556f)), Struct_4(1243f, Struct_3(-205f, vec3<u32>(4294967295u, 64875u, 4294967295u), 11254i, 4294967295u, -436f), false, Struct_3(-562f, vec3<u32>(52056u, 0u, 9909u), -36549i, 4294967295u, -961f), vec3<f32>(-313f, 853f, 382f)), Struct_4(-385f, Struct_3(732f, vec3<u32>(0u, 1u, 5928u), i32(-2147483648), 33744u, -421f), true, Struct_3(-574f, vec3<u32>(52811u, 1u, 6169u), i32(-2147483648), 18663u, 156f), vec3<f32>(-703f, -775f, -262f)), Struct_4(365f, Struct_3(412f, vec3<u32>(4294967295u, 0u, 1445u), -1i, 1u, 1003f), true, Struct_3(-2060f, vec3<u32>(81919u, 1u, 1u), i32(-2147483648), 67401u, 200f), vec3<f32>(2046f, 1789f, 1568f)), Struct_4(-563f, Struct_3(1029f, vec3<u32>(35660u, 22977u, 4294967295u), -33577i, 39851u, -372f), false, Struct_3(2499f, vec3<u32>(80216u, 1u, 13210u), -6926i, 4294967295u, -626f), vec3<f32>(-313f, -1000f, -626f)), Struct_4(-956f, Struct_3(-345f, vec3<u32>(8355u, 101422u, 4294967295u), 1i, 66925u, -1430f), false, Struct_3(-1214f, vec3<u32>(5466u, 0u, 95754u), -11999i, 44643u, 1494f), vec3<f32>(-768f, 1000f, -1068f)));

var<private> global2: Struct_2 = Struct_2(Struct_1(4294967295u), vec2<f32>(837f, -438f), Struct_1(1u));

var<private> global3: vec3<u32> = vec3<u32>(13689u, 4294967295u, 4294967295u);

var<private> global4: vec4<f32> = vec4<f32>(-1115f, 589f, -614f, -724f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> f32 {
    global1 = array<Struct_4, 6>();
    return _wgslsmith_div_f32(1257f, global2.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> bool {
    global2 = Struct_2(global2.c, vec2<f32>(1827f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1047f, global4.x)))), Struct_1(abs(firstLeadingBit(global2.a.a))));
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(arg_1.b.c), 0i, abs(-29501i), u_input.c.x), vec4<i32>(firstTrailingBit(u_input.b >> (global2.c.a % 32u)), 0i, 0i, 2147483647i));
    global4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-459f - -646f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * global4.x), _wgslsmith_f_op_f32(arg_1.d.e * _wgslsmith_f_op_f32(func_3(Struct_3(global2.b.x, vec3<u32>(u_input.a.x, 1u, global2.a.a), 0i, 4294967295u, 762f), arg_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(496f, -289f, 266f, global4.x) - vec4<f32>(arg_1.b.a, arg_1.e.x, -335f, global4.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.a, -134f, 484f, arg_1.d.e), vec4<f32>(231f, arg_1.b.a, global4.x, 774f))) * vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(global4.x - 862f), global2.b.x, -806f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, -892f, global4.x, global4.x))), false));
    let var_1 = Struct_2(Struct_1(abs(global2.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global4.yw, arg_1.e.yy, vec2<bool>(true, select(arg_1.c, arg_1.c, arg_1.c))))), global2.c);
    global2 = var_1;
    return !all(!vec4<bool>(true & arg_1.c, true, true, any(vec3<bool>(false, true, false))));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global1 = array<Struct_4, 6>();
    global0 = true;
    var var_0 = !select(vec3<bool>(all(!vec2<bool>(arg_0.c, false)), arg_0.c, !arg_0.c), !vec3<bool>(func_2(vec2<u32>(global3.x, 43693u), Struct_4(arg_0.b.e, arg_0.d, arg_0.c, arg_0.b, vec3<f32>(global2.b.x, global4.x, global4.x))), all(vec4<bool>(false, false, arg_0.c, arg_0.c)), select(false, arg_0.c, true)), !select(vec3<bool>(false, arg_0.c, false), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), true));
    var var_1 = !arg_0.c;
    let var_2 = global2.c;
    return Struct_3(arg_0.e.x, u_input.a.xyz, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0.d.c, 2147483647i, u_input.c.x, u_input.d)), _wgslsmith_clamp_vec4_i32(~u_input.c, vec4<i32>(arg_0.d.c, -11909i, -2147483647i, arg_0.b.c) | vec4<i32>(2147483647i, arg_0.d.c, 34214i, u_input.c.x), vec4<i32>(0i, u_input.b, 28054i, -2147483647i))) & u_input.b, global2.a.a, -1750f);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    global1 = array<Struct_4, 6>();
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(global3.x, 0u, 4294967295u, u_input.a.x)), u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_vec2_f32(arg_0.e.xx - global4.yy), select(arg_0.c, false, all(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, false, false, true), true))))), global2.a);
    global0 = !arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d.e, var_0.b.x))))));
    let var_2 = func_1(arg_0);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -437i;
    global4 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1691f * global2.b.x) - -316f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + 667f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-574f, global4.x))), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global2.b.x * 233f));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) - 1152f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1808f, 875f, false))))), func_4(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * global2.b.x) - _wgslsmith_f_op_f32(step(global2.b.x, global4.x))), Struct_3(272f, u_input.a.yxw, -30646i ^ var_0, max(global3.x, u_input.a.x), _wgslsmith_f_op_f32(min(127f, -405f))), !all(vec4<bool>(false, false, true, false)), func_1(Struct_4(869f, Struct_3(global4.x, u_input.a.wyx, var_0, 20392u, global2.b.x), false, Struct_3(global2.b.x, u_input.a.xyx, u_input.d, 1u, global4.x), vec3<f32>(global4.x, -1000f, 375f))), global4.wyy), global4.x), (var_0 << (~_wgslsmith_sub_u32(61117u, 0u) % 32u)) <= _wgslsmith_div_i32(~(~(-2147483647i)), var_0), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(573f, -379f) - -1107f), global2.b.x), ~u_input.a.zwx, ~(-u_input.d), ~_wgslsmith_add_u32(max(u_input.a.x, global2.c.a), _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zw)), -1370f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global4.x, 1295f))))), _wgslsmith_f_op_f32(global4.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(182f - global2.b.x), 308f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)) - global2.b.x)));
    let var_2 = Struct_3(var_1.a, ~u_input.a.xzz, i32(-1i) * -select(i32(-1i) * -2147483647i, min(u_input.d, var_0), var_1.c), min(func_4(Struct_4(314f, func_4(global1[_wgslsmith_index_u32(var_1.d.d, 6u)], 395f), !var_1.c, func_4(Struct_4(-559f, Struct_3(-888f, var_1.b.b, var_1.b.c, global3.x, 1421f), var_1.c, var_1.d, vec3<f32>(global2.b.x, global4.x, 1645f)), var_1.b.a), vec3<f32>(var_1.e.x, 390f, var_1.e.x)), var_1.b.a).b.x, 69203u | var_1.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a), global2.b.x));
    var var_3 = Struct_2(global2.a, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), global2.b.x))), global4.x), global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<i32>(select(9498i, u_input.d, false), var_0, -1i ^ var_0, _wgslsmith_sub_i32(var_0, -51970i))), _wgslsmith_sub_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, 42661i, u_input.c.x))), firstLeadingBit(abs(vec4<i32>(2147483647i, -20395i, var_1.b.c, 2147483647i)))), vec4<bool>(false, !(0u >= var_1.d.b.x), false, var_1.c)));
}

