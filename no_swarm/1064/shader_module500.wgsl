struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: array<f32, 32>;

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true));

var<private> global3: array<f32, 24> = array<f32, 24>(156f, -1618f, 1000f, 262f, 137f, 1416f, 236f, -1477f, 280f, -1761f, 139f, 1358f, 729f, 1860f, -460f, 624f, -158f, 1127f, 1960f, 537f, -259f, -119f, 1000f, -741f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a | 67690u, u_input.a, countOneBits(u_input.a)), vec4<u32>(u_input.a, ~(~13500u), 4294967295u, 22868u)), ~(u_input.c & u_input.c), ~vec3<u32>(select(u_input.a, 9388u, var_0), u_input.c, 4294967295u));
    global0 = array<vec3<i32>, 17>();
    var var_2 = !select(vec2<bool>(any(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 19u)]), select(all(vec3<bool>(var_0, false, var_0)), true, !var_0)), select(vec2<bool>(true, all(vec2<bool>(true, var_0))), select(!vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), all(vec4<bool>(var_0, var_0, false, var_0))), vec2<bool>(false, u_input.b.x < u_input.b.x)), any(vec3<bool>(all(vec4<bool>(false, var_0, false, true)), !var_0, false)));
    var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, u_input.a) << (~vec4<u32>(25166u, var_1.c.x, var_1.b, var_1.a) % vec4<u32>(32u)), ~abs(abs(vec4<u32>(88927u, 2334u, 0u, var_1.a)))), var_1.b, _wgslsmith_sub_vec3_u32(~var_1.c, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.b, 49380u), var_1.c)) >> (vec3<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(u_input.c)), min(~0u, u_input.c), 10074u) % vec3<u32>(32u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.c.yx & vec2<u32>(~0u, 6058u), vec2<u32>(u_input.a, ~4294967295u)), 17u)];
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = select(vec3<i32>(_wgslsmith_mult_i32(29650i, -1i), ~arg_1, u_input.b.x) & max(vec3<i32>(u_input.b.x, arg_1, -4864i), func_3()), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, 27077i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -24589i))), 1i, -24286i), !(!(arg_1 >= 3229i))) | ~(vec3<i32>(u_input.b.x, 5120i, -arg_1) << (~vec3<u32>(4479u, 33787u, 31495u) % vec3<u32>(32u)));
    global0 = array<vec3<i32>, 17>();
    var var_1 = arg_0;
    global2 = array<vec4<bool>, 19>();
    var var_2 = global3[_wgslsmith_index_u32(~reverseBits(~7836u & max(select(arg_0.b, var_1.a, true), ~0u)), 24u)];
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    global3 = array<f32, 24>();
    let var_0 = arg_1;
    global1 = array<f32, 32>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    var var_2 = arg_2.wzw;
    return -523f;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = array<vec3<i32>, 17>();
    var var_0 = vec3<f32>(-2353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1746f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -273f))) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(48687u, 32u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10230u, 15433u, 56612u), vec3<u32>(15271u, 22086u, u_input.a)), 32u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 24u)], -1925f))), _wgslsmith_f_op_f32(func_4(1u, Struct_2(vec3<u32>(1u, 1u, u_input.c), vec2<u32>(4294967295u, 4294967295u), Struct_1(41715u, 47190u, vec3<u32>(u_input.a, arg_0, arg_0)), func_2(Struct_1(u_input.a, arg_0, vec3<u32>(1u, arg_0, 1u)), u_input.b.x), func_2(Struct_1(arg_0, 502u, vec3<u32>(4294967295u, 0u, 62978u)), -16355i)), vec4<i32>(firstTrailingBit(u_input.b.x), u_input.b.x << (u_input.a % 32u), u_input.b.x, -13797i & u_input.b.x))))));
    global0 = array<vec3<i32>, 17>();
    var var_1 = Struct_1(arg_0, 9379u >> (firstLeadingBit(_wgslsmith_clamp_u32(0u, ~u_input.a, _wgslsmith_sub_u32(24341u, arg_0))) % 32u), vec3<u32>(abs(arg_0), ~(u_input.c >> (~4294967295u % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(10861u, 1u) ^ _wgslsmith_mult_u32(u_input.a, 28734u), _wgslsmith_mult_u32(0u, 0u))));
    global2 = array<vec4<bool>, 19>();
    return StorageBuffer(firstLeadingBit(~global0[_wgslsmith_index_u32(~var_1.c.x, 17u)]) ^ func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let x = u_input.a;
    s_output = func_1(~u_input.c);
}

