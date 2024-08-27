struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, false, false, true, true, true, false, true, false, true, false, true, false, false, true, true, false, true, true, false, false, false, false, true, true, false, false, true, true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    return ~(-1i | arg_0.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = firstTrailingBit(u_input.a);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(32357u << (arg_2.x % 32u), ~31435u, u_input.a.x ^ var_0.x, _wgslsmith_div_u32(var_0.x, 4294967295u)), vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 15067u), vec3<u32>(1u, u_input.a.x, 3783u)), ~arg_2.x, u_input.a.x) << (abs(~vec4<u32>(4294967295u, 111529u, var_0.x, var_0.x)) % vec4<u32>(32u))), min(_wgslsmith_mod_vec4_i32(firstTrailingBit(min(vec4<i32>(1i, 2147483647i, -1i, 2147483647i), vec4<i32>(88780i, 2147483647i, 0i, 1i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(56188i, -2147483647i, -22658i, 3279i), vec4<i32>(1i, 1i, 1i, 1i))), ~((vec4<i32>(-15876i, -1i, -15873i, -1i) << (vec4<u32>(var_0.x, 4294967295u, 26914u, u_input.a.x) % vec4<u32>(32u))) & vec4<i32>(-15434i, -2147483647i, -60586i, -24644i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(arg_0.b.xwy));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(530f)))), arg_3)), global0[_wgslsmith_index_u32(var_0.x, 25u)]);
    return arg_2.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, func_3(Struct_2(vec3<bool>(false, false, true), vec4<f32>(-549f, arg_0, global0[_wgslsmith_index_u32(91378u, 25u)], 1065f)), Struct_2(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], true), vec4<f32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 25u)], -1049f, -360f)), vec3<u32>(u_input.a.x, u_input.a.x, 78217u), -1550f), 58889u), _wgslsmith_add_vec4_u32(vec4<u32>(42085u, 28167u, u_input.a.x, u_input.a.x), max(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 8639u, 1u, 31781u)))) & vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 69791u << (u_input.a.x % 32u)), ~(~4294967295u)), vec4<i32>(-29055i, 34050i, -6310i, 0i));
    var var_1 = Struct_2(select(!vec3<bool>(!global1[_wgslsmith_index_u32(var_0.a.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(6488u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.a.x, 31u)], false), !(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), var_0.b.x != (var_0.b.x & var_0.b.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(15862u, 31u)], any(vec4<bool>(global1[_wgslsmith_index_u32(17340u, 31u)], false, false, false)), global1[_wgslsmith_index_u32(51583u, 31u)]), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false), vec3<bool>(global1[_wgslsmith_index_u32(63552u, 31u)], true, true), true), global1[_wgslsmith_index_u32(~5910u, 31u)])), vec4<f32>(global0[_wgslsmith_index_u32(904u, 25u)], 1957f, _wgslsmith_f_op_f32(arg_1 + 260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(sign(arg_0)))) - 1000f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.b.wzz);
    let var_3 = Struct_1(~vec4<u32>(var_0.a.x, 27117u, 959u, ~(~u_input.a.x)), ~(-select(vec4<i32>(-2147483647i, 50805i, var_0.b.x, var_0.b.x), vec4<i32>(var_0.b.x, -42929i, var_0.b.x, var_0.b.x), var_1.a.x)));
    var var_4 = Struct_2(select(vec3<bool>(!select(false, var_1.a.x, false), var_1.a.x, all(!vec3<bool>(true, global1[_wgslsmith_index_u32(103843u, 31u)], global1[_wgslsmith_index_u32(var_3.a.x, 31u)]))), vec3<bool>(!(-5463i != var_0.b.x), select(true, !global1[_wgslsmith_index_u32(1u, 31u)], false), any(var_1.a.zx)), false), vec4<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(816f - var_1.b.x) + _wgslsmith_f_op_f32(-var_1.b.x))), -456f, -1550f));
    return -_wgslsmith_mult_i32(var_0.b.x, ~(i32(-1i) * -2520i)) << (var_0.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    var var_0 = ~_wgslsmith_div_u32(u_input.a.x, 29208u);
    var var_1 = select(select(vec4<bool>(global1[_wgslsmith_index_u32(32957u, 31u)], true, true, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), !select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], false, true, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(19526u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), all(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)] > -923f))), vec4<bool>(true, reverseBits(1i) >= _wgslsmith_div_i32(~(-74677i), func_1(vec2<i32>(-41970i, 0i), 15265i)), ~_wgslsmith_mult_u32(u_input.a.x, 1u) >= ~u_input.a.x, true), !(!vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], !global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true)));
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-2147483647i >> (u_input.a.x % 32u)) ^ 1i, ~19172i, -1i, func_2(global0[_wgslsmith_index_u32(~50939u, 25u)], _wgslsmith_f_op_f32(step(-1330f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 25u)])))))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, ~(~(-43724i))), -6461i));
}

