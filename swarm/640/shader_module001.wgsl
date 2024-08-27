struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 28> = array<u32, 28>(56003u, 1u, 1905u, 0u, 4294967295u, 1u, 83054u, 0u, 23811u, 4294967295u, 0u, 68493u, 0u, 349u, 1u, 32942u, 1u, 43738u, 49885u, 33969u, 22876u, 1u, 21282u, 4294967295u, 1u, 11494u, 31999u, 28591u);

var<private> global2: vec2<f32>;

var<private> global3: vec4<i32>;

var<private> global4: array<bool, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global4 = array<bool, 10>();
    let var_1 = var_0;
    global3 = vec4<i32>(arg_0.a.x, var_0.a.x | ~arg_0.a.x, var_0.a.x | var_1.a.x, -24129i);
    global1 = array<u32, 28>();
    return var_1;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(-firstTrailingBit(~2147483647i), i32(-1i) * -(~(-2147483647i))));
    let var_1 = !(_wgslsmith_mult_i32(arg_2.a.x, 0i) >= var_0.a.x);
    let var_2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-802f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, global2.x)) - global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x) - _wgslsmith_f_op_f32(sign(1537f))))), global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(158f, _wgslsmith_f_op_f32(select(1990f, 713f, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 2314f) - _wgslsmith_f_op_f32(-global2.x)))));
    var var_3 = arg_2;
    let var_4 = Struct_1(vec2<i32>(-max(~(-37229i), var_3.a.x), global3.x));
    return func_2(arg_2);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(arg_1.a);
    let var_1 = func_2(arg_1);
    var var_2 = 24755u;
    let var_3 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), global4[_wgslsmith_index_u32(0u, 10u)], !any(vec4<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], 10u)], false, false, false)), true), vec4<bool>(global4[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.c, 28u)] | u_input.b), 10u)], select(global3.x, 2147483647i, global4[_wgslsmith_index_u32(47558u, 10u)]) == -2147483647i, global4[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], ~34928u), 10u)], true), !(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 10u)], global4[_wgslsmith_index_u32(u_input.c, 10u)], false, false)))), select(select(select(!vec4<bool>(false, false, global4[_wgslsmith_index_u32(49924u, 10u)], true), vec4<bool>(true, false, global4[_wgslsmith_index_u32(u_input.d.x, 10u)], global4[_wgslsmith_index_u32(1u, 10u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(5036u, 10u)], global4[_wgslsmith_index_u32(49502u, 10u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 10u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(0u, 10u)], true), global4[_wgslsmith_index_u32(53937u, 10u)])), !(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 10u)], true, false, global4[_wgslsmith_index_u32(48227u, 10u)])), !global4[_wgslsmith_index_u32(1u, 10u)] || false), !vec4<bool>(u_input.c > 36103u, global4[_wgslsmith_index_u32(~18713u, 10u)], true, !global4[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(any(!vec4<bool>(true, false, global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)])), all(vec4<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], global4[_wgslsmith_index_u32(0u, 10u)])), true, select(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], select(false, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], true), true))), all(!select(vec2<bool>(global4[_wgslsmith_index_u32(5575u, 10u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 10u)]), vec2<bool>(false, true), global4[_wgslsmith_index_u32(abs(u_input.a.x), 10u)])));
    let var_4 = vec4<u32>(abs((global1[_wgslsmith_index_u32(4294967295u, 28u)] | global1[_wgslsmith_index_u32(1u, 28u)]) | (4294967295u & u_input.a.x)) >> (~1u % 32u), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), global1[_wgslsmith_index_u32(reverseBits(8542u), 28u)], abs(u_input.c));
    return ~vec3<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 54911u, 4294967295u), vec3<u32>(u_input.c, 15578u, global1[_wgslsmith_index_u32(var_4.x, 28u)])) | _wgslsmith_mult_u32(var_4.x, 1u)), ~abs(~4294967295u), 4294967295u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = -abs(vec4<i32>(max(global3.x, global3.x), -_wgslsmith_div_i32(global3.x, global3.x), -1i, countOneBits(global3.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(global2.x)), global2.x);
    let var_2 = !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, func_4(func_3(false, -global3.x, func_2(Struct_1(vec2<i32>(-13518i, var_0.x)))), func_3(!global4[_wgslsmith_index_u32(19837u, 10u)], -2147483647i, Struct_1(var_0.zx)))), 10u)];
    var var_3 = func_2(Struct_1(abs(firstLeadingBit(global3.wz)))).a.x;
    let var_4 = Struct_1(-global3.yx);
    return func_2(Struct_1(~var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~vec3<u32>(~15872u, u_input.a.x, 1u)));
    global4 = array<bool, 10>();
    global4 = array<bool, 10>();
    global0 = !(true | !(!(global4[_wgslsmith_index_u32(4294967295u, 10u)] && false)));
    let var_1 = var_0;
    global0 = false;
    var var_2 = vec4<f32>(global2.x, global2.x, -1130f, _wgslsmith_f_op_f32(sign(global2.x)));
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~u_input.a.x, select(u_input.a.x, 6405u, false), ~u_input.d.x) >> (u_input.d % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global3.xyz, select(-vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), -global3.ywx, !vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(u_input.c, 10u)]))), abs(_wgslsmith_sub_vec3_i32(global3.ywz, vec3<i32>(var_1.a.x, -1i, 1i)) << (u_input.d % vec3<u32>(32u)))), abs(~min(countOneBits(global3.wy), -vec2<i32>(43323i, 1i))));
}

