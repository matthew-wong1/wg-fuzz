struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global1: bool = true;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: array<f32, 27>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = vec4<bool>(all(!select(!vec2<bool>(arg_3.b.b, true), vec2<bool>(arg_3.e.c, true), any(vec2<bool>(false, arg_3.c.b)))), arg_3.c.c, all(vec4<bool>(arg_3.b.c, any(select(vec4<bool>(true, arg_3.e.c, true, false), vec4<bool>(true, arg_3.b.b, arg_3.b.b, false), vec4<bool>(false, false, arg_3.b.c, arg_3.c.c))), arg_3.c.b, arg_3.e.b)), arg_3.e.b & arg_3.e.c);
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1550f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(208f)) + 1661f)), global3[_wgslsmith_index_u32(arg_0, 27u)]), arg_2.x, arg_3.b);
    var var_2 = all(!(!(!vec4<bool>(false, false, var_1.c.b, var_0.x))));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(-2147483647i, var_1.b), max(_wgslsmith_sub_i32(i32(-1i) * -37289i, arg_2.x), -567i)), _wgslsmith_dot_vec2_i32(countOneBits(abs(select(vec2<i32>(-19207i, var_1.b), vec2<i32>(0i, var_1.b), arg_3.e.b))), -arg_2.yz), -(i32(-1i) * -1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -31906i) << (abs(vec2<u32>(u_input.a.x, arg_0)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(max(arg_2.yz, vec2<i32>(arg_2.x, arg_2.x)), arg_2.zy)));
    global4 = false | var_0.x;
    return ~(~(vec4<u32>(12372u, _wgslsmith_sub_u32(arg_1.b, 11703u), arg_1.b, 77085u) >> (vec4<u32>(var_1.c.a.x << (arg_0 % 32u), _wgslsmith_dot_vec2_u32(var_1.c.a.yx, vec2<u32>(7384u, 4294967295u)), arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 143402u, arg_1.b), vec3<u32>(24126u, u_input.a.x, arg_3.d))) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = countOneBits(-29441i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(~9223u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f + 980f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)] - -814f)), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~u_input.a.x, 27u)], _wgslsmith_f_op_f32(-1367f - global3[_wgslsmith_index_u32(4294967295u, 27u)])))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, -113f, 682f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 947f) * vec3<f32>(1601f, 626f, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]))))))), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(~1i), firstLeadingBit(453i)), ~(-vec2<i32>(2147483647i, 20113i))), Struct_1(reverseBits(u_input.a), arg_1.x, true));
    let var_2 = vec3<bool>(!all(select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_1.c.a.x), 1u)], global0[_wgslsmith_index_u32(1u, 24u)], true)), false, var_1.c.c);
    global2 = array<vec3<bool>, 1>();
    let var_3 = Struct_1(select(func_3(1u, Struct_4(vec4<f32>(var_1.a.x, -580f, 123f, arg_0.x), 4294967295u, vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 530f, -416f, var_1.a.x)), (vec3<i32>(var_1.b, var_1.b, var_1.b) >> (u_input.a.yyy % vec3<u32>(32u))) >> (max(vec3<u32>(81598u, var_1.c.a.x, 0u), vec3<u32>(u_input.a.x, 4294967295u, 1u)) % vec3<u32>(32u)), Struct_2(u_input.a.x, var_1.c, Struct_1(u_input.a, true, arg_1.x), 68391u | var_1.c.a.x, var_1.c)), u_input.a, arg_1), !all(select(arg_1, !arg_1, !var_2.x)), !(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(0u, 51064u), 27u)]) > _wgslsmith_f_op_f32(abs(arg_0.x))));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    global1 = true;
    global1 = !func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.xx)), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.c.a.x << (88220u % 32u), 27u)] > 1000f, true, arg_2.c.c, all(select(vec4<bool>(arg_2.c.b, false, false, true), vec4<bool>(false, arg_2.c.b, true, arg_2.c.b), vec4<bool>(arg_2.c.c, arg_2.c.c, arg_2.c.c, true)))));
    var var_0 = _wgslsmith_sub_vec3_u32(arg_1, ~firstTrailingBit(u_input.a.xyy));
    var var_1 = ~_wgslsmith_div_i32(arg_2.b, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-21031i, arg_2.b), 1i | arg_2.b)) == _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_2.b, -5621i), arg_2.b);
    var_1 = arg_2.c.c;
    return 301u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-39729i, ~(-2032i)), vec2<i32>(-15927i, i32(-1i) * -1i));
    global4 = false;
    global1 = any(vec3<bool>(7325u < u_input.a.x, all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), false));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 196f, -582f), vec3<f32>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(2171u, 27u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1290f * 1321f) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(12538u, 27u)] + -1907f))), 622f), ~firstTrailingBit(4294967295u) << (var_1 % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1717f)), -827f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-358f, global3[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 27u)]))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(func_1(_wgslsmith_clamp_u32(82967u, var_1, 36998u), _wgslsmith_div_vec3_u32(u_input.a.xxz, vec3<u32>(0u, 43574u, u_input.a.x)), Struct_3(vec3<f32>(var_2.x, -564f, global3[_wgslsmith_index_u32(4294967295u, 27u)]), 0i, Struct_1(u_input.a, false, true))), 27u)] - -931f)));
}

