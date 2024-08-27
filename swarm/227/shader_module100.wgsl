struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, false, false, true, true, false, true, false, false);

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec2<u32>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = -12682i;
    var var_1 = 1i;
    var var_2 = Struct_1(vec4<i32>(u_input.a.x >> (max(0u, u_input.b) % 32u), abs(u_input.d.x), u_input.d.x, u_input.a.x), vec2<bool>(arg_1, true), ~arg_3.x);
    let var_3 = arg_0;
    var var_4 = vec2<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_mod_i32(1i, ~_wgslsmith_clamp_i32(-1421i, 26143i, u_input.a.x)));
    return 58876u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global3 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(67774u, 1u, 24626u, 0u), vec4<u32>(42870u, global3.x, arg_3, 28509u)), max(global3.x, u_input.b), ~global2.x, reverseBits(global2.x)), ~reverseBits(vec4<u32>(global3.x, 74992u, u_input.b, 4294967295u))) & func_3(arg_0, all(!vec2<bool>(true, arg_1.x)), 28695u << (arg_3 % 32u), vec2<u32>(min(u_input.c.x, global3.x), ~4294967295u)), global3.x, arg_3);
    let var_0 = !all(vec2<bool>(arg_1.x, global0[_wgslsmith_index_u32(111132u, 10u)]));
    global3 = vec3<u32>(~firstLeadingBit(abs(~53616u)), 10284u, 4294967295u);
    return u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global1 = array<Struct_2, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a));
    global1 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(467f, _wgslsmith_f_op_f32(-1000f + 1638f)));
    let var_2 = !select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 10u)], true), vec2<bool>(true, true), true), !vec2<bool>(true, -10330i < u_input.a.x), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(9896u, 10u)], false), vec2<bool>(false, false), true)));
    return select(!var_2, var_2, !select(var_2, var_2, global0[_wgslsmith_index_u32(global2.x, 10u)]));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> vec3<i32> {
    let var_0 = all(!(!func_4(global1[_wgslsmith_index_u32(1u, 29u)], func_2(Struct_2(vec2<f32>(558f, 709f)), vec2<bool>(false, true), vec3<bool>(false, false, true), arg_1))));
    let var_1 = global1[_wgslsmith_index_u32(37487u, 29u)];
    var var_2 = vec4<u32>(global2.x, u_input.b & 4294967295u, u_input.b, global2.x);
    var var_3 = Struct_1(~arg_0 ^ arg_0, vec2<bool>(var_0, false), ~8578u);
    let var_4 = Struct_1(vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(~arg_0, _wgslsmith_add_vec4_i32(var_3.a, vec4<i32>(-1i, 0i, 1i, u_input.d.x))), firstTrailingBit(arg_0.x), u_input.d.x), select(var_3.b, select(!(!vec2<bool>(var_0, true)), func_4(Struct_2(vec2<f32>(955f, 385f)), -25055i), global2.x > 0u), !vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 10u)] | false, true)), _wgslsmith_mod_u32(1u, ~abs(global3.x)) << (max(1u, reverseBits(~u_input.c.x)) % 32u));
    return -firstTrailingBit(vec3<i32>(-_wgslsmith_add_i32(arg_0.x, var_4.a.x), -1i, ~var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(-min(min(u_input.d, func_1(vec4<i32>(5747i, -16314i, -16892i, u_input.a.x), 0u)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, -1i), u_input.d), _wgslsmith_mod_i32(u_input.d.x, 1i), -5866i)), _wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 28320i, u_input.a.x), vec3<i32>(-1i, 38194i, u_input.a.x)), u_input.d, -vec3<i32>(u_input.d.x, 0i, 0i)), u_input.d));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_1 = _wgslsmith_sub_i32(-17229i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(u_input.d.x), max(var_0.x, var_0.x)), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(var_0.x, 0i))), 1i));
    var_1 = _wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32((~var_0.x >> (~0u % 32u)) ^ select(1i, firstTrailingBit(1i), global0[_wgslsmith_index_u32(27335u, 10u)]), -u_input.a.x | abs(var_0.x), -min(var_0.x, var_0.x) | 25333i));
    let var_2 = Struct_1(select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, var_0.x, u_input.a.x, u_input.d.x)), firstTrailingBit(select(vec4<i32>(-2548i, var_0.x, -11317i, u_input.d.x), vec4<i32>(var_0.x, 9550i, 17012i, 17345i), global0[_wgslsmith_index_u32(global3.x, 10u)]))), max(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 30676i, 25047i, u_input.d.x), vec4<i32>(var_0.x, u_input.a.x, var_0.x, -13197i)), ~vec4<i32>(-2147483647i, 1i, var_0.x, 8473i)), abs(vec4<i32>(33420i, u_input.a.x, 893i, u_input.d.x)) & -vec4<i32>(var_0.x, 51142i, var_0.x, 2147483647i)), !vec4<bool>(false, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true)), true, global3.x >= 4294967295u)), vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 47649u), global3.yy), 10u)] | !any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], true, true)), true), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(~global3.zy), ~vec2<u32>(88033u, 0u) | countOneBits(global3.yy)), ~global3.x));
    let var_3 = var_2;
    var var_4 = vec3<u32>(~global2.x, _wgslsmith_add_u32(~reverseBits(~u_input.c.x), 1498u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(23024i, var_0.x), 0i), global3.zz, -8006i, 20627u);
}

