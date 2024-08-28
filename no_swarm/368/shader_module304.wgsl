struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec3<f32> {
    return arg_0.a;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec3_f32(abs(global1.a))))), global1.b);
    let var_1 = Struct_1(global1.a, vec4<bool>(!(!(!global1.b.x)), all(!(!var_0.b.zzz)), _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), 11595u) == 30044u, false));
    let var_2 = !vec3<bool>(all(vec4<bool>(global1.a.x != 1511f, global1.b.x & var_0.b.x, global1.b.x == true, !var_0.b.x)), var_1.b.x, all(global1.b.xzx));
    var var_3 = vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x) | reverseBits(select(vec3<i32>(-29592i, -45450i, u_input.e.x) | vec3<i32>(0i, u_input.e.x, u_input.e.x), reverseBits(vec3<i32>(u_input.a, u_input.e.x, u_input.e.x)), global1.b.x) | -u_input.e.ywy);
    global0 = _wgslsmith_add_u32(u_input.b.x >> (firstTrailingBit(2552u & countOneBits(u_input.d.x)) % 32u), 16808u);
    return global2[_wgslsmith_index_u32(~(~98916u), 25u)];
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 856f, 1000f) - global1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.a, vec3<f32>(global1.a.x, global1.a.x, 1317f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1028f, -690f))))), vec4<bool>(true, global1.b.x, true, false));
    let var_1 = 1i | ~u_input.e.x;
    let var_2 = 0i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_0, _wgslsmith_f_op_f32(-var_0.a.x), 0u < u_input.c.x))), select(!(!vec4<bool>(true, false, global1.b.x, global1.b.x)), var_0.b, func_2(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * global1.a.x), _wgslsmith_div_f32(global1.a.x, var_0.a.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 1307f), var_3.a.x, 305f), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 566f)), select(global2[_wgslsmith_index_u32(39398u, 25u)], var_3.b, var_3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(sign(global1.a.x))))), _wgslsmith_f_op_f32(sign(797f)), all(vec4<bool>(true & any(vec2<bool>(false, var_0.b.x)), all(!var_0.b.zw), all(vec3<bool>(true, true, true)), !(!var_3.b.x))))).x;
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(var_3.a)))), !(!(!vec4<bool>(var_3.b.x, var_0.b.x, false, false))));
    let var_6 = vec2<u32>(min(_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, u_input.c.x, 17839u), u_input.c)), u_input.c.x), u_input.c.x);
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-global1.a.x)))) * _wgslsmith_f_op_vec3_f32(-var_0.a)), vec4<bool>(true, true, !(u_input.b.x > u_input.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~0i, _wgslsmith_mult_i32(-19418i, -21802i)));
}

