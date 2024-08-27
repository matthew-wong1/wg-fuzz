struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: Struct_2 = Struct_2(-626f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(global3.a)));
    var var_1 = select(vec2<bool>(true, _wgslsmith_f_op_f32(-1100f - var_0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), vec2<bool>(!any(global0[_wgslsmith_index_u32(countOneBits(u_input.c), 8u)]), all(vec2<bool>(select(false, false, true), any(vec4<bool>(true, false, false, true))))), true);
    let var_2 = Struct_1(firstLeadingBit(u_input.c) < _wgslsmith_add_u32(4294967295u, ~u_input.c & firstLeadingBit(44837u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f * global3.a)) * _wgslsmith_f_op_f32(f32(-1f) * -544f)), var_0.a, u_input.a << (u_input.c % 32u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = Struct_1(var_1.x, 1677f, _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1635f), 332f))), -11223i);
    return -countOneBits(u_input.b.xx);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_3(global3.a);
    var var_1 = Struct_1(!(~(~56508u) <= _wgslsmith_mult_u32(1u, max(u_input.c, 133886u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_f_op_f32(global3.a - arg_1.a), u_input.d.x);
    let var_2 = 1913i;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(129f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1.a, 1411f, var_1.a)), _wgslsmith_f_op_f32(step(arg_0, var_1.b)))))), _wgslsmith_f_op_f32(select(-214f, global3.a, !var_1.a)), reverseBits(~var_0.x));
    var var_4 = abs(_wgslsmith_div_u32(u_input.c, _wgslsmith_clamp_u32(~22245u, 2847u, u_input.c)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(281f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(select(1397f, _wgslsmith_div_f32(global3.a, -346f), true && arg_1.a)))));
    let var_0 = u_input.d.yy;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1049f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + -790f))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(abs(-238f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1644f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) * 1000f))));
    var var_3 = Struct_2(arg_1.c);
    return func_2(func_2(global3.a, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f))).a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -622f), 809f))), Struct_2(var_3.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(all(global0[_wgslsmith_index_u32(u_input.c, 8u)]) == false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1420f - _wgslsmith_f_op_f32(arg_2.a + arg_2.a)) + -466f) * 2151f), 1129f, _wgslsmith_mod_i32(select(u_input.a, 6122i, true), 1i));
    global1 = !var_0.a;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1074f);
    let var_2 = var_0.a;
    global1 = all(!vec2<bool>(false, select(all(global0[_wgslsmith_index_u32(0u, 8u)]), true, false && var_2)));
    return -560f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), vec2<bool>(false, false), vec2<bool>(_wgslsmith_f_op_f32(max(1000f, global3.a)) == _wgslsmith_div_f32(global3.a, 190f), all(vec2<bool>(false, false)) | any(vec2<bool>(false, false))));
    let var_1 = true;
    let var_2 = 0u;
    global2 = any(vec4<bool>(true, true, !var_0.x, true));
    let var_3 = global3.a;
    global3 = Struct_2(-1444f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yz, 1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1747f, global3.a, 1000f, 341f) * vec4<f32>(1648f, global3.a, global3.a, global3.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, global3.a, global3.a, global3.a)))), vec4<f32>(-973f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec2_i32(u_input.d.xy, vec2<i32>(u_input.e.x, u_input.b.x)), u_input.e, func_1(vec2<bool>(false, var_1), Struct_1(false, global3.a, 624f, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) * _wgslsmith_f_op_f32(-257f + 2940f))))));
}

