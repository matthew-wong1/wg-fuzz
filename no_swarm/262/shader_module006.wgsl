struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true));

var<private> global2: i32 = 1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> bool {
    let var_0 = false;
    var var_1 = arg_0;
    var_1 = arg_0;
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    return !var_0;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = -342f;
    global0 = array<Struct_1, 13>();
    let var_1 = 1u;
    global2 = arg_1.c;
    let var_2 = _wgslsmith_mod_i32(u_input.b, select(37598i, arg_1.c, !func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.b, 0u), 13u)], _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, var_1, 19537u), u_input.a), 2147483647i)));
    return select(!vec2<bool>(any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, false), vec3<bool>(true, arg_0, false))), 0u == u_input.a.x), vec2<bool>(true, arg_0), select(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), vec2<bool>(arg_0, any(vec3<bool>(arg_0, true, arg_0))), false), select(vec2<bool>(!arg_0, var_1 >= 1u), vec2<bool>(func_3(arg_1, vec4<u32>(var_1, 1263u, 27003u, var_1), -1i), all(vec3<bool>(false, arg_0, false))), !(!vec2<bool>(arg_0, false))), false));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = !select(!select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), false), !func_2(var_0 == var_0, global0[_wgslsmith_index_u32(4294967295u, 13u)]), select(arg_1, arg_1, true));
    global2 = select(1i, _wgslsmith_div_i32(-1i, u_input.b), all(vec3<bool>(true, (arg_0 != 36307u) & !var_1.x, var_1.x)));
    var var_2 = 1000f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1110f);
    return Struct_1(vec2<i32>(-1i) * -firstLeadingBit(select(vec2<i32>(u_input.b, -16396i), vec2<i32>(u_input.b, -13036i), arg_1)), ~max(countOneBits(4888u), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, arg_0), _wgslsmith_mod_u32(arg_0, 4294967295u))), -select(~(~u_input.b), -2147483647i << (min(u_input.a.x, arg_0) % 32u), _wgslsmith_f_op_f32(1467f * var_0) == 283f), u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(-931f, -944f);
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.a, _wgslsmith_sub_vec2_i32(select(vec2<i32>(10890i, arg_1.c), vec2<i32>(4244i, arg_1.a.x), vec2<bool>(false, false)), vec2<i32>(-1i, -20770i))), firstTrailingBit(max(arg_1.a.x ^ -1i, u_input.b & 31542i))), ~4294967295u, ~firstTrailingBit(1i), _wgslsmith_mult_u32(4294967295u, arg_1.b));
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.a | ~vec4<u32>(~4294967295u, ~var_1.d, ~arg_1.d, _wgslsmith_add_u32(4294967295u, var_1.d)), _wgslsmith_mult_vec4_u32(min(~vec4<u32>(u_input.a.x, var_1.b, arg_1.b, var_1.d), vec4<u32>(55257u << (arg_1.d % 32u), _wgslsmith_mod_u32(u_input.a.x, 0u), 1u, 8953u)), firstLeadingBit(abs(~u_input.a))));
    global0 = array<Struct_1, 13>();
    var_1 = Struct_1(vec2<i32>(-abs(1i), abs(abs(var_1.a.x | u_input.b))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b, u_input.a.x, var_1.b, var_1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.b, arg_1.b), vec4<u32>(4294967295u, arg_0.d, u_input.a.x, 18847u), vec4<u32>(1u, 37486u, 1u, u_input.a.x)))), 4294967295u), arg_1.c, 1u);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, -365f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1014f)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = func_4(func_1(25397u, all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), u_input.a.x >= 114153u)), -1757f, _wgslsmith_f_op_f32(1f * 968f)), Struct_1(~firstLeadingBit(vec2<i32>(0i, u_input.b) | vec2<i32>(u_input.b, -852i)), select(u_input.a.x, 4294967295u, true), -u_input.b, ~u_input.a.x));
}

