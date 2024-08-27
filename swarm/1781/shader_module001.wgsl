struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<u32, 6> = array<u32, 6>(22515u, 20085u, 1u, 0u, 0u, 32024u);

var<private> global2: u32;

var<private> global3: array<bool, 11> = array<bool, 11>(true, true, true, false, false, false, false, true, true, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_1(~1u);
    let var_1 = true;
    let var_2 = 4294967295u;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -15586i, arg_0.b.x), _wgslsmith_div_i32(arg_0.b.x, -35013i));
    return var_0.a >> (16248u % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_2.b;
    global3 = array<bool, 11>();
    global0 = select(!(!vec3<bool>(true, true, arg_2.a > arg_2.a)), vec3<bool>(all(!(!global0.zy)), all(!global0.zx), all(select(vec2<bool>(true, true), vec2<bool>(true, true), !global0.yy))), vec3<bool>(_wgslsmith_div_i32(-arg_0, var_0.x) != 33928i, global0.x, select(true, false, !global0.x && true)));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~arg_3.a, u_input.a.x, 23477u), u_input.b.zyx), abs(u_input.b.xzy));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2.a))))), arg_2.a));
    return select(~select(firstLeadingBit(vec3<i32>(-76364i, 1i, arg_2.b.x)), vec3<i32>(1i, arg_0, var_0.x) >> (vec3<u32>(377u, arg_1.a, 4294967295u) % vec3<u32>(32u)), true), firstTrailingBit(-(vec3<i32>(var_0.x, var_0.x, 2147483647i) & vec3<i32>(arg_0, var_0.x, arg_2.b.x))), !vec3<bool>(all(vec3<bool>(false, true, false)), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 11u)], !global0.x)) << (_wgslsmith_div_vec3_u32(abs(u_input.a & u_input.a), ~firstLeadingBit(vec3<u32>(arg_3.a, 35384u, u_input.b.x))) % vec3<u32>(32u));
}

fn func_2() -> u32 {
    global1 = array<u32, 6>();
    global3 = array<bool, 11>();
    let var_0 = -404f;
    var var_1 = Struct_1(_wgslsmith_div_u32(~(~1u), 17783u) ^ global1[_wgslsmith_index_u32(41352u, 6u)]);
    let var_2 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), ~vec2<i32>(u_input.c, 2147483647i)), min(~u_input.c, -27000i), _wgslsmith_sub_i32(-1906i, ~(-6603i)), 2147483647i), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 39717i, -1i, u_input.c), vec4<i32>(u_input.c, -10363i, -2147483647i, 53278i)))), Struct_1(~(func_3(Struct_2(var_0, vec2<i32>(-28308i, -2147483647i)), 17719u, vec3<f32>(381f, 226f, var_0)) << (u_input.b.x % 32u))), Struct_2(var_0, -((vec2<i32>(-37712i, u_input.c) >> (vec2<u32>(8813u, 4294967295u) % vec2<u32>(32u))) >> (max(vec2<u32>(9513u, global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)])) % vec2<u32>(32u)))), Struct_1(76247u));
    return ~92683u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    global0 = !vec3<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), 36774u, func_2()), 11u)], any(!select(global0.yx, vec2<bool>(true, true), vec2<bool>(global0.x, global0.x))));
    let var_0 = vec3<bool>(all(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.a, 6u)], 6u)], 11u)] | global3[_wgslsmith_index_u32(1u, 11u)], global0.x, !global0.x), select(select(vec4<bool>(true, global0.x, true, global3[_wgslsmith_index_u32(arg_2.a, 11u)]), vec4<bool>(global0.x, global3[_wgslsmith_index_u32(arg_0.a, 11u)], false, global3[_wgslsmith_index_u32(arg_0.a, 11u)]), false), !vec4<bool>(global0.x, true, false, true), !vec4<bool>(false, global0.x, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 11u)])), (true & global0.x) | all(global0.xz))), global3[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(func_2(), 6u)] >> (25940u % 32u)), 11u)], any(global0.zz));
    global3 = array<bool, 11>();
    var var_1 = true;
    global3 = array<bool, 11>();
    return i32(-1i) * -65273i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 11>();
    var var_0 = select(vec3<bool>(_wgslsmith_add_i32(u_input.c, u_input.c >> (u_input.b.x % 32u)) >= _wgslsmith_div_i32(-19029i, func_1(Struct_1(32856u), vec2<i32>(25836i, u_input.c), Struct_1(4294967295u))), !global0.x, !(global0.x || any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], global0.x, true, global3[_wgslsmith_index_u32(50631u, 11u)])))), select(vec3<bool>(!(u_input.c > -47423i), all(select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 11u)], global0.x), vec3<bool>(false, global3[_wgslsmith_index_u32(17622u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 11u)], true, true))), select(!global0.x, true, false || global0.x)), vec3<bool>(true, !(global0.x || false), select(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 6u)], 11u)], false, false)), select(vec3<bool>(false, false, !global0.x), !(!vec3<bool>(true, false, global0.x)), true)), select(!vec3<bool>(true, global0.x, all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], true))), !vec3<bool>(true, global0.x, !global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), false));
    global1 = array<u32, 6>();
    var var_1 = var_0.xy;
    let var_2 = Struct_1(50583u);
    global2 = (1u >> (var_2.a % 32u)) << (~_wgslsmith_sub_u32(_wgslsmith_div_u32(min(0u, 0u), 4294967295u << (0u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(18610u, 6u)], 6200u, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<u32>(0u, 68042u, 4294967295u, 0u) | u_input.b)) % 32u);
    var var_3 = Struct_2(_wgslsmith_div_f32(-1061f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1056f, -198f)), -100f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f + 1000f) - _wgslsmith_div_f32(-1381f, 941f))))), select(~(~vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 17414u) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-21235i, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, u_input.c)), vec2<bool>(var_0.x, all(vec3<bool>(var_1.x, true, true)))));
    let var_4 = ~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, countOneBits(0i), var_3.b.x, u_input.c), vec4<i32>(1i & u_input.c, var_3.b.x, var_3.b.x, -(~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_u32(min(global1[_wgslsmith_index_u32(68530u, 6u)], 47328u), 103681u)), ~(_wgslsmith_sub_u32(1u ^ global1[_wgslsmith_index_u32(44874u, 6u)], firstTrailingBit(u_input.b.x)) & u_input.b.x));
}

