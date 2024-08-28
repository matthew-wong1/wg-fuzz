struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = reverseBits(0i);
    global0 = array<vec2<bool>, 3>();
    var var_0 = (u_input.a.x & _wgslsmith_add_i32(u_input.a.x & firstLeadingBit(28252i), countOneBits(~41755i))) ^ 13959i;
    return _wgslsmith_div_u32(arg_0.x, 1u);
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = 0i << (~func_3(~u_input.c) % 32u);
    let var_1 = u_input.a.wwz;
    global1 = -25263i;
    var var_2 = arg_0.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.c)))));
    return 30123u;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<vec2<bool>, 3>();
    global1 = _wgslsmith_mult_i32(arg_0, reverseBits(u_input.d));
    let var_0 = !arg_2.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2047f, -765f) - _wgslsmith_f_op_f32(1899f * 144f)), _wgslsmith_f_op_f32(abs(-1413f))), _wgslsmith_f_op_f32(-802f - 181f))) - 266f);
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(8498u, ~102053u), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_1), u_input.c)), max(func_2(Struct_4(arg_2, Struct_2(Struct_1(var_0, vec4<u32>(0u, u_input.b, u_input.c.x, 68585u), var_0), u_input.a.zy, vec4<f32>(1137f, -567f, 756f, 1304f), arg_1), Struct_3(arg_2.b.wyw, arg_2.a.x, -327f))), countOneBits(firstLeadingBit(arg_2.b.x))) << (1u % 32u));
    return max(u_input.a, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(select(arg_0, u_input.d, true), firstTrailingBit(-6276i), ~36075i, ~(-40608i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 1i, -1i, -1i), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(arg_0, 2147483647i, u_input.d, u_input.a.x), vec4<i32>(arg_0, 2147483647i, u_input.a.x, arg_0)))), -_wgslsmith_sub_vec4_i32(max(u_input.a, vec4<i32>(u_input.d, u_input.a.x, arg_0, 2147483647i)), max(vec4<i32>(u_input.a.x, u_input.a.x, 9546i, -51607i), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a.x), u_input.a.x, 2147483647i >> ((0u << (u_input.b % 32u)) % 32u), ~u_input.a.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(func_1(u_input.a.x, u_input.c.x, Struct_1(vec3<bool>(false, true, true), vec4<u32>(28066u, u_input.c.x, 4294967295u, 22341u), vec3<bool>(false, false, true))), vec4<i32>(37522i, -8899i, u_input.d, 16076i)), u_input.a));
    global1 = 11945i;
    var var_0 = Struct_1(select(vec3<bool>(select(false, true, true), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xx) >= 0i, all(vec3<bool>(true, false, false)) && all(vec4<bool>(false, true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), false), select(vec4<u32>(_wgslsmith_sub_u32(select(u_input.c.x, 7261u, true), max(u_input.b, 8702u)), ~u_input.c.x << ((141403u << (u_input.c.x % 32u)) % 32u), u_input.b, ~(~1555u)), select(~select(vec4<u32>(u_input.c.x, u_input.b, 28377u, u_input.b), vec4<u32>(u_input.b, 62270u, 1u, 49079u), true), abs(vec4<u32>(u_input.c.x, 1u, 30341u, u_input.c.x)), true), vec4<bool>(!any(vec3<bool>(true, false, false)), true && all(vec4<bool>(false, false, true, true)), true, ~u_input.b == 1u)), !(!vec3<bool>(select(false, true, true), true, any(vec2<bool>(false, false)))));
    let var_1 = 0u;
    var var_2 = Struct_3(_wgslsmith_mult_vec3_u32(firstTrailingBit(~(vec3<u32>(u_input.c.x, 1u, 0u) & var_0.b.ywx)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b), firstLeadingBit(0u), ~var_1)), select(true, true, var_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1570f))))))));
    var var_3 = Struct_4(Struct_1(var_0.c, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.b, var_0.b) & countOneBits(vec4<u32>(4294967295u, var_0.b.x, 59695u, 32509u)), var_0.b), vec3<bool>(false, true, all(!vec3<bool>(var_0.c.x, var_2.b, var_2.b)))), Struct_2(Struct_1(!(!vec3<bool>(var_2.b, var_2.b, var_0.a.x)), abs(~vec4<u32>(4294967295u, var_2.a.x, var_2.a.x, 0u)), var_0.c), _wgslsmith_mult_vec2_i32(max(vec2<i32>(-2147483647i, 45016i) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(u_input.d, 38876i) ^ u_input.a.zx), ~vec2<i32>(u_input.d, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, 384f, var_2.c, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, var_2.c, var_2.c, -1241f) * vec4<f32>(var_2.c, var_2.c, var_2.c, -112f)), select(vec4<bool>(true, var_0.c.x, false, var_2.b), vec4<bool>(true, var_2.b, true, var_2.b), vec4<bool>(false, false, var_2.b, var_2.b))))), _wgslsmith_clamp_u32(~firstTrailingBit(var_1), _wgslsmith_clamp_u32(var_0.b.x, _wgslsmith_div_u32(var_0.b.x, 4294967295u), _wgslsmith_div_u32(var_0.b.x, 4294967295u)), 0u)), Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(var_1, var_0.b.x), _wgslsmith_div_u32(var_0.b.x, 4284u)), select(var_0.b.yyw, vec3<u32>(u_input.b, u_input.c.x, u_input.c.x), vec3<bool>(var_0.c.x, var_0.a.x, false)) & ~var_2.a), true, var_2.c));
    let var_4 = var_3.b.a;
    var var_5 = !vec3<bool>(!select(42030u < var_1, var_2.c <= var_3.b.c.x, true), any(!var_3.b.a.c), all(!global0[_wgslsmith_index_u32(var_4.b.x, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(abs(1u), abs(42556u)), max(min(var_1, u_input.b), 18411u), 68853u, ~min(0u, var_2.a.x)) << (var_0.b % vec4<u32>(32u)));
}

