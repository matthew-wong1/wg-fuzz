struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i, vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(true, false)), Struct_1(26034i, vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec2<bool>(false, true)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(-1290i, vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec2<bool>(true, true)), Struct_1(-13902i, vec2<bool>(false, false)));

var<private> global1: Struct_3;

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(4294967295u, 20198u, 78809u), vec3<u32>(55453u, 64038u, 0u), vec3<u32>(1u, 33331u, 0u), vec3<u32>(9158u, 48905u, 13734u), vec3<u32>(7160u, 6937u, 23141u), vec3<u32>(4294967295u, 34241u, 4294967295u), vec3<u32>(66373u, 103408u, 29484u), vec3<u32>(22222u, 4294967295u, 53843u), vec3<u32>(13858u, 4294967295u, 0u), vec3<u32>(17759u, 50781u, 0u), vec3<u32>(0u, 1u, 54683u), vec3<u32>(4294967295u, 18918u, 0u), vec3<u32>(56571u, 7573u, 4294967295u), vec3<u32>(4580u, 17632u, 53017u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 85368u, 37811u), vec3<u32>(0u, 79274u, 0u), vec3<u32>(4294967295u, 40711u, 4294967295u), vec3<u32>(1u, 4294967295u, 84512u), vec3<u32>(29285u, 1576u, 7523u), vec3<u32>(1u, 40371u, 0u), vec3<u32>(31839u, 33131u, 33186u), vec3<u32>(79920u, 4294967295u, 39970u), vec3<u32>(25407u, 0u, 38636u), vec3<u32>(22062u, 1u, 40767u), vec3<u32>(1u, 1u, 2379u), vec3<u32>(0u, 1u, 41088u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<i32> {
    return -global1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec3<i32> {
    let var_0 = 188f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1138f, 929f) + -858f) + 989f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 365f)));
    var var_2 = u_input.a;
    var var_3 = !select(vec3<bool>(!all(vec2<bool>(true, false)), !all(vec2<bool>(false, global1.b.b.x)), !global1.b.b.x), select(vec3<bool>(true, !global1.b.b.x, false), !select(vec3<bool>(false, global1.b.b.x, true), vec3<bool>(true, false, false), global1.b.b.x), !(!vec3<bool>(global1.b.b.x, false, global1.b.b.x))), !vec3<bool>(global1.b.b.x, -1i == global1.a.x, false));
    global0 = array<Struct_1, 8>();
    return ~(-global1.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global2 = array<vec3<u32>, 27>();
    let var_0 = Struct_2(arg_0.b);
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1311f, -525f))), -1250f), global2[_wgslsmith_index_u32(4294967295u, 27u)]);
    global2 = array<vec3<u32>, 27>();
    return vec2<u32>(global1.c.x, ~u_input.d.x << (reverseBits(14502u) % 32u));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    global0 = array<Struct_1, 8>();
    let var_0 = 4294967295u;
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_4(Struct_3(vec3<i32>(i32(-1i) * -u_input.c, _wgslsmith_dot_vec3_i32(func_2(), global1.a), u_input.c), global1.b, func_4(Struct_3(func_3(vec4<f32>(-592f, 424f, 850f, -1456f), 719f), Struct_1(-20083i, vec2<bool>(global1.b.b.x, false)), global1.c, 23093i), Struct_1(_wgslsmith_sub_i32(-2147483647i, -9950i), vec2<bool>(true, true)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.c, global1.c), 8u)]), Struct_2(Struct_1(-646i, vec2<bool>(global1.b.b.x, false)))), global1.d), _wgslsmith_mult_i32(countOneBits(~36947i), global1.d), Struct_2(Struct_1(~_wgslsmith_clamp_i32(global1.d, u_input.c, global1.a.x), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(global1.b.b.x, global1.b.b.x), vec2<bool>(global1.b.b.x, global1.b.b.x)), !global1.b.b, true))));
    let var_2 = Struct_3(-var_1.a.a, var_1.c.a, vec2<u32>(~firstLeadingBit(4294967295u), _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.a.x), arg_1)), ~(~abs(-29640i)));
    return !select(vec3<bool>(arg_0, global1.b.b.x, false), vec3<bool>(all(!vec3<bool>(false, arg_0, true)), true, all(!vec2<bool>(arg_0, false))), !select(!vec3<bool>(global1.b.b.x, var_1.a.b.b.x, false), select(vec3<bool>(var_2.b.b.x, true, arg_0), vec3<bool>(true, global1.b.b.x, true), true), select(vec3<bool>(false, true, false), vec3<bool>(global1.b.b.x, true, true), vec3<bool>(true, var_2.b.b.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(true, u_input.e < u_input.c, false & (u_input.e >= global1.b.a)), !select(select(vec3<bool>(global1.b.b.x, global1.b.b.x, global1.b.b.x), !vec3<bool>(global1.b.b.x, global1.b.b.x, false), select(vec3<bool>(false, global1.b.b.x, global1.b.b.x), vec3<bool>(true, true, global1.b.b.x), vec3<bool>(global1.b.b.x, global1.b.b.x, false))), vec3<bool>(global1.b.b.x, all(global1.b.b), true), vec3<bool>(true, global1.b.b.x, true)), !(!func_1(global1.b.b.x, countOneBits(u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

