struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(true);
    var var_1 = true;
    let var_2 = ~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9472u, u_input.b, 4294967295u), vec4<u32>(105400u, 64736u, 0u, u_input.b)), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))));
    let var_3 = Struct_2(Struct_1(all(select(!vec2<bool>(false, var_0.a), vec2<bool>(false, false), !var_0.a))), select(!(!(!vec3<bool>(var_0.a, var_0.a, var_0.a))), vec3<bool>(_wgslsmith_div_i32(u_input.a, -1i) <= ~29229i, var_0.a | var_0.a, false), vec3<bool>(any(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), var_0.a)), !any(vec4<bool>(var_0.a, var_0.a, false, var_0.a)), ~var_2 > 1u)), abs(-(vec3<i32>(global0[_wgslsmith_index_u32(var_2, 20u)], u_input.a, 1i) << (vec3<u32>(1u, 1u, var_2) % vec3<u32>(32u))) << ((~vec3<u32>(u_input.b, var_2, 0u) >> (countOneBits(vec3<u32>(u_input.b, u_input.b, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_4 = Struct_1(var_3.a.a);
    return ~abs(1u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    global0 = array<i32, 20>();
    let var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(14235u, u_input.b) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_sub_u32(~25648u, 1u), 1u) ^ vec3<u32>(~firstTrailingBit(func_3()), 1u, 1u >> (~(~u_input.b) % 32u));
    var var_1 = arg_1.a;
    let var_2 = Struct_2(Struct_1(var_1.a), vec3<bool>(var_1.a, false, arg_2.a), arg_1.c);
    global0 = array<i32, 20>();
    return select(vec2<bool>(!(arg_2.a & false), false), !select(arg_1.b.zz, arg_1.b.xy, true), false);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_add_vec2_u32(~(~abs(~vec2<u32>(1u, u_input.b))), abs(((vec2<u32>(16279u, 0u) & vec2<u32>(u_input.b, 1u)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) ^ select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1u), func_2(false, Struct_2(Struct_1(true), vec3<bool>(false, false, false), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(13470u, 20u)], 23229i)), Struct_1(false), vec3<f32>(363f, -1000f, -1140f)))));
    var var_1 = vec2<bool>(false, select(false, false == !all(vec3<bool>(false, true, false)), !select(true, false, false) != (any(vec2<bool>(false, false)) | true)));
    global0 = array<i32, 20>();
    var_1 = !vec2<bool>(var_1.x, var_1.x);
    let var_2 = _wgslsmith_mult_u32(62243u, var_0.x);
    return _wgslsmith_f_op_f32(max(1490f, _wgslsmith_f_op_f32(round(-689f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    let var_0 = -1445f;
    var var_1 = _wgslsmith_f_op_f32(min(1000f, var_0));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))) * -290f) * _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f))));
    var var_2 = -max(select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], -32371i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(58230u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], 0i)), ~vec3<i32>(17553i, 0i, -1i)), select(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]) ^ vec3<i32>(u_input.a, 0i, -1515i), firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(13502u, 20u)], -2147483647i, 31721i)), vec3<bool>(true, false, false)), !select(true, true, true)), vec3<i32>(-26734i, global0[_wgslsmith_index_u32(max(~u_input.b, u_input.b), 20u)], -1i));
    var var_3 = vec3<i32>(reverseBits(u_input.a), global0[_wgslsmith_index_u32(47363u, 20u)], _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 20u)], 31394i), vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a ^ u_input.a, -11439i ^ global0[_wgslsmith_index_u32(u_input.b, 20u)]), firstTrailingBit(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], var_2.x, 69683i)), vec3<i32>(var_2.x, var_2.x, var_2.x), abs(vec3<i32>(2147483647i, u_input.a, 0i))))));
    var var_4 = !vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(82328u, -_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-1i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(27939u, 20u)], var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(var_3.x, -2147483647i)), 2147483647i), abs(select(vec4<i32>(2147483647i, 2147483647i, var_2.x, 41373i), vec4<i32>(12217i, var_3.x, -5392i, global0[_wgslsmith_index_u32(u_input.b, 20u)]), var_4.x))), var_2.x, -586f, u_input.b);
}

