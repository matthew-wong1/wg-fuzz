struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = vec3<bool>(any(select(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), any(vec4<bool>(true, false, false, false))), select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, false)), any(vec4<bool>(global0.x, true, false, true))), vec3<bool>(all(vec4<bool>(false, global0.x, true, global0.x)), any(global0.yy), true))), true, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a, arg_1, arg_1, 604f))))))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_1), max(_wgslsmith_div_u32(u_input.a, 24501u) << (16288u % 32u), u_input.c.x ^ 35741u)), min(u_input.b, 17182u), Struct_1(global0.x), false, true);
    var var_2 = vec4<u32>(var_1.b, _wgslsmith_add_u32(abs(u_input.c.x), select(var_1.a.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9005u), vec2<u32>(0u, u_input.c.x)) | (var_1.b << (21591u % 32u)), false)), _wgslsmith_sub_u32(79712u, ~_wgslsmith_mult_u32(9362u | arg_2.b, ~var_1.b)), 8992u);
    global0 = vec3<bool>(!(false && all(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(var_1.d, true, global0.x, var_1.e)))), false, false);
    return vec4<u32>(29305u, countOneBits(var_1.a.b), reverseBits(var_2.x), 1u);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<bool> {
    return arg_2;
}

fn func_2() -> Struct_1 {
    global0 = func_4(_wgslsmith_dot_vec4_u32(func_3(u_input.e, _wgslsmith_f_op_f32(min(374f, 601f)), Struct_2(198f, u_input.d)), ~countOneBits(vec4<u32>(1u, 0u, 4294967295u, 44766u))) > u_input.b, Struct_2(1132f, 1u), !vec3<bool>(!(u_input.d < 4294967295u), true, abs(32706u) <= u_input.b));
    global0 = vec3<bool>(!(!global0.x) & false, all(vec3<bool>(true, all(global0.zx), max(u_input.e, 34085i) >= -25564i)), false);
    let var_0 = !vec2<bool>(any(!(!vec4<bool>(false, global0.x, global0.x, false))), true);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-777f, -513f)))), _wgslsmith_div_u32(1u << (u_input.c.x % 32u), 32807u)), _wgslsmith_mod_u32(u_input.d, u_input.a), Struct_1(true), true, var_0.x);
    var var_2 = max(_wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -50268i, -1i, 2147483647i), vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e)), -vec4<i32>(-1i, u_input.e, -14263i, u_input.e)), -vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e)) | ~_wgslsmith_mod_i32(u_input.e, -u_input.e), 2147483647i << (_wgslsmith_add_u32(select(var_1.b, u_input.b, var_1.e), ~(u_input.b | var_1.b)) % 32u));
    return Struct_1(!(var_1.a.a == _wgslsmith_f_op_f32(abs(var_1.a.a))));
}

fn func_1() -> vec3<bool> {
    var var_0 = all(vec2<bool>(false && (u_input.c.x == _wgslsmith_add_u32(53141u, 30671u)), (_wgslsmith_sub_u32(u_input.c.x, 1u) > 1376u) || global0.x));
    let var_1 = u_input.c.x;
    let var_2 = func_2();
    var_0 = (abs(_wgslsmith_div_u32(56175u, 42222u) | (u_input.c.x & 4294967295u)) != 1u) || (_wgslsmith_add_i32(_wgslsmith_mult_i32(~11781i, u_input.e), _wgslsmith_add_i32(max(u_input.e, -15905i), ~u_input.e)) != _wgslsmith_div_i32(firstLeadingBit(countOneBits(u_input.e)), u_input.e));
    let var_3 = firstLeadingBit(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1), ~u_input.c.zx), min(_wgslsmith_div_u32(var_1, 1u), ~u_input.d) & ~4294967295u, u_input.a));
    return func_4(all(global0.yz), Struct_2(-1576f, _wgslsmith_div_u32(var_1, ~8432u)), vec3<bool>(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = !vec3<bool>(false, !global0.x != all(!vec3<bool>(global0.x, true, false)), true);
    global0 = func_4(all(vec4<bool>(global0.x, global0.x, true, global0.x)), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-441f, -2392f))))), u_input.a), !(!select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, false, global0.x), true))));
    var var_0 = 70528u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1371f * _wgslsmith_f_op_f32(round(232f))), ~(~_wgslsmith_mod_u32(1u, 24784u))), max(0u, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.a)), 1u, ~abs(u_input.c.x))), Struct_1(true), u_input.b == ~47368u, global0.x);
    var var_2 = ~u_input.c;
    var var_3 = reverseBits(4294967295u);
    var var_4 = var_1.a;
    var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1455f, _wgslsmith_f_op_f32(-var_4.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.a, -1000f, false)) * _wgslsmith_div_f32(var_1.a.a, var_1.a.a)))), ~(firstTrailingBit(~24190u) >> (var_4.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<i32>(u_input.e, 10033i));
}

