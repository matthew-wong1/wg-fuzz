struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_i32(22933i, u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))) + -2470f);
    var var_2 = arg_0;
    var var_3 = all(select(!(!select(vec4<bool>(arg_0.b, true, var_2.b, var_2.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), false)), vec4<bool>(true != !var_2.b, any(!vec2<bool>(true, arg_0.b)), any(select(vec3<bool>(arg_0.b, true, var_2.b), vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.b, var_2.b, var_2.b))), all(select(vec4<bool>(var_2.b, true, var_2.b, var_2.b), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))), select(select(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, var_2.b, true, arg_0.b), !vec4<bool>(arg_0.b, true, var_2.b, arg_0.b)), vec4<bool>(arg_0.b, all(vec3<bool>(false, true, arg_0.b)), var_2.b, all(vec4<bool>(var_2.b, false, true, var_2.b))), vec4<bool>(false, all(vec3<bool>(false, false, false)), true, arg_0.b))));
    var var_4 = arg_0;
    return vec3<u32>(4294967295u, 30519u, 4294967295u);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = ~48807u;
    var var_1 = ~_wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_div_u32(~58052u, reverseBits(18235u)), 4294967295u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, 997f, 1000f, 1715f))))) * vec4<f32>(-1892f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1551f * 1568f), -1121f)), 1f, _wgslsmith_f_op_f32(-1549f - _wgslsmith_f_op_f32(-1404f + -1834f)))), false);
    let var_3 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -2062f) > _wgslsmith_f_op_f32(var_2.a.x * -1348f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1229f, _wgslsmith_f_op_f32(floor(-357f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f * _wgslsmith_div_f32(-457f, var_2.a.x)))));
    var var_4 = var_2.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, var_2.a.x, 125f, var_2.a.x), vec4<f32>(var_2.a.x, -474f, var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, var_2.a.x, -890f, -632f), var_2.a)))))), var_2.b && false);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(!vec4<bool>(false, false, false, arg_3.b)).a - vec4<f32>(-477f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-324f)), arg_3.a.x, arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1)) * _wgslsmith_f_op_vec4_f32(-arg_0.a))));
    let var_1 = !select(select(!select(vec4<bool>(false, arg_0.b, true, true), vec4<bool>(true, arg_3.b, arg_0.b, arg_3.b), vec4<bool>(true, false, false, arg_3.b)), !vec4<bool>(arg_0.b, true, false, false), !select(vec4<bool>(true, false, arg_3.b, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(!arg_0.b, false, _wgslsmith_f_op_f32(ceil(arg_1)) > -531f, false), !(false || arg_3.b));
    let var_2 = arg_0;
    global0 = array<vec2<bool>, 11>();
    return func_2(vec4<bool>(!(!arg_0.b || arg_3.b), all(var_1.wxx), -158f < _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-714f, 460f))), !all(var_1.wyw) & !var_1.x));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global0 = array<vec2<bool>, 11>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -379f, -549f, -699f)))), !(any(vec2<bool>(arg_0, arg_0)) && arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-3369f, -378f), _wgslsmith_f_op_f32(f32(-1f) * -1552f), true))) - _wgslsmith_f_op_f32(ceil(341f))), u_input.a, func_2(!(!vec4<bool>(arg_0, arg_0, true, false))));
    global0 = array<vec2<bool>, 11>();
    let var_1 = u_input.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 11>();
    var var_0 = vec4<bool>(all(vec2<bool>(max(15757i, u_input.d) > u_input.d, true)), !(any(!global0[_wgslsmith_index_u32(u_input.a, 11u)]) & func_1(true, 1u)), true, (0u >= abs(firstLeadingBit(u_input.a))) && func_4(func_2(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2186f - 310f), _wgslsmith_f_op_f32(-884f - -481f), all(vec3<bool>(true, true, true)))), 1u, Struct_1(vec4<f32>(869f, 1593f, 522f, -343f), true)).b);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1000f), vec2<f32>(1334f, 1100f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1335f, 168f) - vec2<f32>(-221f, -403f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2994f), -517f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(select(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, false, true), false), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), u_input.a <= 81008u)).a.xwx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, -2769f, var_1.x))))), func_4(func_4(Struct_1(vec4<f32>(var_1.x, -838f, var_1.x, var_1.x), any(vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(237f - -1427f), _wgslsmith_div_u32(reverseBits(63073u), 4294967295u), func_4(func_2(vec4<bool>(false, false, false, var_0.x)), _wgslsmith_f_op_f32(-1194f - var_1.x), 18618u >> (u_input.a % 32u), Struct_1(vec4<f32>(618f, -2057f, var_1.x, var_1.x), true))), var_1.x, 4610u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), func_2(vec4<bool>(true, var_0.x, false, false)).a.x, func_2(vec4<bool>(false, false, false, false)).a.x, _wgslsmith_f_op_f32(var_1.x - -419f)), !(4561u <= u_input.a))).a.yzz));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_2.x) - -243f) - var_1.x)));
    var var_4 = -(~(-(~(-2147483647i))));
    var_0 = select(select(!select(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.x, false, true, var_0.x), true)), vec4<bool>(select(all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x, func_2(vec4<bool>(true, var_0.x, var_0.x, false)).b), func_1(false, ~u_input.a), false, true)), !(!select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, true, true, var_0.x), false), !vec4<bool>(true, var_0.x, false, true), !var_0.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1 * var_2.xy))) * func_4(func_4(Struct_1(vec4<f32>(-555f, -129f, -1049f, var_3), var_0.x), var_1.x, 32807u, Struct_1(vec4<f32>(var_1.x, var_3, var_1.x, -376f), false)), var_2.x, 27614u, Struct_1(vec4<f32>(var_3, -1530f, -541f, var_2.x), var_0.x)).a.yy) * vec2<f32>(var_2.x, -2429f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -355f, -432f), var_2, var_0.xww)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(819f, var_1.x, -415f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2168f, var_3, var_3) * vec3<f32>(var_3, var_2.x, 1140f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_3, var_1.x), -554f, var_3) - vec3<f32>(_wgslsmith_div_f32(var_2.x, -969f), _wgslsmith_f_op_f32(249f * -425f), _wgslsmith_f_op_f32(floor(-198f)))), select(!(!var_0.yxz), var_0.xzw, var_0.x))), _wgslsmith_div_f32(var_3, 767f), vec2<i32>(2147483647i, min(-_wgslsmith_div_i32(u_input.d, 62483i), u_input.c.x)));
}

