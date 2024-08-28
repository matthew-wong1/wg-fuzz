struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(1u, 42585u, 4294967295u, 4294967295u, 22931u, 4497u, 4294967295u, 89171u, 5379u);

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(26486i), Struct_1(-14425i), Struct_1(1i), Struct_1(-699i), Struct_1(1i), Struct_1(36835i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(2147483647i), Struct_1(19001i), Struct_1(-13040i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(39903i), Struct_1(-69308i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(0i), Struct_1(-7439i));

var<private> global4: u32 = 49377u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32) -> i32 {
    global4 = 4294967295u;
    var var_0 = global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 9u)], 9u)], u_input.d, 0u, global0[_wgslsmith_index_u32(global1.a, 9u)]), vec4<u32>(global0[_wgslsmith_index_u32(global2.a, 9u)], global0[_wgslsmith_index_u32(global2.a, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global1.a, 9u)], 27796u, u_input.d, global1.a)), vec4<u32>(4136u, 46430u, 1u, 0u)), u_input.d)), _wgslsmith_mult_u32(4294967295u, 0u)), 23u)];
    global4 = 4294967295u;
    var var_1 = 1f;
    var_1 = _wgslsmith_f_op_f32(-1086f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -904f)), global2.b.x))));
    return i32(-1i) * -17142i;
}

fn func_2() -> Struct_3 {
    var var_0 = global2.b;
    var var_1 = Struct_2(4294967295u, !(!global2.b), global3[_wgslsmith_index_u32(global1.a, 23u)], Struct_1(func_3(-4424i) >> (_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7164u, 9u)], 9u)], global2.a, u_input.e.x)) % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(select(104655u, global2.a, any(!vec4<bool>(false, global2.b.x, true, true))), 9u)], 1u), 23u)]);
    var var_2 = global2.c.a;
    var var_3 = 1i;
    let var_4 = Struct_2(4029u, select(var_1.b, select(vec3<bool>(any(vec4<bool>(var_1.b.x, true, global2.b.x, false)), any(vec2<bool>(true, var_0.x)), global2.b.x), vec3<bool>(true, !var_0.x, true), var_0.x), true), Struct_1(2147483647i), var_1.d, Struct_1(-49431i));
    return Struct_3(_wgslsmith_clamp_u32(abs(0u) & ~(~global2.a), 1u, global2.a), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.b.x)))), global1.b.x), ~((i32(-1i) * -u_input.c) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 7114u), vec2<u32>(var_1.a, 27623u)) % 32u)));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = ~(~(global2.a ^ 40867u));
    let var_1 = vec2<u32>(global0[_wgslsmith_index_u32(7432u, 9u)], ~(~select(countOneBits(80053u), 4294967295u, global2.b.x)));
    let var_2 = func_2();
    global0 = array<u32, 9>();
    global1 = var_2;
    return global2.b.x;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = func_2();
    global1 = func_2();
    var var_0 = (~(~30516u) | ~(~_wgslsmith_add_u32(u_input.e.x, 8947u))) ^ _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 9u)], u_input.d, 1u)), reverseBits(vec3<u32>(firstTrailingBit(41294u), func_2().a, 65177u)));
    let var_1 = max(1u, 1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + global1.b.x) + global1.b.x)))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.x)))), global1.b.x));
    return Struct_2(firstTrailingBit(1u), !(!select(!global2.b, !arg_2.b, vec3<bool>(global2.b.x, arg_1.x, arg_2.b.x))), Struct_1(_wgslsmith_dot_vec2_i32(min(vec2<i32>(26819i, 2147483647i), vec2<i32>(u_input.c, arg_3.a)), max(vec2<i32>(arg_2.d.a, global1.c), vec2<i32>(0i, global1.c))) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.a, 31684u, 22416u), ~vec3<u32>(4294967295u, global1.a, 1u)) % 32u)), Struct_1(arg_3.a), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(~(-2147483647i), !vec2<bool>(any(global2.b) & func_1(global2.b.x), global2.b.x), Struct_2(_wgslsmith_sub_u32(~43231u, u_input.e.x), vec3<bool>(global2.b.x, global2.b.x, true), Struct_1(41483i), Struct_1(~(-2147483647i >> (u_input.e.x % 32u))), Struct_1(~(~u_input.b))), Struct_1(global2.d.a));
    let var_0 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1.c, countOneBits(global1.c) | countOneBits(global1.c), reverseBits(-abs(global1.c)), global1.c), _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(19079u, global1.a, 4294967295u, 0u), abs(vec4<u32>(60509u, global0[_wgslsmith_index_u32(global2.a, 9u)], global2.a, 59719u))), vec4<u32>(102207u & global2.a, global1.a, global2.a, 4294967295u), countOneBits(reverseBits(vec4<u32>(21416u, 26336u, 11691u, global1.a)))) | (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, global0[_wgslsmith_index_u32(9447u, 9u)], global2.a), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.e.x)) ^ ~(~vec4<u32>(4294967295u, global1.a, u_input.e.x, global1.a))), _wgslsmith_add_vec2_u32(~countOneBits(~vec2<u32>(0u, u_input.e.x)), u_input.e));
}

