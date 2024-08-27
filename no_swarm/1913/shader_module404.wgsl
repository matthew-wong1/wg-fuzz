struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
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

var<private> global0: array<bool, 9>;

var<private> global1: u32 = 12805u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = -180f;
    global1 = 26270u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), 291f, -455f)));
    var var_2 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(f32(-1f) * -710f)))));
    return 952u;
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, i32(-1i) * -u_input.b.x), vec2<i32>(38035i | u_input.b.x, u_input.b.x) & -_wgslsmith_div_vec2_i32(u_input.b.yy, u_input.b.zx)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, func_3()), 9u)], vec4<i32>(2147483647i, -_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 2147483647i | u_input.b.x), 37453i, _wgslsmith_mult_i32(-u_input.b.x, -u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, -2888f, -404f, 854f) - vec4<f32>(326f, -761f, 1406f, 1624f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(945f, 1602f, 371f, 1642f), vec4<f32>(1073f, 412f, -101f, 431f), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 9u)], true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, -439f, -667f, -331f)))))), _wgslsmith_sub_i32(-35190i, u_input.b.x));
    var var_1 = var_0.b;
    let var_2 = var_0.b;
    global0 = array<bool, 9>();
    var var_3 = _wgslsmith_add_i32(u_input.b.x, var_0.e);
    return vec3<bool>(true || (true == (-234f > var_0.d.x)), any(!vec3<bool>(true, 33517u < u_input.c.x, global0[_wgslsmith_index_u32(30635u, 9u)])), !(!any(vec4<bool>(false, true, true, var_0.b))) || global0[_wgslsmith_index_u32(~1u, 9u)]);
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 9>();
    var var_0 = select(select(vec3<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(124758u, 9u)], global0[_wgslsmith_index_u32(98405u, 9u)], false)), true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], false, all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x << (4294967295u % 32u), abs(0u)), 9u)]), select(!select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), func_2(u_input.c)), vec3<bool>(true, true, select(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true)), !global0[_wgslsmith_index_u32(u_input.c.x, 9u)], !global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), !vec3<bool>(global0[_wgslsmith_index_u32(~u_input.c.x, 9u)], true, global0[_wgslsmith_index_u32(11142u, 9u)] | false)), false);
    var var_1 = ~u_input.b.xy;
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(reverseBits(u_input.b.x), -_wgslsmith_add_i32(u_input.b.x, -2147483647i), -48650i << (u_input.a.x % 32u), _wgslsmith_mult_i32(-2147483647i, -1i)), -(~((vec4<i32>(55166i, u_input.b.x, 1i, -2147483647i) >> (vec4<u32>(1u, u_input.a.x, 1u, u_input.c.x) % vec4<u32>(32u))) | ~vec4<i32>(var_1.x, var_1.x, 1i, 592i))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2305f * 138f))))), 644f);
    return Struct_1(u_input.b.zx, all(vec2<bool>(!any(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), global0[_wgslsmith_index_u32(~(~u_input.c.x), 9u)])), vec4<i32>(var_1.x, u_input.b.x, abs(select(var_1.x, ~u_input.b.x, func_2(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)).x)), -var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1692f, var_3.x, -234f, var_3.x))) * vec4<f32>(645f, -244f, 405f, 114f)), all(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(0u, 9u)], true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(534f, var_3.x, var_3.x, var_3.x)))))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(~var_0.c.wx, true | ((_wgslsmith_add_u32(u_input.c.x, 14313u) & u_input.c.x) <= _wgslsmith_sub_u32(1u, u_input.c.x | u_input.c.x)), var_0.c, _wgslsmith_f_op_vec4_f32(-var_0.d), ~1i);
    global0 = array<bool, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, var_1.d.x)), var_1.d.yy, false))) - var_1.d.yw);
    var_0 = func_1();
    global0 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

