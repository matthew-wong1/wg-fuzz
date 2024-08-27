struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    global0 = array<Struct_1, 4>();
    let var_1 = global0[_wgslsmith_index_u32(abs(reverseBits(6467u)), 4u)];
    var var_2 = _wgslsmith_add_u32(u_input.a, 4294967295u);
    var_2 = 0u;
    return Struct_1(var_1.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(1000f);
    var_0 = global0[_wgslsmith_index_u32(reverseBits(1u), 4u)];
    let var_1 = true;
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return Struct_1(96477i);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1550f)))), 640f, _wgslsmith_f_op_f32(-1f));
    let var_1 = var_0.x;
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_i32(min(min(-2147483647i, u_input.c.x), 45942i), 30422i)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(abs(u_input.a), func_1())))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1537f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(abs(-780f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 899f) + 316f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1570f)), _wgslsmith_f_op_f32(round(1135f))))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    var var_2 = (0u != u_input.b) | true;
    var_2 = !(!any(vec3<bool>(true, true, u_input.a > 1u)));
    var var_3 = var_1.a;
    let var_4 = 70609u;
    var var_5 = 484f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-246f, -522f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1364f)), _wgslsmith_f_op_f32(func_3(var_4, Struct_1(0i)))))) + 1f));
}

