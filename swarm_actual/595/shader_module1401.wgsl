struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global1: array<bool, 29>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(u_input.d.x, -7293i);
    let var_1 = Struct_1(false);
    var var_2 = vec2<bool>(1i >= -(~u_input.d.x), true);
    var_2 = vec2<bool>(!(!var_2.x), any(vec4<bool>(!(!global2.x), !var_2.x, false, var_1.a)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(388f))) * _wgslsmith_f_op_f32(2222f * _wgslsmith_f_op_f32(select(-1119f, -1620f, var_1.a)))) - _wgslsmith_f_op_f32(2257f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -625f), 800f))))));
    return var_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    let var_0 = all(vec2<bool>(true, any(!(!vec3<bool>(true, true, global2.x)))));
    global2 = vec2<bool>(global2.x, true);
    var var_1 = u_input.d;
    let var_2 = i32(-1i) * -39787i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1366f)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_3, arg_1))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = -1302f;
    let var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1114f * -737f))) + -1014f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-241f, 536f)) - -134f)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.c.yw, _wgslsmith_f_op_f32(abs(-911f)))), 879f);
    var var_4 = u_input.c.zxx;
    return _wgslsmith_add_u32(~_wgslsmith_div_u32(~4294967295u << (var_4.x % 32u), 0u), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = u_input.a;
    var var_2 = Struct_1(true);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_5 = var_4;
    var var_6 = u_input.d;
    let var_7 = u_input.d.xwy;
    let var_8 = countOneBits((var_7.x & 24138i) ^ -(~(~114566i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~firstLeadingBit(1i), abs(-59857i) >> (func_2(abs(u_input.d.zx)) % 32u)), 0u, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yy) << (1u % 32u), min(var_1, _wgslsmith_mult_u32(u_input.a, var_1) ^ u_input.a), abs(~8177u) >> (u_input.c.x % 32u), min(~countOneBits(u_input.c.x), min(10641u, 38013u))), firstTrailingBit(max(abs(max(27235u, u_input.c.x)), 46318u)));
}

