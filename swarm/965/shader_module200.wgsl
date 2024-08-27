struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, true, false, true, true, false, false, false, false, false, false, true, true, true, true, true, false, true, false, false, false, false, false, false, false, true, false, true, true, false);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, false, vec2<u32>(4294967295u, 1u), 0u), Struct_1(false, false, vec2<u32>(4294967295u, 80264u), 31636u), Struct_1(false, false, vec2<u32>(4294967295u, 4294967295u), 0u), Struct_1(true, true, vec2<u32>(1u, 1u), 4294967295u), Struct_1(false, true, vec2<u32>(5715u, 49553u), 4294967295u), Struct_1(false, true, vec2<u32>(47202u, 0u), 60439u), Struct_1(false, true, vec2<u32>(16275u, 0u), 31332u), Struct_1(false, true, vec2<u32>(51150u, 5878u), 4294967295u), Struct_1(false, true, vec2<u32>(67839u, 94026u), 41240u), Struct_1(true, true, vec2<u32>(1u, 4294967295u), 4294967295u), Struct_1(true, false, vec2<u32>(20160u, 37129u), 73586u), Struct_1(false, true, vec2<u32>(53737u, 2217u), 39557u), Struct_1(true, false, vec2<u32>(0u, 1u), 95330u), Struct_1(false, false, vec2<u32>(4294967295u, 14590u), 1u), Struct_1(true, true, vec2<u32>(9429u, 29079u), 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> f32 {
    global0 = array<bool, 31>();
    let var_0 = !select(!arg_0.b.a, true, (~4294967295u >> (abs(arg_1) % 32u)) <= ~min(arg_1, 4294967295u));
    let var_1 = arg_0.b;
    let var_2 = Struct_1(false, true, arg_2.b.c, 0u);
    let var_3 = _wgslsmith_dot_vec2_u32(var_2.c, ~_wgslsmith_clamp_vec2_u32(~var_2.c, reverseBits(arg_2.b.c), countOneBits(arg_2.b.c)) ^ ~(~var_2.c));
    return _wgslsmith_f_op_f32(-arg_2.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -1672f;
    global1 = array<Struct_1, 15>();
    return Struct_1(_wgslsmith_f_op_f32(func_3(Struct_3(var_0.a.xyw, Struct_1(true, arg_1.a, vec2<u32>(u_input.a, arg_1.d), u_input.a), vec2<i32>(50660i, u_input.b.x), var_0.c >= var_0.c, u_input.a), ~(~40798u), Struct_3(_wgslsmith_f_op_vec3_f32(min(var_0.a.zxy, vec3<f32>(1584f, -683f, arg_0.a.x))), Struct_1(arg_1.b, global0[_wgslsmith_index_u32(arg_1.c.x, 31u)], vec2<u32>(0u, arg_1.d), 4294967295u), max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -2415i)), true, ~u_input.a))) < arg_0.a.x, false, _wgslsmith_clamp_vec2_u32(vec2<u32>(min(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 14707u, arg_1.d, 1u), vec4<u32>(u_input.a, arg_1.d, arg_1.d, 1u))), ~(~u_input.a)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(9118u, 0u), vec2<u32>(_wgslsmith_add_u32(u_input.a, arg_1.d), reverseBits(u_input.a)), arg_1.c ^ (arg_1.c ^ arg_1.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a << (27396u % 32u), abs(u_input.a)), _wgslsmith_mult_vec2_u32(arg_1.c, vec2<u32>(u_input.a, arg_1.c.x)))), ~_wgslsmith_dot_vec2_u32(max(arg_1.c & arg_1.c, vec2<u32>(arg_1.c.x, arg_1.d)), ~(vec2<u32>(arg_1.d, 1u) >> (arg_1.c % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b, arg_0.a.x)))));
    global0 = array<bool, 31>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, var_0.x, var_0.x >= var_0.x)) + _wgslsmith_f_op_f32(-593f + 1067f)), var_0.x), func_2(arg_0, global1[_wgslsmith_index_u32(u_input.a, 15u)]), -vec2<i32>(arg_0.c, _wgslsmith_add_i32(u_input.b.x, ~3631i)), global0[_wgslsmith_index_u32(abs(~4294967295u), 31u)], 0u);
    global1 = array<Struct_1, 15>();
    global0 = array<bool, 31>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(f32(-1f) * -1107f), 305f) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-620f)), _wgslsmith_f_op_f32(round(-1728f))), countOneBits(~u_input.b.x)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-836f * 1347f) + 1475f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + -176f))), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), 958f), var_0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -465f))), firstTrailingBit((u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 52611u), vec2<u32>(u_input.a, 56457u)) % 32u)) ^ 0i));
    let x = u_input.a;
    s_output = StorageBuffer(-746f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a.ww))) * var_0.a.yy))));
}

