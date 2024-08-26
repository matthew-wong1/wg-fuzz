struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_dot_vec3_i32(u_input.d.yyw, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.d.x), ~u_input.c.xzx)) & 26132i, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, -991f, 567f) * vec3<f32>(-1126f, 357f, -555f))))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, u_input.d.x), -9888i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), u_input.a.zy)), _wgslsmith_sub_i32(36705i, ~u_input.c.x), u_input.a.x, 8164i), u_input.d.x, _wgslsmith_clamp_i32(9398i, abs(u_input.a.x), 2147483647i)));
    let var_1 = Struct_2(var_0.b);
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(0u, u_input.b), reverseBits(~u_input.e), 4294967295u, 1u), vec4<u32>(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(u_input.b, 7u)], 17069u), abs(u_input.e), u_input.e, global0[_wgslsmith_index_u32(select(u_input.b & u_input.b, abs(78212u), true), 7u)]));
    let var_3 = vec2<i32>(var_0.b.b.x, i32(-1i) * -2147483647i);
    let var_4 = select(~_wgslsmith_mult_vec2_i32(-(~vec2<i32>(var_3.x, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(var_1.a.b.x, -7414i)), _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(abs(vec2<i32>(var_1.a.c, var_0.a)), reverseBits(var_3))), var_0.b.b.wx), vec2<bool>(max(firstTrailingBit(7260u), 1u) <= _wgslsmith_add_u32(0u, u_input.e | 39001u), true));
    return !(!vec4<bool>(!all(vec4<bool>(true, global1.x, false, global1.x)), true, false, true));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(322f, -532f) - vec2<f32>(781f, -123f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(628f, 1024f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2287f, -284f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(175f, 618f)))))));
    var var_1 = 1u;
    let var_2 = Struct_2(Struct_1(vec3<f32>(1000f, var_0.x, var_0.x), ~u_input.d, u_input.d.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_div_i32(u_input.c.x, u_input.a.x)) & -1i));
    var var_3 = Struct_2(var_2.a);
    global1 = vec3<bool>(any(select(select(!vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(global1.x, true, global1.x, global1.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, global1.x, false))), select(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, false, global1.x), global1.x), true), select(!vec4<bool>(global1.x, true, global1.x, global1.x), func_3(), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, false, true))))), select(func_3().x, all(vec2<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), global1.x)), !(u_input.c.x != _wgslsmith_mod_i32(26525i, -1i))), false);
    return vec3<bool>(any(select(select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(true, true, true, global1.x), global1.x), func_3(), any(vec3<bool>(false, global1.x, true))), vec4<bool>(true, global1.x | global1.x, global1.x | true, true), vec4<bool>(all(vec4<bool>(global1.x, true, false, true)), false, !global1.x, true))), global1.x, !(4294967295u <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(3934u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 19501u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], global0[_wgslsmith_index_u32(64511u, 7u)], u_input.e))));
}

fn func_1() -> vec3<bool> {
    global0 = array<u32, 7>();
    let var_0 = -2147483647i;
    global1 = select(!func_2(), vec3<bool>(!(!(!global1.x)), _wgslsmith_f_op_f32(-343f * 120f) <= _wgslsmith_f_op_f32(ceil(387f)), !all(func_3().zzz)), global1.x);
    return !(!vec3<bool>(!any(vec2<bool>(global1.x, true)), true, func_3().x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = select(u_input.d.x, (-(u_input.a.x >> (146337u % 32u)) | _wgslsmith_dot_vec4_i32(-u_input.d, u_input.d)) >> (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(17884u, firstLeadingBit(firstLeadingBit(1u)), _wgslsmith_div_u32(u_input.e, ~8869u)), 7u)] % 32u), func_3().x);
    let var_1 = _wgslsmith_mult_vec3_i32(u_input.d.yzy & reverseBits(abs(~u_input.d.ywz)), u_input.c.yxy);
    var var_2 = Struct_3(abs(0u), !(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.e, u_input.e), vec4<u32>(global0[_wgslsmith_index_u32(73770u, 7u)], 8372u, global0[_wgslsmith_index_u32(9249u, 7u)], 1u)), global0[_wgslsmith_index_u32(0u, 7u)] >> (u_input.b % 32u), ~4294967295u) <= global0[_wgslsmith_index_u32(u_input.b, 7u)]), u_input.c, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(836f, _wgslsmith_f_op_f32(733f + 812f), _wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(257f, 893f, -1032f))) + vec3<f32>(-557f, -1096f, -1530f))), vec4<i32>(-1i, -(~u_input.d.x), var_0 >> (~57576u % 32u), ~u_input.d.x), -44732i, 9019i), (-1i | (u_input.a.x >> (4294967295u % 32u))) ^ u_input.a.x);
    let var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.d.a.x)) + 1105f) - 820f)));
}

