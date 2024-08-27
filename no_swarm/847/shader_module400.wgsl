struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-10184i, -19966i, 56813i, 29272i));

var<private> global1: array<vec4<u32>, 19>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(~(~vec4<i32>(global0.a.x, global0.a.x, -1i, global0.a.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(2398i, global0.a.x, global0.a.x, 47592i), global0.a << (vec4<u32>(0u, 5134u, u_input.a.x, 1u) % vec4<u32>(32u)))));
    return Struct_1(global0.a);
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = vec2<i32>(0i, -3072i);
    let var_1 = vec3<f32>(-1853f, -126f, 238f);
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_add_vec4_i32(global0.a, _wgslsmith_div_vec4_i32(~max(global0.a, global0.a), global0.a)));
    var var_4 = func_2();
    return var_4.a >> (select(~vec4<u32>(u_input.c, u_input.a.x, firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(13408u, 4294967295u, u_input.a.x)), ~min(global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], ~vec4<u32>(26985u, u_input.a.x, u_input.b, u_input.b)), true && (u_input.c != u_input.b)) % vec4<u32>(32u));
}

fn func_3() -> bool {
    var var_0 = vec4<bool>(any(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), _wgslsmith_mult_u32(u_input.b, abs(66747u)) < u_input.b, !(true | select(true, u_input.a.x < u_input.c, true)), -1872f >= _wgslsmith_f_op_f32(sign(-1004f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(745f)), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-160f, -587f)), -412f) - _wgslsmith_f_op_f32(-268f * _wgslsmith_f_op_f32(283f + 903f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(min(1084f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + 574f)));
    global0 = Struct_1(global0.a);
    var_0 = vec4<bool>(true && !any(!vec3<bool>(var_0.x, false, var_0.x)), var_0.x, var_0.x, true);
    return all(!(!vec4<bool>(true, var_0.x, true, all(vec4<bool>(true, false, var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, -103f, 1352f) - vec3<f32>(437f, 175f, 581f)) * vec3<f32>(-292f, -1558f, 213f)) + vec3<f32>(_wgslsmith_f_op_f32(min(-1664f, -388f)), _wgslsmith_div_f32(-1260f, 901f), -1156f))));
    var var_2 = Struct_1(global0.a);
    let var_3 = Struct_1(-func_1(abs(2147483647i)));
    let var_4 = var_3;
    let var_5 = vec2<i32>(var_4.a.x, ~(-11458i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a.x, 1u)) % 32u)));
    var var_6 = ~_wgslsmith_mod_i32(~_wgslsmith_div_i32(21523i, -14030i), ~(-var_3.a.x)) << (_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u)), firstLeadingBit(20441u)) << (select(u_input.a.x, u_input.b, func_3()) % 32u), 1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-599f - var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), -1218f, _wgslsmith_sub_u32(~u_input.b, u_input.b), ~var_2.a.zwx, vec2<i32>(func_2().a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.a.x >> (u_input.b % 32u), ~9541i), -countOneBits(var_4.a.x), -2147483647i)));
}

