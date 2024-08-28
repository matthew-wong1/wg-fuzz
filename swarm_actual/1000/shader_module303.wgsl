struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false));

var<private> global1: array<f32, 1>;

var<private> global2: array<f32, 15> = array<f32, 15>(1000f, -1521f, 262f, -2457f, 781f, -683f, -792f, 1000f, -1115f, 1070f, 550f, 1305f, -350f, -466f, 185f);

var<private> global3: Struct_3;

var<private> global4: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = max(52399u, 1u);
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.x * 1564f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global4.x)))), arg_0), -1478f, global2[_wgslsmith_index_u32(1u, 15u)]));
    var var_1 = ~max(1u | ~_wgslsmith_mult_u32(var_0, u_input.a.x), 4294967295u);
    global0 = array<Struct_3, 14>();
    global3 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 14u)];
    return global4.x;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global4.x, 0i)), _wgslsmith_f_op_f32(-443f + 2075f))));
    var var_1 = select(true, any(!select(vec4<bool>(global3.a, false, true, global3.a), vec4<bool>(true, true, true, global3.a), vec4<bool>(global3.a, false, global3.a, false))), !any(vec4<bool>(global3.a, global3.a, true, false))) | true;
    global1 = array<f32, 1>();
    var_1 = !(!(var_0 != _wgslsmith_div_f32(-386f, var_0)));
    global1 = array<f32, 1>();
    return Struct_3(all(!(!select(vec3<bool>(true, global3.a, true), vec3<bool>(false, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(select(select(vec2<bool>(global3.a, true), select(vec2<bool>(false, false), select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a), global3.a), !vec2<bool>(global3.a, global3.a)), global3.a), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)] != _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), global3.a), true), u_input.a, Struct_1(reverseBits(-1i)));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    global0 = array<Struct_3, 14>();
    global3 = func_1();
    global1 = array<f32, 1>();
    return ~31319i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    let var_2 = Struct_2(!vec2<bool>(true & (true && var_0.a), false), vec4<u32>(~_wgslsmith_div_u32(~u_input.a.x, 0u | u_input.a.x), ~u_input.a.x, ~u_input.a.x, u_input.a.x), Struct_1(countOneBits(1i)));
    var var_3 = func_3() == 0i;
    global3 = func_1();
    var var_4 = 1078f;
    let var_5 = Struct_1(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(18200i, 73i, -2147483647i) >> (u_input.a.x % 32u)), abs(-2147483647i)));
    var_1 = global0[_wgslsmith_index_u32(1u, 14u)];
    let var_6 = select(select(select(vec2<bool>(true, true), var_2.a, vec2<bool>(select(var_2.a.x, var_0.a, true), true)), vec2<bool>(true, true), var_2.a), var_2.a, !vec2<bool>(true, global3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(~46071u, var_2.b.x), u_input.a.wy));
}

