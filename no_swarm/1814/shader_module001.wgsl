struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-1i, 111f), Struct_2(59429i, 755f), Struct_2(7618i, 564f), Struct_2(21019i, -1046f), Struct_2(1i, 393f), Struct_2(-1i, 278f), Struct_2(-6273i, -741f), Struct_2(61674i, -977f), Struct_2(0i, 1493f), Struct_2(1i, -161f), Struct_2(-39220i, 629f), Struct_2(2147483647i, -1309f), Struct_2(-18932i, 1937f), Struct_2(2147483647i, 835f), Struct_2(0i, 211f), Struct_2(-1i, -2396f), Struct_2(28188i, 412f), Struct_2(63927i, -378f), Struct_2(1i, -1716f), Struct_2(2147483647i, 205f), Struct_2(2147483647i, 1331f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    let var_0 = !(any(vec3<bool>(any(vec4<bool>(false, true, false, true)), false, true)) & (81185u >= ~(~u_input.b.x)));
    let var_1 = reverseBits(abs(2423i));
    global0 = array<Struct_2, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, -294f, -1392f, 679f)))));
    global0 = array<Struct_2, 21>();
    return global0[_wgslsmith_index_u32(u_input.b.x, 21u)];
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    var var_0 = 49473u;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, ~1u), u_input.b);
    global0 = array<Struct_2, 21>();
    return _wgslsmith_add_i32(~min(arg_1.a, -(arg_3.c.e ^ arg_3.a.a)), arg_3.e.e);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    global0 = array<Struct_2, 21>();
    var var_0 = -1i;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.a.a, arg_0.a, -5600i), arg_1.e.e)), vec2<i32>(countOneBits(20200i) << (~u_input.b.x % 32u), countOneBits(arg_0.a) >> (0u % 32u))) >= -26231i;
    var var_2 = ~func_3(_wgslsmith_f_op_f32(floor(arg_0.b)), Struct_2(-(arg_1.b.x | -10470i), arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, -225f, arg_2.x, 1356f), vec4<f32>(228f, arg_0.b, arg_1.d.b, -930f), false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1728f, 963f, arg_1.d.b, arg_0.b), vec4<f32>(arg_0.b, -1226f, -705f, 1337f)))))), arg_1);
    return ~(-2737i);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_1(select(vec4<bool>(!any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), false, all(arg_1), arg_1.x), vec4<bool>(false, true & !arg_1.x, _wgslsmith_clamp_u32(32808u, u_input.a.x, u_input.a.x) <= max(u_input.b.x, u_input.b.x), arg_1.x), select(select(vec4<bool>(false, false, arg_1.x, true), select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, arg_1.x, false, true), vec4<bool>(true, arg_1.x, false, arg_1.x)), true), vec4<bool>(arg_1.x, false, false, true), any(vec2<bool>(true, arg_1.x)))), vec2<bool>(any(vec2<bool>(true, true)), arg_1.x), all(!(!(!vec4<bool>(true, true, arg_1.x, arg_1.x)))), true, arg_2);
    let var_2 = !select(var_1.a, var_1.a, !(!any(vec2<bool>(false, var_1.c))));
    let var_3 = Struct_1(var_1.a, select(var_2.xx, var_1.b, select(!vec2<bool>(arg_1.x, false), !var_1.b, vec2<bool>(var_1.e != arg_2, select(true, var_1.b.x, arg_1.x)))), !var_2.x, var_2.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, select(_wgslsmith_sub_i32(-2147483647i, var_1.e), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -1i, -18178i, 23838i), vec4<i32>(20069i, arg_2, 14885i, -1i)), true)), abs(_wgslsmith_div_i32(-79281i >> (u_input.b.x % 32u), countOneBits(0i)))));
    return reverseBits(u_input.a.xzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<bool>(!(!any(vec2<bool>(true, true))), true);
    global0 = array<Struct_2, 21>();
    let var_2 = max(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(250f, var_0.b, -1566f, 1315f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, var_0.b, var_0.b, -922f))))), vec2<bool>(true, var_1.x), abs(~func_2(var_0, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<i32>(-2147483647i, var_0.a, var_0.a, 21586i), Struct_1(vec4<bool>(true, false, var_1.x, var_1.x), vec2<bool>(var_1.x, false), true, true, 0i), var_0, Struct_1(vec4<bool>(var_1.x, true, false, true), vec2<bool>(var_1.x, true), true, var_1.x, var_0.a)), vec2<f32>(var_0.b, -1885f), true))), _wgslsmith_mult_vec3_u32(max(min(firstTrailingBit(vec3<u32>(4294967295u, u_input.b.x, u_input.a.x)), u_input.a.ywy), vec3<u32>(firstLeadingBit(54142u), ~u_input.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u))), ~(~vec3<u32>(u_input.a.x, 0u, 0u))));
    let var_3 = Struct_4(Struct_1(select(!(!vec4<bool>(false, false, false, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !var_1.x), all(vec4<bool>(true, false, var_1.x, false))), vec2<bool>(any(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x))), var_1.x), true, all(!select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, false))), i32(-1i) * -18753i));
    global0 = array<Struct_2, 21>();
    let var_4 = !select(var_3.a.a.xyw, !(!(!var_3.a.a.zxz)), vec3<bool>(var_3.a.a.x, true, false));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.e, 94256u, select(firstLeadingBit(var_2.x >> (~var_2.x % 32u)), 25015u, true), firstTrailingBit(u_input.a) ^ vec4<u32>(32519u, _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(10148u, 1u)), var_2.x, ~(~var_2.x)));
}

