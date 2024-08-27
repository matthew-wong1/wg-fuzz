struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(!(!(all(vec2<bool>(global0.a, global0.a)) | !global0.a)));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~u_input.c) << (~vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), min(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c))), ~vec2<u32>(55591u, 79360u)) >> (~_wgslsmith_div_vec2_u32(min(vec2<u32>(107000u, 4294967295u), vec2<u32>(0u, u_input.c)), abs(vec2<u32>(u_input.c, 1u))) % vec2<u32>(32u)));
    var var_2 = vec4<bool>(var_0.a & all(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, true), true)), any(select(!(!vec4<bool>(true, global0.a, var_0.a, true)), !select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(global0.a, false, false, true), global0.a), var_0.a)), all(select(select(select(vec2<bool>(true, global0.a), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), !vec2<bool>(var_0.a, false)), vec2<bool>(arg_2 > 290f, global0.a), false)), !var_0.a);
    var var_3 = _wgslsmith_f_op_f32(-arg_2);
    var var_4 = 0u;
    return select(vec4<bool>(true, (70934u | min(u_input.c, 79284u)) >= ~var_1.x, all(select(!var_2.wyz, select(vec3<bool>(true, false, false), vec3<bool>(true, global0.a, false), vec3<bool>(false, global0.a, var_2.x)), vec3<bool>(var_2.x, false, false))), !var_0.a), vec4<bool>(any(select(vec2<bool>(global0.a, false), select(var_2.wy, vec2<bool>(true, false), var_2.x), var_1.x < u_input.c)), any(!var_2.xx), !all(!var_2.xzz), false), any(var_2.xxz));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = u_input.a.zy;
    var var_1 = ~u_input.c;
    let var_2 = all(select(func_3(_wgslsmith_mod_vec2_i32(u_input.b, u_input.a.yz) | select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.b.x, u_input.a.x), vec2<bool>(false, global0.a)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), vec4<i32>(34713i, -1i, u_input.b.x, 0i), vec4<bool>(arg_0, global0.a, false, true)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 4748i, 1i), vec4<i32>(u_input.a.x, u_input.b.x, var_0.x, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] - global1[_wgslsmith_index_u32(47279u, 15u)]) + 1623f)), vec4<bool>(all(vec4<bool>(arg_0, arg_0, global0.a, true)) | global0.a, true, global0.a, false), !any(!vec2<bool>(true, arg_0))));
    let var_3 = vec3<i32>(abs(-36711i), -3732i, var_0.x);
    global1 = array<f32, 15>();
    return true;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = 28911i;
    let var_1 = -23044i;
    var var_2 = !vec4<bool>(true, !(!func_2(global0.a)), func_3(select(vec2<i32>(1i, var_1), ~vec2<i32>(294i, 0i), func_3(u_input.a.yz, vec4<i32>(-43541i, -20174i, u_input.b.x, 0i), 433f).x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_1, 1i, -2147483647i), vec4<i32>(var_1, u_input.b.x, -34252i, u_input.b.x)), -vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, -1i)), global1[_wgslsmith_index_u32(countOneBits(~u_input.c), 15u)]).x, (global0.a | (-38933i >= u_input.a.x)) | func_2(func_2(global0.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.c, 15u)])), true)))))) - 811f);
    var var_4 = Struct_1(true);
    return ~abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(step(-462f, 644f)), global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(11904u, 15u)])))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1805f, -1486f)));
    var var_2 = global1[_wgslsmith_index_u32(func_1(u_input.c, (u_input.c ^ ~u_input.c) >> (~(~109006u) % 32u), ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 57058u), vec2<u32>(u_input.c, u_input.c)), min(vec2<u32>(35938u, u_input.c), vec2<u32>(u_input.c, 0u)))) >> (~_wgslsmith_mod_u32(9718u, _wgslsmith_add_u32(u_input.c, u_input.c)) % 32u), 15u)];
    var var_3 = Struct_1(true);
    var_3 = Struct_1(select(all(!vec4<bool>(var_3.a, var_3.a, false, true)), func_2(global0.a), (-2231i < firstLeadingBit(u_input.a.x)) && ((90894u << (u_input.c % 32u)) <= _wgslsmith_mult_u32(1u, u_input.c))));
    var var_4 = var_3.a;
    let var_5 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(-1102f, -_wgslsmith_mult_vec2_i32(u_input.a.yy & u_input.a.zz, select(_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(-53039i, -24359i), vec2<i32>(-62767i, u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.yz, u_input.b), true)), u_input.b);
}

