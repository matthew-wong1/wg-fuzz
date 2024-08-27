struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: array<vec4<bool>, 13>;

var<private> global3: array<bool, 19> = array<bool, 19>(true, true, false, false, false, true, true, true, false, true, false, true, false, true, false, false, true, true, true);

var<private> global4: array<i32, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~select((-u_input.b.x & (global4[_wgslsmith_index_u32(60023u, 12u)] >> (1u % 32u))) & 1i, -(~(-2147483647i >> (arg_0.x % 32u))), true);
    var var_1 = global3[_wgslsmith_index_u32(~31607u, 19u)];
    global0 = array<vec2<f32>, 30>();
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + -163f));
    return ~arg_0.x;
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = countOneBits(~_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.d.x, arg_0.a.x, -1i), arg_0.a.wwz, false) | u_input.b, ~_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(arg_0.a.x, u_input.c, 26092i))));
    global1 = array<vec2<f32>, 18>();
    let var_1 = vec2<u32>(65014u, _wgslsmith_div_u32(func_3(~reverseBits(vec3<u32>(0u, 4294967295u, 39778u))), 0u));
    var var_2 = _wgslsmith_add_vec3_u32(~(~select(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(4122u, var_1.x, var_1.x) >> (vec3<u32>(4294967295u, 0u, var_1.x) % vec3<u32>(32u)), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 19u)], false, false))), ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(44342u, var_1.x, var_1.x), vec3<u32>(var_1.x, 4294967295u, 4294967295u)) << (~(vec3<u32>(24370u, 4294967295u, 0u) >> (vec3<u32>(var_1.x, 0u, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1890f, _wgslsmith_f_op_f32(268f + -384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(109f)))))), ~u_input.a.zz, select(false, any(select(select(global2[_wgslsmith_index_u32(var_1.x, 13u)], vec4<bool>(global3[_wgslsmith_index_u32(63116u, 19u)], true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(var_1.x, 19u)], false, global3[_wgslsmith_index_u32(27921u, 19u)])), global2[_wgslsmith_index_u32(func_3(vec3<u32>(20783u, var_1.x, 79511u)), 13u)], vec4<bool>(false, false, false, false))), global3[_wgslsmith_index_u32(~(~4187u), 19u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1132f, 1820f)))), _wgslsmith_f_op_f32(abs(359f))));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1() -> f32 {
    var var_0 = 87687i;
    let var_1 = min(~4294967295u, _wgslsmith_clamp_u32(~81486u, 1u, 12383u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(1i, -1i, 0i, global4[_wgslsmith_index_u32(1u, 12u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1724f * 1237f) + _wgslsmith_f_op_f32(floor(1287f))))));
    global3 = array<bool, 19>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-371f, -355f)), _wgslsmith_f_op_f32(f32(-1f) * -752f), !global3[_wgslsmith_index_u32(var_1, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1183f)))), 307f)) * _wgslsmith_f_op_f32(-602f + -232f));
    return _wgslsmith_f_op_f32(-304f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 313f), _wgslsmith_div_f32(-1649f, -586f)))), _wgslsmith_f_op_f32(-423f - _wgslsmith_f_op_f32(-1477f * -1200f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1563f) + _wgslsmith_f_op_f32(step(-1225f, -315f))), _wgslsmith_f_op_f32(abs(-1805f)))), max(_wgslsmith_mod_vec2_i32(u_input.d.yz, u_input.a.yx), -vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, -70705i), _wgslsmith_mult_i32(-1i, 33164i))), !global3[_wgslsmith_index_u32(~15392u, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -762f)))))));
    let var_1 = Struct_1(var_0.a, max(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(80862u, 12u)], -2147483647i)) << (firstLeadingBit(~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), u_input.e.xz), var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(585f, var_0.d))) * _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(global4[_wgslsmith_index_u32(1u, 12u)], u_input.d.x, -1i, global4[_wgslsmith_index_u32(0u, 12u)])))))))));
    let var_2 = Struct_1(var_0.a, -vec2<i32>(firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(-1i, -34973i, u_input.d.x, -1i)), vec4<i32>(10986i, 38123i, 1i, var_0.b.x))), true, var_0.d);
    global3 = array<bool, 19>();
    var var_3 = var_1.c;
    global4 = array<i32, 12>();
    let var_4 = Struct_2(u_input.a);
    var_3 = var_0.d > _wgslsmith_f_op_f32(-708f + _wgslsmith_f_op_f32(ceil(-1090f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~reverseBits(68675u))));
}

