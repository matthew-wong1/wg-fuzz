struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<u32, 11>;

var<private> global1: array<i32, 9>;

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: vec4<f32> = vec4<f32>(299f, -1785f, -1000f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global2 = Struct_2(all(select(vec3<bool>(any(global2.b), true, arg_0.x), global2.b.zxy, arg_0.x)), select(global2.b, vec4<bool>(any(!vec3<bool>(global2.a, global2.a, global2.a)), all(vec3<bool>(false, global2.b.x, global2.a)), any(global2.b) & select(false, global2.b.x, false), select(global2.b.x | true, false, !global2.b.x)), vec4<bool>(true, _wgslsmith_div_f32(global4.x, 157f) < -950f, all(!arg_0), !(!global2.b.x))));
    global1 = array<i32, 9>();
    global3 = -2147483647i;
    return arg_0.x;
}

fn func_2() -> vec4<f32> {
    global0 = array<u32, 11>();
    global4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 902f, -937f, 725f) + vec4<f32>(global4.x, global4.x, -341f, global4.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1713f, 546f, -481f, global4.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1847f, global4.x, global4.x, 1894f)))))))));
    var var_0 = !global2.b.x;
    global2 = Struct_2(global2.b.x, vec4<bool>(any(global2.b) == any(select(vec4<bool>(true, true, true, true), global2.b, global2.b)), func_3(!global2.b.yzy) & (false | (global2.a | global2.b.x)), func_3(vec3<bool>(true, true, true)), true));
    global3 = global1[_wgslsmith_index_u32(min(u_input.a.x, ~4294967295u), 9u)];
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1625f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(step(-391f, global4.x))), global4.x)), _wgslsmith_f_op_f32(184f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, 139f))), -610f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    global1 = array<i32, 9>();
    global3 = arg_1.b.x;
    global4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(step(-1965f, -1478f))), 396f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) + _wgslsmith_f_op_f32(252f * -1417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f * -2717f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, global4.x, global4.x, 507f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, -294f, global4.x, global4.x))), vec4<f32>(_wgslsmith_div_f32(1000f, 894f), _wgslsmith_f_op_f32(1432f - 1633f), global4.x, _wgslsmith_f_op_f32(-global4.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, -175f, global4.x, global4.x) - vec4<f32>(-522f, -1067f, global4.x, 607f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, -725f, global4.x, 290f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 240f, 1225f, -1726f)))))));
    global0 = array<u32, 11>();
    var var_0 = Struct_1(arg_0.x);
    return _wgslsmith_dot_vec4_u32(u_input.a, select(~vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(15793u, 11u)]), reverseBits(u_input.a.x), ~57179u, 0u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 56993u, arg_2.x, arg_1.c.x), firstLeadingBit(u_input.a), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)], arg_1.c.x, u_input.a.x, arg_1.c.x), u_input.a))), !any(arg_0.yzz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(any(!select(global2.b.zy, global2.b.zx, false))));
    let var_1 = firstTrailingBit(func_1(vec4<bool>(any(vec2<bool>(true, true)), all(!global2.b), true, true), Struct_4(var_0, vec4<i32>(~10149i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 9u)], -2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 9u)], ~global1[_wgslsmith_index_u32(0u, 9u)]), u_input.a.wx, var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(55800u, u_input.a.x, 22757u), vec3<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 11u)]) >> (u_input.a.zyy % vec3<u32>(32u))) >> (~u_input.a.wxz % vec3<u32>(32u))));
    let var_2 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global1[_wgslsmith_index_u32(var_1, 9u)], -1i, -6215i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i, 1i)), vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39840u, 11u)], 9u)], 24417i, 36811i))) << (global0[_wgslsmith_index_u32(u_input.a.x, 11u)] % 32u), i32(-1i) * -global1[_wgslsmith_index_u32(~1u, 9u)], ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(abs(~var_1), 9u)], -2147483647i));
    var var_3 = -574f;
    let var_4 = firstLeadingBit(firstTrailingBit(u_input.a.xy) >> ((vec2<u32>(3644u, 1978u) ^ min(vec2<u32>(var_1, var_1) & vec2<u32>(61452u, var_1), _wgslsmith_mod_vec2_u32(vec2<u32>(50696u, 0u), u_input.a.yz))) % vec2<u32>(32u)));
    global1 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1092f, _wgslsmith_f_op_vec4_f32(func_2()).x));
}

