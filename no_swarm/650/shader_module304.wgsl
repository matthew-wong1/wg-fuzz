struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> f32 {
    return arg_3.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_5(-2147483647i < u_input.a, Struct_3(arg_1.c.c.yx));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(func_3(arg_1.c.b, arg_1, ~1u, var_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, -316f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.a.x, 367f)))))));
    var_0 = Struct_5(all(arg_1.d), var_1);
    global0 = array<vec2<i32>, 19>();
    let var_2 = ~(~vec2<u32>(1u << (1u % 32u), 8313u));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    global0 = array<vec2<i32>, 19>();
    let var_0 = Struct_4(true, arg_3.b);
    return true;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    return vec2<i32>(arg_2.a.x, 2147483647i);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = 1096i;
    let var_1 = vec3<bool>(true & (true || !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(ceil(arg_1.x)) >= _wgslsmith_f_op_f32(arg_1.x + -1951f), false);
    global0 = array<vec2<i32>, 19>();
    var var_2 = arg_0;
    var_2 = arg_0;
    return Struct_1(min(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, 7677i, var_2.x, var_0), vec4<i32>(-1i, u_input.a, 50909i, var_0)), ~vec4<i32>(-2147483647i, 45395i, u_input.a, var_0)), -1i), _wgslsmith_mult_vec2_i32(func_2(all(vec4<bool>(var_1.x, var_1.x, true, true)), func_2(false, Struct_2(var_1.yx, vec2<f32>(arg_1.x, arg_1.x), Struct_1(global0[_wgslsmith_index_u32(12032u, 19u)], arg_1.x, vec3<f32>(1382f, arg_1.x, -890f)), var_1.yy, var_1.x))).c.a, ~vec2<i32>(var_0, -2147483647i))), _wgslsmith_f_op_f32(func_2(select(func_4(Struct_2(var_1.xz, vec2<f32>(arg_1.x, arg_1.x), Struct_1(vec2<i32>(2147483647i, u_input.a), arg_1.x, arg_1), vec2<bool>(var_1.x, var_1.x), true), Struct_1(global0[_wgslsmith_index_u32(1909u, 19u)], arg_1.x, vec3<f32>(-752f, 776f, -292f)), Struct_5(true, Struct_3(vec2<f32>(652f, 1136f))), Struct_4(var_1.x, -187f)), var_1.x, true), Struct_2(vec2<bool>(var_1.x, false), arg_1.zz, Struct_1(global0[_wgslsmith_index_u32(19446u, 19u)], -926f, arg_1), var_1.zz, var_1.x)).b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -716f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, arg_1.x, 2706f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(arg_1.x, -782f, -1292f)) * _wgslsmith_div_vec3_f32(arg_1, arg_1)))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_6(func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) + 122f), -762f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1910f, 100f))))), Struct_4(func_4(func_2(true, Struct_2(vec2<bool>(true, false), vec2<f32>(551f, -1000f), Struct_1(vec2<i32>(2147483647i, u_input.a), 175f, vec3<f32>(-1560f, 670f, -1065f)), vec2<bool>(true, true), false)), Struct_1(vec2<i32>(70746i, 1i), -1022f, vec3<f32>(-1703f, -492f, -1903f)), Struct_5(true, Struct_3(vec2<f32>(697f, -363f))), Struct_4(false, 152f)), -719f), Struct_1(select(min(vec2<i32>(2147483647i, -2147483647i), global0[_wgslsmith_index_u32(4294967295u, 19u)]), global0[_wgslsmith_index_u32(~31397u, 19u)], vec2<bool>(true, true)), func_2(true, func_2(false, Struct_2(vec2<bool>(false, true), vec2<f32>(570f, -384f), Struct_1(vec2<i32>(-26237i, u_input.a), 1213f, vec3<f32>(1778f, 700f, 1618f)), vec2<bool>(true, true), false))).b.x, vec3<f32>(1f, 1f, 1f)), Struct_2(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(1809f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -276f))), func_2(u_input.a <= -64667i, func_2(true, Struct_2(vec2<bool>(false, true), vec2<f32>(285f, 899f), Struct_1(vec2<i32>(u_input.a, u_input.a), 2394f, vec3<f32>(1332f, 1000f, 269f)), vec2<bool>(false, false), false))).c, select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), u_input.a == 21812i), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(695f)), func_2(false, Struct_2(vec2<bool>(false, true), vec2<f32>(-316f, 709f), Struct_1(global0[_wgslsmith_index_u32(5737u, 19u)], 2240f, vec3<f32>(-379f, 537f, -1321f)), vec2<bool>(false, false), true)).b.x, _wgslsmith_f_op_f32(-935f + -1000f)))));
    var var_1 = false;
    var_1 = true;
    let var_2 = ~(-firstLeadingBit(vec3<i32>(i32(-1i) * -1i, u_input.a, -3612i)));
    var var_3 = 26712u;
    return func_2(-129f < var_0.b, Struct_2(vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false)), false), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.c.x), _wgslsmith_f_op_f32(var_0.b - 474f)))), func_6(vec2<i32>(2147483647i, var_0.a.x), var_0.c), func_2(any(vec4<bool>(true, false, false, false)) | true, Struct_2(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(var_0.c.yx, vec2<f32>(1000f, -1141f)), func_2(false, Struct_2(vec2<bool>(false, true), var_0.c.xy, Struct_1(var_2.yx, var_0.b, var_0.c), vec2<bool>(true, false), true)).c, vec2<bool>(true, true), true)).d, !any(vec3<bool>(true, true, true)))).a;
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2)), func_2(arg_0.a.x, func_2(false, arg_0)).c.b, arg_3.a.x, _wgslsmith_f_op_f32(round(-1843f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - func_2(arg_1, arg_0).b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.b - 661f), arg_3.a.x), _wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1299f, -181f, 957f, arg_3.a.x)))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.b, -1218f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(654f + _wgslsmith_f_op_f32(-594f + arg_0.b.x)), -503f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_0.x, 360f, arg_1)))), 980f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_0.c.b + -772f)))));
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    var var_2 = Struct_2(!(!vec2<bool>(arg_1, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xz + _wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, var_1.x) + _wgslsmith_f_op_vec2_f32(select(arg_3.a, vec2<f32>(arg_2, arg_2), true)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1000f)), func_6(vec2<i32>(arg_0.c.a.x, abs(func_5(var_0.xxx, Struct_4(true, -2374f), Struct_1(vec2<i32>(arg_0.c.a.x, -32173i), 1427f, arg_0.c.c), arg_0).x)), vec3<f32>(func_6(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 64832i), global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec3_f32(sign(var_1.yzx))).b, _wgslsmith_f_op_f32(f32(-1f) * -446f), func_6(arg_0.c.a, var_0.xww).b)), select(!(!vec2<bool>(true, arg_0.a.x)), func_1(), all(arg_0.a)), arg_1);
    return func_2(!(!arg_1 | any(!vec3<bool>(arg_1, true, false))), Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1158f, 1850f))))), var_2.c, vec2<bool>(var_0.x < _wgslsmith_f_op_f32(-2351f + -608f), var_2.d.x), false)).c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, 1u);
    let var_1 = ~firstTrailingBit(~var_0);
    let var_2 = var_1;
    var var_3 = func_7(Struct_2(!func_1(), vec2<f32>(1f, 1f), func_6(global0[_wgslsmith_index_u32(1u, 19u)], vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 315f, _wgslsmith_f_op_f32(-697f + 652f))), vec2<bool>(false, func_2(true, Struct_2(vec2<bool>(true, false), vec2<f32>(-614f, 1045f), Struct_1(vec2<i32>(43729i, 13437i), 396f, vec3<f32>(-1045f, -533f, -381f)), vec2<bool>(false, true), false)).e), true), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f - 667f) - _wgslsmith_f_op_f32(228f - 1112f)) + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(751f, 844f)))))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(224f, -1024f) * vec2<f32>(-2684f, -127f))))));
    let var_4 = abs(~(-62786i));
    var var_5 = 431f;
    var var_6 = -(~u_input.a ^ var_4);
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_1.x);
}

