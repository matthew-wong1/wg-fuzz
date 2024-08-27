struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(0u, 1880u, 4294967295u, 0u), vec4<i32>(56140i, 52795i, -3194i, 394i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(countOneBits(~52377u), 7226u, true);
    var var_1 = ~4294967295u;
    var_1 = 4294967295u;
    var var_2 = all(vec2<bool>(true, true));
    var_2 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    return abs(vec4<u32>((0u ^ (global2.a.x >> (global2.a.x % 32u))) << (u_input.a.x % 32u), global2.a.x, 39458u, 22855u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 25u)];
    let var_1 = Struct_1(min(~max(~vec4<u32>(arg_2, 0u, 1u, arg_2), vec4<u32>(u_input.a.x, 4294967295u, 5442u, 1u)), (var_0.a >> (func_3(global1[_wgslsmith_index_u32(arg_2, 30u)]) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(var_0.a << (global2.a % vec4<u32>(32u)), ~vec4<u32>(7503u, 1u, var_0.a.x, var_0.a.x)) % vec4<u32>(32u))), global2.b << (select(~vec4<u32>(arg_2, arg_2, global2.a.x, 0u), vec4<u32>(0u, 94652u, ~7815u, ~arg_2), select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, true, arg_1.x), vec4<bool>(true, true, false, arg_1.x)), !vec4<bool>(false, arg_1.x, true, arg_1.x), !vec4<bool>(true, true, arg_1.x, arg_1.x))) % vec4<u32>(32u)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a, max(global2.a, var_0.a)), firstLeadingBit(var_1.a) | (vec4<u32>(40963u, arg_2, 35448u, 73788u) << (vec4<u32>(74952u, 1u, var_1.a.x, 0u) % vec4<u32>(32u)))), 11328u)), 25u)];
    global1 = array<Struct_1, 30>();
    let var_2 = !arg_1.x;
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(~41110u, max(_wgslsmith_sub_u32(1u, u_input.a.x), arg_0.a.x), _wgslsmith_mod_u32(32044u, 0u | arg_0.a.x) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(7310u, 1u), global2.a.xw), arg_0.a.x), arg_0.b);
    let var_1 = !any(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)));
    var var_2 = -1i;
    var_0 = global1[_wgslsmith_index_u32(13343u, 30u)];
    global2 = Struct_1(func_3(Struct_1(~(~vec4<u32>(40331u, var_0.a.x, 11492u, 129997u)), _wgslsmith_clamp_vec4_i32(var_0.b, arg_0.b, vec4<i32>(u_input.b, -1i, global2.b.x, u_input.b)) | -var_0.b)), -(var_0.b >> ((~global2.a | (vec4<u32>(global2.a.x, global2.a.x, 3695u, arg_0.a.x) & vec4<u32>(11531u, 0u, 1u, arg_0.a.x))) % vec4<u32>(32u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(max(_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x)), 19449u, var_0.a.x, arg_0.a.x)), ~select(vec4<u32>(arg_0.a.x, 3555u, ~arg_0.a.x, _wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x)), ~vec4<u32>(var_0.a.x, global2.a.x, global2.a.x, 4294967295u), select(select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(true, false, true, false), var_1), select(vec4<bool>(false, var_1, false, false), vec4<bool>(var_1, false, true, var_1), true), select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, false, false))))), 30u)];
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = true;
    let var_1 = func_4(Struct_1(global2.a, vec4<i32>(-19598i, 1i >> (arg_0 % 32u), func_2(vec3<f32>(-255f, 1162f, 862f), !vec2<bool>(var_0, false), select(4294967295u, arg_0, true)), 31281i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(413f, 689f, all(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(664f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2368f + 639f) - _wgslsmith_f_op_f32(select(761f, 1064f, true))))), _wgslsmith_add_vec4_i32(~max(global2.b, ~global2.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-44698i, global2.b.x, 3795i, global2.b.x) & vec4<i32>(2147483647i, -23036i, global2.b.x, u_input.b), global2.b, global2.b)));
    var var_2 = all(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0, var_0), !(!vec3<bool>(false, var_0, var_0))), vec3<bool>(false, all(vec3<bool>(true, false, false)), true), !(!(!var_0))));
    global2 = var_1;
    var var_3 = global1[_wgslsmith_index_u32(global2.a.x, 30u)];
    return func_4(global1[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), var_3.b >> (~vec4<u32>(u_input.a.x & var_3.a.x, 1u | var_1.a.x, arg_1, arg_1) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = !vec4<bool>(all(vec2<bool>(true, any(vec3<bool>(true, arg_1, false)))), false, all(vec4<bool>(!arg_1, all(vec3<bool>(arg_1, true, true)), !arg_1, arg_1)), arg_1);
    var var_1 = Struct_1(global2.a, ~(-(~(-global2.b))));
    let var_2 = all(select(select(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, arg_1, false, true), vec4<bool>(var_0.x, false, arg_1, true)), vec4<bool>(true, false, !var_0.x, true), !(!vec4<bool>(arg_1, false, true, true))), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, arg_1, true, var_0.x)), !vec4<bool>(arg_1, false, false, true)), true));
    let var_3 = ~abs(abs(arg_0.a.yyz));
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-56895i, firstLeadingBit(-10849i)) >> (~var_3.x % 32u), global2.b.x & -2147483647i), var_1.b.wz);
    return firstLeadingBit(~firstTrailingBit(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global2.a;
    global1 = array<Struct_1, 30>();
    let var_2 = !(global2.a.x < func_5(func_1(var_1.x, u_input.a.x ^ u_input.a.x), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global1 = array<Struct_1, 30>();
    var var_3 = func_4(func_1(17402u, _wgslsmith_mult_u32(~17442u << (firstLeadingBit(global2.a.x) % 32u), func_3(Struct_1(global2.a, global2.b)).x)), 1393f, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, 1i), -2147483647i), -12353i), i32(-1i) * -global2.b.x, max(-max(u_input.b, -1i), ~firstLeadingBit(global2.b.x)), ~max(_wgslsmith_clamp_i32(u_input.b, u_input.b, global2.b.x), u_input.b)));
    let var_4 = Struct_1(global2.a, vec4<i32>(-1i, 1i, -global2.b.x, 1i));
    let var_5 = Struct_1(vec4<u32>(var_1.x & 4294967295u, abs(~4294967295u), var_1.x, 11750u), _wgslsmith_mod_vec4_i32(func_1(7174u, 4294967295u).b, countOneBits(vec4<i32>(-47946i, var_4.b.x, -28896i, -17608i))) ^ vec4<i32>(global2.b.x, global2.b.x, abs(-1i), 7193i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(691f + 765f)), 2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1149f)))), select(abs(global2.a), reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(25847u, var_5.a.x, 4294967295u, 35359u), var_4.a, vec4<u32>(4294967295u, var_1.x, global2.a.x, 1u))), vec4<bool>(!all(vec2<bool>(var_2, var_2)), all(select(vec2<bool>(true, true), vec2<bool>(var_2, var_2), vec2<bool>(false, var_2))), false, -1465f <= _wgslsmith_f_op_f32(trunc(-257f)))));
}

