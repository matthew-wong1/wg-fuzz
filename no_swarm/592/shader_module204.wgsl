struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, -3635i, i32(-2147483648));

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<i32, 23>;

var<private> global3: array<bool, 13>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec3<f32> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 13u)] & global3[_wgslsmith_index_u32(~1u, 13u)];
    var var_1 = 1u;
    global3 = array<bool, 13>();
    var var_2 = true;
    let var_3 = vec2<u32>(~(~81514u), u_input.e);
    return vec3<f32>(_wgslsmith_div_f32(-1138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f + -544f) - _wgslsmith_div_f32(-533f, -522f)))), _wgslsmith_div_f32(552f, -790f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -395f))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~(1u << (firstTrailingBit(u_input.e) % 32u)), 15u)];
    global1 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var var_2 = 0u;
    var var_3 = global1[_wgslsmith_index_u32(86885u, 15u)];
    return vec4<i32>(global0.x, 26614i, ~(i32(-1i) * -1i) & select(arg_1.a, -2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 13u)]), ~_wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_3.a.a, -7156i), -2350i));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = Struct_1(u_input.d >> (arg_0.b.x % 32u), -1000f, _wgslsmith_f_op_vec3_f32(func_2()));
    global0 = func_3(abs(_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_2, u_input.d, -1785i, -75165i), vec4<i32>(-2147483647i, global0.x, -1i, 1i)), (vec4<i32>(var_0.a, 49571i, 2595i, 0i) ^ vec4<i32>(-1i, 64654i, 2147483647i, -2147483647i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.a, 2147483647i, -48589i, var_0.a), vec4<i32>(arg_1.x, -60181i, global0.x, 23088i), vec4<i32>(-14285i, arg_0.a.a, -15050i, arg_0.a.a)))), arg_0.a);
    var var_1 = reverseBits(arg_1.x);
    let var_2 = 22881i;
    let var_3 = -2147483647i;
    return -21901i;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(~38459u < u_input.e, all(vec3<bool>(false, arg_0, all(vec4<bool>(arg_0, arg_0, global3[_wgslsmith_index_u32(39685u, 13u)], false))))), vec2<bool>(all(vec2<bool>(!arg_0, arg_0)), arg_0));
    var var_1 = !(!all(!vec2<bool>(global3[_wgslsmith_index_u32(93520u, 13u)], false)) || false);
    global0 = vec4<i32>(firstLeadingBit(~1i), global2[_wgslsmith_index_u32(1u, 23u)] | -(~88079i), global0.x, 6490i) | firstTrailingBit(firstLeadingBit(vec4<i32>(1i, 3459i, func_3(vec4<i32>(global0.x, arg_1.a, -1i, global0.x), arg_1).x, 29035i)));
    global0 = -vec4<i32>(1i, 2147483647i & reverseBits(_wgslsmith_mod_i32(u_input.d, 0i)), _wgslsmith_dot_vec2_i32((global0.xw & global0.zz) ^ firstLeadingBit(global0.yy), vec2<i32>(arg_1.a, arg_1.a | 2147483647i)), _wgslsmith_clamp_i32(~u_input.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.e), ~u_input.a), 23u)], -29912i));
    var_1 = !arg_0;
    return !(!any(vec3<bool>(false, var_0.x, true))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - -1362f))) <= _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-833f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((func_1(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.b, 23u)], 2259f, vec3<f32>(-455f, -1572f, 576f)), vec2<u32>(u_input.c.x, 68465u)), vec3<i32>(-1i, global0.x, global2[_wgslsmith_index_u32(1u, 23u)]), ~(-2147483647i)) == u_input.d) || true, Struct_1(_wgslsmith_dot_vec2_i32(global0.zy, global0.ww), 921f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, 493f, -1842f))))));
    var var_1 = Struct_2(Struct_1(u_input.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1528f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(560f, 531f, -2444f), vec3<f32>(425f, -177f, 544f), false))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, -1000f, 610f) + vec3<f32>(-1995f, -1083f, -225f)), vec3<f32>(-279f, 247f, 1000f)))), ~_wgslsmith_div_vec2_u32(u_input.a.xz, select(~u_input.c.yz, u_input.a.zz, func_4(global3[_wgslsmith_index_u32(38025u, 13u)], Struct_1(0i, -964f, vec3<f32>(1616f, 341f, 1323f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a.c.x, -171f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(407f + -1911f))))), var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.b - -885f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.b, -425f, var_1.a.c.x, -984f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-930f, var_1.a.b, 979f, var_1.a.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(124f, 1000f, var_1.a.b, 324f) * vec4<f32>(var_1.a.b, var_1.a.c.x, -463f, var_1.a.c.x)), vec4<f32>(var_1.a.c.x, var_1.a.b, var_1.a.b, var_1.a.c.x)))));
    global0 = ~vec4<i32>(_wgslsmith_sub_i32(u_input.d ^ global0.x, -7431i), 2147483647i, abs(~global0.x), func_3(vec4<i32>(-17408i, global2[_wgslsmith_index_u32(6513u, 23u)], 0i, -2147483647i), Struct_1(-34560i, var_1.a.c.x, var_2.zwy)).x) >> (~firstTrailingBit(abs(vec4<u32>(var_1.b.x, 42683u, var_1.b.x, 1u))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.b, var_2.x)))));
    global3 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -262f))))), firstTrailingBit(~vec2<i32>(~global0.x, -global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), ~global0.wzw);
}

