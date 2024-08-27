struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<u32, 13>();
    var var_0 = arg_0;
    var_0 = Struct_1(vec4<bool>(!any(var_0.a.wy), true, var_0.a.x, arg_0.a.x));
    var_0 = Struct_1(!arg_0.a);
    global0 = array<u32, 13>();
    return reverseBits(firstTrailingBit(1i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> bool {
    var var_0 = ~_wgslsmith_mod_i32(u_input.d.x ^ _wgslsmith_mult_i32(0i, 66704i), -2147483647i);
    let var_1 = ~_wgslsmith_clamp_vec4_u32(u_input.e, select(vec4<u32>(1u, global0[_wgslsmith_index_u32(58189u, 13u)], u_input.e.x, u_input.e.x), ~u_input.e, !arg_0.a.x) >> (vec4<u32>(0u >> (u_input.e.x % 32u), _wgslsmith_mult_u32(5126u, 0u), u_input.b.x >> (global0[_wgslsmith_index_u32(u_input.b.x, 13u)] % 32u), 1u) % vec4<u32>(32u)), u_input.e);
    var_0 = _wgslsmith_div_i32(~u_input.c.x, -2147483647i);
    global0 = array<u32, 13>();
    var_0 = -_wgslsmith_div_i32(~max(~u_input.a.x, 6061i), func_3(Struct_1(select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(false, false, false, arg_2), vec4<bool>(arg_2, arg_0.a.x, arg_2, true)))));
    return true;
}

fn func_1() -> bool {
    var var_0 = !(!vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(69610u, 13u)]), 13u)] <= (u_input.b.x | u_input.e.x)));
    var_0 = vec2<bool>(all(vec2<bool>(false, false)), true != var_0.x);
    var var_1 = firstTrailingBit(vec4<u32>(9459u, ~(~max(0u, 51538u)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.e.x, 4294967295u) >> (_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 13u)])) % 32u)), 36270u));
    var var_2 = Struct_1(select(vec4<bool>(all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true, func_2(Struct_1(vec4<bool>(false, var_0.x, false, var_0.x)), vec2<f32>(-1060f, 167f), false) && all(vec2<bool>(true, var_0.x)), false), select(select(vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, true, false), false)), vec4<bool>(false, !var_0.x, true, true), false), select(vec4<bool>(var_0.x | var_0.x, true, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), false), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), false), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x)), select(!vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)))));
    var var_3 = Struct_1(vec4<bool>((u_input.d.x & _wgslsmith_add_i32(u_input.c.x, -2147483647i)) >= u_input.a.x, select(var_0.x, true, true), all(select(select(vec4<bool>(var_2.a.x, true, false, var_2.a.x), var_2.a, false), !vec4<bool>(true, var_2.a.x, var_0.x, var_0.x), var_2.a)), !((true || var_2.a.x) == true)));
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(-24636i), u_input.a.x), _wgslsmith_sub_i32(func_3(Struct_1(var_2.a)), countOneBits(1i))) >= u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!vec2<bool>(false, select(false, true, false))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    var var_2 = -2147483647i;
    global0 = array<u32, 13>();
    let var_3 = vec2<bool>(false, false && (func_1() | false));
    let var_4 = ~vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~u_input.b.x)), 71897u);
    var var_5 = Struct_1(select(select(select(!vec4<bool>(var_0, var_0, true, true), !vec4<bool>(var_0, false, true, false), select(vec4<bool>(true, var_0, var_3.x, true), vec4<bool>(true, var_0, false, true), var_3.x)), !(!vec4<bool>(var_3.x, var_3.x, false, false)), !select(vec4<bool>(false, var_0, var_3.x, true), vec4<bool>(var_0, var_3.x, true, true), vec4<bool>(var_0, false, true, var_0))), select(select(!vec4<bool>(true, var_3.x, var_0, true), vec4<bool>(false, var_0, true, var_0), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_3.x, var_3.x, var_3.x, true), var_3.x)), select(vec4<bool>(var_0, true, var_3.x, var_0), select(vec4<bool>(false, false, var_0, false), vec4<bool>(var_3.x, var_0, var_3.x, false), true), var_0 & false), select(select(vec4<bool>(var_3.x, true, false, true), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, true, false, false)), select(vec4<bool>(var_0, var_3.x, var_3.x, var_3.x), vec4<bool>(false, true, var_3.x, false), vec4<bool>(var_3.x, false, var_3.x, true)), true)), !var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(430f, 678f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -132f)))), 1f));
}

