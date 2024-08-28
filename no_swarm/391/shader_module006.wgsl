struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global3: array<bool, 28> = array<bool, 28>(false, false, true, true, false, false, true, true, true, false, false, false, false, true, true, false, true, false, true, false, true, false, true, false, true, true, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(975f, global0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * -1478f))), -1065f))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yy, vec2<i32>(10022i, global0.b.x)), abs(global0.b)) << (abs(vec2<u32>(1u, 43900u)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(reverseBits(u_input.a.x), -1i))), ~(~(_wgslsmith_sub_u32(u_input.c.x, global0.c) & u_input.d.x)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(717f * -1596f), 759f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.a.x, -1496f))))), _wgslsmith_f_op_f32(1782f * global0.a.x)));
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1305f, global1.x, global0.a.x, 680f) - var_0.b) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-569f, var_0.b.x, -465f, -710f)))))), firstTrailingBit(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(1i, arg_0))), arg_2);
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-824f)) + _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), var_2.a)));
    var var_3 = ~_wgslsmith_mult_i32(arg_0, u_input.a.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xxz));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2().a) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(424f - -693f), -1005f, arg_3.x)), arg_0, !select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 28u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(29132u, 28u)], false, true, global3[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], true, false, global3[_wgslsmith_index_u32(global0.c, 28u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(36734u, 28u)], global3[_wgslsmith_index_u32(global0.c, 28u)], global3[_wgslsmith_index_u32(global0.c, 28u)])), true))), min(vec2<i32>(-2147483647i, -global0.b.x), u_input.a.xw << (~u_input.d % vec2<u32>(32u))), 4294967295u);
    global1 = _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_2.x, true, 1u)).x, _wgslsmith_f_op_f32(step(-956f, arg_3.x)), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = Struct_2(global1.x, vec4<f32>(arg_1.a, -1224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f + arg_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -354f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), var_0.a.x)), _wgslsmith_f_op_f32(sign(-1022f))));
    let var_2 = global3[_wgslsmith_index_u32(global0.c, 28u)];
    var var_3 = Struct_4(4294967295u);
    return arg_3.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(53561u, 28u)];
    var_0 = all(vec4<bool>(arg_1.x & !arg_1.x, arg_1.x || false, all(vec3<bool>(arg_1.x, any(arg_1.yz), 1u != global0.c)), u_input.a.x >= firstLeadingBit(-80787i)));
    global0 = func_2();
    var var_1 = Struct_4(firstLeadingBit(u_input.b.x));
    var_0 = !(!arg_1.x);
    return _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global0.a.x, global1.x, -699f) * global0.a))), Struct_2(-526f, _wgslsmith_f_op_vec4_f32(global0.a + arg_0)), u_input.a.xw, _wgslsmith_f_op_vec3_f32(func_3(i32(-1i) * -1i, true, global0.c)))), 197f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(725f * global1.x) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.a.x) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(420f, 1241f), _wgslsmith_f_op_f32(func_1(vec4<f32>(238f, -337f, global0.a.x, global1.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 28u)], global3[_wgslsmith_index_u32(global0.c, 28u)])))))), ~1u <= global0.c, !(_wgslsmith_sub_i32(global0.b.x, global0.b.x ^ global0.b.x) >= ~global0.b.x));
    var var_1 = Struct_4(57575u);
    var var_2 = false;
    let var_3 = min(41141i, 8915i) & global0.b.x;
    var var_4 = firstLeadingBit(u_input.d);
    var var_5 = Struct_3(func_2(), !var_0.yx, 4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 31182u), 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_1.a, _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 51138i), 1i, global0.b.x), _wgslsmith_sub_vec3_i32(u_input.a.zwy, ~max(u_input.a.xxw, u_input.a.yxy))));
}

