struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(1i, 47075i, i32(-2147483648)), vec3<i32>(-13085i, -53549i, -1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(42816i, -13693i, -7719i), vec3<i32>(-3594i, 0i, 53810i), vec3<i32>(28078i, -1i, -51769i), vec3<i32>(29042i, 1i, -2382i), vec3<i32>(2147483647i, 13219i, 0i), vec3<i32>(-7619i, 37199i, -39498i), vec3<i32>(-1i, 18463i, 1i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(2147483647i, -1239i, 2147483647i), vec3<i32>(19767i, 2147483647i, 0i), vec3<i32>(39492i, -12343i, -36304i), vec3<i32>(1i, -10186i, -1i), vec3<i32>(-81122i, 0i, 1i), vec3<i32>(1965i, 2147483647i, 0i), vec3<i32>(-23934i, 2147483647i, -35473i), vec3<i32>(-13705i, 1i, -14590i), vec3<i32>(2147483647i, i32(-2147483648), -10783i));

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, false, false, true, false, false, true, false, true, false, false, true, false, true, false, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    let var_0 = arg_0;
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    global0 = array<vec3<i32>, 20>();
    global1 = array<bool, 20>();
    return ~2147483647i;
}

fn func_2() -> f32 {
    global1 = array<bool, 20>();
    global0 = array<vec3<i32>, 20>();
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    let var_0 = Struct_1(u_input.b, abs(min(vec3<i32>(func_3(Struct_1(5673u, vec3<i32>(1i, 11636i, u_input.a.x), u_input.b, -2226f, true), u_input.b, false), 1i, u_input.a.x), global0[_wgslsmith_index_u32(~(~38721u), 20u)])), u_input.b, 1541f, _wgslsmith_div_u32(u_input.b >> (max(u_input.b, 0u) % 32u), abs(51466u)) < ~_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 49423u), vec2<u32>(u_input.b, 4294967295u))));
    return _wgslsmith_f_op_f32(max(-1011f, _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(abs(-818f)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = arg_1;
    global1 = array<bool, 20>();
    var var_1 = arg_2;
    var var_2 = Struct_1(~_wgslsmith_add_u32(36231u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), arg_0.x, var_1.c ^ 0u)), vec3<i32>(u_input.a.x, -4057i, var_0.b.x), ~arg_0.x, _wgslsmith_f_op_f32(floor(var_0.d)), _wgslsmith_add_u32(arg_2.c, firstTrailingBit(~arg_2.a)) <= ~26552u);
    global1 = array<bool, 20>();
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1525f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(vec3<u32>(125213u, min(31680u, u_input.b), ~u_input.b), Struct_1(func_1(vec3<u32>(1u, u_input.b, u_input.b), vec4<i32>(-21930i, u_input.a.x, u_input.c, u_input.a.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], false, global1[_wgslsmith_index_u32(u_input.b, 20u)]), -980f), abs(global0[_wgslsmith_index_u32(u_input.b, 20u)]), u_input.b, _wgslsmith_f_op_f32(func_2()), global1[_wgslsmith_index_u32(func_1(vec3<u32>(14634u, u_input.b, 24125u), vec4<i32>(20215i, u_input.c, u_input.c, u_input.c), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(80998u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]), 760f), 20u)]), Struct_1(u_input.b, vec3<i32>(-33873i, -2147483647i, u_input.c) ^ vec3<i32>(u_input.a.x, -1i, 1i), 1u, -197f, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1610f, -1063f)))))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-112f * _wgslsmith_div_f32(1198f, 1f))));
    var_0 = -472f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2245f)));
    var var_2 = select(select(vec3<bool>(true, all(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(63820u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(2245u, 20u)]), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(1u, 20u)]))), !global1[_wgslsmith_index_u32(0u, 20u)]), !select(vec3<bool>(true, true, false), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(110728u, 20u)]), 1000f == var_1), select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)]), !global1[_wgslsmith_index_u32(23837u, 20u)]), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(7363u, 20u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true), global1[_wgslsmith_index_u32(1u, 20u)])), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(1u, 20u)]))), !select(vec3<bool>(global1[_wgslsmith_index_u32(62583u, 20u)], var_1 > var_1, true), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], true, global1[_wgslsmith_index_u32(17950u, 20u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], false), !global1[_wgslsmith_index_u32(19252u, 20u)]), false & any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 20u)], true, false))), vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, 0u & u_input.b), 20u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 82324u, 56431u), vec4<u32>(4294967295u, 48176u, u_input.b, 0u), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(50708u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])) & _wgslsmith_mult_vec4_u32(vec4<u32>(41399u, u_input.b, 1157u, u_input.b), vec4<u32>(u_input.b, 15327u, u_input.b, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 50417u, u_input.b), vec4<u32>(u_input.b, 38308u, u_input.b, u_input.b) >> (vec4<u32>(0u, u_input.b, u_input.b, 41235u) % vec4<u32>(32u)))), 20u)], select(global1[_wgslsmith_index_u32(1u, 20u)], 53545u > u_input.b, true) || true));
    global0 = array<vec3<i32>, 20>();
    var_2 = !(!select(vec3<bool>(true, false, !var_2.x), select(!vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(u_input.b, 20u)], true), !vec3<bool>(false, false, var_2.x), vec3<bool>(true, false, false)), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(71982u, 20u)], false), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, false, var_2.x))));
    var_2 = !(!select(!vec3<bool>(false, global1[_wgslsmith_index_u32(24826u, 20u)], var_2.x), !vec3<bool>(true, var_2.x, true), true));
    let var_3 = !(!(!select(vec4<bool>(var_2.x, false, var_2.x, true), !vec4<bool>(var_2.x, true, false, true), var_1 <= var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b), 1u, ~0u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(18136u, 4294967295u, u_input.b)) & (vec3<u32>(20031u, u_input.b, 0u) << (vec3<u32>(20631u, 71532u, u_input.b) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 1u)))));
}

