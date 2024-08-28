struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, false, false, true, false, true, false, true, false, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true);

var<private> global1: f32 = -754f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_2(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], true), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(arg_0.x, u_input.b.x), u_input.a.x, ~0u), 26u)], all(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(5588u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(69470u, 26u)], false, true)))), !select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], false), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(2058u, 26u)], true), global0[_wgslsmith_index_u32(3641u, 26u)]), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - -554f))) - _wgslsmith_f_op_f32(round(495f))));
    global0 = array<bool, 26>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(arg_0.zx, ~arg_0.yw, _wgslsmith_add_vec2_u32(arg_0.yx, vec2<u32>(arg_0.x, 28748u)))), ~_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.c.yx));
    global1 = -1669f;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: bool) -> vec3<i32> {
    global1 = 1400f;
    global0 = array<bool, 26>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1353f) >= _wgslsmith_f_op_f32(select(-456f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b)), -108f)), func_3(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a), arg_1.yz)));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(firstLeadingBit(select(vec4<i32>(arg_1.x, arg_1.x, u_input.d.x, arg_1.x), vec4<i32>(1i, u_input.d.x, u_input.d.x, arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(82259u, 26u)], global0[_wgslsmith_index_u32(arg_2.x, 26u)], false, arg_3)))), abs(firstLeadingBit(vec4<i32>(u_input.d.x, 38760i, -33688i, u_input.d.x) & vec4<i32>(arg_1.x, u_input.d.x, -26542i, arg_1.x)))), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * 3148f), u_input.b.x & countOneBits(1u));
    global1 = arg_0.b;
    return ~(~u_input.d);
}

fn func_1() -> vec3<i32> {
    var var_0 = u_input.d.x;
    var_0 = _wgslsmith_mod_i32(-29329i, abs(-2147483647i));
    global1 = _wgslsmith_div_f32(-1039f, -762f);
    global0 = array<bool, 26>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-798f * 364f), -623f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f + -296f) * 1f) * -960f));
    return func_2(Struct_2(vec2<bool>(!global0[_wgslsmith_index_u32(7585u, 26u)], true), 528f), u_input.d, u_input.e, !any(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(-1i, ~(~(-1i)), -(~abs(2147483647i)), _wgslsmith_div_i32(~(-7533i), u_input.d.x)), -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d.x, 0i, u_input.d.x), ~func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-330f * 391f))), 405f))), 35783u);
    let var_1 = Struct_2(vec2<bool>(all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.d, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f + var_0.c)) > var_0.c), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(120f, 168f, global0[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_f_op_f32(round(-731f)))));
    var var_2 = true;
    var_2 = true;
    var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - -1712f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + -1774f), _wgslsmith_f_op_f32(sign(868f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-913f))))), u_input.d.x, abs(vec2<i32>(0i, var_0.b.x)), _wgslsmith_div_i32(u_input.d.x, _wgslsmith_div_i32(35763i, var_0.a.x)), countOneBits(u_input.b.yx));
}

