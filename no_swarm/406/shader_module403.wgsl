struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    global0 = array<vec2<bool>, 26>();
    return -208f;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<f32>) -> i32 {
    var var_0 = arg_2.x;
    let var_1 = arg_0.a ^ firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(arg_0.a.x, 1i), reverseBits(1i), u_input.c.x ^ u_input.b.x));
    let var_2 = firstTrailingBit(-32347i);
    global1 = Struct_2(true, arg_1.a.x);
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(~30595u, arg_0.c.x), arg_0.c.x, arg_0.c.x);
    return -_wgslsmith_sub_i32(-((var_2 & -32724i) >> (max(arg_0.c.x, arg_0.c.x) % 32u)), abs(-var_2));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_5 {
    var var_0 = -func_4(Struct_5(u_input.c, global0[_wgslsmith_index_u32(reverseBits(106009u << (u_input.d.x % 32u)), 26u)], vec3<u32>(abs(u_input.d.x), select(u_input.d.x, u_input.a.x, true), 76604u & u_input.a.x)), Struct_5(~firstTrailingBit(vec3<i32>(global1.b, u_input.b.x, 50191i)), vec2<bool>(arg_0, !global1.a), ~u_input.d.xww), vec3<f32>(1f, _wgslsmith_div_f32(-561f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<i32>(u_input.c.x, 38829i, -2147483647i, u_input.b.x), 262f, vec3<i32>(1i, -1458i, u_input.c.x), 1u), u_input.d.wx), vec4<u32>(20654u, u_input.a.x, 53304u, 24778u)))), _wgslsmith_f_op_f32(func_3(Struct_3(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], vec2<u32>(12461u, 1u)), vec4<u32>(85195u, 0u, 0u, u_input.d.x)))));
    var var_1 = ~(~(~2399u));
    var_1 = 45443u;
    global0 = array<vec2<bool>, 26>();
    var var_2 = vec4<f32>(929f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1275f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1046f * _wgslsmith_div_f32(137f, 106f)) - 581f))), -578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-899f, 147f)) * 178f)) - 1000f));
    return Struct_5(vec3<i32>(-2147483647i, 2147483647i, global1.b), select(select(vec2<bool>(u_input.d.x >= u_input.a.x, false), global0[_wgslsmith_index_u32(1u, 26u)], all(vec2<bool>(global1.a, true))), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x ^ 28879u), 26u)], select(select(vec2<bool>(false, global1.a), vec2<bool>(arg_0, false), vec2<bool>(arg_0, global1.a)), global0[_wgslsmith_index_u32(select(reverseBits(u_input.d.x), u_input.a.x, 969f < var_2.x), 26u)], vec2<bool>(all(vec3<bool>(arg_0, false, global1.a)), global1.a))), u_input.d.wxy);
}

fn func_5(arg_0: Struct_5) -> Struct_5 {
    var var_0 = arg_0.b.x;
    global3 = array<Struct_1, 28>();
    var var_1 = Struct_2(all(vec2<bool>(true, arg_0.b.x)), _wgslsmith_mod_i32(-1i, ~((arg_0.a.x ^ global1.b) & reverseBits(0i))));
    return func_2(true, u_input.b.ywx);
}

fn func_1() -> f32 {
    global1 = Struct_2(true, _wgslsmith_div_i32(global1.b, i32(-1i) * -u_input.b.x));
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = func_5(func_2(u_input.a.x >= 69463u, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global1.b, global1.b), -u_input.c.x, i32(-1i) * -1i), reverseBits(firstTrailingBit(vec3<i32>(global1.b, 2147483647i, -2147483647i))))));
    return 1205f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    global3 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<i32>(-10006i, 13870i, global1.b, u_input.b.x), 1734f, vec3<i32>(u_input.c.x, 21615i, 38467i), 49929u), _wgslsmith_clamp_vec2_u32(vec2<u32>(33795u, 0u), u_input.d.zw, vec2<u32>(u_input.d.x, u_input.d.x))), abs(vec4<u32>(u_input.d.x, 18153u, 1u, 0u)))) + -305f));
    global2 = array<vec3<bool>, 23>();
    global2 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-369f, 619f, -790f, -940f), vec4<f32>(355f, 761f, 775f, -322f), vec4<bool>(global1.a, false, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 1187f, -144f, -1873f) + vec4<f32>(815f, 210f, 912f, 510f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1497f, -599f, 223f, 1209f), vec4<f32>(356f, 1000f, -697f, -315f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, -807f, -1221f, -2220f) + vec4<f32>(415f, -1099f, 1658f, -1457f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(125f - -578f) - _wgslsmith_f_op_f32(f32(-1f) * -253f)), -118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(f32(-1f) * -1462f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1663f, 830f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(269f, 409f, 290f) - vec3<f32>(428f, 130f, -475f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, -1148f, 685f)), global2[_wgslsmith_index_u32(~u_input.d.x, 23u)])), all(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, false, false), true))))), ~(~(-vec3<i32>(43040i, 26902i, -12609i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-540f, -1551f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, 1379f) + vec2<f32>(927f, 1838f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-196f, -673f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, -599f)), global0[_wgslsmith_index_u32(~u_input.d.x, 26u)]))))));
}

