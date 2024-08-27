struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: array<f32, 22> = array<f32, 22>(642f, -437f, -2179f, 588f, 783f, 403f, 1235f, -235f, 552f, 1975f, -1000f, 547f, 901f, -1401f, -209f, 549f, 101f, 232f, 1266f, -901f, -2756f, 242f);

var<private> global2: array<i32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global2 = array<i32, 16>();
    global1 = array<f32, 22>();
    global2 = array<i32, 16>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(5551u | u_input.a.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(~19267u, 22u)]), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)] + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(458f + global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_f_op_f32(select(-1449f, global1[_wgslsmith_index_u32(68460u, 22u)], false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947f, -570f, -502f, global1[_wgslsmith_index_u32(51786u, 22u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)])))))), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -33314i, -62780i >> (firstTrailingBit(4294967295u) % 32u), abs(1i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global2[_wgslsmith_index_u32(24369u, 16u)], 523i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)]))) | vec4<i32>(-global2[_wgslsmith_index_u32(u_input.a.x, 16u)], _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 0i), ~1i, ~2147483647i)), countOneBits(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(14210i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i), vec4<i32>(global2[_wgslsmith_index_u32(3578u, 16u)], global2[_wgslsmith_index_u32(52886u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 0i)), global2[_wgslsmith_index_u32(~u_input.a.x, 16u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], countOneBits(global2[_wgslsmith_index_u32(1u, 16u)])), global2[_wgslsmith_index_u32(4294967295u, 16u)])), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(abs(global2[_wgslsmith_index_u32(4294967295u, 16u)]), 1i, _wgslsmith_clamp_i32(-1i, -16526i, 1i), global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<i32>(1i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 0i), 2147483647i, -10677i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(select(~0u, min(0u, 1u), true), 16u)], countOneBits(-44079i), ~1i), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)] >> (92690u % 32u), -2147483647i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(13034u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]))));
    global2 = array<i32, 16>();
    return var_0.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = ~abs(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(7180u, u_input.a.x, 46398u) | vec3<u32>(1u, u_input.a.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(40728u, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x), ~(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, 1176f, -642f, global1[_wgslsmith_index_u32(62131u, 22u)])) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(424f, 1000f, arg_1.x, -1232f)))) - arg_1) - _wgslsmith_f_op_vec4_f32(-arg_1)), vec4<i32>(-1i, ~func_3(), 2147483647i, (max(global2[_wgslsmith_index_u32(var_0.x, 16u)], arg_0.b.x) | 36985i) << (5694u % 32u)), arg_0.b, arg_0.c, -global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, min(abs(16754u), 4294967295u)), 16u)]);
    var var_2 = ~min(25374i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    let var_3 = vec4<bool>(any(vec2<bool>(reverseBits(75831i) <= ~global2[_wgslsmith_index_u32(62515u, 16u)], true)), false, arg_2.x, true || arg_2.x);
    let var_4 = (var_3.x | all(vec3<bool>(u_input.a.x == 33980u, -24617i < global2[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 22u)] < -962f))) != var_3.x;
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 22>();
    let var_0 = ~2147483647i | global2[_wgslsmith_index_u32(~2212u | ~(abs(u_input.a.x) & u_input.a.x), 16u)];
    global1 = array<f32, 22>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 22u)] + global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(trunc(1174f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)] + global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(25777u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1775f, 327f, -635f, 1716f), vec4<f32>(-1172f, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(49390u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 1245f, global1[_wgslsmith_index_u32(0u, 22u)]))))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-15399i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), _wgslsmith_mod_i32(var_0, 2147483647i)) ^ -2147483647i, -2147483647i, var_0, _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(func_2(Struct_1(vec4<f32>(-452f, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(21079u, 22u)], -731f), vec4<i32>(var_0, var_0, var_0, 1i), vec4<i32>(var_0, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i, -63307i), vec4<i32>(9039i, 2147483647i, global2[_wgslsmith_index_u32(81216u, 16u)], 1i), var_0), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 1026f, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(79857u, 22u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)]), 16u)], 1i)), vec4<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(2005u, 16u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u >> (u_input.a.x % 32u), 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)])), 45399i, 0i, select(global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 16u)], global2[_wgslsmith_index_u32(~4294967295u, 16u)], true)), vec4<i32>(-1i) * -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-5082i, var_0, -1i, 0i), vec4<i32>(-37089i, -15911i, -8548i, 16433i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 0i, 1i, global2[_wgslsmith_index_u32(53589u, 16u)])), vec4<i32>(-24942i, 48217i, var_0, 0i) & vec4<i32>(global2[_wgslsmith_index_u32(58567u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], -5555i, global2[_wgslsmith_index_u32(30397u, 16u)]), true), _wgslsmith_add_i32(0i, var_0));
    global0 = array<vec4<bool>, 26>();
    return Struct_1(vec4<f32>(var_1.a.x, -1153f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(44084u, 26129u, u_input.a.x)) | 0u, 22u)], var_1.a.x)), global1[_wgslsmith_index_u32(9461u, 22u)]), ~vec4<i32>(var_0, -_wgslsmith_mult_i32(var_0, var_1.c.x), _wgslsmith_div_i32(~(-49036i), var_1.b.x), 0i), firstLeadingBit(var_1.b), var_1.b, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = func_1();
    let var_2 = func_1();
    global1 = array<f32, 22>();
    var_1 = func_1();
    let var_3 = func_1();
    global2 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(~firstTrailingBit(vec3<u32>(var_0, 25512u, 16731u)), min(vec3<u32>(u_input.a.x, u_input.a.x, var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, var_0))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
}

