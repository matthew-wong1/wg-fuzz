struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32 = 0u;

var<private> global2: array<i32, 20> = array<i32, 20>(40454i, -1i, 1i, 19316i, -42779i, -59528i, 2147483647i, -52630i, 8332i, -10482i, 2147483647i, 16455i, 2147483647i, -1i, 23256i, -3607i, -1i, 0i, 0i, i32(-2147483648));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> i32 {
    global1 = ~max(1u, 74004u);
    var var_0 = global3.b.x | ~(-u_input.a);
    var_0 = arg_0.x;
    global0 = vec4<i32>((-global3.a.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 2147483647i), global0.x << (0u % 32u))) >> (global3.e % 32u), u_input.c.x, reverseBits(countOneBits(-_wgslsmith_dot_vec3_i32(global0.xwz, arg_0.zzy))), countOneBits(2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1611f, -383f, -1933f, 684f) * vec4<f32>(-1431f, 1419f, 889f, -1243f)), vec4<f32>(140f, 283f, 1735f, 1199f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, -317f, 265f, -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, 262f, -986f, -918f) - vec4<f32>(477f, -844f, -794f, -1064f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(176f, -1020f, -568f, 319f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -118f, 219f, 405f)), vec4<f32>(_wgslsmith_div_f32(-644f, -858f), _wgslsmith_div_f32(-848f, 508f), _wgslsmith_f_op_f32(trunc(-486f)), -391f)), false)));
    return -74359i;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec4<bool>(!all(select(vec4<bool>(arg_0.c, true, false, global3.c), vec4<bool>(true, true, global3.c, global3.d.x), arg_0.d.x)) && any(select(vec3<bool>(false, true, arg_0.d.x), vec3<bool>(global3.d.x, arg_0.c, true), true)), true, any(!vec3<bool>(true, global3.c, true)) & true, false);
    let var_1 = global3.c;
    var var_2 = 117137u;
    global0 = ~abs(vec4<i32>(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 6104i, 1909i, u_input.a), vec4<i32>(global0.x, global0.x, arg_0.a.x, global0.x), vec4<i32>(4755i, global0.x, global0.x, 6650i)), !vec3<bool>(var_0.x, var_0.x, true), _wgslsmith_sub_vec3_u32(vec3<u32>(20016u, 7278u, 22960u), vec3<u32>(24043u, arg_0.e, 0u))), abs(global2[_wgslsmith_index_u32(countOneBits(11890u), 20u)]), _wgslsmith_clamp_i32(12699i, -u_input.a, -27151i), ~global0.x ^ -1i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)) - -1188f)));
    return arg_0.d;
}

fn func_1(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_1(vec3<i32>(2147483647i, 1i, arg_0) ^ _wgslsmith_add_vec3_i32(select(global3.a, firstTrailingBit(global3.b.xyx), global3.d), ~vec3<i32>(arg_0, 646i, 1i)), global3.b, false, !(!select(func_2(Struct_1(global0.zyy, vec4<i32>(arg_0, global0.x, arg_0, 43239i), false, vec3<bool>(false, global3.c, global3.c), 4294967295u)), !global3.d, global3.a.x != -25996i)), countOneBits(abs(u_input.b)));
    var var_1 = ~vec4<u32>(~max(min(var_0.e, 0u), 30758u), (_wgslsmith_sub_u32(var_0.e, var_0.e) & u_input.e.x) ^ u_input.b, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 48174u), abs(global3.e)), 63537u);
    let var_2 = 861f;
    let var_3 = var_0;
    var var_4 = Struct_1(vec3<i32>(u_input.c.x, var_3.b.x, -arg_0), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(-(~var_0.b.zx), _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(24878u, 20u)], arg_0), u_input.c) & _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b.x, global0.x), global3.a.yz)), reverseBits(select(-2147483647i, arg_0, var_0.c)), -49i), var_2 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - -755f)) * var_2), vec3<bool>(func_2(Struct_1(vec3<i32>(arg_0, -2147483647i, u_input.a) ^ global3.a, vec4<i32>(-27462i, global3.b.x, 0i, global3.a.x), all(vec3<bool>(global3.c, false, var_3.d.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), 74632u)).x, var_0.d.x, true), var_1.x);
    return ~(var_3.a << (var_1.xzx % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: u32) -> StorageBuffer {
    global0 = max(vec4<i32>(_wgslsmith_div_i32(arg_0, abs(0i)), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-91015i, arg_0), vec2<i32>(-1i, global3.a.x))), -54906i, arg_0), ~(-_wgslsmith_add_vec4_i32(global3.b, global3.b))) | select(global3.b, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(global3.b, global3.b), -global3.a.x, -75969i), _wgslsmith_mult_vec4_i32(-global3.b, select(vec4<i32>(global0.x, 1i, -2797i, arg_0), vec4<i32>(global2[_wgslsmith_index_u32(28743u, 20u)], 0i, 20068i, u_input.a), vec4<bool>(true, global3.c, true, global3.c)))), global3.c);
    let var_0 = -u_input.a != arg_0;
    let var_1 = vec4<u32>(79943u, u_input.e.x, 57167u, 1u);
    let var_2 = global3.b;
    let var_3 = Struct_1(~_wgslsmith_sub_vec3_i32(global3.a, max(select(global3.b.zwy, var_2.wzy, global3.d), var_2.yzy)), global3.b, !(!all(!global3.d)), global3.d, ~(~(~u_input.e.x)) >> (countOneBits(~(u_input.d.x >> (arg_1 % 32u))) % 32u));
    return StorageBuffer(u_input.e.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_i32(-(-global0.x ^ global0.x), _wgslsmith_dot_vec3_i32(func_1(33626i), ~(-vec3<i32>(global0.x, 0i, global2[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_div_u32(~(~11739u), ~(~(4294967295u | global3.e))));
}

