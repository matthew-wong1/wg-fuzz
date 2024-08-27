struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, false, true, false, false, false, false, false, false, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = any(!vec2<bool>(!(arg_1.a.x != var_0.a.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a.x), 11u)]));
    let var_2 = !any(!vec4<bool>(true & var_1, false, arg_1.b, arg_1.b && false));
    global0 = array<bool, 11>();
    var var_3 = 198f;
    return ~vec3<u32>(_wgslsmith_mult_u32(~(u_input.a.x >> (22907u % 32u)), 86261u), 312u, 1u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<bool, 11>();
    var var_0 = ~(~vec3<u32>(u_input.a.x, 54837u, u_input.b));
    var var_1 = true;
    var_1 = all(vec4<bool>(reverseBits(min(u_input.b, u_input.a.x)) <= ~firstTrailingBit(var_0.x), !(u_input.c.x != _wgslsmith_mod_i32(-27665i, 18594i)), true, any(!vec4<bool>(false, arg_1, true, false))));
    var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0.x), u_input.a.x, ~1u)), vec3<u32>(_wgslsmith_clamp_u32(0u, ~var_0.x, max(21045u, var_0.x)), ~4294967295u & (38548u ^ var_0.x), ~select(u_input.a.x, var_0.x, global0[_wgslsmith_index_u32(0u, 11u)]))), ~select(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 30623u), vec3<u32>(u_input.b, 4294967295u, u_input.a.x)), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a.x, var_0.x, 1u), vec3<u32>(0u, 1u, var_0.x)), func_3(664f, Struct_1(vec4<f32>(arg_3.x, -1136f, -572f, arg_3.x), global0[_wgslsmith_index_u32(u_input.b, 11u)]), -324f)), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], arg_0.b, false)));
    return Struct_1(arg_3, arg_2);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = vec2<i32>(~u_input.c.x, u_input.d.x);
    let var_1 = arg_0.a.xzx;
    let var_2 = true;
    global0 = array<bool, 11>();
    var var_3 = func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-523f, _wgslsmith_f_op_f32(max(-1160f, -122f)), _wgslsmith_f_op_f32(sign(-895f)), arg_0.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 493f, var_1.x, 784f)), vec4<f32>(610f, arg_0.a.x, var_1.x, -917f)))), -53791i == _wgslsmith_dot_vec2_i32(vec2<i32>(-20109i, u_input.c.x), ~u_input.d.xx)), select(all(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_0.b), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, var_2, arg_0.b))), arg_0.b, !(var_2 | global0[_wgslsmith_index_u32(0u, 11u)])), false, _wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_0.a.x, 525f, _wgslsmith_f_op_f32(-arg_0.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(-492f, -339f), _wgslsmith_f_op_f32(f32(-1f) * -471f)))));
    return !(!(var_3.a.x != arg_0.a.x));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = min(u_input.a, u_input.a);
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(107f + -1178f), _wgslsmith_f_op_f32(-arg_0.a.x), 1159f, -1195f) - arg_0.a), arg_0.b), 423f > _wgslsmith_f_op_f32(-func_2(Struct_1(arg_0.a, global0[_wgslsmith_index_u32(6654u, 11u)]), arg_0.b, !global0[_wgslsmith_index_u32(var_0.x, 11u)], vec4<f32>(-1209f, 2430f, arg_0.a.x, 267f)).a.x), true, _wgslsmith_f_op_vec4_f32(func_2(arg_0, true, false, vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2523f), 818f, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))).a * _wgslsmith_f_op_vec4_f32(sign(arg_0.a))));
    global0 = array<bool, 11>();
    let var_2 = _wgslsmith_f_op_vec4_f32(max(var_1.a, vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(arg_0.a.x * var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) * 1222f) + -638f))));
    global0 = array<bool, 11>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(func_2(arg_0, !global0[_wgslsmith_index_u32(1u, 11u)], arg_0.b, vec4<f32>(arg_0.a.x, -278f, arg_0.a.x, arg_0.a.x)).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1877f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)), _wgslsmith_f_op_f32(f32(-1f) * -121f)) + _wgslsmith_f_op_vec4_f32(-arg_0.a));
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 11>();
    let var_0 = global0[_wgslsmith_index_u32(abs(countOneBits(~0u)), 11u)];
    let var_1 = true;
    let var_2 = !all(!vec2<bool>(var_1 || false, false));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-529f, 2135f, -1457f, 165f), vec4<f32>(1278f, -827f, 299f, -1271f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_1))))), func_4(func_2(Struct_1(vec4<f32>(1000f, -989f, 1315f, -850f), false), var_2, false, vec4<f32>(265f, -272f, -536f, -589f)))))) * vec4<f32>(-116f, 1065f, -805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f + -185f)) - _wgslsmith_f_op_f32(trunc(-2131f)))));
    return StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 9065u, u_input.a.x), vec3<u32>(u_input.b, 0u, u_input.a.x)), vec3<u32>(u_input.b, u_input.a.x, u_input.b)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 13694u, u_input.b), vec3<u32>(u_input.a.x, u_input.b, u_input.b)), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(-u_input.d.x), -28310i, select(-29483i, -2147483647i, false));
    var var_1 = !(~31327u != ~(min(0u, 46160u) & ~u_input.a.x));
    var var_2 = ~(-(~u_input.c.x | ~41436i));
    let var_3 = reverseBits(vec4<i32>(19134i >> (u_input.a.x % 32u), var_0.x, -19815i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x), var_0), select(vec3<i32>(u_input.c.x, -2147483647i, var_0.x), u_input.d, vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], false))) >> (31259u % 32u)));
    var var_4 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 14273u, u_input.a.x), vec3<u32>(1u, 1u, u_input.b)), vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.a.x, u_input.b), abs(min(~(~vec3<u32>(u_input.a.x, 50131u, u_input.b)), ~vec3<u32>(u_input.a.x, 1u, u_input.a.x))));
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(u_input.a.x, 24190u)), 11u)];
    let x = u_input.a;
    s_output = func_1();
}

