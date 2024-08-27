struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(i32(-2147483648), -5116i), vec2<i32>(-12663i, -1806i), vec2<i32>(-23938i, 1i), vec2<i32>(i32(-2147483648), -5069i), vec2<i32>(-57018i, 2147483647i), vec2<i32>(4934i, 2147483647i), vec2<i32>(0i, -24357i), vec2<i32>(8988i, 1i), vec2<i32>(2147483647i, -2300i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(3781i, 5171i), vec2<i32>(-53700i, i32(-2147483648)), vec2<i32>(-39916i, 47674i), vec2<i32>(i32(-2147483648), -77562i), vec2<i32>(-48007i, 10875i), vec2<i32>(7688i, 5253i), vec2<i32>(28666i, 37778i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(25680i, 1i), vec2<i32>(-41319i, 47587i), vec2<i32>(2147483647i, -41292i), vec2<i32>(4517i, 0i), vec2<i32>(0i, -55356i), vec2<i32>(1i, 0i), vec2<i32>(-13080i, -1i), vec2<i32>(-1i, -47759i), vec2<i32>(-1i, 59868i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-45557i, -12915i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    return Struct_1(arg_0, !any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), false)), !(-_wgslsmith_clamp_i32(u_input.e, 2147483647i, 1i) == (u_input.e ^ reverseBits(u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1291f)))))) + 1778f));
}

fn func_3() -> Struct_1 {
    global0 = array<vec2<i32>, 29>();
    let var_0 = select(!vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, select(select(false, false, true), true, true)), !vec4<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), all(vec4<bool>(false, true, false, false)) & true, true, false), true);
    global0 = array<vec2<i32>, 29>();
    let var_1 = false;
    var var_2 = Struct_1(firstLeadingBit(-vec3<i32>(countOneBits(u_input.e), 0i, -86537i)), true, any(var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1531f + _wgslsmith_f_op_f32(select(-1655f, -389f, var_0.x))) * _wgslsmith_f_op_f32(min(1332f, _wgslsmith_f_op_f32(638f - -743f))))));
    return func_2(var_2.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 29>();
    var var_0 = false;
    var var_1 = true;
    var var_2 = Struct_1(abs(arg_3.a), true, arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.d + func_2(arg_2.a).d))) - arg_2.d));
    let var_3 = abs(vec3<u32>(0u, 34501u << (u_input.c.x % 32u), u_input.c.x));
    return var_3.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 29>();
    var var_0 = ~(~u_input.c);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(388f, arg_1.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(func_2(-arg_1.a).d, _wgslsmith_f_op_f32(f32(-1f) * -1534f))))), _wgslsmith_f_op_f32(-arg_1.d), arg_1.d);
    global0 = array<vec2<i32>, 29>();
    var var_2 = select(vec2<bool>(arg_1.c, !arg_1.c), vec2<bool>(false, !(true || arg_1.b) | false), false);
    return 620f;
}

fn func_6(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.a.x;
    let var_1 = func_2(firstLeadingBit(-abs(vec3<i32>(arg_2.a.x, arg_1.x, arg_2.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-618f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(vec3<i32>(arg_3.a.x, -1i, 1i)).d, -1000f)) - func_2(~(-arg_3.a)).d));
    var var_3 = arg_2.b & arg_2.b;
    var_2 = _wgslsmith_f_op_f32(var_1.d * -1137f);
    return Struct_1(vec3<i32>(i32(-1i) * -(~31723i), ~(~u_input.e & countOneBits(-1i)), arg_3.a.x), all(select(vec4<bool>(u_input.c.x < 1u, 4294967295u != u_input.c.x, true, true), vec4<bool>(arg_3.b, arg_3.c == true, true, arg_0), vec4<bool>(func_3().c, true, any(vec4<bool>(arg_2.c, var_1.c, true, false)), false))), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.d))) + -874f))));
}

fn func_1() -> Struct_1 {
    return func_6(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1418f, 266f)), min(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec2<i32>(u_input.e, -210i)), func_2(vec3<i32>(1i, -8376i, 47034i)), func_3()), func_2(vec3<i32>(-2147483647i, u_input.e, 0i)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f * 1000f))), firstLeadingBit(-vec3<i32>(-2147483647i, 29968i, u_input.e) | vec3<i32>(u_input.e, 47538i, func_2(vec3<i32>(2147483647i, u_input.e, u_input.e)).a.x)), func_2(~(min(vec3<i32>(0i, 1i, -43997i), vec3<i32>(5218i, u_input.e, -27216i)) | (vec3<i32>(u_input.e, u_input.e, -17007i) | vec3<i32>(24411i, u_input.e, 1i)))), func_2(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.e, u_input.e, 29014i)), -vec3<i32>(u_input.e, 1i, u_input.e), _wgslsmith_mod_vec3_i32(vec3<i32>(15440i, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, 2147483647i))), func_2(vec3<i32>(u_input.e, 15770i, u_input.e)).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2401f, 1490f)))));
    let var_2 = func_1();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d));
    global0 = array<vec2<i32>, 29>();
    var_1 = var_0.d;
    global0 = array<vec2<i32>, 29>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(412f, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, var_0.d, 375f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, -1773f, -100f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d, -566f, 1151f), vec3<f32>(var_0.d, var_0.d, var_2.d))), vec3<f32>(-165f, -1125f, 331f)))), -vec2<i32>(var_2.a.x, -var_0.a.x), Struct_1(_wgslsmith_add_vec3_i32(var_2.a, -var_2.a), func_1().c, false, var_2.d), var_2), func_6(var_2.b, vec3<i32>(min(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-12544i, var_0.a.x, var_0.a.x), var_2.a)), i32(-1i) * -u_input.e, var_2.a.x), Struct_1(select(~var_2.a, func_3().a, select(vec3<bool>(var_0.c, var_0.c, var_2.b), vec3<bool>(true, var_0.c, var_0.b), vec3<bool>(var_0.b, var_0.b, true))), true, any(vec3<bool>(true, true, var_2.b)), var_3.x), func_2(vec3<i32>(_wgslsmith_mod_i32(13366i, var_0.a.x), _wgslsmith_sub_i32(var_0.a.x, 2147483647i), max(1i, var_2.a.x)))).d, ~u_input.c, _wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(-208f * _wgslsmith_div_f32(var_2.d, 1000f))));
}

