struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_1, 9>();
    var var_0 = u_input.c.wy;
    let var_1 = global0[_wgslsmith_index_u32(1u, 9u)];
    return select(vec2<bool>(var_1.a.x, true & var_1.a.x), select(vec2<bool>(false, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), select(select(!vec2<bool>(var_1.a.x, true), vec2<bool>(var_1.a.x, false), true), select(!vec2<bool>(false, var_1.a.x), select(var_1.a, vec2<bool>(true, var_1.a.x), var_1.a.x), true), all(select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), false))), var_1.a), var_1.a);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(~(u_input.c.x >> (~4294967295u % 32u)), max(_wgslsmith_clamp_u32(1u, ~4294967295u, 1u), u_input.c.x)), ~u_input.c.x >> (4831u % 32u), countOneBits(~(62337u ^ _wgslsmith_add_u32(u_input.c.x, u_input.c.x))));
    let var_1 = Struct_1(select(func_2(), arg_0.zx, arg_0.zx), vec3<f32>(1889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2124f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-550f * 1726f), _wgslsmith_f_op_f32(f32(-1f) * -483f))), -735f));
    let var_2 = true;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(round(-207f));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return Struct_1(func_2(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f * -781f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), -2147483647i)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-932f * 148f), _wgslsmith_f_op_f32(floor(-360f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a, 1i);
    var var_1 = vec3<bool>((u_input.c.x ^ ~u_input.c.x) == firstLeadingBit(1u), (_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_clamp_u32(arg_2.x, 1700u, 1923u)) ^ firstLeadingBit(29170u)) > countOneBits(~(~1u)), all(arg_1.a));
    let var_2 = reverseBits(-8878i);
    global0 = array<Struct_1, 9>();
    var_1 = vec3<bool>(true, arg_0.a.x, var_1.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = 1f;
    var var_1 = func_4(global0[_wgslsmith_index_u32(1u, 9u)], func_1(), u_input.c);
    var_1 = Struct_1(var_1.a, var_1.b);
    global0 = array<Struct_1, 9>();
    let var_2 = !select(var_1.a, var_1.a, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -1789f, -124f, vec4<u32>(u_input.c.x << (0u % 32u), ~(~u_input.c.x), ~u_input.c.x, abs(firstTrailingBit(4294967295u))), 6049u);
}

