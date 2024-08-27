struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec3<i32> {
    global0 = array<Struct_1, 24>();
    var var_0 = vec3<bool>(arg_2.x, !arg_2.x, true);
    var var_1 = _wgslsmith_f_op_f32(2047f + _wgslsmith_f_op_f32(1f + 523f));
    var_0 = arg_2;
    var var_2 = -797f;
    return arg_3;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -reverseBits(vec3<i32>(-1928i, -16578i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(46341i, u_input.a, -67235i) ^ -func_3(1u, vec2<i32>(1i, -15521i), vec3<bool>(false, false, false), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(16129i, u_input.a, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, -1i))));
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_1(!all(vec4<bool>(select(true, false, false), all(vec3<bool>(false, false, true)), true, false)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1928f * -1000f) * _wgslsmith_f_op_f32(floor(-863f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1026f)));
    return Struct_1(true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    global0 = array<Struct_1, 24>();
    var var_0 = func_2(arg_0.zz);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(select(arg_0.zz, arg_0.xz, all(vec3<bool>(false, true, false))), max(vec2<u32>(arg_2, arg_2), _wgslsmith_add_vec2_u32(vec2<u32>(40559u, 0u), arg_0.zx))), _wgslsmith_clamp_vec2_u32(arg_0.xx, arg_0.zz, arg_0.yy)), arg_0.yz), 24u)];
    let var_2 = countOneBits(arg_3.zx);
    var var_3 = select(!select(vec2<bool>(true, true), !vec2<bool>(var_0.a, var_1.a), !vec2<bool>(false, var_0.a)), !select(!select(vec2<bool>(var_0.a, var_1.a), vec2<bool>(false, arg_1.a), false), vec2<bool>(true, true), !select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, true), vec2<bool>(false, var_1.a))), vec2<bool>(false, var_0.a));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), -712f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(2147483647i >= (u_input.a << (28979u % 32u))));
    global0 = array<Struct_1, 24>();
    let var_1 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(48627u, 9907u, 1u)), ~vec3<u32>(57795u, 0u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(20123u, 1u), ~6195u, 1271u, ~4294967295u), countOneBits(countOneBits(vec4<u32>(0u, 4294967295u, 3567u, 4294967295u)))));
    var var_2 = _wgslsmith_f_op_f32(func_1(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 36399u), 1u, abs(_wgslsmith_div_u32(~var_1, ~var_1))), global0[_wgslsmith_index_u32(var_1, 24u)], abs(reverseBits(~24001u)), ~_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(2147483647i, u_input.a, 29830i), vec3<i32>(41696i, u_input.a, u_input.a)), reverseBits(vec3<i32>(-7800i, -2147483647i, u_input.a))))));
    let var_3 = abs(countOneBits(u_input.a << (~93781u % 32u)));
    var var_4 = func_2(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_1, 67446u, var_1), vec4<u32>(var_1, 13330u, 90576u, var_1) | vec4<u32>(var_1, 4019u, var_1, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 0u, var_1, 0u), vec4<u32>(var_1, 4294967295u, var_1, 13267u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, 1i), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(var_1, 7037u, 1u)) << ((~vec3<u32>(var_1, var_1, 1u) >> (vec3<u32>(4294967295u, var_1, var_1) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(69985u, 70046u, _wgslsmith_add_u32(var_1, 4294967295u) | ~var_1)), ~18226u, -2147483647i, var_1);
}

