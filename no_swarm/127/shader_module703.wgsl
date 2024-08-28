struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: vec3<u32> = vec3<u32>(45815u, 4294967295u, 25441u);

var<private> global2: array<f32, 7> = array<f32, 7>(1000f, 1000f, 1313f, 1295f, -303f, -700f, -318f);

var<private> global3: array<Struct_1, 9>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(~max(-countOneBits(vec2<i32>(1i, global4.a)), firstLeadingBit(~vec2<i32>(-52389i, global4.a))), ~abs(min(vec2<i32>(-2147483647i, 1i), -vec2<i32>(2147483647i, global4.a))));
    global3 = array<Struct_1, 9>();
    let var_1 = !(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec4<bool>(true, true, false, false)), false, true, true)));
    global2 = array<f32, 7>();
    global0 = array<u32, 11>();
    return -global4.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    global3 = array<Struct_1, 9>();
    var var_0 = select(vec4<bool>(arg_0.a != ~(-43275i), true, (global1.x | 35145u) <= ~(~global1.x), true && ((arg_0.a >= 1i) || all(vec3<bool>(false, true, false)))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(u_input.b >= global1.x, true, true, all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true)), vec4<bool>(false, select(true, true, global2[_wgslsmith_index_u32(global1.x, 7u)] <= global2[_wgslsmith_index_u32(1u, 7u)]), select(all(vec4<bool>(false, true, true, true)), true, true), true)), select(false, true, all(vec3<bool>(true, false, any(vec3<bool>(true, true, false))))));
    var var_1 = max(-arg_0.a, arg_1);
    let var_2 = var_0.xxz;
    var var_3 = arg_0;
    return vec4<i32>(reverseBits(max(-arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1, var_3.a, arg_1), vec4<i32>(4868i, 5i, arg_1, var_3.a)), vec4<i32>(2147483647i, -2147483647i, -2147483647i, var_3.a)))), arg_0.a >> (_wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global1.x, global1.x)), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], 49042u, 7674u), !var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(22243u, 13060u, 46506u), vec3<u32>(global1.x, 1u, u_input.c))) % 32u), ~global4.a, _wgslsmith_div_i32(min(-_wgslsmith_sub_i32(var_3.a, var_3.a), ~arg_1), global4.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    var var_0 = func_4(arg_1, func_3());
    global4 = Struct_1(~var_0.x);
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = select(vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), -1i == global4.a, any(vec3<bool>(true, true, true)) | true), vec3<bool>(true, (~global4.a >= _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, 0i), vec2<i32>(11540i, 0i))) || true, true), false);
    let var_1 = ~global1.yy ^ ~(~min(abs(global1.yx), vec2<u32>(global1.x, 0u)));
    var var_2 = -vec4<i32>(16607i, global4.a, _wgslsmith_mult_i32(~(global4.a >> (global0[_wgslsmith_index_u32(u_input.a, 11u)] % 32u)), global4.a), -2147483647i & _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, global4.a, -35225i, global4.a)), func_2(vec4<i32>(global4.a, global4.a, global4.a, global4.a), Struct_1(global4.a), 23545u)));
    var var_3 = ~(~select(~global0[_wgslsmith_index_u32(56815u, 11u)], 2797u, any(vec3<bool>(var_0.x, true, var_0.x)))) <= countOneBits(var_1.x);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(9057u, ~53419u), 7u)], -172f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~9752u, 7u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, global0[_wgslsmith_index_u32(global1.x, 11u)]), 11u)], 7u)])), -1362f), ~vec3<u32>(~1u, 1u, ~(global1.x >> (4294967295u % 32u))), global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(18079u, 7u)], 1006f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-564f, -1927f), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], -707f), vec2<f32>(662f, global2[_wgslsmith_index_u32(4294967295u, 7u)])), !var_0)))));
    global0 = array<u32, 11>();
    global2 = array<f32, 7>();
    let var_2 = (true || !var_0) || any(vec2<bool>(true, true));
    let var_3 = global4.a;
    global2 = array<f32, 7>();
    let x = u_input.a;
    s_output = func_1();
}

