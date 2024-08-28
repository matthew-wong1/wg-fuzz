struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-48671i, 2147483647i, 0i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    var var_0 = true;
    let var_1 = !(!select(select(vec2<bool>(arg_2, arg_2), !vec2<bool>(true, arg_2), !arg_2), vec2<bool>(false, true), !(!vec2<bool>(arg_2, arg_2))));
    return -(~(vec4<i32>(global2.a.x >> (1u % 32u), 0i, _wgslsmith_mod_i32(u_input.a.x, global2.a.x), u_input.a.x) ^ vec4<i32>(reverseBits(1i), -37308i, -u_input.a.x, u_input.a.x & u_input.a.x)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(firstTrailingBit(global2.a));
    let var_1 = Struct_1(firstLeadingBit(~var_0.a));
    let var_2 = -2147483647i;
    let var_3 = all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec3<bool>(false, false, false)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, false))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)))));
    global1 = array<vec4<bool>, 5>();
    return vec3<i32>(-var_1.a.x, select(62243i, 2147483647i, all(!(!vec2<bool>(false, var_3)))), select(-8081i, _wgslsmith_div_i32(global2.a.x, firstTrailingBit(2147483647i) >> (0u % 32u)), !(!any(global0[_wgslsmith_index_u32(1u, 15u)]))));
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(~(vec3<i32>(-1i) * -(u_input.a << (u_input.b.xwy % vec3<u32>(32u)))));
    var var_1 = Struct_1(global2.a);
    global2 = Struct_1(~_wgslsmith_mult_vec3_i32(abs(~var_1.a), abs(func_3())));
    global0 = array<vec4<bool>, 15>();
    let var_2 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(false, true, false, true)), false), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(179f)), _wgslsmith_f_op_f32(1259f - 999f), -2112f, _wgslsmith_f_op_f32(462f + -225f))))), vec4<u32>(u_input.b.x, min(abs(~24163u), u_input.d), _wgslsmith_clamp_u32(47467u, ~_wgslsmith_add_u32(u_input.b.x, u_input.c.x), u_input.e), select(0u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1134u, u_input.b.x)), ~vec2<u32>(u_input.c.x, u_input.c.x)), true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-374f, -1122f)))), _wgslsmith_f_op_f32(abs(1f)), 1000f))), vec3<f32>(_wgslsmith_f_op_f32(1f + 1531f), _wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-618f + -870f), _wgslsmith_f_op_f32(-243f - -1020f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(trunc(212f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(ceil(845f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x >> (u_input.c.x % 32u);
    global0 = array<vec4<bool>, 15>();
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, 210f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-867f, -542f))))), u_input.c, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, -134f, 1023f, -751f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(700f, 185f, -1161f, -279f) + vec4<f32>(335f, -685f, 774f, -608f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * _wgslsmith_f_op_f32(round(-639f))), _wgslsmith_f_op_f32(round(-1117f))), _wgslsmith_f_op_f32(trunc(697f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, -182f) * _wgslsmith_f_op_f32(395f - 1902f))))));
    global0 = array<vec4<bool>, 15>();
    let x = u_input.a;
    s_output = func_2(Struct_1(vec3<i32>(var_1.x, _wgslsmith_add_i32(u_input.a.x, 1i), _wgslsmith_clamp_i32(u_input.a.x, 10087i, u_input.a.x)) >> (~vec3<u32>(3469u, u_input.b.x, u_input.e) % vec3<u32>(32u))));
}

