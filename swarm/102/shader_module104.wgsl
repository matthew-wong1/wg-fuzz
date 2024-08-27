struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec2<u32>(firstLeadingBit(u_input.c.x), 0u);
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return !(!(!vec2<bool>(true, arg_0.x && arg_0.x)));
}

fn func_2() -> Struct_1 {
    return global0[_wgslsmith_index_u32(37516u, 32u)];
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return !(!select(true, true, true) && (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, u_input.c.x) & u_input.c.wy, ~vec2<u32>(arg_0.a.x, arg_0.a.x)) < arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.x;
    var var_1 = vec4<bool>(any(select(select(func_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(70149u, 32u)]), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), any(vec2<bool>(true, true)))), func_3(func_2()) | (true && (-u_input.a > -336i)), true, any(vec2<bool>(true, true)));
    var_0 = u_input.b.x;
    let var_2 = Struct_1(vec2<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_add_u32(27969u, 17539u))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -10260i) >> (vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), u_input.d.zzx) | ~vec3<i32>(~u_input.b.x, -2147483647i, -1i));
    var_1 = select(!vec4<bool>(true, !(!var_1.x), !any(var_1.wzz), var_1.x), vec4<bool>(var_1.x, !all(var_1.wxw), var_1.x, var_1.x), all(!(!(!var_1.xyx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(213f)))) + _wgslsmith_f_op_f32(round(178f)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_2().b.x, _wgslsmith_mult_i32(-21249i, u_input.d.x)), ~(~(-1i))) >> (1u % 32u), var_2.b.yz << (u_input.c.zw % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-172f, -839f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) - 797f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1181f)), _wgslsmith_div_f32(-1316f, 663f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-588f - -977f), -1529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(562f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1584f)) - _wgslsmith_f_op_f32(abs(-1455f)))));
}

