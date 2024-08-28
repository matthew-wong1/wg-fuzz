struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 15>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    global1 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_f32(round(1621f));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    global1 = array<f32, 15>();
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = array<f32, 15>();
    let var_2 = true;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), vec3<u32>(93542u, 1749u, u_input.d), Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~u_input.a.x), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(43402u, 1u, 1u)), countOneBits(~u_input.a.x), ~(~u_input.d))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9563u, 15u)]))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.c.a.xzx, vec3<u32>(arg_0.b.x, 4294967295u, 13924u)), 9436u), 15u)]))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47022u, 15u)] - -694f), _wgslsmith_f_op_f32(-global0.a)))))));
    global0 = Struct_3(arg_0.a, firstLeadingBit(global0.b));
    var var_1 = arg_0.c;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-699f)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1143f)), _wgslsmith_f_op_f32(ceil(-2524f))).b, arg_0.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1926f, arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1677f, 287f, true)) * _wgslsmith_f_op_f32(313f * 134f)))))));
    return Struct_1(_wgslsmith_add_vec4_u32(select(~vec4<u32>(arg_0.c.a.x, var_2.b.x, 4294967295u, var_2.b.x), vec4<u32>(var_2.b.x, 4294967295u, 0u, 14074u), vec4<bool>(true, true, true, true)), reverseBits(_wgslsmith_mod_vec4_u32(arg_0.c.a, vec4<u32>(4294967295u, 15536u, 16434u, 3383u)))) << (_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.d, var_1.a.x, 20519u, var_1.a.x) ^ vec4<u32>(46691u, 50102u, 113511u, var_2.c.a.x), arg_0.c.a), max(~var_1.a, vec4<u32>(47448u, arg_0.c.a.x, 38189u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(56830u, 15u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) * 1f)), _wgslsmith_div_f32(-706f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)])))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1308f, global1[_wgslsmith_index_u32(var_0.a.x, 15u)], global1[_wgslsmith_index_u32(var_0.a.x, 15u)], -1074f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, 329f, -198f, global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(692f, 479f, -108f, global0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(11256u, 15u)], -1205f, 344f, global0.a) - vec4<f32>(global1[_wgslsmith_index_u32(37481u, 15u)], global1[_wgslsmith_index_u32(u_input.d, 15u)], global0.a, global1[_wgslsmith_index_u32(0u, 15u)])))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, global1[_wgslsmith_index_u32(var_0.a.x, 15u)], -239f, 1083f) * vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], -1118f)) * vec4<f32>(154f, -558f, global0.a, 1244f)), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 15u)]), -181f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 15u)])), 436f), true))));
    let var_2 = global0.a;
    var var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(-1504f))) <= _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = vec2<i32>(global0.b, _wgslsmith_sub_i32(u_input.c, firstLeadingBit(firstLeadingBit(-26982i))));
    return Struct_2(-1327f, firstLeadingBit(u_input.a), Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.d, u_input.d, u_input.d), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!vec2<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false)))));
    global1 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.zy, _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, -2147483647i), vec3<i32>(u_input.b, global0.b, ~(u_input.c ^ global0.b))), u_input.a.yy);
}

