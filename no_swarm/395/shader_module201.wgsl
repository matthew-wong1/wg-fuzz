struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: Struct_3;

var<private> global2: f32 = 295f;

var<private> global3: array<u32, 23>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global3 = array<u32, 23>();
    global0 = array<bool, 32>();
    let var_0 = Struct_2(true);
    global0 = array<bool, 32>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(arg_2.b.x, _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0))), true)), vec4<u32>(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~19289u), 23u)], 1u, _wgslsmith_clamp_u32(u_input.b.x, global1.c.x, 68871u), firstTrailingBit(global1.c.x)), firstTrailingBit(vec2<u32>(abs(global3[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 23u)], 23u)]))) ^ global1.b.wz);
    return ~(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.a, arg_2.a, vec2<i32>(-30711i, 26558i)), vec2<i32>(arg_2.a.x, arg_2.a.x)) << (global1.b.xx % vec2<u32>(32u))) >> (var_1.b.yw % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> vec3<f32> {
    var var_0 = global1.a;
    var var_1 = true;
    var_1 = !(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(26790u, 32u)], global0[_wgslsmith_index_u32(global1.c.x, 32u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(27039u, 32u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50748u, 23u)], 32u)], global0[_wgslsmith_index_u32(86937u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), global0[_wgslsmith_index_u32(global1.b.x, 32u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 32u)])) || (true | (arg_0 == -1i)));
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(arg_1.xx << (vec2<u32>(global1.c.x >> (0u % 32u), ~0u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(min(func_3(arg_2, false, Struct_1(arg_1.wy, vec3<f32>(-2254f, -223f, 526f))), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, u_input.a.x), u_input.a)), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -38904i)), ~u_input.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, global1.a, arg_2), vec3<f32>(-1203f, 649f, -657f)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a, arg_2, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, 1047f, arg_2))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a * global1.a), -1000f, global1.a), vec3<f32>(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -2517f), _wgslsmith_f_op_f32(ceil(-1616f)))))));
    var var_3 = Struct_1(~firstLeadingBit(_wgslsmith_mult_vec2_i32(var_2.a, func_3(-1000f, global0[_wgslsmith_index_u32(29561u, 32u)], Struct_1(var_2.a, vec3<f32>(843f, arg_2, 441f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b - vec3<f32>(_wgslsmith_f_op_f32(select(1029f, -323f, true)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(trunc(-341f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, global1.a, var_2.b.x))))));
    return vec3<f32>(654f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(364f, _wgslsmith_f_op_f32(-global1.a)))))), _wgslsmith_f_op_f32(sign(-2623f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec2<u32> {
    let var_0 = u_input.a;
    var var_1 = u_input.b.zz;
    global0 = array<bool, 32>();
    global2 = -1034f;
    var var_2 = -2704i;
    return ~u_input.b.zz;
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    global1 = Struct_3(_wgslsmith_div_f32(971f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f * 1106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2221f))))), global1.b, func_4(Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(func_2(min(u_input.a.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(55932i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 19322i, u_input.a.x)), _wgslsmith_f_op_f32(741f - global1.a)))), min(max(vec3<i32>(34590i, 4068i, -2147483647i), vec3<i32>(u_input.a.x, 1i, 1i)) | abs(vec3<i32>(u_input.a.x, 8080i, u_input.a.x)), firstLeadingBit(vec3<i32>(u_input.a.x, 0i, u_input.a.x))), u_input.a.x));
    global0 = array<bool, 32>();
    let var_0 = Struct_1(vec2<i32>(~(i32(-1i) * -18435i), u_input.a.x >> (global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global1.b.x, 23u)], global1.c.x, global3[_wgslsmith_index_u32(0u, 23u)]), 23u)] % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a), 695f));
    let var_1 = ~61377u;
    let var_2 = vec4<bool>(1u > ~var_1, all(select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(true, true), true), select(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(false, global0[_wgslsmith_index_u32(27500u, 32u)])), select(vec2<bool>(false, global0[_wgslsmith_index_u32(global1.c.x, 32u)]), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, arg_0.a), vec2<bool>(global0[_wgslsmith_index_u32(global1.c.x, 32u)], arg_0.a)), vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(16461u, 32u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 32u)])))), global3[_wgslsmith_index_u32(~u_input.b.x, 23u)] == 10441u, global0[_wgslsmith_index_u32(4294967295u, 32u)]);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(global1.a, 384f, global1.a)) + vec3<f32>(-849f, -319f, _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(0u, 32u)]))));
    global1 = Struct_3(499f, firstLeadingBit(vec4<u32>(~39228u, 9607u, ~_wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x)), vec2<u32>(global1.c.x, _wgslsmith_clamp_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global1.c.x, 23u)]), 4294967295u, ~global3[_wgslsmith_index_u32(~3652u, 23u)])));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a));
    var var_2 = 51955i;
    var var_3 = Struct_2(true);
    global3 = array<u32, 23>();
    var var_4 = Struct_2(any(!select(!vec3<bool>(false, var_3.a, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    var var_5 = -171f;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, -64092i >> (~u_input.b.x % 32u)), firstTrailingBit(-min(vec3<i32>(u_input.a.x, -2147483647i, 0i), vec3<i32>(0i, 1i, u_input.a.x)))), var_0.a.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -173f, 1014f))))))), -1755f);
}

