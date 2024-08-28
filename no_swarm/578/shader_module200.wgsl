struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(378f, 777f, 1832f, 2214f, 231f, 380f, 2892f, 656f, -283f, -745f, -1090f, 139f, -451f, -905f, 712f, 1000f, -879f, -102f, 1344f, 1133f, 262f, 1061f, -805f, -1792f, -657f, 500f, -672f, -146f, -1013f, 1000f, -539f, 260f);

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global2 = array<vec3<f32>, 9>();
    global0 = array<f32, 32>();
    global1 = Struct_2(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 0u));
    global1 = Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, global1.a.x), 13420u, abs(0u)), vec3<u32>(global1.a.x | u_input.a.x, ~global1.a.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(36848u, 1u, u_input.a.x), vec3<u32>(global1.a.x, u_input.a.x, global1.a.x)), 15033u), countOneBits(global1.a))));
    var var_0 = Struct_4(-565f, Struct_3(1i, -363f, Struct_1(-26159i, vec4<f32>(_wgslsmith_f_op_f32(select(816f, global0[_wgslsmith_index_u32(1u, 32u)], true)), -1288f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.x, 32u)] + -1000f), -341f)), _wgslsmith_sub_i32(~(-4843i), ~0i >> (~u_input.a.x % 32u))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-771f))))), _wgslsmith_f_op_f32(trunc(1973f)), global0[_wgslsmith_index_u32(global1.a.x >> (global1.a.x % 32u), 32u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a.x, 32u)])))));
    return var_0.b.a;
}

fn func_2() -> Struct_4 {
    global1 = Struct_2(vec3<u32>(0u, _wgslsmith_div_u32(u_input.a.x, 4294967295u), max(_wgslsmith_sub_u32(~u_input.a.x, ~global1.a.x), ~countOneBits(0u))));
    let var_0 = Struct_2(u_input.a.zwz);
    var var_1 = ~reverseBits(_wgslsmith_sub_i32(1i, abs(1i)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-4646i, 8449i, -1i), vec3<i32>(-1i) * -vec3<i32>(50962i, func_3(), -2147483647i << (global1.a.x % 32u)));
    var var_3 = Struct_1(_wgslsmith_mult_i32(-var_2, ~countOneBits(_wgslsmith_mult_i32(32844i, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(73794u, 32u)], global0[_wgslsmith_index_u32(global1.a.x, 32u)], 961f, global0[_wgslsmith_index_u32(1u, 32u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1000f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -591f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 32u)], global0[_wgslsmith_index_u32(global1.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 592f), vec4<f32>(global0[_wgslsmith_index_u32(71601u, 32u)], 119f, global0[_wgslsmith_index_u32(global1.a.x, 32u)], 780f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(var_0.a.x, 32u)], global0[_wgslsmith_index_u32(38936u, 32u)], global0[_wgslsmith_index_u32(33079u, 32u)])))))) * vec4<f32>(global0[_wgslsmith_index_u32(~21835u, 32u)], _wgslsmith_f_op_f32(sign(325f)), 1253f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.zz, var_0.a.yy), 32u)]))));
    return Struct_4(global0[_wgslsmith_index_u32(~var_0.a.x, 32u)], Struct_3(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.b.x)) - global0[_wgslsmith_index_u32(43657u, 32u)])), Struct_1(abs(abs(var_3.a)), vec4<f32>(-1922f, 1294f, -266f, _wgslsmith_f_op_f32(exp2(var_3.b.x)))), -_wgslsmith_add_i32(2147483647i, -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-226f, _wgslsmith_f_op_f32(sign(var_3.b.x)), any(vec4<bool>(false, false, false, false)))), var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f * global0[_wgslsmith_index_u32(56342u, 32u)])), 1901f) - _wgslsmith_f_op_vec4_f32(ceil(var_3.b))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = func_2();
    let var_1 = func_2().b.c;
    var_0 = func_2();
    global0 = array<f32, 32>();
    global1 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_u32(abs(u_input.a.yxy), abs(u_input.a.wzw))) >> (_wgslsmith_div_vec3_u32(select(u_input.a.wyz, vec3<u32>(global1.a.x, global1.a.x, 0u), arg_2.yyx) >> (_wgslsmith_clamp_vec3_u32(global1.a, vec3<u32>(global1.a.x, global1.a.x, 1u), vec3<u32>(global1.a.x, u_input.a.x, global1.a.x)) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 74417u, 57757u)) % vec3<u32>(32u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) & vec2<u32>(u_input.a.x, u_input.a.x), reverseBits(u_input.a.wy), ~vec2<u32>(1u, u_input.a.x)), ~select(vec2<u32>(64573u, 47470u), global1.a.zy, vec2<bool>(true, false)), vec2<u32>(~global1.a.x, global1.a.x)) | firstLeadingBit(vec2<u32>(~global1.a.x, _wgslsmith_sub_u32(u_input.a.x, global1.a.x))), u_input.a.xy);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x | 17220u, u_input.a.x), 32u)], global0[_wgslsmith_index_u32(~global1.a.x, 32u)])));
    let var_2 = func_1(false, !any(vec2<bool>(true, true)), vec4<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), any(vec4<bool>(true, true, true, true)), true, true));
    var var_3 = _wgslsmith_clamp_vec2_i32(max(select(~vec2<i32>(var_2.b.d, -1i), ~vec2<i32>(2147483647i, var_2.b.a), all(vec2<bool>(true, true))), (-vec2<i32>(1i, var_2.b.a) | ~vec2<i32>(var_2.b.d, var_2.b.c.a)) & vec2<i32>(abs(var_2.b.d), 1i)), _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(var_2.b.d, 2147483647i)), _wgslsmith_div_vec2_i32(max(-vec2<i32>(33453i, -20631i), vec2<i32>(var_2.b.d, var_2.b.d)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_2.b.a), vec2<i32>(-2147483647i, var_2.b.a), vec2<i32>(var_2.b.c.a, var_2.b.c.a)))), vec2<i32>(-1i) * -vec2<i32>(var_2.b.d, 34151i)), _wgslsmith_add_vec2_i32(~(~countOneBits(vec2<i32>(var_2.b.d, -2147483647i))), abs(-vec2<i32>(14977i, 468i))));
    var var_4 = Struct_3(_wgslsmith_sub_i32(-1i, 0i), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global1.a.x, 23087u)), 32u)], func_1(false & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, 1u, 0u), u_input.a) < 4294967295u), (any(vec2<bool>(true, true)) || true) & (true && all(vec2<bool>(false, false))), vec4<bool>(all(vec4<bool>(true, false, false, false)), false, (18722u > var_0.x) & true, all(vec3<bool>(false, true, false)))).b.c, _wgslsmith_div_i32(41504i, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b);
}

