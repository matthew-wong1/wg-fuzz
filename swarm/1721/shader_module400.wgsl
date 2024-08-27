struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(145f, vec2<bool>(false, false), 442f);

var<private> global1: array<vec4<f32>, 24>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_2.a.x, vec2<bool>(true, true), arg_3.a);
    var var_1 = true;
    var var_2 = ~u_input.d;
    var var_3 = select(u_input.a.x, 2147483647i, !(any(vec4<bool>(false, false, global2.b.x, arg_3.b.x)) || (false && arg_0.b.x))) <= 0i;
    var_1 = arg_1.x;
    return _wgslsmith_f_op_f32(arg_2.a.x * 1000f);
}

fn func_2() -> vec2<bool> {
    let var_0 = select(true, global2.b.x, global3[_wgslsmith_index_u32(~u_input.c, 19u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * 867f);
    var var_2 = 76i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * var_1)) - _wgslsmith_f_op_f32(func_3(Struct_2(746f, global2.b, 2325f), select(vec4<bool>(global2.b.x, global0.b.x, true, false), vec4<bool>(true, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, false, true, global0.b.x)), Struct_1(vec2<f32>(-1000f, -1114f)), Struct_2(var_1, global2.b, global0.a))))));
    return !(!select(global2.b, select(!vec2<bool>(var_0, global2.b.x), select(vec2<bool>(global0.b.x, true), global0.b, false), u_input.c >= u_input.c), global0.b.x));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(-u_input.a.x, 1i, -u_input.d, _wgslsmith_mult_i32(u_input.a.x, u_input.d));
    let var_1 = firstLeadingBit(~(u_input.c & _wgslsmith_clamp_u32(u_input.c, 48172u, reverseBits(1563u))));
    global0 = Struct_2(1099f, func_2(), arg_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))))), vec2<bool>(any(vec4<bool>(true && global3[_wgslsmith_index_u32(var_1, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], false, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1178f), _wgslsmith_f_op_f32(floor(arg_0.a.x))), global2.c, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(global0.b.x, true, global2.b.x))))) * _wgslsmith_f_op_f32(-global0.c)));
    return Struct_2(146f, global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(291f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(-819f, !select(vec2<bool>(global2.b.x, global3[_wgslsmith_index_u32(u_input.c, 19u)]), global2.b, !(!vec2<bool>(global2.b.x, global2.b.x))), global0.a);
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), global0.c) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-874f, global0.c))))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-219f * global0.a)))) - 236f), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-878f, 2050f))) * global0.c) * 1557f));
    let var_1 = 0u;
    var var_2 = -2147483647i;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(floor(451f));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(965f, -1092f)))), select(select(!vec4<bool>(true, var_0.b.x, global0.b.x, global3[_wgslsmith_index_u32(24486u, 19u)]), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(var_1, 19u)], var_0.b.x), vec4<bool>(var_0.b.x, false, global3[_wgslsmith_index_u32(u_input.c, 19u)], false), false), vec4<bool>(false, var_0.b.x, global2.b.x, false)), !select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 19u)], true, global3[_wgslsmith_index_u32(0u, 19u)], true), vec4<bool>(false, false, true, true), true), global3[_wgslsmith_index_u32(0u, 19u)]), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, -1175f), vec2<f32>(207f, 138f), select(var_0.b, var_0.b, vec2<bool>(global2.b.x, false))))), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1203f, -2049f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(~u_input.c, u_input.c)), ~min(vec2<u32>(u_input.c, 0u) & vec2<u32>(1u, 4294967295u), vec2<u32>(37054u, 44870u))), firstLeadingBit(24991u), _wgslsmith_add_u32(~((u_input.c | u_input.c) << (~u_input.c % 32u)), (firstLeadingBit(var_1) & 1u) << (abs(~14595u) % 32u)));
}

