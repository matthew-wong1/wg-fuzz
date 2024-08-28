struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(46444i, 0i, 47686i, -3860i, 2147483647i, i32(-2147483648), 1i, -19486i, 38282i, 1009i, 1i, i32(-2147483648), 16221i, 0i, i32(-2147483648));

var<private> global1: array<f32, 28>;

var<private> global2: bool;

var<private> global3: vec2<f32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1583f), true));
    global1 = array<f32, 28>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(round(1317f)), true)) + _wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(-global3.x)))) - _wgslsmith_div_f32(global3.x, var_0));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(350f, -2370f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-464f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) - vec2<f32>(global1[_wgslsmith_index_u32(45703u & u_input.b.x, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -1046f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, global3.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))) - vec2<f32>(639f, global1[_wgslsmith_index_u32(max(u_input.c.x, u_input.c.x), 28u)]))));
    return ~(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.zw, ~u_input.c.xy)) & u_input.c.x);
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec4<u32>(0u, ~u_input.b.x, 0u, ~_wgslsmith_div_u32(1u, 4294967295u));
    let var_1 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), ~23739u);
    let var_2 = Struct_1(!(!(!vec4<bool>(var_1.a.x, false, false, var_1.a.x))), 0u);
    global0 = array<i32, 15>();
    global1 = array<f32, 28>();
    return -global0[_wgslsmith_index_u32(func_3(), 15u)];
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -749f), -280f))) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2259f, arg_2.x)))), arg_2.x);
    var var_1 = vec4<i32>(-34405i, -_wgslsmith_div_i32(u_input.a, ~0i) << ((abs(min(1u, u_input.b.x)) | abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) % 32u), _wgslsmith_dot_vec4_i32(-(vec4<i32>(56272i, 45711i, u_input.a, 46078i) ^ max(arg_1, arg_1)), arg_1), _wgslsmith_div_i32(arg_1.x, i32(-1i) * -2147483647i));
    global2 = func_2(min(u_input.b.yz, u_input.c.zx)) == (i32(-1i) * -var_1.x);
    global1 = array<f32, 28>();
    var var_2 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 - -1452f))));
    return _wgslsmith_sub_vec4_i32(-firstLeadingBit(-(vec4<i32>(u_input.a, u_input.a, 23079i, global0[_wgslsmith_index_u32(u_input.c.x, 15u)]) | vec4<i32>(2147483647i, arg_1.x, -15940i, -39169i))), vec4<i32>(_wgslsmith_mod_i32(1i, firstLeadingBit(u_input.a)), var_1.x, 0i, -(~(~global0[_wgslsmith_index_u32(u_input.b.x, 15u)]))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    global0 = array<i32, 15>();
    global1 = array<f32, 28>();
    let var_0 = Struct_2((~arg_1 ^ vec4<u32>(u_input.c.x << (arg_1.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.c.x), vec4<u32>(30073u, u_input.b.x, 0u, arg_1.x)), ~u_input.c.x, arg_1.x >> (arg_1.x % 32u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~arg_1, arg_1 & vec4<u32>(u_input.b.x, 8203u, 4294967295u, arg_1.x)), firstTrailingBit(u_input.b) << (abs(vec4<u32>(u_input.b.x, 22256u, 0u, 0u)) % vec4<u32>(32u)), arg_1));
    global2 = !arg_3;
    let var_1 = var_0;
    return Struct_2(vec4<u32>(min(1u, var_1.a.x >> (_wgslsmith_sub_u32(u_input.b.x, var_1.a.x) % 32u)), 1u, ~(~55827u), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_1.a, ~arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-34863i, u_input.b, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-6844i, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.a), ~vec4<i32>(u_input.a, 12228i, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 47118i), func_1(global3.x, vec4<i32>(-49788i, 43566i, u_input.a, u_input.a), vec2<f32>(global3.x, 572f), Struct_1(vec4<bool>(false, true, true, true), u_input.b.x))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -1i, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]) & vec4<i32>(global0[_wgslsmith_index_u32(41947u, 15u)], 819i, -9810i, 26035i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -1i, -2147483647i, -2147483647i) ^ vec4<i32>(u_input.a, 0i, -2147483647i, -1i)), _wgslsmith_sub_vec4_i32(~(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], -16367i, u_input.a, -2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -4646i, -1i, global0[_wgslsmith_index_u32(u_input.c.x, 15u)])), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c.x), 15u)], _wgslsmith_mult_i32(u_input.a, u_input.a), ~u_input.a, min(-1i, -29324i)))), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 28u)] < global3.x), vec2<bool>(true, select(false, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)))));
    global0 = array<i32, 15>();
    let var_1 = _wgslsmith_add_u32(38559u, _wgslsmith_add_u32(1u, u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-1506f * global3.x), -1210f, _wgslsmith_f_op_f32(1403f - global1[_wgslsmith_index_u32(var_0.a.x, 28u)])) * vec4<f32>(1755f, _wgslsmith_div_f32(global3.x, 262f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -522f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(239f, -1000f, 102f, global1[_wgslsmith_index_u32(var_0.a.x, 28u)]), vec4<f32>(-218f, global3.x, global1[_wgslsmith_index_u32(var_1, 28u)], -785f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f)), _wgslsmith_f_op_f32(f32(-1f) * -369f), 572f)));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yxx | vec3<u32>(var_0.a.x, 0u ^ var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a.zx, var_0.a.yx), ~var_0.a.xw)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -997f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * 577f)), _wgslsmith_div_f32(-768f, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - 161f))), 1577f)), global1[_wgslsmith_index_u32(45404u | ~max(~4294967295u, var_1 << (20074u % 32u)), 28u)]);
}

