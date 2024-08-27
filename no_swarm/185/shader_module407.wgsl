struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, -1575i, true, false, 23783u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = Struct_2(Struct_1(u_input.a, _wgslsmith_div_i32(global1.a.b, _wgslsmith_mod_i32(-arg_0.b, _wgslsmith_mult_i32(-31838i, global0.x))), global1.a.d, global1.a.d, arg_0.e));
    var var_0 = reverseBits(firstTrailingBit(~(~(vec2<u32>(arg_0.a, 8657u) & vec2<u32>(4294967295u, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, 155f)));
    global1 = Struct_2(Struct_1(~_wgslsmith_mult_u32(abs(134350u), select(global1.a.e, 4294967295u, arg_0.c)), abs(~global1.a.b) | -(~global1.a.b), global1.a.c, false, _wgslsmith_add_u32(arg_0.a << ((arg_0.a >> (34382u % 32u)) % 32u), ~(~79372u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, -338f, var_1, 1442f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, 735f, var_1, var_1)))))));
    return any(select(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.c || arg_0.c), !select(vec3<bool>(false, true, false), vec3<bool>(arg_0.d, global1.a.d, false), true), global1.a.d), vec3<bool>(false, true, any(select(vec2<bool>(true, false), vec2<bool>(false, arg_0.c), false))), all(!select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, true), true))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    global0 = arg_1;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(0u, global1.a.a), global0.x & -global1.a.b, true, !func_3(Struct_1(1u, global1.a.b, global1.a.d, arg_2.x, global1.a.e), arg_1.x), global1.a.a));
    var var_1 = global1.a;
    var var_2 = var_0.a;
    let var_3 = Struct_2(Struct_1(~global1.a.e | (_wgslsmith_add_u32(u_input.a, 56542u) >> (~1u % 32u)), abs(arg_1.x), false, 1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * 186f), _wgslsmith_add_u32(max(4294967295u, var_0.a.a), ~_wgslsmith_div_u32(var_2.a, 0u))));
    return ~39457u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_1(global1.a.a, -197i, arg_0.x, !((-global1.a.b > _wgslsmith_sub_i32(-1i, -49624i)) != false), u_input.a);
    global0 = vec2<i32>(0i >> (u_input.a % 32u), 11380i);
    global1 = Struct_2(var_0);
    let var_1 = Struct_2(Struct_1(global1.a.e, global0.x ^ -42322i, arg_1.x, false, 0u));
    var var_2 = vec4<f32>(-1241f, -1234f, 1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1495f) + 561f)))));
    return _wgslsmith_div_u32(13391u, func_2(!(!(!arg_1.x)), -reverseBits(vec2<i32>(2147483647i, global1.a.b)), vec4<bool>(all(vec4<bool>(var_1.a.d, arg_1.x, false, false)), false, true, false), _wgslsmith_f_op_f32(var_2.x * 776f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_1(!vec2<bool>(global1.a.c, global1.a.c), vec3<bool>(true, global1.a.c, false))) ^ _wgslsmith_add_u32(~4294967295u, ~global1.a.a), firstTrailingBit(4294967295u));
}

