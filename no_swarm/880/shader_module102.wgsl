struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(7931i, 0i, -25889i, 0i, -1i, -24477i, 30328i, 38864i, -66013i, -1i, 1i);

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_5(arg_0, arg_0 || arg_0, arg_0, Struct_1(global1.a));
    global0 = array<i32, 11>();
    global2 = array<vec3<bool>, 15>();
    let var_1 = vec2<u32>(~reverseBits(37801u), ~4294967295u);
    global0 = array<i32, 11>();
    return Struct_1(_wgslsmith_div_vec4_f32(global1.a, var_0.d.a));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_1 {
    global1 = func_2(!(!arg_0.a.e));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1454f - _wgslsmith_f_op_f32(step(-1328f, -389f))), 871f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.x)) * arg_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + global1.a.x) * _wgslsmith_f_op_f32(-1000f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), 2340f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = 1i;
    global1 = Struct_1(vec4<f32>(722f, _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_3.a.a.a.x, global1.a.x));
    global0 = array<i32, 11>();
    var var_1 = 17672i;
    let var_2 = ~(-firstLeadingBit(0i));
    return !(!select(!(!vec4<bool>(true, arg_3.a.e, true, arg_3.a.e)), select(select(vec4<bool>(true, false, arg_3.a.e, false), vec4<bool>(arg_3.a.e, arg_3.a.e, arg_3.a.b.x, arg_3.a.e), vec4<bool>(arg_3.a.b.x, arg_3.a.b.x, true, true)), select(vec4<bool>(false, false, arg_3.a.e, true), vec4<bool>(arg_3.a.b.x, false, arg_3.a.b.x, arg_3.a.e), vec4<bool>(true, true, true, arg_3.a.e)), arg_3.a.b.x), arg_3.a.b.x));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = !func_4(Struct_2(vec2<i32>(91376i, -16808i), func_2(global0[_wgslsmith_index_u32(u_input.d.x, 11u)] > global0[_wgslsmith_index_u32(u_input.a, 11u)])), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x)), global1.a.x, -630f), u_input.c.x, Struct_4(Struct_3(func_3(Struct_4(Struct_3(Struct_1(vec4<f32>(1341f, global1.a.x, -396f, arg_0.a.x)), global2[_wgslsmith_index_u32(58868u, 15u)], arg_0.a.x, arg_0, false)), u_input.b), global2[_wgslsmith_index_u32(31341u, 15u)], -826f, arg_0, true)));
    global0 = array<i32, 11>();
    return Struct_2(firstLeadingBit(~select(-vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), !var_0.wx)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), -948f, _wgslsmith_f_op_f32(ceil(global1.a.x))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = select(~countOneBits((u_input.d.yx << (u_input.b.xx % vec2<u32>(32u))) << (u_input.d.xx % vec2<u32>(32u))), u_input.c, !(!vec2<bool>(u_input.b.x >= u_input.b.x, true)));
    let var_1 = Struct_5(max(12i, _wgslsmith_add_i32(~1i, firstLeadingBit(arg_1.a.x))) < 1i, all(global2[_wgslsmith_index_u32(~19577u, 15u)]), all(vec2<bool>(all(vec2<bool>(false, false)), arg_1.b.a.x == -1978f)) && any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_1.b.a))))));
    let var_2 = var_1.a;
    global2 = array<vec3<bool>, 15>();
    global0 = array<i32, 11>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-500f, _wgslsmith_f_op_f32(-1804f - global1.a.x), -1117f, var_1.d.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(380f, global1.a.x, 1531f, 306f) + vec4<f32>(-754f, -691f, 2032f, 2009f)), vec4<bool>(true, true, true, true)))))), !(!(!select(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(61562u, 15u)], vec3<bool>(true, false, false)))), 817f, func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1018f))), func_1(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(670f, global1.a.x, -291f, global1.a.x), vec4<f32>(1385f, global1.a.x, global1.a.x, global1.a.x))))), true);
    var var_1 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, -1194f) + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(675f * _wgslsmith_f_op_f32(1785f + -778f)))), 448f, ~countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 38444u), _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 72851u))), ~u_input.d, _wgslsmith_f_op_vec3_f32(select(var_0.a.a.zzy, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_div_f32(142f, var_0.a.a.x), global1.a.x) * _wgslsmith_f_op_vec3_f32(var_0.d.a.wxx - _wgslsmith_f_op_vec3_f32(-global1.a.xxw))), vec3<bool>(true, true, true))));
}

