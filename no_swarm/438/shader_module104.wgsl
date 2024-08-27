struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 26>;

var<private> global2: Struct_1 = Struct_1(-979f, true, vec4<f32>(-1916f, 1389f, 1472f, -1454f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(-458f, true, vec4<f32>(-932f, -162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global2.a))), global2.c.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(695f, -708f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1421f, global2.c.x)) - var_0.c.zw))), var_0.c.xx));
    var var_2 = 2147483647i;
    var var_3 = var_0;
    var var_4 = ~vec3<u32>(1u, min(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b), (u_input.b << (1u % 32u)) << (19835u % 32u)), u_input.b);
    return global2.c.zz;
}

fn func_3() -> bool {
    var var_0 = u_input.b & u_input.b;
    global1 = array<bool, 26>();
    let var_1 = Struct_1(-1934f, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b, ~_wgslsmith_mod_u32(1u, u_input.b)), 26u)], global2.c);
    global0 = all(vec2<bool>(select(any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<bool>(var_1.b, global2.b), vec2<bool>(false, global2.b))), all(vec4<bool>(global2.b, global1[_wgslsmith_index_u32(u_input.b, 26u)], true, false)), true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.b), vec2<bool>(global2.b, false), vec2<bool>(false, true)), false))));
    return select(true, all(select(vec3<bool>(global2.b, true, var_1.b), select(vec3<bool>(true, true, false), vec3<bool>(global2.b, true, true), global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], false, global2.b))) && true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(389f)))), global2.c.x)) > _wgslsmith_f_op_vec2_f32(func_2()).x);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = firstTrailingBit(u_input.a.x);
    let var_2 = arg_0;
    let var_3 = func_3();
    let var_4 = arg_0;
    return Struct_1(2370f, global2.b, vec4<f32>(_wgslsmith_f_op_f32(step(391f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.c.x)) * _wgslsmith_f_op_f32(trunc(-1000f))), 1097f, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, !global2.b);
    global2 = func_1(Struct_1(_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(global2.a * -1000f)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2172f, 594f, global2.c.x, global2.a)), select(global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x, global2.b))))), 15517u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - -1489f)));
    var var_1 = u_input.a;
    global1 = array<bool, 26>();
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.c, global2.c, vec4<bool>(global2.b, false, global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(-923f, global2.a, 235f, -1000f), vec4<f32>(global2.c.x, 253f, global2.a, -266f))) + func_1(Struct_1(global2.a, global2.b, vec4<f32>(-2006f, global2.c.x, global2.c.x, global2.c.x)), 22816u, 398f).c)), ~u_input.b, global2.c.x);
    var_1 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + 1000f) + _wgslsmith_f_op_f32(358f + -444f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), global2.a))) + global2.a));
    var_1 = -vec2<i32>(-7503i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, 0u & (abs(~u_input.b) >> (1u % 32u)), u_input.a.x, ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), firstTrailingBit(vec4<u32>(u_input.b, 27526u, u_input.b, 4294967295u)) ^ (vec4<u32>(u_input.b, u_input.b, 31417u, 0u) ^ vec4<u32>(u_input.b, 61744u, u_input.b, 25762u))), ~u_input.a.x);
}

