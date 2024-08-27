struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    let var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(arg_2.x, 7u)], global0[_wgslsmith_index_u32(73043u, 7u)], global0[_wgslsmith_index_u32(arg_2.x, 7u)]), -(~vec4<i32>(global0[_wgslsmith_index_u32(arg_2.x, 7u)], 1i, -1i, 38408i))), countOneBits(reverseBits(vec4<i32>(-4425i, -2147483647i, global0[_wgslsmith_index_u32(arg_2.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))) << (vec4<u32>(50787u, 85813u, arg_2.x, u_input.a.x) % vec4<u32>(32u)));
    global0 = array<i32, 7>();
    let var_1 = !(!vec2<bool>(!any(vec2<bool>(arg_0.c, arg_1)), arg_1));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(ceil(628f)), _wgslsmith_f_op_f32(ceil(-572f)), false), any(!vec4<bool>(false, true, select(true, false, true), true)), ~firstTrailingBit(min(u_input.a.wz, u_input.a.wy >> (vec2<u32>(u_input.a.x, 14108u) % vec2<u32>(32u)))));
    let var_1 = -23305i;
    let var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(17335i, 0i)) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(~var_1, abs(1i))), reverseBits(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_1, 35881i)), ~vec2<i32>(var_1, global0[_wgslsmith_index_u32(0u, 7u)]), -vec2<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(86283u, 7u)]))));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(~min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 12159u), u_input.a), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 50165u)), vec4<u32>(78582u, u_input.a.x, _wgslsmith_sub_u32(13227u, u_input.a.x), 0u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 23335u, 22377u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 29193u, 4294967295u)) | (u_input.a ^ u_input.a), ~(~vec4<u32>(0u, 0u, 4294967295u, u_input.a.x))));
    let var_4 = Struct_1(697f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(287f - var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)))), -103f), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.c, true), vec3<bool>(false, true, true), vec3<bool>(true, var_0.c, true)), select(vec3<bool>(true, var_0.c, true), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c)))) | true);
    let var_5 = var_4.b;
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, ~var_3.yw), firstTrailingBit(firstLeadingBit(49147u))), vec4<f32>(var_5, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5, -204f)), 1000f));
}

