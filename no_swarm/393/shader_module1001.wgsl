struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> bool {
    return global0.x;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(select(select(~u_input.b, -vec2<i32>(u_input.a.x, 10409i), false), u_input.b, true));
    let var_1 = (_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(33139u, u_input.c))) & _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, ~4294967295u), reverseBits(vec2<u32>(u_input.c, u_input.c)))) >> (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(0u, 16113u, 5941u, u_input.c)) ^ abs(u_input.c), ~u_input.c) % vec2<u32>(32u));
    var_0 = Struct_1(vec2<i32>(-max(1i, -1i), u_input.a.x));
    var_0 = Struct_1(vec2<i32>(var_0.a.x, ~(-38777i)));
    var var_2 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, false), global0.x)), !(!vec3<bool>(global0.x, global0.x, global0.x)), !(!(!global0.x))));
    return vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x))), u_input.b.x), ~(~_wgslsmith_mod_i32(var_0.a.x, 4515i))) | min(var_0.a, u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = vec2<bool>(global0.x, global0.x);
    var var_0 = _wgslsmith_mult_vec2_i32(func_3(), -min(countOneBits(arg_0.a ^ u_input.a), -arg_0.a));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(1i, 55909i, countOneBits(arg_0.a.x)) & 5425i, i32(-1i) * -_wgslsmith_mod_i32(63562i, _wgslsmith_mod_i32(var_0.x, var_0.x)));
    var_0 = vec2<i32>(-u_input.a.x, -11643i) << ((_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9304u, u_input.c), vec2<u32>(4294967295u, 0u)) ^ vec2<u32>(1u, 4294967295u), vec2<u32>(min(4294967295u, u_input.c), _wgslsmith_mult_u32(1u, arg_1))) ^ select(vec2<u32>(~891u, _wgslsmith_clamp_u32(u_input.c, 2006u, arg_1)), select(abs(vec2<u32>(arg_1, 0u)), ~vec2<u32>(4294967295u, arg_1), vec2<bool>(true, true)), !global0.x)) % vec2<u32>(32u));
    var var_1 = select(!vec3<bool>(global0.x, !(!global0.x), 115417u <= ~arg_1), !(!vec3<bool>(global0.x, true, func_1())), all(vec2<bool>(_wgslsmith_div_u32(u_input.c, 1u) > 0u, true)));
    return any(!select(!vec3<bool>(var_1.x, true, false), !vec3<bool>(true, true, var_1.x), select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, var_1.x, var_1.x)))) && (33886u != ~arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a);
    var var_1 = false;
    global0 = !vec2<bool>(global0.x, func_1());
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(42440u, 1u), select(u_input.c, 1u, true))), 41149u));
    var var_3 = any(vec2<bool>(any(vec4<bool>(func_2(var_0, var_2.x), false, any(vec3<bool>(global0.x, false, false)), true)), true));
    var var_4 = select(!vec4<bool>(!global0.x | global0.x, true, any(vec2<bool>(false, global0.x)), true), !select(select(!vec4<bool>(global0.x, true, false, false), vec4<bool>(true, false, true, global0.x), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, global0.x))), !select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, false, global0.x, false)), select(vec4<bool>(global0.x, false, true, false), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), false), global0.x)), vec4<bool>(!(true || any(vec2<bool>(global0.x, global0.x))), func_1(), func_2(var_0, 2832u), 46079i == -u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.a.x, ~27502i ^ _wgslsmith_sub_i32(u_input.b.x, -1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(18634i, 1i)), select(var_0.a, vec2<i32>(49126i, var_0.a.x), vec2<bool>(false, false))), 1i));
}

