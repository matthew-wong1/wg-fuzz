struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(22038u, 25684u, 4294967295u, 68365u), vec4<u32>(1u, 1u, 1u, 10591u), vec4<u32>(1u, 23999u, 1u, 4294967295u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec3<u32> {
    return vec3<u32>(1u ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 3u)], vec4<u32>(4294967295u, 1u, 44713u, 103853u)), 0u), 63625u, 9980u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec4<i32> {
    var var_0 = vec4<i32>(-min(max(48080i, arg_1.c), i32(-1i) * -u_input.a.x), -abs(i32(-1i) * -u_input.a.x), arg_1.c, 1i);
    global0 = array<vec4<u32>, 3>();
    return vec4<i32>(~(-14444i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -21644i), vec2<i32>(0i, arg_1.c))), vec2<i32>(1i, var_0.x)) | _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, var_0.x), abs(var_0.zy)), var_0.x, -firstTrailingBit(23460i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = array<vec4<u32>, 3>();
    var var_0 = vec3<bool>(all(vec4<bool>(true, select(true, true, false), false, true)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), !all(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    var_0 = !select(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(select(arg_0.a >= 0u, !var_0.x, false), false, !(!var_0.x)), all(select(vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, false, false), true)));
    var var_1 = _wgslsmith_f_op_f32(round(-938f));
    var var_2 = -17592i & countOneBits(-3681i ^ ~(-arg_0.c));
    return !vec3<bool>(any(vec3<bool>(true, !var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, false)))), var_0.x, !(!var_0.x));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = (vec2<i32>(-_wgslsmith_div_i32(arg_2.c, 2147483647i), u_input.a.x) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~arg_0), vec2<u32>(arg_3, _wgslsmith_add_u32(arg_2.a, 4294967295u))) % vec2<u32>(32u))) & -u_input.a.yz;
    let var_1 = select(select(_wgslsmith_mod_u32(min(arg_2.a, 4294967295u), arg_2.a), arg_3, true), _wgslsmith_mult_u32(1u, firstTrailingBit(~4294967295u)), all(func_4(Struct_1(2219u, arg_2.b, 24085i, vec3<i32>(arg_2.d.x, u_input.a.x, 2147483647i), arg_2.e), func_3(Struct_2(vec2<u32>(arg_3, 4294967295u), arg_2.e.yz), arg_2, false, arg_1)))) ^ 4294967295u;
    var var_2 = arg_2;
    var var_3 = firstTrailingBit(max(var_2.e, ~arg_2.e) ^ arg_2.e);
    var_0 = vec2<i32>(_wgslsmith_div_i32(1i, max(_wgslsmith_mult_i32(min(u_input.a.x, var_2.c), i32(-1i) * -2147483647i), var_2.c)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, ~(-_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x))));
    return ~(~_wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec2_u32(~var_3.zy, firstTrailingBit(vec2<u32>(var_3.x, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 3>();
    var var_0 = 69316u;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(64692u, 4294967295u, ~0u), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 50786u)), vec3<u32>(1u, 1u, 1u)), false)), _wgslsmith_mod_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(41574u, 1u, 4294967295u))), ~(~vec3<u32>(58172u, 33389u, 4294967295u))) >> (~func_1() % vec3<u32>(32u)));
    let var_2 = Struct_2(~var_1.xy, var_1.xy);
    var_0 = ~firstTrailingBit(_wgslsmith_sub_u32(var_2.b.x, countOneBits(func_2(var_1.x, true, Struct_1(41081u, -312f, -704i, vec3<i32>(1i, u_input.a.x, -2147483647i), global0[_wgslsmith_index_u32(var_2.a.x, 3u)]), var_2.a.x))));
    global0 = array<vec4<u32>, 3>();
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-889f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1359f) - _wgslsmith_f_op_f32(796f + 1000f)), _wgslsmith_f_op_f32(-593f + -585f))) * _wgslsmith_f_op_f32(f32(-1f) * -242f))));
    var_0 = _wgslsmith_mod_u32(var_1.x, max(firstTrailingBit(var_1.x), var_1.x | ~_wgslsmith_div_u32(0u, var_1.x)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(max(select(u_input.a, vec4<i32>(u_input.a.x & u_input.a.x, -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true)), vec4<i32>(u_input.a.x, func_3(Struct_2(var_1.yx, var_2.b), Struct_1(0u, -925f, u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(var_2.b.x, var_2.b.x, 0u, 0u)), true, true).x, _wgslsmith_clamp_i32(reverseBits(u_input.a.x), u_input.a.x, 35041i), -u_input.a.x)), -1000f, u_input.a.x, ~countOneBits(vec2<u32>(_wgslsmith_clamp_u32(41604u, 73253u, var_2.a.x), _wgslsmith_mod_u32(4294967295u, 13310u))), -23724i);
}

