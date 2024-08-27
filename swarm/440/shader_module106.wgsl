struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: Struct_3;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, abs(_wgslsmith_add_u32(4294967295u, u_input.e))), 9u)]);
    let var_1 = ~(-firstLeadingBit(-(~global1.a.a.x)));
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(0i | (var_1 ^ u_input.c.x), reverseBits(~var_1), reverseBits(2147483647i >> (1u % 32u)), global1.a.a.x), min(vec4<i32>(var_1, u_input.c.x, u_input.c.x, var_1), -vec4<i32>(-56353i, u_input.c.x, u_input.c.x, -71978i)) & global1.a.a), -1004i, true);
    global0 = array<vec3<bool>, 9>();
    var var_3 = var_2;
    return ~global1.a.a.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(!vec3<bool>(any(vec3<bool>(global1.a.c, true, true)) && true, true, global1.a.c));
    global1 = Struct_3(global1.a);
    var var_1 = global1.a;
    global0 = array<vec3<bool>, 9>();
    var var_2 = _wgslsmith_add_u32((u_input.b.x >> (_wgslsmith_mult_u32(30949u, ~u_input.d.x) % 32u)) & 63527u, ~_wgslsmith_dot_vec3_u32(select(u_input.b, vec3<u32>(u_input.b.x, 107035u, u_input.b.x) & u_input.b, any(vec4<bool>(global1.a.c, global1.a.c, true, var_0.a.x))), u_input.b));
    return Struct_3(Struct_1(vec4<i32>(select(countOneBits(global1.a.a.x), var_1.a.x, var_0.a.x | false), -1i, ~func_3(), arg_0), -44091i, true));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> f32 {
    global1 = func_2(1i);
    let var_0 = global1.a.a.x;
    var var_1 = Struct_3(global1.a);
    var var_2 = global1.a;
    global0 = array<vec3<bool>, 9>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f * -2166f) - 675f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 9>();
    let var_0 = any(vec3<bool>(true, _wgslsmith_f_op_f32(func_1(select(vec3<bool>(global1.a.c, global1.a.c, global1.a.c), vec3<bool>(global1.a.c, global1.a.c, false), false), vec4<u32>(26166u, 0u, u_input.e, 4294967295u))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 251f)), u_input.d.x < abs(13685u)));
    let var_1 = select(vec4<i32>(u_input.c.x, ~_wgslsmith_add_i32(u_input.c.x, u_input.c.x ^ u_input.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(53211i, u_input.c.x), vec2<i32>(global1.a.b, -1i)), u_input.c.x) >> (u_input.e % 32u), -1i), vec4<i32>(reverseBits(select(10608i & u_input.c.x, u_input.c.x, 1i < global1.a.a.x)), 2147483647i, -9902i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global1.a.a.zwz, global1.a.a.zwz), 1i)), select(true, any(vec2<bool>(all(vec4<bool>(true, true, global1.a.c, global1.a.c)), true)), true));
    var var_2 = u_input.b;
    global1 = Struct_3(func_2(-u_input.c.x).a);
    global0 = array<vec3<bool>, 9>();
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)]);
    global1 = func_2(45816i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2678f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(sign(2206f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-734f)), _wgslsmith_f_op_f32(437f * 484f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-630f)))))), countOneBits(~(~(~vec2<u32>(var_2.x, 0u)))), min(~vec4<u32>(var_2.x, var_2.x, 37562u, 31569u) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, 1u, 0u), vec4<u32>(u_input.b.x, var_2.x, 1u, u_input.a.x)), ~vec4<u32>(1330u, 82562u, var_2.x, var_2.x) & ~vec4<u32>(0u, 26191u, var_2.x, 1u)) | _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 3630u, 0u, u_input.e)), max(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, u_input.e), vec4<u32>(0u, 4294967295u, u_input.a.x, 81529u)), abs(vec4<u32>(var_2.x, 43389u, var_2.x, var_2.x)))), 0u, _wgslsmith_mult_u32(60322u, u_input.a.x));
}

