struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(41073u, 60902u), vec2<u32>(38035u, 158451u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4670u, 128209u), vec2<u32>(4294967295u, 84980u), vec2<u32>(34628u, 1u), vec2<u32>(37967u, 21380u), vec2<u32>(5793u, 40884u), vec2<u32>(1u, 36438u), vec2<u32>(4294967295u, 40394u), vec2<u32>(45260u, 8551u), vec2<u32>(1u, 43435u));

var<private> global1: array<f32, 9> = array<f32, 9>(-727f, 431f, 798f, 139f, 554f, 1437f, 247f, -857f, -975f);

var<private> global2: Struct_1;

var<private> global3: array<i32, 7>;

var<private> global4: i32 = -46789i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = reverseBits(~(~(~u_input.b.x) >> (1u % 32u)));
    let var_1 = Struct_1(!vec3<bool>(global2.a.x, true, 4294967295u >= _wgslsmith_mult_u32(global2.b, global2.b)), 25689u);
    let var_2 = true;
    global3 = array<i32, 7>();
    global3 = array<i32, 7>();
    return ~(~_wgslsmith_mult_vec3_u32(select(countOneBits(vec3<u32>(97341u, u_input.b.x, 0u)), ~vec3<u32>(var_1.b, 1u, 1u), !global2.a), vec3<u32>(u_input.b.x, 115621u, global2.b) ^ ~vec3<u32>(0u, var_1.b, u_input.b.x)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global2 = Struct_1(vec3<bool>(true, any(vec4<bool>(arg_1 > 2147483647i, true, true, global1[_wgslsmith_index_u32(1u, 9u)] >= arg_0)), global2.a.x), max(0u, u_input.b.x));
    let var_0 = 56929u;
    global4 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, var_0), vec3<u32>(1u, var_0, u_input.b.x), vec3<u32>(97891u, 0u, u_input.b.x)) >> (func_3() % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(global2.b, 0u, 0u), vec3<u32>(var_0, var_0, 1u)), reverseBits(vec3<u32>(var_0, u_input.b.x, u_input.b.x)), vec3<u32>(15931u, 30760u, 41706u))), 7u)], min(-1i, u_input.a.x), 2147483647i), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(-25729i), reverseBits(-1i) ^ global3[_wgslsmith_index_u32(1u, 7u)]), abs(-_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_0, 7u)], arg_1)), u_input.a.x, -1i));
    var var_1 = vec2<u32>(global2.b, u_input.b.x);
    let var_2 = Struct_1(global2.a, ~4902u);
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = global2.b;
    let var_1 = Struct_1(vec3<bool>(!(global3[_wgslsmith_index_u32(~u_input.b.x, 7u)] == u_input.a.x), false, false), _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), 9150u));
    var var_2 = !all(vec4<bool>(var_1.a.x, true, global1[_wgslsmith_index_u32(abs(0u), 9u)] < _wgslsmith_f_op_f32(abs(1441f)), true));
    var_0 = 53443u;
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, var_1.b), countOneBits(u_input.b.x)), 9u)] - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(abs(4294967295u), 9u)])))), global3[_wgslsmith_index_u32(u_input.b.x, 7u)]);
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(max(4294967295u, var_1.b)), func_3().x), 9u)], _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.zz << ((global0[_wgslsmith_index_u32(var_3.b, 13u)] >> (vec2<u32>(var_3.b, global2.b) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -1i) ^ ~global3[_wgslsmith_index_u32(30723u, 7u)], 33372i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_sub_u32(~abs(u_input.b.x), firstTrailingBit(~64567u));
    global2 = func_1();
    global1 = array<f32, 9>();
    let var_2 = !(!(func_2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0.b, 9u)])), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(global2.b, 7u)], 0i)).a.x & !var_0.a.x));
    var var_3 = _wgslsmith_mod_u32(~1u, 5633u);
    var_0 = func_1();
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-649f, global1[_wgslsmith_index_u32(4294967295u, 9u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~(4294967295u & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, global2.b, u_input.b.x), vec3<u32>(u_input.b.x, 62899u, 1u)), _wgslsmith_mult_u32(var_0.b, 1u))), vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 7u)], max(u_input.a.x, max(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_0.b, 7u)], -2147483647i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1208f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global2.b, 20990u), vec3<u32>(4294967295u, global2.b, u_input.b.x)), 9u)]))))), func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)]), ~_wgslsmith_clamp_i32(u_input.a.x, 19555i, i32(-1i) * -21569i)).b);
}

