struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<f32> = vec4<f32>(-947f, 700f, -2432f, -820f);

var<private> global2: u32;

var<private> global3: array<f32, 23> = array<f32, 23>(-785f, -1479f, 1028f, 2709f, 194f, 1380f, -584f, -164f, -3489f, -187f, 763f, -606f, -389f, -976f, -370f, 1130f, 803f, -573f, 139f, 553f, -1183f, 920f, -1000f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = 742f;
    global0 = true;
    global0 = true;
    let var_1 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.a.x & u_input.a.x, ~4294967295u, u_input.a.x | 1u)), u_input.a);
    var var_2 = all(!select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(32054u, 23u)] < 453f, true, any(vec3<bool>(false, true, false))), true));
    return false;
}

fn func_2() -> vec2<bool> {
    var var_0 = global1.xxw;
    global0 = true;
    let var_1 = Struct_1(firstTrailingBit(select(abs(~u_input.a.www), ~_wgslsmith_mult_vec3_u32(vec3<u32>(33986u, u_input.a.x, 4294967295u), u_input.a.wzy), true)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(1f))), vec4<bool>((~31409u | u_input.a.x) <= ~1u, true, all(vec3<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, true)), func_3())), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1902f, 1012f), var_0.zy)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24236u, 23u)] + global3[_wgslsmith_index_u32(32675u, 23u)]))))), 26851i);
    global3 = array<f32, 23>();
    var var_2 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, 2147483647i), 1i & var_1.e, -9616i), abs((vec3<i32>(24416i, var_1.e, var_1.e) | vec3<i32>(var_1.e, var_1.e, 11448i)) & _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -23169i, var_1.e), vec3<i32>(var_1.e, var_1.e, 0i)))), (vec3<i32>(_wgslsmith_mult_i32(1i, 18055i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, 0i, var_1.e, var_1.e), vec4<i32>(var_1.e, var_1.e, var_1.e, var_1.e)), var_1.e) & -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.e, 0i, -1i), vec3<i32>(var_1.e, var_1.e, var_1.e))) ^ ~vec3<i32>(~32700i, 2147483647i, _wgslsmith_mod_i32(-11927i, 2147483647i)), var_1.a.x < 50285u);
    return !var_1.c.yz;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(any(vec4<bool>(true, true, true, true)), !(all(vec3<bool>(true, true, true)) | any(vec2<bool>(true, true))), !any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), func_2(), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(14371u, 23u)])) * global1.x));
    var var_1 = !any(vec4<bool>(!(!var_0.x), var_0.x, false, !any(var_0.zyy)));
    var_1 = true;
    var var_2 = Struct_1(vec3<u32>(4294967295u, 0u, u_input.a.x), global3[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(4294967295u | u_input.a.x)), 23u)], select(!vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), true, any(var_0.yw), var_0.x), !select(!vec4<bool>(false, var_0.x, false, var_0.x), !var_0, select(var_0, var_0, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.zx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2128f, 246f)))))), -9104i);
    var var_3 = vec3<f32>(806f, _wgslsmith_f_op_f32(select(2258f, -670f, !func_2().x && var_0.x)), 1152f);
    return Struct_1(u_input.a.yxy, var_2.d.x, var_0, _wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(var_3.xz + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(410f, 1224f) + vec2<f32>(global1.x, -2504f)), _wgslsmith_f_op_vec2_f32(var_3.yy * vec2<f32>(var_3.x, -461f)), select(var_2.c.yx, vec2<bool>(false, var_2.c.x), vec2<bool>(true, var_0.x)))))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.xx;
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-2538f, ~u_input.a.zyx, -(~vec4<i32>(2147483647i, -var_1.e, -var_1.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.e, -29729i), vec3<i32>(36246i, var_1.e, var_1.e)))));
}

