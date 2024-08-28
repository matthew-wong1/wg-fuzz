struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.c.x, 32u)]));
    let var_1 = Struct_1(min(_wgslsmith_add_vec4_i32(select(u_input.a, vec4<i32>(1i, 2147483647i, -5830i, 23760i), false), ~u_input.b), -vec4<i32>(arg_1, arg_0.x, -18760i, -1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(913u, arg_2.x, arg_2.x, 1u), global2[_wgslsmith_index_u32(u_input.c.x, 2u)]) % vec4<u32>(32u))) | u_input.a, reverseBits(firstTrailingBit(u_input.c.x)) >> (1u % 32u));
    var var_2 = select(arg_0, var_1.a.wxz, select(vec3<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, true, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(true & any(vec2<bool>(true, false)), false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)))));
    return 584f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1068f * global0[_wgslsmith_index_u32(arg_1.b, 32u)]), _wgslsmith_f_op_f32(step(1035f, global0[_wgslsmith_index_u32(15820u, 32u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.a.xxx, arg_2.a.x, vec3<u32>(0u, 62007u, u_input.c.x), -2126f)) - 908f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, arg_0.b), u_input.c))), 32u)], all(vec3<bool>(true, false, all(vec2<bool>(arg_3.x, arg_3.x)))))), 1241f);
    global2 = array<vec4<u32>, 2>();
    global0 = array<f32, 32>();
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-985f, var_1.x, 582f, 1762f) - vec4<f32>(var_1.x, var_1.x, 580f, global0[_wgslsmith_index_u32(36467u, 32u)])))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 214f) + var_1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1427f) + _wgslsmith_f_op_f32(-var_1.x)))));
    return !arg_3.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(-u_input.a, 1u);
    global0 = array<f32, 32>();
    global2 = array<vec4<u32>, 2>();
    var var_1 = false || ((true | (func_2(var_0, var_0, Struct_1(u_input.a, 0u), vec2<bool>(true, false)) | any(vec3<bool>(true, true, true)))) && true);
    var_1 = false;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 32u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), -168f, -857f)))));
    var var_2 = u_input.c.x > ~1u;
    var_1 = Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, var_0, var_0, var_0), u_input.a & vec4<i32>(28599i, -2147483647i, 36441i, u_input.a.x)), vec4<i32>(0i, countOneBits(abs(u_input.a.x)), firstLeadingBit(-25410i) | var_1.a.x, 1i)), u_input.c.x);
    var var_3 = Struct_1(func_1(vec4<f32>(_wgslsmith_div_f32(1f, global0[_wgslsmith_index_u32(~4294967295u, 32u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b, 32u)]), global0[_wgslsmith_index_u32(~var_1.b, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f)))).a, _wgslsmith_add_u32(~(~24027u), ~abs(u_input.c.x ^ 5881u)));
    let var_4 = u_input.a.zz | vec2<i32>(~var_3.a.x, -14941i);
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), 32u)];
    global1 = all(vec2<bool>(var_3.b > var_3.b, select(func_2(Struct_1(vec4<i32>(-35972i, 78551i, 0i, -36480i), 0u), Struct_1(vec4<i32>(var_4.x, -2147483647i, u_input.a.x, u_input.b.x), 41037u), func_1(vec4<f32>(542f, 1000f, global0[_wgslsmith_index_u32(31556u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), true && any(vec3<bool>(false, true, true)), _wgslsmith_mod_u32(4294967295u, var_3.b) > ~48498u)));
    let var_6 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.b, 32u)] * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 1619f))), -121f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_3.b, 32u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] + -894f))), 1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_3.b, 32u)], 1152f, 1782f, global0[_wgslsmith_index_u32(43016u, 32u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], -468f, 1082f, global0[_wgslsmith_index_u32(var_3.b, 32u)]))) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(var_1.b, 32u)], 1803f, -583f)), vec4<f32>(134f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52663u, 32u)]), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 32u)], -416f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~vec4<u32>(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-824f, global0[_wgslsmith_index_u32(var_1.b, 32u)], global0[_wgslsmith_index_u32(var_3.b, 32u)], 324f)))).b, min(~3461u, var_3.b), u_input.c.x, u_input.c.x));
}

