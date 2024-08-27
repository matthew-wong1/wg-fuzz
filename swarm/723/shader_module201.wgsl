struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = Struct_1(vec4<bool>(true, true, true, false == arg_2.a.x));
    global0 = array<Struct_1, 3>();
    return true;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(reverseBits(-1i), firstLeadingBit(-_wgslsmith_div_i32(-2147483647i, -23838i))), max(_wgslsmith_clamp_i32(min(select(-12645i, -12224i, arg_0.a.x), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(-14903i, 1i, 2147483647i), vec3<i32>(1i, -2147483647i, -11570i))), _wgslsmith_mod_i32(30317i, 14810i) << (u_input.a.x % 32u)), 1i), -(~5257i), -1i);
    global0 = array<Struct_1, 3>();
    let var_1 = select(var_0.xw, firstTrailingBit(-(~_wgslsmith_mod_vec2_i32(var_0.wz, var_0.zw))), select(arg_0.a.xz, arg_0.a.wy, !select(select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(true, arg_0.a.x), all(arg_0.a.wz))));
    global0 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_mult_i32(~(-(~_wgslsmith_add_i32(-25527i, 53247i))), firstTrailingBit(_wgslsmith_dot_vec3_i32(min(-vec3<i32>(var_1.x, 0i, var_1.x), vec3<i32>(2147483647i, 2147483647i, 47667i)), abs(var_0.zyx))));
    return -1217f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, true, true, true))))))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, false, false, true)))), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2025f) + -403f))));
    var var_1 = 29020u;
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, 1i, 1i)), -vec3<i32>(~(-22161i), 1i, 1i)) == -15542i;
    return Struct_1(select(select(!select(vec4<bool>(true, true, var_4, var_4), vec4<bool>(true, var_4, false, var_4), var_4), select(!vec4<bool>(var_4, var_4, var_4, false), select(vec4<bool>(var_4, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, var_4, false, true)), true), !(!vec4<bool>(true, var_4, true, var_4))), !select(!vec4<bool>(var_4, var_4, var_4, var_4), vec4<bool>(false, true, false, false), vec4<bool>(var_4, false, var_4, var_4)), var_4));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, ~u_input.a.x >= _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 40778u, u_input.a.x, 4294967295u))), !(func_1(vec4<i32>(0i, -46569i, -12807i, 1i), vec4<i32>(1i, -1i, 17747i, 21755i), global0[_wgslsmith_index_u32(23783u, 3u)]) | true), true));
    var var_1 = func_2();
    global0 = array<Struct_1, 3>();
    let var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), 30544u, ~0u, 1u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)))), 3u)];
    let var_3 = Struct_1(vec4<bool>(false, true, all(var_0.a), false));
    var var_4 = func_2();
    var_0 = func_2();
    var var_5 = -21881i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, select(-1i, -2147483647i, var_0.a.x), 1i, 1i), abs(abs(vec4<i32>(0i, 13552i, 29661i, 2147483647i)))) | _wgslsmith_sub_vec4_i32(abs(firstLeadingBit(vec4<i32>(-40039i, -27377i, 1i, -28785i))), vec4<i32>(_wgslsmith_add_i32(35386i, -13446i), -37785i, reverseBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -22700i, -41111i), vec4<i32>(-2147483647i, -5776i, -2147483647i, 0i)))), -105672i, vec2<i32>(i32(-1i) * -(i32(-1i) * -3161i), -1i));
}

