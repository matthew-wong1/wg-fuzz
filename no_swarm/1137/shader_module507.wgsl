struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(58456u, 0u)), Struct_1(vec2<u32>(4837u, 52192u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 7603u)), Struct_1(vec2<u32>(6957u, 0u)), Struct_1(vec2<u32>(23388u, 0u)), Struct_1(vec2<u32>(1u, 4343u)), Struct_1(vec2<u32>(4968u, 47195u)), Struct_1(vec2<u32>(49376u, 4294967295u)), Struct_1(vec2<u32>(0u, 62166u)), Struct_1(vec2<u32>(138736u, 1u)), Struct_1(vec2<u32>(84013u, 4294967295u)), Struct_1(vec2<u32>(24897u, 84852u)), Struct_1(vec2<u32>(67206u, 4294967295u)), Struct_1(vec2<u32>(1u, 20532u)), Struct_1(vec2<u32>(83289u, 39887u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1u, 1u)));

var<private> global4: f32 = -1288f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_1(min(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(21170u, u_input.c)), 4294967295u), vec2<u32>(1u, global2.x)));
    let var_1 = !arg_2.x;
    let var_2 = Struct_1(~(~vec2<u32>(4294967295u, 1u)));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1707f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-813f))), _wgslsmith_f_op_f32(f32(-1f) * -563f)))));
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: f32) -> vec2<i32> {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, ~51725u, 42951u), ~global2.x, max(u_input.c, 97434u) << (1u % 32u)), 19u)];
    let var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1f) * -2950f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(min(-1562f, -1000f)), true)))), 425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -780f) * _wgslsmith_f_op_f32(-arg_3)), -1680f);
    var var_2 = ~_wgslsmith_mult_i32(-_wgslsmith_mod_i32(u_input.a, 32013i), firstLeadingBit(~2147483647i));
    var var_3 = global3[_wgslsmith_index_u32(global2.x, 19u)];
    return vec2<i32>(u_input.a, -_wgslsmith_add_i32(-2147483647i, u_input.a));
}

fn func_3() -> f32 {
    var var_0 = select(select(vec2<bool>(false, ~0u >= u_input.c), !vec2<bool>(true, global1.x), any(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, false)), !vec3<bool>(global1.x, false, global1.x), !global1.x))), vec2<bool>(global1.x, global1.x), global1.x);
    var var_1 = global3[_wgslsmith_index_u32(global0.a.x, 19u)];
    let var_2 = global2.x;
    global2 = u_input.e;
    var_0 = select(vec2<bool>(false, all(select(!vec4<bool>(global1.x, global1.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, global1.x, false, global1.x), false)))), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(826f, -1890f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 19>();
    var var_0 = global3[_wgslsmith_index_u32(global2.x, 19u)];
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = func_2(vec4<bool>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-30016i, u_input.a), func_1(u_input.a, vec4<u32>(var_0.a.x, global0.a.x, u_input.b, 1u), vec3<bool>(global1.x, false, global1.x))) <= ~1i, global1.x, all(!select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true))), true), global1.x, !(!(max(global0.a.x, global2.x) != _wgslsmith_add_u32(16828u, 29020u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-187f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(436f, 1444f, global1.x))))));
    global2 = firstLeadingBit(abs(u_input.e));
    let var_2 = vec2<f32>(2064f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f))));
    global4 = _wgslsmith_f_op_f32(func_3());
    global3 = array<Struct_1, 19>();
    global1 = vec2<bool>(global1.x, all(!vec3<bool>(global1.x, true, global1.x)) || global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(348f);
}

