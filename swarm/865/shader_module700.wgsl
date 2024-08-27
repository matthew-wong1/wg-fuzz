struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 18>;

var<private> global2: vec2<u32> = vec2<u32>(32183u, 1u);

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> vec3<bool> {
    global3 = _wgslsmith_clamp_u32(countOneBits(max(~_wgslsmith_add_u32(arg_2, arg_2), 50882u)), 19324u, 11221u);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(floor(474f)))) - -777f)), select(((arg_1.x & arg_1.x) && true) & true, !(_wgslsmith_f_op_f32(step(arg_0.a, -1003f)) >= arg_0.a), !(!(32228u >= arg_2))), _wgslsmith_add_u32(~countOneBits(arg_0.c), ~_wgslsmith_sub_u32(arg_2, min(global1[_wgslsmith_index_u32(0u, 18u)], 68092u))));
    let var_1 = arg_1.x;
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(u_input.a << (arg_2 % 32u), ~u_input.a), ~1i, 0i);
    var_0 = arg_0;
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = 1000f;
    let var_1 = select(~select(~vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(global2.x, 25162u, global2.x) >> (~vec3<u32>(global2.x, global2.x, 23757u) % vec3<u32>(32u)), false), ~(~select(vec3<u32>(0u, global2.x, global2.x) & vec3<u32>(global2.x, 23951u, 27523u), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, 76945u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), select(vec3<bool>(true, true, true), func_3(Struct_1(_wgslsmith_f_op_f32(trunc(arg_0)), global2.x != global1[_wgslsmith_index_u32(16642u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51157u, 18u)], 18u)], 18u)] >> (0u % 32u), 1u)), !(!(arg_2 >= 1417f))));
    global3 = abs(~61051u);
    var var_2 = 0u;
    var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(~4294967295u, 18u)], 5248u, 66327u, 1u), countOneBits(~vec4<u32>(var_1.x, 1u, 4294967295u, 61077u)));
    return firstLeadingBit(~_wgslsmith_clamp_u32(45472u, 1u, global2.x) << (36691u % 32u)) & ~min(~(~global1[_wgslsmith_index_u32(var_1.x, 18u)]), global2.x);
}

fn func_1() -> f32 {
    global2 = firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global2.x, 18u)], func_2(_wgslsmith_f_op_f32(round(-1902f)), vec4<f32>(-608f, 843f, -107f, 656f), _wgslsmith_f_op_f32(322f - 194f))), global2.x));
    global0 = _wgslsmith_mult_u32(global2.x, ~(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global2.x, 18u)], min(4294967295u, 25827u))));
    var var_0 = 1u;
    return _wgslsmith_f_op_f32(775f + _wgslsmith_f_op_f32(ceil(-527f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = _wgslsmith_div_u32(~(~0u & ~select(arg_0.c, arg_1, arg_0.b)), abs(~(~arg_0.c)) << (global2.x % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(233f)) - _wgslsmith_div_f32(arg_0.a, arg_0.a)))), true, global1[_wgslsmith_index_u32(15762u, 18u)]);
    global4 = array<vec4<bool>, 22>();
    global2 = ~(~firstTrailingBit(vec2<u32>(4294967295u, 59318u)));
    return ~_wgslsmith_clamp_u32(var_1, abs(~4294967295u) | min(~arg_1, 83535u), 20696u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    let var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(10829i, ~u_input.a, abs(countOneBits(u_input.a)), u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, reverseBits(-2147483647i), _wgslsmith_add_i32(-11745i, 1i), -15820i), vec4<i32>(u_input.a, u_input.a, _wgslsmith_mult_i32(-1i, u_input.a), u_input.a)));
    var_0 = ~func_4(Struct_1(_wgslsmith_f_op_f32(func_1()), any(vec2<bool>(false, true)), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x) ^ vec2<u32>(global2.x, 1257u), min(vec2<u32>(21326u, 79347u), vec2<u32>(1u, 4294967295u)))) << (~68813u % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(round(-1211f))))), any(select(!global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~21444u, 18u)], 22u)], vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(any(global4[_wgslsmith_index_u32(global2.x, 22u)]), true, u_input.a == u_input.a, true))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23289u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global2.x, 18u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(24383u, 18u)], 0u), vec2<u32>(global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48285u, 18u)], 18u)])))), 18u)], 18u)]);
    var var_3 = Struct_1(1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + var_2.a) < 482f, global2.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(1153f)), func_3(Struct_1(614f, var_2.b, _wgslsmith_clamp_u32(var_3.c, global1[_wgslsmith_index_u32(min(global2.x, global1[_wgslsmith_index_u32(var_2.c, 18u)]), 18u)], 4294967295u)), !vec3<bool>(var_2.b & var_3.b, !var_2.b, all(global4[_wgslsmith_index_u32(38332u, 22u)])), 1u).x, _wgslsmith_dot_vec4_u32(vec4<u32>(5940u, ~_wgslsmith_add_u32(0u, global2.x), max(~global1[_wgslsmith_index_u32(1u, 18u)], 0u), var_3.c >> (_wgslsmith_mult_u32(global2.x, var_3.c) % 32u)), max(select(~vec4<u32>(var_2.c, global1[_wgslsmith_index_u32(37509u, 18u)], 44129u, global1[_wgslsmith_index_u32(21026u, 18u)]), vec4<u32>(2591u, 1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 18u)]), select(vec4<bool>(false, var_3.b, var_3.b, var_2.b), vec4<bool>(true, var_2.b, false, var_2.b), vec4<bool>(var_3.b, false, false, var_2.b))), select(~vec4<u32>(9735u, 4294967295u, 60757u, var_3.c), min(vec4<u32>(var_2.c, 1u, global1[_wgslsmith_index_u32(127812u, 18u)], var_3.c), vec4<u32>(15685u, 21809u, var_2.c, 1u)), global4[_wgslsmith_index_u32(~72654u, 22u)]))));
    global3 = _wgslsmith_clamp_u32(global2.x, 55280u, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(_wgslsmith_add_i32(12477i, ~44309i), 2147483647i), _wgslsmith_clamp_i32(1i, 6943i, u_input.a), -1i, _wgslsmith_div_vec2_u32(vec2<u32>(0u, reverseBits(reverseBits(var_4.c))), firstLeadingBit(vec2<u32>(4294967295u, 45402u) & select(vec2<u32>(7561u, 8896u), vec2<u32>(var_4.c, 1u), false))));
}

