struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<i32, 32>;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec4<i32>(-5128i, i32(-2147483648), i32(-2147483648), -55214i), vec4<i32>(0i, -9730i, 2147483647i, -1i), vec2<i32>(2147483647i, 2147483647i)));

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<bool, 28> = array<bool, 28>(true, true, true, true, false, false, false, true, false, true, false, false, false, true, true, true, false, true, false, true, false, true, false, true, false, true, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-193f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1469f, -156f)))))), _wgslsmith_div_f32(-1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(143f)))), 2874f);
    var var_1 = all(select(select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 28u)], global1.a, global4[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(true, any(vec4<bool>(global4[_wgslsmith_index_u32(44534u, 28u)], false, global4[_wgslsmith_index_u32(u_input.a, 28u)], global1.a)), !global1.a), vec3<bool>(true, global4[_wgslsmith_index_u32(41814u, 28u)], true)), select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 28u)], false, true), vec3<bool>(false, any(vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 28u)])), global1.a), vec3<bool>(true, any(vec3<bool>(true, false, global1.a)), -62014i >= global1.b.a.x)), any(vec4<bool>(true, true, any(vec2<bool>(false, global1.a)), global4[_wgslsmith_index_u32(37258u >> (1u % 32u), 28u)]))));
    global3 = 0u;
    let var_2 = !all(vec2<bool>(true, true));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f) * -384f)) >= var_0.x;
    return ~(~(~vec2<u32>(~40235u, ~2768u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = ~reverseBits(func_3());
    var var_1 = 6592i;
    var var_2 = Struct_4(~(~1u));
    var var_3 = Struct_3(Struct_1(abs(~(vec4<i32>(arg_1.x, -2147483647i, global0[_wgslsmith_index_u32(1u, 32u)], 2147483647i) ^ vec4<i32>(arg_1.x, global0[_wgslsmith_index_u32(57720u, 32u)], arg_1.x, -1i))), reverseBits(vec4<i32>(-global0[_wgslsmith_index_u32(u_input.a, 32u)], firstLeadingBit(global1.b.c.x), -6437i & global0[_wgslsmith_index_u32(21842u, 32u)], _wgslsmith_sub_i32(-8300i, -33572i))), arg_1.yx));
    let var_4 = func_3().x;
    return arg_1.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> StorageBuffer {
    var var_0 = global1.b.a.x;
    var_0 = ~func_2(~select(vec4<u32>(24939u, 41438u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<bool>(false, arg_1, global1.a, false)), vec4<i32>(-42896i, -2147483647i << (u_input.a % 32u), 0i, ~(-37834i))) >> (~_wgslsmith_sub_u32(0u, func_3().x & u_input.a) % 32u);
    global0 = array<i32, 32>();
    let var_1 = Struct_3(global1.b);
    let var_2 = _wgslsmith_sub_vec2_u32(~(~countOneBits(vec2<u32>(u_input.a, u_input.a))), reverseBits(~vec2<u32>(4294967295u, u_input.a))) & reverseBits(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 87013u), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~4294967295u, u_input.a), func_3()));
    return StorageBuffer(46503u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, false), !vec2<bool>(any(!vec4<bool>(true, false, global1.a, global4[_wgslsmith_index_u32(25952u, 28u)])), true));
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = func_1(false, !(u_input.a <= u_input.a));
}

