struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<vec3<i32>, 17>();
    var var_0 = select(arg_2.c.x, any(arg_2.c.zy), arg_2.a.x);
    let var_1 = ~_wgslsmith_div_i32(0i, -1850i);
    var var_2 = ~(-abs(global0[_wgslsmith_index_u32(4294967295u, 17u)]));
    global0 = array<vec3<i32>, 17>();
    return vec3<i32>(2147483647i, 17431i, countOneBits(abs(_wgslsmith_mod_i32(firstTrailingBit(10833i), _wgslsmith_mult_i32(var_1, u_input.a)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    global0 = array<vec3<i32>, 17>();
    var var_0 = arg_1.a;
    let var_1 = !(!(!arg_1.c.a.x));
    let var_2 = var_0.a;
    var var_3 = var_0.a.b;
    return arg_1.b.x;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~u_input.c.zy), abs(u_input.c.zw));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_1 = Struct_2(Struct_1(!(!(!vec3<bool>(arg_0, arg_0, false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2223f) * _wgslsmith_f_op_f32(1276f - -1379f)), 1150f), !vec3<bool>(true == arg_0, !arg_0, u_input.c.x >= u_input.c.x)));
    return Struct_3(Struct_2(var_1.a), vec2<bool>(func_4(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 8234i, -7808i, 15870i), Struct_3(Struct_2(var_1.a), vec2<bool>(false, var_1.a.a.x), var_1.a, var_1, _wgslsmith_f_op_f32(var_1.a.b.x - var_1.a.b.x)), var_1.a, func_3(~u_input.b, u_input.b, Struct_1(var_1.a.c, var_1.a.b, var_1.a.a))), var_1.a.c.x), var_1.a, Struct_2(var_1.a), -997f);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = func_2(false).a;
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_1 = arg_1.a;
    let var_2 = arg_2;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.a.b.xx * _wgslsmith_f_op_vec2_f32(-var_0.a.b.zy)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.b.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.b.wx - var_1.a.b.wx), arg_1.a.a.b.xz) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-300f, -1509f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.a.b.x, -559f)))))), func_2(!var_1.a.a.x).a.a.c.zx)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -(~u_input.b.x), reverseBits(u_input.b.x)), select(global0[_wgslsmith_index_u32(~13503u, 17u)], vec3<i32>(u_input.b.x >> ((u_input.c.x >> (1u % 32u)) % 32u), u_input.a, -abs(u_input.b.x)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)) & true));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(162f, func_2(all(vec2<bool>(false, any(vec2<bool>(true, true))))), vec4<bool>(true, true, true, true), func_2(any(vec4<bool>(true, true, true, true))).d));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(func_2(true).a.a.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, 1000f) + vec2<f32>(var_1.x, 353f))), vec2<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, 297f)))) + vec2<f32>(var_1.x, var_1.x)), vec2<bool>(true, true)));
    return !any(vec2<bool>((u_input.a == 2147483647i) == false, all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(u_input.a == u_input.a, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(func_1(), func_1(), true), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, -1290f, -141f, -881f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, 216f, 1147f, 125f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 418f, 1000f, 1000f) * vec4<f32>(111f, 622f, 556f, 190f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, 1707f, 361f, 666f) - vec4<f32>(1603f, 1506f, -788f, -553f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-1129f)), -1000f, 2056f, _wgslsmith_f_op_f32(f32(-1f) * -1077f))), select(select(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true), func_2(true).c.c, false), vec3<bool>(true, true, true), !(true || all(vec3<bool>(true, false, true)))));
    global0 = array<vec3<i32>, 17>();
    let var_1 = Struct_2(var_0);
    global0 = array<vec3<i32>, 17>();
    let var_2 = var_1;
    var var_3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_add_vec3_u32(u_input.c.yzy, u_input.c.zyx), 85133u);
}

