struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(37733i, i32(-2147483648)), vec2<i32>(-30372i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-21405i, 91793i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 5>();
    let var_0 = abs(vec4<i32>(-1i, ~(~_wgslsmith_sub_i32(-1i, -2147483647i)), -min(-1i, 1i), ~(-1i)));
    return 76355u;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_1(true, vec4<u32>(~firstTrailingBit(countOneBits(28159u)), func_3(global0[_wgslsmith_index_u32(global2.b.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), u_input.a.x, _wgslsmith_add_u32(~4294967295u, ~reverseBits(global2.b.x))), _wgslsmith_sub_u32(~global2.b.x, 1u), vec2<bool>(global2.d.x, any(vec4<bool>(true, true, true, true)) | (all(vec4<bool>(global2.a, global2.a, global2.a, global2.a)) && select(false, global2.a, false))), _wgslsmith_f_op_f32(sign(396f)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(~global2.b.x ^ _wgslsmith_mult_u32(var_0.b.x, 0u), 6u)], ~(~global1[_wgslsmith_index_u32(global2.c, 6u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(14938i, 57975i)))), firstTrailingBit(vec2<i32>(-2147483647i, abs(-48624i)))), -_wgslsmith_clamp_i32(-1i, i32(-1i) * -43940i, 0i));
    let var_2 = global0[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(abs(var_0.c), firstLeadingBit(74977u)), firstTrailingBit(~_wgslsmith_div_u32(4294967295u, 1u))) << (func_3(Struct_1(true & any(vec2<bool>(global2.a, global2.d.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 11403u, 0u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(0u, 1u, global2.b.x, 4294967295u)), ~global2.c, select(vec2<bool>(false, var_0.a), !var_0.d, !vec2<bool>(false, arg_0.x)), -350f), global0[_wgslsmith_index_u32(~(~(~43047u)), 5u)]) % 32u), 5u)];
    let var_3 = (vec4<i32>(-1i) * -vec4<i32>(-var_1, var_1, reverseBits(var_1), var_1)) << (max(vec4<u32>(~var_2.c, firstTrailingBit(~global2.b.x), u_input.a.x, ~(~var_0.b.x)), var_0.b) % vec4<u32>(32u));
    var var_4 = arg_1;
    return vec3<bool>(!any(var_0.d), !all(var_0.d), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(global2.a || global2.a, max(vec4<u32>(u_input.a.x, 99757u, 57936u, select(global2.b.x & 0u, ~79312u, true | arg_0.x)), firstTrailingBit(vec4<u32>(25703u, 4294967295u, global2.b.x, u_input.a.x) << (firstTrailingBit(vec4<u32>(global2.c, global2.b.x, 0u, u_input.a.x)) % vec4<u32>(32u)))), 25310u, vec2<bool>(global2.d.x, (false || (0u != arg_1.c)) | false), _wgslsmith_f_op_f32(245f + _wgslsmith_f_op_f32(f32(-1f) * -477f)));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(~(i32(-1i) * -17117i), _wgslsmith_mult_i32(min(2147483647i, -15685i), 1i)), vec2<i32>(func_1(~vec2<u32>(0u, var_1.b.x), Struct_1(var_0.d.x, arg_1.b, 0u, arg_1.d, var_0.e), !var_1.d), -36647i) & (vec2<i32>(1i, firstTrailingBit(-1i)) | abs(_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(global2.c, 6u)], vec2<i32>(-29416i, 1i)))));
    var_0 = arg_1;
    global0 = array<Struct_1, 5>();
    return StorageBuffer(arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(vec4<i32>(0i, -max(min(-2147483647i, 2147483647i), i32(-1i) * -59127i), 24042i, _wgslsmith_clamp_i32(1i, max(-2147483647i, -2147483647i), func_1(vec2<u32>(1u, u_input.a.x), Struct_1(true, vec4<u32>(u_input.a.x, 4254u, u_input.a.x, global2.b.x), 4810u, global2.d, 2078f), global2.d)) | 1i), vec4<i32>(2147483647i, -min(1i, 52095i), 2147483647i, -1i) ^ (vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(global2.c, 1u, u_input.a.x, 29768u) % vec4<u32>(32u))), var_0);
    let x = u_input.a;
    s_output = func_4(!func_2(vec3<bool>(true, all(vec3<bool>(true, var_0, global2.d.x)), !global2.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.e, global2.e)), -206f)), 572f), Struct_1(all(func_2(!vec3<bool>(false, global2.a, false), 655f, _wgslsmith_f_op_f32(-global2.e))), global2.b, ~(~14799u) >> (~(global2.b.x ^ global2.c) % 32u), global2.d, global2.e));
}

