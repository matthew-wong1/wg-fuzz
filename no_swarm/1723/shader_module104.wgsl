struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true));

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(0i, 10590i, 2147483647i), vec3<i32>(-10833i, -25161i, i32(-2147483648)), vec3<i32>(1i, -1i, -1i), vec3<i32>(1i, 27587i, -26865i), vec3<i32>(-36934i, -31903i, -92254i), vec3<i32>(15329i, 1i, 0i), vec3<i32>(1i, 63414i, 1i), vec3<i32>(2147483647i, -17334i, -1i), vec3<i32>(1i, 2555i, -1i), vec3<i32>(-6701i, 1i, 0i), vec3<i32>(28327i, 74038i, -1i), vec3<i32>(27326i, 1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-15643i, 1i, -33855i), vec3<i32>(-28045i, -38886i, 17630i), vec3<i32>(73690i, i32(-2147483648), -11808i), vec3<i32>(26335i, 46546i, 28990i), vec3<i32>(0i, 2147483647i, 4837i), vec3<i32>(0i, 23907i, -1i), vec3<i32>(2147483647i, -10452i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, -11688i), vec3<i32>(-1i, 27111i, i32(-2147483648)));

var<private> global2: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_4) -> i32 {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_add_i32(abs(~u_input.a.x), _wgslsmith_add_i32(-2147483647i, -min(-1i, -18342i))), -1i);
    return arg_2.a.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = 14587u;
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_0), ~86272u), _wgslsmith_add_u32(~(~4294967295u), ~(~arg_0))), 22u)];
    global1 = array<vec3<i32>, 22>();
    return select(abs(select(vec4<i32>(25737i, var_1.x << (4831u % 32u), -7617i, -11213i), vec4<i32>(select(var_1.x, var_1.x, arg_1.x), ~2795i, firstLeadingBit(1i), 19938i), vec4<bool>(select(true, true, true), arg_1.x, arg_1.x, true))), select(-(firstLeadingBit(vec4<i32>(-4238i, -22019i, 36632i, u_input.a.x)) & vec4<i32>(u_input.a.x, var_1.x, -2147483647i, 5110i)), vec4<i32>(2147483647i, ~0i, -69937i, _wgslsmith_sub_i32(func_3(vec2<f32>(880f, 214f), vec3<f32>(-1228f, 577f, -2061f), Struct_5(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 12272i), vec3<f32>(-745f, 1268f, 917f)), Struct_4(Struct_2(Struct_1(arg_0)), vec4<u32>(u_input.b.x, 26371u, var_0, var_0), u_input.b.yxw, global2[_wgslsmith_index_u32(var_0, 25u)], vec4<u32>(u_input.b.x, 0u, 50091u, 47872u))), _wgslsmith_add_i32(u_input.a.x, 1463i))), true != arg_1.x), true);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = Struct_5(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~(-vec4<i32>(1424i, -2147483647i, 7757i, u_input.a.x))), func_2(abs(reverseBits(0u)), vec2<bool>(any(vec2<bool>(false, false)), true)), vec4<i32>(1i, 34299i, abs(2147483647i), u_input.a.x) ^ -select(vec4<i32>(u_input.a.x, -2804i, 10843i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(990f)), _wgslsmith_f_op_f32(-696f * _wgslsmith_div_f32(-685f, -264f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-804f * -1169f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -690f, -514f), vec3<f32>(661f, 636f, -1109f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -968f, 1000f))))));
    var var_1 = arg_1 & (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x))));
    var_1 = false;
    global2 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(845f + _wgslsmith_f_op_f32(min(1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) + -1070f))))));
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(0u, 25u)], true)) * 742f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(865f, 1483f)), _wgslsmith_f_op_f32(select(-181f, _wgslsmith_f_op_f32(min(-342f, -511f)), false)))));
    let var_2 = !vec4<bool>(false, select(false, (u_input.a.x | 0i) <= (u_input.a.x & 1i), true), true, false);
    global1 = array<vec3<i32>, 22>();
    let var_3 = Struct_3(Struct_2(Struct_1(~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(abs(var_3.a.a.a), 4294967295u), _wgslsmith_mod_u32(var_3.a.a.a, 112293u), 4294967295u, 5426u));
}

