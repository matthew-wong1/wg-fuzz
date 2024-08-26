struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: array<u32, 15> = array<u32, 15>(1u, 12665u, 49213u, 7641u, 17836u, 35306u, 0u, 0u, 4294967295u, 47012u, 4294967295u, 0u, 4294967295u, 36079u, 4294967295u);

var<private> global2: vec4<u32> = vec4<u32>(0u, 45368u, 82178u, 0u);

var<private> global3: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = 1952f;
    var var_1 = arg_1;
    global3 = ~arg_1.a;
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, arg_1.a, var_1.a), abs(vec3<u32>(19718u, _wgslsmith_clamp_u32(0u, 0u, 36829u), ~arg_0.x)), ~vec3<u32>(arg_1.a, ~u_input.b.x, 2821u));
    let var_3 = Struct_2(381f, arg_1, Struct_1(4294967295u, 0i));
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    global3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(arg_0.c.a, ~(~u_input.d), func_3(~arg_3.wy, arg_0.c))), _wgslsmith_div_u32(~98655u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, global2.x, 1u, 5924u), max(arg_3, arg_3), vec4<bool>(true, true, true, true)), ~(~arg_3))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yz + vec2<f32>(arg_2, -1145f)) + _wgslsmith_f_op_vec2_f32(-arg_1.xy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-325f, 1007f) * arg_1.yx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.zw, arg_1.yw)))));
    var var_1 = firstTrailingBit(~reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(15508u, 15u)], global2.x), 15u)], 0u, _wgslsmith_add_u32(global2.x, arg_3.x), ~58971u)));
    let var_2 = vec2<u32>(50084u, _wgslsmith_mod_u32(countOneBits(_wgslsmith_add_u32(4294967295u, u_input.d) << (max(8524u, global1[_wgslsmith_index_u32(arg_0.c.a, 15u)]) % 32u)), min(9249u, select(~2186u, 4294967295u, true))));
    var var_3 = max(~u_input.c, u_input.c);
    return _wgslsmith_sub_i32(~arg_0.b.b, 17922i);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = countOneBits(~_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(reverseBits(u_input.a), func_2(Struct_2(arg_2, Struct_1(global1[_wgslsmith_index_u32(0u, 15u)], arg_0), Struct_1(0u, 28701i)), vec4<f32>(1000f, 2285f, arg_2, arg_2), -364f, u_input.b))));
    let var_1 = u_input.c.wx;
    var var_2 = vec3<bool>(all(vec4<bool>(!all(vec4<bool>(false, true, true, false)), _wgslsmith_add_i32(0i, arg_0) != var_1.x, (8354u | global1[_wgslsmith_index_u32(u_input.b.x, 15u)]) > 1u, true)), true, all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(false, true, true, true)) & select(false, true, false))));
    global2 = abs(vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(global2.x), min(0u, 105784u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 30919u), _wgslsmith_mult_u32(78732u, 1u)), arg_3, select(global2.x, 1u, true)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.b.x, 83551u), ~u_input.b.x), vec4<u32>(u_input.d, ~54468u, 48310u << (0u % 32u), arg_3), ~u_input.b) % vec4<u32>(32u)));
    let var_3 = vec2<u32>(func_3(vec2<u32>(~arg_3, ~global2.x), Struct_1(~global1[_wgslsmith_index_u32(arg_3, 15u)], 1i)), global1[_wgslsmith_index_u32(max(_wgslsmith_div_u32(1u, global2.x), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(20189u, 1u), 15u)]), 15u)]) & vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_3, 15u)], u_input.b.x, global2.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], arg_3, 15191u)), 4294967295u, global2.x) ^ (~global1[_wgslsmith_index_u32(u_input.b.x, 15u)] & ~1u), 27956u);
    return Struct_2(893f, Struct_1(19883u, firstTrailingBit(_wgslsmith_div_i32(2147483647i, ~u_input.c.x))), Struct_1(abs(_wgslsmith_dot_vec4_u32(u_input.b, select(vec4<u32>(1u, arg_3, 69536u, 10355u), vec4<u32>(u_input.d, 0u, 33247u, global1[_wgslsmith_index_u32(global2.x, 15u)]), global0[_wgslsmith_index_u32(u_input.d, 21u)]))), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    let var_1 = func_1(i32(-1i) * -1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(u_input.a >> (global2.x % 32u)), countOneBits(i32(-1i) * -1i)), ~(-22334i)), _wgslsmith_f_op_f32(f32(-1f) * -482f), ~(~(reverseBits(u_input.b.x) | _wgslsmith_mod_u32(u_input.d, global2.x))));
    let var_2 = func_1(5509i, firstLeadingBit(-u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), 15177u).c;
    global3 = ~1u;
    let var_3 = func_1(func_1(_wgslsmith_mult_i32(countOneBits(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, var_1.c.b, u_input.c.x, var_1.c.b), u_input.c)), ~var_1.b.b, -160f, 4294967295u).c.b ^ -_wgslsmith_clamp_i32(max(-8500i, var_2.b), _wgslsmith_add_i32(39668i, -1i), -4603i), var_1.b.b, _wgslsmith_div_f32(159f, _wgslsmith_f_op_f32(f32(-1f) * -422f)), u_input.d).c;
    global0 = array<vec4<bool>, 21>();
    var var_4 = vec3<bool>(all(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), (var_3.a == 0u) || false)), ((min(var_3.b, 1i) << (min(var_3.a, var_2.a) % 32u)) <= ~countOneBits(2147483647i)) & any(vec2<bool>(true, true)), all(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global2.x), u_input.b.yyy), 21u)], select(!global0[_wgslsmith_index_u32(9515u, 21u)], select(vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(28962u, 21u)], vec4<bool>(true, true, true, true)), true), vec4<bool>(true, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1298f, var_1.a, var_1.a, -1688f) + vec4<f32>(1112f, 1165f, 941f, var_1.a))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(219f, var_1.a, var_1.a, var_1.a))))))), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_3.b), var_1.c.b, reverseBits(var_1.b.b)), vec3<i32>(1i, ~var_1.c.b, var_3.b))), ~vec4<u32>(_wgslsmith_clamp_u32(1u, reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.a, 15u)], 15u)]), _wgslsmith_add_u32(u_input.d, 4294967295u)), ~0u, firstLeadingBit(u_input.b.x), var_2.a), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global2.x, select(1833u, var_1.c.a, false), global2.x << (var_1.c.a % 32u))), reverseBits(u_input.b.xwy)));
}

