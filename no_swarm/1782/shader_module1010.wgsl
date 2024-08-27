struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(784i);

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: vec3<f32> = vec3<f32>(-1173f, -1598f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f + -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x - global2.x))), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(global2.x * arg_0));
    var var_0 = Struct_1(-70052i);
    var var_1 = !(!select(vec3<bool>(true, 0u <= u_input.a, all(global1[_wgslsmith_index_u32(u_input.a, 22u)])), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global2.yz, vec2<f32>(_wgslsmith_f_op_f32(-global2.x), 998f))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), 974f);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> vec2<f32> {
    global1 = array<vec2<bool>, 22>();
    var var_0 = arg_0;
    global1 = array<vec2<bool>, 22>();
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -413f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 1126f) * _wgslsmith_f_op_f32(sign(-257f)))), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global2.x, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 1u)), _wgslsmith_sub_i32(arg_2, 1i))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = -firstLeadingBit(-5159i);
    var var_1 = false != !(!(any(global1[_wgslsmith_index_u32(u_input.a, 22u)]) | false));
    let var_2 = _wgslsmith_div_vec2_f32(global2.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.xz))) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(-43605i), u_input.a, _wgslsmith_mult_i32(~global0.a, global0.a), global2.yx))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1570f))), global2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x - 1247f), _wgslsmith_div_f32(-359f, global2.x), -815f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x) - global2.x), var_2.x, var_2.x));
    let var_3 = Struct_1(var_0);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, global2.x, -1694f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, 1693f, 850f)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 382f, 1977f), vec3<f32>(global2.x, global2.x, global2.x)))))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(894f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-1225f + _wgslsmith_f_op_f32(sign(-334f))), _wgslsmith_div_f32(global2.x, global2.x)))));
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, -1i), global0.a), firstTrailingBit(vec2<i32>(global0.a, -37143i)));
    global1 = array<vec2<bool>, 22>();
    var var_1 = func_1();
    let var_2 = vec2<u32>(11783u, 24840u);
    var var_3 = Struct_1(select(_wgslsmith_sub_i32(max(~16133i, ~var_1.a), 29547i), _wgslsmith_mult_i32(firstLeadingBit(var_0.x), 0i), any(vec3<bool>(-1i < var_1.a, true, true))));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1955f, 871f, global2.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-611f, global2.x, 724f), vec3<f32>(-884f, global2.x, -2079f), vec3<bool>(false, true, false))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(91237i), u_input.a, 0i, global2.zy)).x - -176f), _wgslsmith_f_op_f32(-global2.x)), false)), _wgslsmith_add_vec3_u32(abs(~vec3<u32>(16983u, 1u, 80599u)) & (vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_2.x, var_2.x, u_input.a)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_2.x, var_2.x, 0u) ^ vec3<u32>(var_2.x, var_2.x, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_2.x, u_input.a), vec3<u32>(var_2.x, 72168u, u_input.a) ^ vec3<u32>(1695u, 0u, 4294967295u)), vec3<u32>(~u_input.a, min(29280u, 70953u), ~14697u))), vec2<u32>(4294967295u, 67648u), _wgslsmith_add_vec4_i32(vec4<i32>(~(~1i), -2147483647i, _wgslsmith_add_i32(var_1.a, min(var_1.a, var_3.a)), 1i | global0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, var_1.a, global0.a, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, 7484i, -16999i, -35029i), vec4<i32>(0i, global0.a, -2949i, var_0.x)), ~vec4<i32>(44364i, global0.a, 24920i, -2147483647i)) | vec4<i32>(var_3.a, global0.a, -var_0.x, -2147483647i)));
}

