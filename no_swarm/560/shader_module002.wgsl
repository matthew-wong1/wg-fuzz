struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(31601u, 0u, 4294967295u, 111113u, 10598u, 0u);

var<private> global1: array<f32, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = array<f32, 2>();
    global0 = array<u32, 6>();
    return vec4<u32>(u_input.a, _wgslsmith_mult_u32(select(abs(_wgslsmith_mult_u32(17449u, 32338u)), u_input.b, false), _wgslsmith_clamp_u32(~abs(u_input.a), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 6u)], 6u)], ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8968u, 60293u), vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 6u)])), 6u)])), 1u, 4294967295u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = !(!all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_dot_vec4_u32(func_3(), reverseBits(vec4<u32>(17026u, func_3().x ^ global0[_wgslsmith_index_u32(13964u, 6u)], abs(~1u), 1u)));
    return Struct_1(~(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25379u, 6u)], 6u)], _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(26672u, 6u)])), 6u)] & firstLeadingBit(u_input.a)), firstLeadingBit(~(~(vec4<u32>(global0[_wgslsmith_index_u32(23360u, 6u)], u_input.b, global0[_wgslsmith_index_u32(107821u, 6u)], u_input.b) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], 0u, u_input.b, u_input.b) % vec4<u32>(32u))))), vec2<bool>(any(select(!vec4<bool>(false, var_0, true, var_0), vec4<bool>(true, var_0, var_0, var_0), !vec4<bool>(var_0, var_0, false, false))), false));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> u32 {
    global0 = array<u32, 6>();
    let var_0 = vec2<bool>(arg_1, true);
    var var_1 = func_2(_wgslsmith_mult_i32(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, reverseBits(0i), -11144i), vec3<i32>(_wgslsmith_mod_i32(arg_2, -5653i), u_input.c.x << (u_input.a % 32u), 3378i))));
    let var_2 = Struct_2(var_1.b);
    let var_3 = ~_wgslsmith_div_vec3_u32(~abs(abs(var_2.a.zzw)), ~(countOneBits(var_2.a.wwz) & var_1.b.zyy));
    return select(~47949u, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 1u, 1u), vec4<u32>(u_input.a, var_1.a, u_input.b, 0u)), max(vec4<u32>(1u, 0u, var_3.x, 0u), var_1.b)) >> (1u % 32u)), ((true || !arg_1) | true) && !var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(!(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], u_input.a) <= 47685u), !all(vec4<bool>(true, false, false, false)), true, select(func_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 2u)], false, 0i), ~global0[_wgslsmith_index_u32(15611u, 6u)], global0[_wgslsmith_index_u32(3920u, 6u)] < 4294967295u) < global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, max(6316u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)])), 6u)]));
    global0 = array<u32, 6>();
    let var_1 = vec3<f32>(-651f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(17308u, 1u), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 6u)]))), 2u)] - 1268f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -597f))));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(select(_wgslsmith_add_vec4_u32(func_3(), vec4<u32>(21253u, global0[_wgslsmith_index_u32(u_input.a, 6u)], 1u, global0[_wgslsmith_index_u32(17533u, 6u)]) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98802u, 6u)], 6u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(90748u, 6u)])), vec4<u32>(countOneBits(u_input.b), ~global0[_wgslsmith_index_u32(20513u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], ~4294967295u), !(!vec4<bool>(false, false, true, var_0)))), vec4<u32>(~(~max(u_input.b, u_input.a)), ~_wgslsmith_sub_u32(~16589u, func_2(-44621i).b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~60462u, 1u, _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(19217u, 6u)])), ~(~vec3<u32>(u_input.b, 15298u, 0u))), 4294967295u));
    var var_3 = ~(~(~(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec3_i32(u_input.c.www, ~(-u_input.c.zxz))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1000f, -1256f, var_1.x) * vec4<f32>(var_1.x, var_1.x, -861f, -686f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1156f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 2u)], var_1.x, global1[_wgslsmith_index_u32(11678u, 2u)], var_1.x))))));
}

