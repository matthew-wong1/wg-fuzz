struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: Struct_1 = Struct_1(-1767f);

var<private> global2: array<vec3<f32>, 7>;

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<f32>(327f, -465f), 4481u, -1361f), Struct_2(vec2<f32>(1238f, -893f), 42862u, -189f), Struct_2(vec2<f32>(896f, -341f), 0u, -631f), Struct_2(vec2<f32>(1527f, -768f), 2770u, -665f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, -748f)) * 524f), global1.a, all(vec4<bool>(true, true, true, true)))) * _wgslsmith_div_f32(-648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_div_f32(-861f, global1.a)))));
    global3 = array<Struct_2, 4>();
    global3 = array<Struct_2, 4>();
    global3 = array<Struct_2, 4>();
    var var_1 = vec3<bool>(false, true, true);
    return var_1.zy;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    global3 = array<Struct_2, 4>();
    global3 = array<Struct_2, 4>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(-899f, _wgslsmith_f_op_f32(1000f * global1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1138f * 1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1279f))))), 0u, _wgslsmith_f_op_f32(arg_0.a * global1.a));
    var var_1 = global3[_wgslsmith_index_u32(1u, 4u)];
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    return vec3<u32>(~firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b, u_input.a.x), _wgslsmith_mult_u32(var_1.b, var_1.b))), _wgslsmith_mod_u32(1u, max(select(60912u >> (var_1.b % 32u), u_input.a.x, arg_1), 1u)), _wgslsmith_sub_u32(~(var_1.b & ~u_input.a.x), 1572u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_div_f32(-341f, -292f));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(global1.a);
    global1 = func_4(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(all(func_2()), arg_0.x > min(firstLeadingBit(0u), _wgslsmith_clamp_u32(0u, arg_0.x, u_input.a.x)), true, !select(true, true, true)), ~countOneBits(_wgslsmith_dot_vec3_u32(arg_0, func_3(var_0, false))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a * -642f), _wgslsmith_f_op_f32(round(global1.a))))), max(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), (15229u << (1u % 32u)) | u_input.a.x), ~(arg_0.x << (~1u % 32u))), global1.a);
    var var_2 = vec3<bool>(any(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true)))), !(59584u < ~(arg_0.x | var_1.b)), true);
    global3 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(ceil(var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f * _wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(518f * global1.a), all(global0[_wgslsmith_index_u32(4294967295u, 23u)]))) - _wgslsmith_f_op_f32(min(global1.a, global1.a)))) - vec2<f32>(global1.a, 472f));
    let var_1 = -vec2<i32>(u_input.b.x & ~1i, ~u_input.c);
    var var_2 = abs(vec4<u32>(~4294967295u, 1601u, 38909u, ~(~(~4294967295u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~u_input.a.zxx), vec2<i32>(~_wgslsmith_mult_i32(var_1.x, var_1.x), _wgslsmith_add_i32(u_input.c, ~42836i)))));
    global3 = array<Struct_2, 4>();
    let var_4 = abs(u_input.a);
    global2 = array<vec3<f32>, 7>();
    var var_5 = Struct_1(2344f);
    global0 = array<vec2<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(func_3(Struct_1(-407f), any(global0[_wgslsmith_index_u32(45198u, 23u)])).x, _wgslsmith_dot_vec3_u32(~vec3<u32>(18351u, 1u, var_2.x), ~vec3<u32>(36725u, var_2.x, 1u))));
}

