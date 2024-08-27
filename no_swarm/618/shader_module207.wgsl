struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    global0 = array<vec3<i32>, 20>();
    let var_0 = (_wgslsmith_add_i32(select(-34947i, _wgslsmith_dot_vec2_i32(vec2<i32>(929i, -76511i), vec2<i32>(-23991i, -4460i)), true), -abs(7817i)) & 2147483647i) != -(~2147483647i);
    var var_1 = Struct_1(!vec3<bool>(false, var_0, any(!vec4<bool>(var_0, true, var_0, true))), (-firstLeadingBit(vec2<i32>(-2147483647i, 21582i)) ^ vec2<i32>(firstTrailingBit(-1i), _wgslsmith_sub_i32(6090i, 1i))) >> (~countOneBits(vec2<u32>(u_input.b, u_input.c)) % vec2<u32>(32u)));
    var var_2 = -1665f;
    var var_3 = Struct_2(Struct_1(!vec3<bool>(!var_1.a.x, true, false), _wgslsmith_mult_vec2_i32(-var_1.b, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 26279i), vec2<i32>(var_1.b.x, 2147483647i)))), any(var_1.a.yz), abs(~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.c, u_input.c), u_input.a.xzx << (u_input.a.xyw % vec3<u32>(32u)))), true);
    return firstLeadingBit(~10856u);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec2<bool> {
    global0 = array<vec3<i32>, 20>();
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 20u)];
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    var_0 = ~_wgslsmith_mult_vec3_i32(-vec3<i32>(abs(var_0.x), var_0.x, abs(2147483647i)), vec3<i32>(-var_0.x, _wgslsmith_dot_vec2_i32(select(var_0.xy, vec2<i32>(var_0.x, var_0.x), vec2<bool>(false, false)), firstLeadingBit(vec2<i32>(var_0.x, 30482i))), -var_0.x));
    var var_1 = Struct_2(Struct_1(!select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), any(vec2<bool>(false, false))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(4922i, var_0.x))) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 14852u), u_input.a.xw) % vec2<u32>(32u))), _wgslsmith_f_op_f32(sign(arg_0.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-797f)), _wgslsmith_f_op_f32(-arg_0.x)))), ~vec3<u32>(~arg_1, ~1u, ~1196u), any(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, !(0i < var_0.x))));
    return vec2<bool>(var_1.b, false);
}

fn func_4(arg_0: vec2<bool>) -> vec4<u32> {
    global0 = array<vec3<i32>, 20>();
    var var_0 = -903f;
    let var_1 = -_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, 22295i, -5620i) << (u_input.a % vec4<u32>(32u)), ~vec4<i32>(2147483647i, -2147483647i, -2147483647i, 0i)), vec4<i32>(_wgslsmith_mod_i32(1i, ~(-42920i)), reverseBits(1i), 8646i, -(~(-3297i))));
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    return _wgslsmith_sub_vec4_u32(abs(u_input.a), select(vec4<u32>(u_input.a.x, 1u ^ u_input.c, u_input.a.x, _wgslsmith_sub_u32(abs(u_input.c), 7092u)), vec4<u32>(firstTrailingBit(reverseBits(u_input.c)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~3752u), ~_wgslsmith_mod_u32(0u, 78358u), u_input.a.x), false));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    global0 = array<vec3<i32>, 20>();
    let var_0 = ~(func_4(!func_2(vec3<f32>(-1376f, 771f, -1447f), u_input.c)) | vec4<u32>(u_input.c, 5506u, max(u_input.c, 54669u), firstLeadingBit(u_input.c >> (u_input.b % 32u))));
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-149f)), _wgslsmith_f_op_f32(select(-416f, -566f, false)))), _wgslsmith_f_op_f32(min(706f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(2217f + -794f), 382f))), 1633f), 17333u);
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    return firstLeadingBit(~abs(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0, 2147483647i, -5924i), vec4<i32>(2147483647i, 2147483647i, arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    var var_1 = Struct_1(vec3<bool>(all(vec3<bool>(true, true, true)), !(all(vec4<bool>(true, true, true, true)) && all(vec4<bool>(true, false, false, false))), select(any(vec4<bool>(true, true, true, true)), true, true) & true), max(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(18054i, 33771i)), -_wgslsmith_add_vec2_i32(vec2<i32>(36715i, 0i), vec2<i32>(0i, -33565i))), vec2<i32>(firstLeadingBit(5821i), _wgslsmith_dot_vec4_i32(func_1(2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -48808i), vec4<i32>(38930i, -11607i, 1i, -76484i))))));
    let var_2 = Struct_1(var_1.a, var_1.b);
    global0 = array<vec3<i32>, 20>();
    var_1 = var_2;
    global0 = array<vec3<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), var_0.ywy, max(_wgslsmith_mod_u32(81579u, u_input.b), u_input.b));
}

