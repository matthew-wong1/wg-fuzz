struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = firstLeadingBit(~(~arg_3.a)) & 4294967295u;
    global0 = array<i32, 14>();
    let var_2 = vec4<f32>(-1000f, -213f, 796f, _wgslsmith_f_op_f32(-491f * -467f));
    let var_3 = Struct_1(~(~arg_1.a), global0[_wgslsmith_index_u32(859u, 14u)]);
    return arg_3.a;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = -816f;
    var var_1 = !(true || !(1i > firstTrailingBit(arg_0.x)));
    var var_2 = Struct_1(0u, _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(2147483647i, -37379i)) & arg_0.yz, -(arg_0.xw | arg_0.xz)));
    var var_3 = _wgslsmith_mod_vec2_u32(u_input.a, ~(vec2<u32>(1u, _wgslsmith_sub_u32(u_input.c.x, 48056u)) & vec2<u32>(~u_input.a.x, 97625u)));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(abs(~vec2<u32>(0u, u_input.a.x))), abs(vec2<u32>(func_3(35157u, Struct_1(var_3.x, global0[_wgslsmith_index_u32(var_3.x, 14u)]), 39435u, Struct_1(89780u, global0[_wgslsmith_index_u32(50013u, 14u)])), var_3.x))), (reverseBits(~vec2<u32>(66401u, var_2.a)) << (~(~u_input.c) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(~u_input.c & u_input.c, u_input.c)), 14u)];
    return ~47649u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(func_2(firstTrailingBit(vec4<i32>(47538i, arg_0.x, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))) << (29655u % 32u), ~select(1i, 33264i, true) ^ -1i);
    global0 = array<i32, 14>();
    return vec4<u32>(u_input.c.x, 1u, _wgslsmith_sub_u32(1u, var_0.a), ~select(var_0.a, (4294967295u ^ var_0.a) | 4294967295u, !any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), true), !any(vec2<bool>(false, false)) && any(vec3<bool>(true, any(vec2<bool>(false, true)), false)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.wx), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3676i, 0i, -6637i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -1i, 43832i)), _wgslsmith_mult_i32(u_input.b, -52119i), firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 14u)])), -(~vec3<i32>(global0[_wgslsmith_index_u32(0u, 14u)], 0i, 16190i)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1769f - 949f) * -592f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_0 = ~u_input.c.x & 4294967295u;
    var var_1 = func_4(max(_wgslsmith_mult_vec4_u32(~func_1(vec2<i32>(u_input.b, -7932i), vec3<i32>(0i, 2147483647i, u_input.b)), vec4<u32>(u_input.c.x, 0u, 15051u, 25498u) ^ vec4<u32>(u_input.c.x, 23475u, 1u, 52540u)), vec4<u32>(u_input.a.x & _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.a.x), ~(~u_input.a.x), ~(~u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x)), 1u))));
    var var_2 = Struct_1(u_input.c.x, reverseBits(-1i));
    let var_3 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, var_1.a), _wgslsmith_mod_u32(0u, u_input.c.x)) >> (57041u % 32u), ~var_2.a & ~45991u);
    var_0 = ~(~(~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_1.b, u_input.b, -firstLeadingBit(-28614i), _wgslsmith_mult_i32(2147483647i << (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, 22089i), -vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_2.a, 14u)], -15284i, 3216i)))), 202f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f * _wgslsmith_f_op_f32(f32(-1f) * -232f))), _wgslsmith_f_op_f32(min(-752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1629f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-452f))), -1083f), vec4<u32>(26898u, firstTrailingBit(abs(abs(var_1.a))), 4294967295u, 67928u << (u_input.a.x % 32u)), -113f);
}

