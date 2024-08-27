struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1423f, 636f, 954f) - vec4<f32>(-848f, -392f, -425f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1554f, 277f, -1596f, -1734f))))))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -206f, 642f, 1212f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 152f, 1000f, 635f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), 1000f, 1f, -864f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -1592f, 1006f, 213f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-2073f, -1553f, -532f, 171f), vec4<f32>(2534f, -368f, -911f, -1195f))))), vec4<bool>(all(vec4<bool>(!arg_0, true, arg_0, !arg_2)), true, arg_2, arg_0)));
    let var_2 = var_1.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.x)), -203f, any(!select(vec4<bool>(false, true, arg_0, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), false))));
    var_1 = vec4<f32>(var_1.x, -466f, 850f, -2282f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -478f)) * 1571f)))));
    return _wgslsmith_f_op_f32(floor(1274f));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(~u_input.a.yww, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, u_input.a.xzx, false))), -263f, 784f), vec4<f32>(-615f, 423f, -414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1644f - -494f) - _wgslsmith_f_op_f32(f32(-1f) * -239f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f * -1772f)), _wgslsmith_f_op_f32(func_3(false, vec3<u32>(28945u, u_input.d, u_input.a.x), any(vec2<bool>(false, false))))), 1399f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(func_3(true, u_input.a.zyx, false))), 873f)), _wgslsmith_f_op_f32(func_3(select(select(true, true, false), true, true), u_input.a.yyz >> ((vec3<u32>(u_input.d, u_input.d, u_input.d) >> (u_input.a.zxx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.e) <= u_input.c.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, 430f, 208f) + vec3<f32>(-1390f, 1734f, -284f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f - 566f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(746f)) - -1605f), _wgslsmith_f_op_f32(trunc(1452f)), -1000f)), max(vec4<u32>(0u, 4294967295u << (_wgslsmith_mod_u32(0u, u_input.d) % 32u), ~u_input.a.x >> (countOneBits(27119u) % 32u), ~4786u), ~u_input.a));
    var var_1 = all(select(select(vec2<bool>(all(vec4<bool>(false, true, false, false)), var_0.e.x <= 0u), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0.d.b.x)) < _wgslsmith_f_op_f32(-var_0.b.b.x), true), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false))))));
    let var_2 = Struct_1(!((_wgslsmith_f_op_f32(-var_0.d.b.x) <= _wgslsmith_f_op_f32(-1162f + -1000f)) == all(vec2<bool>(false, false))), min(u_input.d << (((u_input.a.x >> (67491u % 32u)) << (u_input.d % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, 2248u, var_0.a.x) & var_0.a, min(abs(var_0.e.xyw), ~vec3<u32>(var_0.a.x, 0u, u_input.a.x)))), 15717i, _wgslsmith_f_op_f32(ceil(var_0.c.x)), !vec4<bool>(!all(vec2<bool>(true, true)), var_0.e.x < max(1u, 1u), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), -u_input.e <= 1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1023f, _wgslsmith_f_op_f32(func_2()));
    let var_1 = select(select(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), ~vec2<i32>(u_input.b.x, u_input.e))), vec2<i32>(-1i, -u_input.b.x), false), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, ~31517i), ~u_input.e & u_input.c.x), -u_input.e), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), any(vec4<bool>(true, all(vec3<bool>(true, false, true)), var_0.x <= var_0.x, true))));
    let var_2 = -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -8319i), var_1)) << (~(~(~u_input.a.zx)) % vec2<u32>(32u));
    let var_3 = ~select(vec2<i32>(u_input.b.x, var_2.x), firstLeadingBit(vec2<i32>(-1i, 0i)), true);
    var var_4 = u_input.a.zyz;
    return select(vec3<bool>(true, _wgslsmith_sub_u32(~0u, ~var_4.x) == u_input.a.x, !(_wgslsmith_f_op_f32(func_2()) > -714f)), select(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), true, any(vec4<bool>(true, true, false, false))), select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), !(var_3.x >= 47328i)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false)), vec3<bool>(!any(vec4<bool>(true, true, false, false)), true, true), !vec3<bool>(true, false, all(vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -27312i;
    let var_1 = Struct_1(any(!func_1(59144u)), ((~4294967295u << (~u_input.d % 32u)) ^ ~(u_input.a.x & u_input.d)) ^ 4294967295u, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!func_1(u_input.d).x, ~(~vec3<u32>(1u, u_input.a.x, 1u)), !any(vec4<bool>(false, false, false, false))))), select(vec4<bool>(true, true, true, true), vec4<bool>(~u_input.a.x >= ~u_input.a.x, true, all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(1546f - -1155f) > _wgslsmith_f_op_f32(step(1098f, 1396f))), !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), select(false, true, false), true)));
    let var_2 = (_wgslsmith_dot_vec4_u32(reverseBits(~u_input.a), u_input.a) & firstLeadingBit(var_1.b)) | ~abs(~u_input.d);
    var var_3 = Struct_3(_wgslsmith_div_vec3_u32(~countOneBits(select(vec3<u32>(var_2, var_1.b, 0u), u_input.a.xzz, false)), u_input.a.wwx), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, -1066f, var_1.d), vec3<f32>(-295f, var_1.d, var_1.d))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f + -1975f) - _wgslsmith_f_op_f32(var_1.d * var_1.d)), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(round(-2265f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.d, var_1.d), var_1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-441f, _wgslsmith_f_op_f32(-112f + var_1.d), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_div_f32(var_1.d, 408f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-980f, 750f, -710f, -1016f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d) * vec4<f32>(-454f, 1000f, 1314f, var_1.d))))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1411f, 618f, var_1.d))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, 481f))), vec3<f32>(-717f, -712f, -1000f), var_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-246f, var_1.d, var_1.d, var_1.d), vec4<f32>(-520f, var_1.d, -1000f, 1557f), var_1.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -414f, 1442f, 446f))) * vec4<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(var_1.d - 154f), -995f))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(0u, var_2, var_1.b, 14791u), u_input.a, true), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + 149f) * _wgslsmith_f_op_f32(f32(-1f) * -1666f)) - var_3.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_3.c.wyw, var_3.c.xzx)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1239f, var_3.b.b.x, var_3.c.x), var_3.d.a))) - vec3<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(var_1.d * var_1.d), var_3.c.x)))), abs(vec2<i32>(abs(-2147483647i), u_input.c.x ^ -var_0)));
}

