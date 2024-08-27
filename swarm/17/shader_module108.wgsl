struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(i32(-2147483648), 69948i, -1i, i32(-2147483648), 23738i, i32(-2147483648), -1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec3<i32> {
    global0 = array<i32, 7>();
    let var_0 = vec3<bool>(arg_0 & true, !arg_0, true);
    let var_1 = min(abs(~min(-2147483647i, countOneBits(-22796i))), ~u_input.a.x);
    var var_2 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(global0[_wgslsmith_index_u32(~1u, 7u)], u_input.a.x, u_input.a.x ^ 29625i, 35318i)), vec4<i32>(var_1, ~29522i, max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 3062u), _wgslsmith_div_vec4_u32(vec4<u32>(50314u, 0u, 77085u, 16910u), vec4<u32>(43427u, 61518u, 30009u, 14183u))), 7u)], var_1), 0i));
    let var_3 = max(~vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(~(4294967295u >> (0u % 32u)), ~(~832u))));
    return -_wgslsmith_div_vec3_i32(-(vec3<i32>(var_1, u_input.a.x, u_input.a.x) >> (vec3<u32>(var_3.x, 4294967295u, var_3.x) % vec3<u32>(32u))), ~var_2.zyw) << (((~(~vec3<u32>(15920u, 65196u, var_3.x)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, 0u, 4294967295u), vec3<u32>(var_3.x, 48188u, 1u)) % vec3<u32>(32u))) << (vec3<u32>(var_3.x, firstTrailingBit(var_3.x), select(var_3.x, var_3.x, var_0.x) >> (~var_3.x % 32u)) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global0 = array<i32, 7>();
    let var_0 = Struct_1(1u, _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(67181u, 7u)], 43954i, u_input.a.x), min(vec3<i32>(global0[_wgslsmith_index_u32(5034u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 1i), vec3<i32>(2727i, u_input.a.x, u_input.a.x))), ~_wgslsmith_mult_vec3_i32(func_3(false, vec3<f32>(1845f, -2317f, 449f), -982f, 297f), vec3<i32>(0i, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1751f, 587f, false)), _wgslsmith_f_op_f32(f32(-1f) * -270f)))) - _wgslsmith_f_op_f32(1f * -165f));
    var_1 = 177f;
    global0 = array<i32, 7>();
    return var_0.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~(~firstTrailingBit(_wgslsmith_clamp_u32(17205u, 34361u, 4294967295u))));
    let var_1 = ~vec3<i32>(_wgslsmith_div_i32(func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), -2147483647i), -8883i >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(59221u, 12548u), vec2<u32>(4960u, 4294967295u))) % 32u), 30087i);
    var var_2 = Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(50670u, 17057u), vec2<u32>(44768u, 1u)), ~vec2<u32>(1u, 1u))), vec3<i32>(var_1.x ^ 0i, _wgslsmith_mod_i32(-select(var_1.x, global0[_wgslsmith_index_u32(49730u, 7u)], false), 36086i), ~(-1i)));
    var var_3 = vec2<bool>(false, all(vec2<bool>(true | any(vec3<bool>(true, false, true)), true)));
    let var_4 = _wgslsmith_add_i32(func_2(!vec4<bool>(var_3.x, var_3.x, false, true)) ^ max(-_wgslsmith_sub_i32(var_1.x, -29291i), 2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(~u_input.a.x), 1i), func_2(vec4<bool>(true, true, true, true))));
    return Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_2.a, 0u) ^ vec2<u32>(var_2.a, 13344u)), vec2<u32>(var_2.a, 11595u) >> (countOneBits(vec2<u32>(35210u, var_2.a)) % vec2<u32>(32u))) & ~(min(var_2.a, 0u) | var_2.a), select(~var_2.b, max(var_2.b, select(var_2.b, vec3<i32>(var_4, -7345i, 1i), true)), any(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) - 865f), 909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1373f - -1511f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2358f, 1577f) * -763f))));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.a, min(~var_0.a, _wgslsmith_add_u32(var_0.a, var_0.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 30964u) | vec2<u32>(var_0.a, var_0.a), min(vec2<u32>(var_1.a, var_0.a), vec2<u32>(41694u, var_1.a))) ^ var_0.a), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)), select(vec4<u32>(1u, var_0.a, var_1.a, var_0.a), vec4<u32>(var_0.a, var_1.a, var_1.a, 48996u), true)), firstTrailingBit(vec4<u32>(var_1.a, 20505u, var_0.a, 1u)) ^ min(_wgslsmith_sub_vec4_u32(vec4<u32>(8424u, var_1.a, var_0.a, 67756u), vec4<u32>(var_0.a, 12960u, var_1.a, var_0.a)), ~vec4<u32>(var_0.a, var_0.a, var_1.a, 23564u)), max(select(reverseBits(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a)), vec4<u32>(59159u, 82503u, 25238u, 3553u), vec4<bool>(true, true, true, false)), vec4<u32>(abs(0u), ~var_1.a, var_0.a, _wgslsmith_add_u32(var_0.a, var_0.a)))));
}

