struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(arg_0.a, u_input.d.zy, arg_3.c);
    let var_1 = vec4<f32>(1677f, arg_0.a.x, _wgslsmith_f_op_f32(abs(-573f)), var_0.a.x);
    global0 = array<f32, 8>();
    var_0 = arg_0;
    let var_2 = !(!select(select(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), true), !vec3<bool>(arg_2, arg_2, true), !arg_2), !(!vec3<bool>(arg_2, false, arg_2)), vec3<bool>(arg_2 & false, any(vec2<bool>(arg_2, arg_2)), true)));
    return arg_0.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, global0[_wgslsmith_index_u32(55127u, 8u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(93068u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]) * vec2<f32>(621f, 1179f))) - vec2<f32>(_wgslsmith_f_op_f32(-736f * global0[_wgslsmith_index_u32(arg_1, 8u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 8u)] - 2099f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-578f, -610f))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)]), u_input.d.wy, u_input.e), -665f, true, Struct_1(vec2<f32>(-1890f, -899f), u_input.d.xw, vec4<i32>(1i, 2169i, arg_0.x, 22i)))).x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(26198u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)]))), !all(vec3<bool>(false, false, true)))))), ~vec2<u32>(62138u, u_input.d.x), abs(firstLeadingBit(-vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.e.x))) & _wgslsmith_div_vec4_i32(u_input.e, -vec4<i32>(-1i, u_input.c.x, u_input.b.x, u_input.b.x)));
    global0 = array<f32, 8>();
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -849f), global0[_wgslsmith_index_u32(var_0.b.x, 8u)]), ~reverseBits(firstLeadingBit(vec2<u32>(26197u, 0u))) << (vec2<u32>(~_wgslsmith_mod_u32(22014u, 5086u), _wgslsmith_div_u32(50347u, arg_1)) % vec2<u32>(32u)), var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2968f, _wgslsmith_f_op_f32(floor(263f))))), min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 74255u, u_input.d.x), vec3<u32>(0u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.d.x, 9761u, 28469u) % vec3<u32>(32u))), ~0u >> (reverseBits(var_0.b.x) % 32u)), firstTrailingBit(~vec2<u32>(var_0.b.x, u_input.a))), reverseBits(vec4<i32>(-86969i, abs(-48950i), ~8345i, u_input.c.x)));
    var var_1 = !vec4<bool>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_f_op_f32(303f + 444f))) != var_0.a.x, true, true, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.c.x, -1i), -2147483647i) == abs(-2147483647i));
    return min(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.e.x, 3394i) ^ abs(_wgslsmith_dot_vec2_i32(var_0.c.ww, vec2<i32>(2147483647i, -2147483647i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.c.x | -28505i, -8135i), u_input.e.x)), 0i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_0 = u_input.b.x;
    global0 = array<f32, 8>();
    var_0 = 0i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(260f, -667f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(504f, 525f), vec2<f32>(arg_0.a.x, -1000f))) * arg_0.a), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<f32>(880f, _wgslsmith_f_op_f32(f32(-1f) * -253f)))), vec2<u32>(0u, 0u), vec4<i32>(abs(func_3(~arg_0.c.zzy, u_input.a)), i32(-1i) * -u_input.e.x, arg_0.c.x, arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(-1520f - -810f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-1183f, 616f), u_input.d.zw, u_input.e), -2492f, false, Struct_1(vec2<f32>(-2367f, -673f), u_input.d.xx, u_input.e))))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1478f, 365f) * vec2<f32>(-1196f, 294f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-926f, global0[_wgslsmith_index_u32(u_input.a, 8u)])))) + _wgslsmith_f_op_vec2_f32(func_1(func_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(40897u, 8u)], -277f), u_input.d.wx, u_input.e)), func_2(Struct_1(vec2<f32>(-2150f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec2<u32>(0u, u_input.d.x), u_input.e)).a.x, true, Struct_1(vec2<f32>(487f, global0[_wgslsmith_index_u32(u_input.a, 8u)]), u_input.d.xy, vec4<i32>(-4835i, -16914i, u_input.b.x, 0i)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(73187u, 8u)], global0[_wgslsmith_index_u32(55396u, 8u)])) + vec2<f32>(_wgslsmith_f_op_f32(1000f + -1527f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 8u)])))));
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.a, max(1u, u_input.a))), ~u_input.e.x, u_input.d.x);
}

