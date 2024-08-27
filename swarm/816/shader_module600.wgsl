struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -21344i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.d.xz, _wgslsmith_add_vec2_u32(firstLeadingBit(countOneBits(u_input.d.zz)), reverseBits(_wgslsmith_mult_vec2_u32(u_input.d.yy, ~u_input.d.xy))));
    let var_1 = arg_1.x;
    global0 = array<vec2<bool>, 26>();
    global3 = ~u_input.c.zx;
    var var_2 = ~vec2<u32>(0u, ~_wgslsmith_add_u32(u_input.b, 1u)) & u_input.d.xy;
    return vec4<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 835f), _wgslsmith_f_op_f32(-4118f - arg_1.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-689f, 379f))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1311f, -733f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -874f, 606f, 1097f))), ~u_input.c.wzx)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1267f, -1004f, 1257f, -795f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1531f, -972f, 846f, 1000f)))))));
    global0 = array<vec2<bool>, 26>();
    let var_1 = Struct_2(_wgslsmith_add_vec3_u32(~(~(~u_input.d.zxz)), u_input.d.zyw), _wgslsmith_f_op_vec4_f32(func_3(var_0.yz, var_0, _wgslsmith_sub_vec3_i32(vec3<i32>(-6793i, select(global3.x, u_input.c.x, true), _wgslsmith_mult_i32(29011i, u_input.a)), abs(u_input.c.zyy)))).x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, !all(vec4<bool>(false, global1.x, false, false)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -408f)) - var_0.yy)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b) ^ _wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(countOneBits(u_input.d.yzz), ~vec3<u32>(u_input.b, u_input.b, u_input.b))), 10u)]);
    global3 = vec2<i32>(~(-1i), u_input.a);
    var var_2 = !select(!select(global0[_wgslsmith_index_u32(18119u, 26u)], global1.yz, false), !(!select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(39526u, 26u)], vec2<bool>(global1.x, global1.x))), global1.zx);
    return vec4<bool>(true, any(select(vec3<bool>(global1.x, false, var_2.x), !vec3<bool>(var_2.x, global1.x, true), vec3<bool>(false, true, global1.x))) || all(select(!vec3<bool>(var_2.x, true, true), !vec3<bool>(false, true, global1.x), any(global1.zx))), false, var_2.x && !(!any(vec3<bool>(var_2.x, true, global1.x))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, -619f, 596f, arg_2.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-193f, arg_0.b, arg_0.b, arg_0.d.a), vec4<f32>(1416f, arg_0.b, arg_2.c.b.x, arg_2.d.b.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-2428f, 564f, -917f, 174f), vec4<f32>(arg_2.d.a, arg_2.d.b.x, -658f, 862f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -462f, arg_2.c.a, 365f) - vec4<f32>(1221f, arg_0.d.a, -1975f, arg_2.c.b.x))))));
    var var_1 = global1.x;
    let var_2 = select(!func_2(), !(!(!select(vec4<bool>(true, global1.x, false, true), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)))), vec4<bool>(global1.x, any(vec3<bool>(true, true, true)), global1.x, -(-1i << (u_input.b % 32u)) > _wgslsmith_mod_i32(global3.x, -u_input.c.x)));
    let var_3 = var_2.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(var_0.x * arg_2.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1102f, var_0.x)))))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global3 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(max(-1i, func_1(Struct_2(u_input.d.zyx, 129f, Struct_1(-1000f, vec2<f32>(-928f, 487f)), Struct_1(675f, vec2<f32>(-428f, 1223f))), 0u, Struct_2(vec3<u32>(u_input.d.x, 83331u, u_input.b), 392f, Struct_1(472f, vec2<f32>(-853f, -528f)), Struct_1(-400f, vec2<f32>(-1254f, -899f))))), _wgslsmith_sub_i32(~5785i, global3.x)), _wgslsmith_mod_vec2_i32(-u_input.c.yy, u_input.c.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(2670i, select(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.wz, vec2<i32>(global3.x, u_input.a)) | u_input.c.wy, u_input.c.yx), abs(u_input.c.wy) << (u_input.d.wy % vec2<u32>(32u)), any(select(vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, global1.x, true, true)))), _wgslsmith_sub_i32(-32509i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c.zz), u_input.c.yx), -2147483647i ^ _wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.c.wy))), vec2<f32>(-2424f, -844f));
}

