struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(7820i, 1i, i32(-2147483648)), -1000f, 262f), Struct_1(vec3<i32>(27372i, 409i, 1i), 339f, -831f), Struct_1(vec3<i32>(i32(-2147483648), 27552i, 64415i), 969f, -803f), Struct_1(vec3<i32>(-1i, 23437i, 20981i), 1278f, -367f), Struct_1(vec3<i32>(38399i, -54982i, 1i), -380f, 1252f), Struct_1(vec3<i32>(-38664i, -19879i, 7477i), -235f, -255f), Struct_1(vec3<i32>(58441i, 0i, 0i), -1769f, -584f), Struct_1(vec3<i32>(11638i, 30293i, 1i), 659f, -990f), Struct_1(vec3<i32>(9365i, -21817i, 0i), 484f, -1546f), Struct_1(vec3<i32>(2981i, 7939i, -33090i), -766f, 1906f), Struct_1(vec3<i32>(i32(-2147483648), 1558i, 29544i), -265f, -1038f), Struct_1(vec3<i32>(2147483647i, -13204i, 0i), 208f, 103f), Struct_1(vec3<i32>(-1i, -11614i, 80864i), -203f, 733f));

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(firstTrailingBit(u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1040u), 16u)], global0[_wgslsmith_index_u32(49744u, 16u)]);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.e.x, 13u)];
    let var_2 = Struct_1(firstTrailingBit(max(u_input.a.wwy, -reverseBits(vec3<i32>(u_input.c.x, -1i, 1727i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(695f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 16u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(86605u, 16u)]))))) - _wgslsmith_f_op_f32(f32(-1f) * -1229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(5105u, 16u)], 1000f))) - var_0.b)));
    var var_3 = global1[_wgslsmith_index_u32(~(~(~79311u)), 13u)];
    var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) - _wgslsmith_f_op_f32(round(-1632f)))))), var_3.b);
    return select(-vec3<i32>(-1i, _wgslsmith_sub_i32(var_2.a.x, -16024i), 0i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_1.a.x, -71073i), var_0.a.x << (u_input.b % 32u), 2147483647i), var_1.a), _wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 26797i, abs(0i)), vec3<i32>(var_1.a.x, _wgslsmith_div_i32(3611i, var_2.a.x), _wgslsmith_mod_i32(var_3.a.x, var_0.a.x))), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    global2 = array<vec4<bool>, 29>();
    var var_0 = Struct_1(~func_3(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-992f, 488f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(18366u), 16u)])))), _wgslsmith_f_op_f32(-arg_2.c));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(u_input.e.ywx, u_input.e.wwz | u_input.e.xzw) << (_wgslsmith_dot_vec3_u32(u_input.e.wyz >> ((u_input.e.xyw ^ u_input.e.zxy) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.e.x, 1u), vec3<u32>(0u, 0u, 1u))) % 32u));
    global1 = array<Struct_1, 13>();
    let var_2 = u_input.a | abs(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2.a.x, u_input.a.x, -1i, 2147483647i), -u_input.a), vec4<i32>(_wgslsmith_add_i32(arg_1, -1i), arg_2.a.x, -arg_2.a.x, -arg_2.a.x), global2[_wgslsmith_index_u32(~95471u, 29u)]));
    return _wgslsmith_add_vec3_i32(var_2.zwy, ~(-(-var_0.a | _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 32957i), arg_2.a))));
}

fn func_1() -> vec4<f32> {
    global2 = array<vec4<bool>, 29>();
    let var_0 = -_wgslsmith_div_i32(firstLeadingBit(-1i) >> (u_input.e.x % 32u), u_input.a.x);
    global2 = array<vec4<bool>, 29>();
    var var_1 = Struct_1(vec3<i32>(countOneBits(-u_input.d), u_input.a.x, -1i) & func_2(u_input.a.yy, max(-1i, var_0) & var_0, Struct_1(vec3<i32>(var_0, -2147483647i, 5295i), _wgslsmith_f_op_f32(-350f - -1295f), -478f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1967f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 16u)] * global0[_wgslsmith_index_u32(u_input.e.x, 16u)])) * global0[_wgslsmith_index_u32(~u_input.b, 16u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(60806u >> (u_input.e.x % 32u), u_input.e.x), 16u)] * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(36820u, 16u)])), global0[_wgslsmith_index_u32(0u, 16u)]))));
    global0 = array<f32, 16>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 391f), -314f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9053u, 16u)] * global0[_wgslsmith_index_u32(u_input.e.x, 16u)])))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.c)))), 846f, 247f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1()))))))));
    global2 = array<vec4<bool>, 29>();
    var var_1 = -u_input.c.zx;
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(~max(~68584u, u_input.e.x) | _wgslsmith_sub_u32(19705u ^ _wgslsmith_clamp_u32(u_input.e.x, u_input.b, u_input.e.x), 4294967295u)), 13u)];
    let var_3 = !select(vec3<bool>(true, 36176u <= u_input.b, _wgslsmith_f_op_f32(-116f * var_0.x) > -216f), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true);
    let var_4 = false;
    let var_5 = -1i;
    let var_6 = all(!select(var_3, var_3, u_input.e.x != _wgslsmith_div_u32(78209u, u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(func_2(vec2<i32>(1i, 0i), _wgslsmith_mult_i32(0i, 9217i), global1[_wgslsmith_index_u32(0u, 13u)])));
}

