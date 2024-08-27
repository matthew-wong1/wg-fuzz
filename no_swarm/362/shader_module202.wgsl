struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: array<f32, 25>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> i32 {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-747f * 708f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f - global0[_wgslsmith_index_u32(0u, 25u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -801f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 25u)]))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec4<u32>(0u, 1u, 4294967295u, 0u))), 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(55669u, firstTrailingBit(1u)), 25u)]);
    var var_1 = global0[_wgslsmith_index_u32(~(1u | _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4721u, 48654u, 0u))), 25u)];
    var var_2 = arg_0.xx;
    return ~1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global0 = array<f32, 25>();
    let var_0 = Struct_1(arg_1.e.x, min((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -24807i, 23367i), u_input.a) | vec3<i32>(-2011i, 70345i, arg_1.b.x)) & vec3<i32>(func_3(arg_1.b, vec3<bool>(true, true, arg_2.a.x)), arg_0.x | arg_1.b.x, -35361i), countOneBits(firstLeadingBit(vec3<i32>(arg_1.b.x, -2147483647i, arg_0.x)))), firstTrailingBit(min(~firstLeadingBit(arg_1.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 25247u, 32785u, 1u), vec4<u32>(arg_1.a, arg_1.e.x, 0u, 13311u)))), 4711u, _wgslsmith_mult_vec2_u32(select(~vec2<u32>(arg_1.d, 1u), ~vec2<u32>(0u, arg_1.a), select(arg_2.a.xz, vec2<bool>(true, arg_2.a.x), arg_2.a.x)) | vec2<u32>(arg_1.e.x, ~76136u), _wgslsmith_mult_vec2_u32(arg_1.e << (vec2<u32>(4294967295u, arg_1.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1.c), arg_1.e) | _wgslsmith_sub_vec2_u32(vec2<u32>(4752u, 1u), arg_1.e))));
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let var_1 = ~(~vec4<u32>(0u, arg_1.c, 2720u, var_0.d) | abs(~vec4<u32>(17140u, 31457u, 4294967295u, 12774u))) >> (countOneBits(vec4<u32>(var_0.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.a, arg_1.a), ~0u), _wgslsmith_sub_u32(~var_0.d, _wgslsmith_clamp_u32(4563u, arg_1.e.x, 0u)), ~7605u)) % vec4<u32>(32u));
    return true;
}

fn func_1() -> vec2<bool> {
    global0 = array<f32, 25>();
    var var_0 = _wgslsmith_div_u32(~abs(0u), _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(36978u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u))));
    var var_1 = _wgslsmith_f_op_f32(round(-310f));
    let var_2 = Struct_2(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true, true), select(vec4<bool>(true, true, true, u_input.b >= 20900i), vec4<bool>(func_2(u_input.a.yx, Struct_1(1u, vec3<i32>(u_input.b, -1i, u_input.b), 0u, 23870u, vec2<u32>(4294967295u, 1u)), Struct_2(vec4<bool>(true, false, false, false))), true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)))));
    let var_3 = Struct_2(var_2.a);
    return !vec2<bool>(func_2(max(~u_input.a.zy, u_input.a.xx), Struct_1(_wgslsmith_mod_u32(53570u, 12897u), u_input.a, ~4294967295u, _wgslsmith_mult_u32(1u, 25496u), vec2<u32>(1u, 50948u)), Struct_2(!vec4<bool>(false, true, true, var_3.a.x))), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(1i, -u_input.a.x, ~38115i);
    var var_1 = all(vec4<bool>(true, true, true, true));
    var var_2 = !func_1();
    var var_3 = Struct_1(~0u, u_input.a, 1u, abs(~1u), ~select(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2670u, 63880u)), select(~vec2<u32>(1u, 466u), abs(vec2<u32>(44921u, 4294967295u)), var_2.x), select(func_1(), !vec2<bool>(true, var_2.x), !var_2.x)));
    var var_4 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(var_0.x, -var_3.b.x & reverseBits(var_3.b.x)), min(min(-u_input.a.x, -u_input.b), u_input.b & var_3.b.x));
    let var_5 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_3.d), var_3.e, vec2<u32>(var_3.d, ~min(var_3.e.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-555f + global0[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_5.x, 25u)], 2570f)))), _wgslsmith_f_op_f32(1633f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] * global0[_wgslsmith_index_u32(0u, 25u)])), var_2.x)))));
}

