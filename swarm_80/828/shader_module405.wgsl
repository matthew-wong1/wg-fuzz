struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<bool>, 18>;

var<private> global2: bool;

var<private> global3: array<i32, 13>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    let var_0 = select(-(abs(vec4<i32>(-1i, u_input.b, u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 13u)])) << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 66446u)) % vec4<u32>(32u))), ~(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], -19365i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 42878i, u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), vec4<i32>(u_input.b, u_input.b, 9582i, global3[_wgslsmith_index_u32(1u, 13u)]) << (vec4<u32>(56849u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 43489u, u_input.a.x)) % vec4<u32>(32u))), global0.x);
    global2 = true;
    global2 = true;
    var var_1 = 54028u;
    global1 = array<vec3<bool>, 18>();
    return 395f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 802f), select(vec2<bool>(arg_2, true), vec2<bool>(global0.x, arg_2), vec2<bool>(global0.x, false)), 346f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2005f) + _wgslsmith_f_op_f32(max(-1293f, 2034f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1812f)), _wgslsmith_f_op_f32(ceil(-1737f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 18u)], -297f), !vec2<bool>(arg_2, true), _wgslsmith_f_op_f32(f32(-1f) * -397f))))), any(vec2<bool>(true, true))))));
    return ~(~abs(1u)) ^ ~(85930u | u_input.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = true;
    var var_0 = -abs(firstLeadingBit(vec4<i32>(~2147483647i, global3[_wgslsmith_index_u32(func_2(vec4<i32>(30705i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 0i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), Struct_2(Struct_1(global0.x)), global0.x, u_input.a.x), 13u)], min(-1251i, -22660i), countOneBits(0i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(445f, -209f, 242f, -1188f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(879f, -416f, 593f, -2064f)))))), vec4<f32>(1f, 1f, 1f, 1f))));
    global2 = global0.x;
    var_0 = _wgslsmith_mult_vec4_i32(-(vec4<i32>(min(27229i, global3[_wgslsmith_index_u32(53710u, 13u)]), -20794i, arg_0.x & -17415i, abs(u_input.b)) >> (((vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, u_input.a.x, 36215u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 7533u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 33289u, 8519u))) % vec4<u32>(32u))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.yx, ~var_0.wy), firstTrailingBit(var_0.x), ~1i, var_0.x >> (u_input.a.x % 32u)));
    return Struct_1(global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(global0.x != any(global0.xz));
    var var_0 = Struct_2(func_1(-select(countOneBits(vec3<i32>(55757i, -64618i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), vec3<i32>(u_input.b, -1i, u_input.b), !global0.x)));
    let var_1 = Struct_3(!global1[_wgslsmith_index_u32(~u_input.a.x, 18u)], _wgslsmith_f_op_f32(max(1679f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(274f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(554f * -779f)))))));
    let var_2 = _wgslsmith_div_vec4_i32(-(~vec4<i32>(41880i, 24782i, max(1i, 1i), i32(-1i) * -2147483647i)), vec4<i32>(-1i) * -(~select(vec4<i32>(u_input.b, 0i, 1i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<i32>(30560i, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(67403u, 13u)], u_input.b), true)));
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-23907i, min(-36762i, max(global3[_wgslsmith_index_u32(197u, 13u)], -64660i))), -global3[_wgslsmith_index_u32(16608u, 13u)]), select(_wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(var_2.x, -72751i)), _wgslsmith_clamp_vec2_i32(min(var_2.ww, var_2.zw), vec2<i32>(u_input.b, 1i), firstTrailingBit(var_2.yz))), -vec2<i32>(-55950i, 2147483647i), select(vec2<bool>(var_1.a.x, var_1.a.x), !var_1.a.xy, !var_1.a.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(98073u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * var_1.b) - _wgslsmith_f_op_f32(sign(var_1.b))), var_1.b))));
}

