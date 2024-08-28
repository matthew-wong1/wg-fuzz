struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(true, 1u, Struct_1(1u, -1i), vec3<f32>(1438f, 1337f, -1435f)), Struct_2(false, 70427u, Struct_1(0u, -4300i), vec3<f32>(-637f, 520f, -942f)), Struct_2(true, 1u, Struct_1(20243u, 24121i), vec3<f32>(529f, 619f, 141f)), Struct_2(true, 4294967295u, Struct_1(40802u, 1i), vec3<f32>(320f, -937f, -354f)));

var<private> global2: f32 = 368f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mult_u32(~u_input.b, 34480u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-21868i, 8908i), vec2<i32>(-1i, -8698i) | u_input.a));
    var var_1 = vec4<u32>(reverseBits(~4294967295u), arg_0.a, 4294967295u, 26473u);
    let var_2 = u_input.a.x >= abs(u_input.a.x);
    global0 = array<vec2<u32>, 30>();
    global1 = array<Struct_2, 4>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(u_input.b)), min(countOneBits(select(vec2<u32>(var_0.a, u_input.b), vec2<u32>(arg_0.a, arg_0.a), vec2<bool>(true, true))), var_1.ww));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_1(min(u_input.b, (_wgslsmith_mod_u32(10938u, u_input.b) & func_3(Struct_1(71957u, u_input.a.x), arg_1)) >> (0u % 32u)), u_input.a.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~22168u), 4u)];
    return vec4<bool>(var_1.a || var_1.a, !any(!select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(false, var_1.a, var_1.a, var_1.a), var_1.a)), !var_1.a, true);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = vec3<bool>(true, any(!select(func_2(vec2<f32>(-574f, -1013f), -316f), vec4<bool>(true, false, false, true), any(vec3<bool>(false, false, false)))), any(vec4<bool>(true, true, !all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)))));
    var var_1 = global1[_wgslsmith_index_u32((0u ^ _wgslsmith_clamp_u32(func_3(arg_0, _wgslsmith_f_op_f32(121f - 264f)), 0u, ~u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(52734u, arg_0.a, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 93295u)) % 32u))) << (u_input.b % 32u), 4u)];
    var_1 = Struct_2(true, ~min(u_input.b, countOneBits(u_input.b)), Struct_1(~4294967295u << (~(1u & var_1.c.a) % 32u), _wgslsmith_dot_vec4_i32(-max(vec4<i32>(55195i, arg_0.b, u_input.a.x, u_input.a.x), vec4<i32>(-34424i, 62827i, 0i, var_1.c.b)), (vec4<i32>(arg_1, var_1.c.b, arg_0.b, 2147483647i) & vec4<i32>(var_1.c.b, var_1.c.b, 0i, 35473i)) & ~vec4<i32>(u_input.a.x, u_input.a.x, -9362i, arg_0.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f * -391f)), var_1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.d.x)))), 735f))));
    var var_2 = var_1.d;
    global2 = -1614f;
    return global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~arg_0.a), 27596u, 0u), 4u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = 2077f;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -791f);
    let var_1 = func_1(Struct_1(1u & _wgslsmith_mult_u32(~69528u, arg_1.c.a), arg_1.c.b), abs(_wgslsmith_mod_i32(u_input.a.x, 2147483647i))).c;
    let var_2 = arg_0.x;
    var var_3 = vec4<bool>(all(!func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, arg_1.d.x)), _wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x)).zy), true, any(func_2(vec2<f32>(arg_1.d.x, 2327f), _wgslsmith_f_op_f32(472f * 1512f)).xz) & false, any(!arg_0));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -739f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = -vec4<i32>(48547i, -2147483647i, reverseBits(~(~arg_0.b)), arg_0.b);
    global2 = func_1(Struct_1(43729u, _wgslsmith_dot_vec3_i32(-countOneBits(var_0.xww), ~abs(vec3<i32>(arg_1.b, arg_1.b, arg_1.b)))), _wgslsmith_add_i32(arg_1.b, _wgslsmith_mod_i32(~0i | _wgslsmith_add_i32(-15604i, var_0.x), _wgslsmith_mult_i32(arg_1.b, u_input.a.x)))).d.x;
    return ~abs(u_input.b) ^ (0u ^ _wgslsmith_mod_u32(arg_1.a, _wgslsmith_mod_u32(arg_0.a, 0u) & 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(~func_5(Struct_1(min(u_input.b, u_input.b), 7904i), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(21673u, u_input.b)), i32(-1i) * -10441i), false, _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), func_1(Struct_1(u_input.b, -3636i), u_input.a.x), u_input.b))), _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(3877i, u_input.a.x, 8195i), ~vec3<i32>(u_input.a.x, -35492i, u_input.a.x))), -1i | (-u_input.a.x << ((4294967295u & u_input.b) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.b, u_input.a.x), 38169i), 252f, var_1.b);
}

