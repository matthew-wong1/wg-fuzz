struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<i32> {
    return vec2<i32>(firstTrailingBit(u_input.a.x << (u_input.b % 32u)), -2147483647i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> f32 {
    global0 = array<f32, 3>();
    var var_0 = arg_0;
    global0 = array<f32, 3>();
    var var_1 = Struct_1(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, arg_0.c))), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) * arg_1.x), -678f), _wgslsmith_dot_vec2_i32(u_input.a >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(33565u, 12587u), vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), select(vec2<i32>(_wgslsmith_div_i32(arg_2.x, 0i), -u_input.a.x), u_input.a, select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))))), 1265f);
    let var_2 = Struct_2(-abs(vec2<i32>(select(u_input.a.x, 2147483647i, true), var_0.b)), _wgslsmith_mod_vec2_i32(~select(u_input.a, u_input.a, vec2<bool>(true, true)), ~(u_input.a & vec2<i32>(arg_2.x, -33796i))) ^ _wgslsmith_div_vec2_i32(arg_2.wy, _wgslsmith_mult_vec2_i32(countOneBits(u_input.a), ~vec2<i32>(5356i, arg_0.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 3u)]));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = arg_0.zyy;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(37400u, 3u)], -185f))), vec4<f32>(_wgslsmith_f_op_f32(649f + var_0.x), arg_0.x, _wgslsmith_div_f32(var_0.x, 1243f), _wgslsmith_f_op_f32(max(arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 3u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-353f, arg_0.x, var_0.x, 933f), vec4<f32>(2804f, global0[_wgslsmith_index_u32(1u, 3u)], arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 3u)])))))), -u_input.a.x ^ -33274i, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 3u)]));
    var var_2 = reverseBits(func_2());
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~min(u_input.b, ~1u), 3u)], -434f, _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, 0i, var_1.a.x), var_1.a, -(vec4<i32>(-35506i, var_2.x, 3138i, 2147483647i) & vec4<i32>(-1i, u_input.a.x, -9277i, u_input.a.x))))), var_0);
    var_3 = _wgslsmith_f_op_vec3_f32(-var_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(1u, ~u_input.b), 3u)] - 320f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(64226u, u_input.b, 26227u), vec3<u32>(u_input.b, 43540u, u_input.b)), ~(vec3<u32>(u_input.b, 11626u, 4294967295u) | vec3<u32>(0u, u_input.b, u_input.b))), u_input.b), firstLeadingBit(firstTrailingBit(u_input.b >> (65714u % 32u))) ^ u_input.b, u_input.b), 3u)];
    var var_1 = 1i;
    global0 = array<f32, 3>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1447f))) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_f_op_f32(func_1(vec4<f32>(global0[_wgslsmith_index_u32(43382u, 3u)], -667f, -1106f, global0[_wgslsmith_index_u32(u_input.b, 3u)]))))) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(37427u, 3u)] * -959f)));
    let var_3 = Struct_2(vec2<i32>(firstTrailingBit(countOneBits(u_input.a.x) ^ u_input.a.x), u_input.a.x), _wgslsmith_div_vec2_i32(countOneBits(-vec2<i32>(44601i, u_input.a.x)), -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(2147483647i, -1i, u_input.a.x, var_3.b.x)), select(~vec4<i32>(var_3.b.x, var_3.b.x, 1i, -14043i), max(vec4<i32>(var_3.b.x, u_input.a.x, var_3.a.x, -1i), vec4<i32>(-1i, 5875i, 19612i, u_input.a.x)), u_input.b <= 313u)), vec4<i32>(~u_input.a.x, abs(47151i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, 0i, 56974i), vec3<i32>(var_3.a.x, -2147483647i, var_3.b.x))) | select(countOneBits(vec4<i32>(43386i, u_input.a.x, u_input.a.x, var_3.a.x)), -vec4<i32>(var_3.a.x, 13350i, u_input.a.x, var_3.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))), 4294967295u, (_wgslsmith_mult_i32(-30012i, ~var_3.b.x) >> (0u % 32u)) ^ countOneBits(-1i & u_input.a.x));
}

