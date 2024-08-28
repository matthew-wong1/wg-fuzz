struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, false, true);

var<private> global1: array<u32, 31> = array<u32, 31>(0u, 88625u, 4294967295u, 5917u, 4294967295u, 1u, 14870u, 31657u, 177u, 54956u, 4294967295u, 1u, 14749u, 1u, 4294967295u, 0u, 49604u, 50891u, 28182u, 4294967295u, 26605u, 55464u, 52761u, 37488u, 0u, 25850u, 43369u, 65349u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: u32 = 25910u;

var<private> global3: array<f32, 11>;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~0u, 11u)]));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.e.xz;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(-reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-23839i, var_0.x, u_input.e.x, 2147483647i), vec4<i32>(-1i, 44183i, u_input.d.x, u_input.d.x))), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 4u)])), true, global0[_wgslsmith_index_u32(1u & u_input.a, 4u)])))), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(1u, u_input.c)), 11u)], _wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.c, 11u)])) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 11u)])) + -2067f)));
    return Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 31u)], 1u)) ^ ~u_input.b.zyw, ~(~u_input.b.ywx)), 4u)], all(vec3<bool>(!global0[_wgslsmith_index_u32(21519u, 4u)], true, global0[_wgslsmith_index_u32(5537u, 4u)])), true == all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<bool>(false, true), true))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    global2 = ~countOneBits(~(~(~u_input.a)));
    let var_0 = 2518f;
    var var_1 = any(arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 11u)]) * _wgslsmith_f_op_f32(-arg_1)))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1357f - -501f) * -388f)));
    global1 = array<u32, 31>();
    return global1[_wgslsmith_index_u32(~u_input.c, 31u)];
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(1u, 25438u, global1[_wgslsmith_index_u32(max(u_input.c, 0u), 31u)]), u_input.c ^ global1[_wgslsmith_index_u32(52652u, 31u)], ~(4294967295u >> (global1[_wgslsmith_index_u32(func_4(func_2(), 158f, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], 31u)], 4u)]))), 31u)] % 32u)));
    let var_1 = -firstTrailingBit(-20146i);
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~(-8845i), u_input.d.x) << (select(var_0, ~vec3<u32>(71214u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 31u)], 31u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(108245u, 4u)], global0[_wgslsmith_index_u32(63200u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]))) % vec3<u32>(32u)), -u_input.d), u_input.d);
    let var_3 = Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(var_0.x)), 4u)], true, true));
    var var_4 = 4294967295u;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<u32, 31>();
    var var_1 = max(vec4<u32>(40500u, ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u >> (u_input.b.x % 32u), _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 31u)], 31u)]), _wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), 31u)], firstTrailingBit(min(~u_input.b.x, u_input.b.x)), firstLeadingBit(min(1u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(49615u, 31u)], 31u)]))), ~select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(func_4(Struct_1(vec3<bool>(true, true, false)), global3[_wgslsmith_index_u32(u_input.c, 11u)], var_0.a.x), 31u)], abs(8970u), abs(0u)), countOneBits(vec4<u32>(1u, u_input.b.x, 0u, u_input.c)), var_0.a.x));
    let var_2 = Struct_1(func_2().a);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-88591i, ~(-u_input.d.x), u_input.e.x), max(u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, -2147483647i), _wgslsmith_mod_i32(0i, -2147483647i))) >> (_wgslsmith_mod_u32(~(~u_input.a), 0u) % 32u));
    var_3 = max(_wgslsmith_add_i32(_wgslsmith_add_i32(-17732i, 2147483647i & (u_input.d.x | 1i)), -(~1i)), firstTrailingBit(u_input.d.x));
    var var_4 = global3[_wgslsmith_index_u32(~4294967295u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62777u, 31u)], 11u)] - -1035f)), global3[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(var_1.x, 31u)]), 11u)], all(var_2.a.zx) & (global3[_wgslsmith_index_u32(0u, 11u)] != global3[_wgslsmith_index_u32(1u, 11u)])))), 1890f);
}

