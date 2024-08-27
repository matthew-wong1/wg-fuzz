struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(1042f, -923f);

var<private> global3: array<vec3<bool>, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -1953f));
    var var_1 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec3<bool>(false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), vec2<bool>(true, true)), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1227f, 1128f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, global2.x))), var_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, global2.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1131f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), true))))));
    let var_3 = -6542i;
    return var_3;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.b;
    let var_1 = vec4<bool>(all(vec4<bool>(false, arg_1.d.a.x, arg_1.d.d, max(u_input.c, arg_0.b.a.d.b.x) >= func_3())), !any(!(!arg_1.d.a)), false, all(!vec4<bool>(false, arg_0.c.b, arg_0.c.b, true)));
    var var_2 = u_input.b.xwz;
    var var_3 = global2.x;
    let var_4 = arg_0.c.a.c;
    return arg_0.b.a.b;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, global2.x, -792f, -915f) + vec4<f32>(273f, global2.x, 1234f, global2.x))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), -1000f, _wgslsmith_f_op_f32(1685f - global2.x), _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(-1025f, Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 14u)], -634f, Struct_1(vec2<bool>(false, false), vec4<i32>(arg_0, 1i, -2147483647i, u_input.c), 38321u, false), Struct_1(vec2<bool>(false, true), vec4<i32>(16305i, arg_0, 35279i, u_input.c), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], 14u)], true), 33739u), false), Struct_3(Struct_2(1u, global2.x, Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 39066u, true), Struct_1(vec2<bool>(false, true), vec4<i32>(arg_0, -2147483647i, 22331i, 1431i), global0[_wgslsmith_index_u32(4294967295u, 14u)], true), 1u), true), vec4<f32>(-129f, global2.x, -797f, global2.x), 18022u), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 14u)], 246f, Struct_1(vec2<bool>(true, true), vec4<i32>(arg_0, u_input.c, u_input.c, u_input.c), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true), Struct_1(vec2<bool>(false, true), vec4<i32>(33213i, -31391i, u_input.c, 2147483647i), u_input.b.x, true), u_input.b.x))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(439f * -1155f), _wgslsmith_f_op_f32(global2.x + 432f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-238f, -1570f, global2.x, 1558f), _wgslsmith_div_vec4_f32(vec4<f32>(2200f, global2.x, global2.x, -1861f), vec4<f32>(global2.x, -903f, 1174f, 2121f))))));
    let var_1 = !(!global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b.ywz, u_input.b.zzy) | (firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 14u)]) << (abs(global0[_wgslsmith_index_u32(1u, 14u)]) % 32u)), 14u)], 14u)]);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xz, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, global2.x), var_0.xz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1000f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(201f, var_0.x), var_0.xx, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yz + var_0.ww))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-177f, _wgslsmith_f_op_f32(-var_0.x))), -1548f))));
    let var_3 = vec3<f32>(-1093f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * var_2.x), -1000f);
    return StorageBuffer(0u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(2287u, ~1u), _wgslsmith_div_u32(~4294967295u, u_input.b.x)), abs(max(~(1i << (u_input.a % 32u)), -2147483647i)), firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~1u, 14u)], abs(48261u))) >> (u_input.a % 32u), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, firstLeadingBit(u_input.c), ~u_input.c), vec3<i32>(abs(-31220i), firstTrailingBit(u_input.c), -71979i) >> (~u_input.b.yyz % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-1i, u_input.c, 16737i)), -min(vec3<i32>(2147483647i, 7844i, u_input.c) ^ vec3<i32>(u_input.c, 1i, u_input.c), reverseBits(vec3<i32>(u_input.c, -1i, -322i))));
    let x = u_input.a;
    s_output = func_1(-var_0.x);
}

