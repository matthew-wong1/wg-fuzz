struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<vec2<i32>, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<u32> {
    global0 = array<f32, 6>();
    var var_0 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(select(1i, -11864i, false), 1i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, -1i), -u_input.a.x)), _wgslsmith_add_vec2_i32(-(~vec2<i32>(-36413i, u_input.c.x)), vec2<i32>(1i, u_input.a.x)));
    var var_1 = _wgslsmith_clamp_i32(u_input.c.x, 0i, u_input.a.x ^ -4850i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(362f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 246f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))))));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 6u)] * 1243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + 243f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, global0[_wgslsmith_index_u32(23853u, 6u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 2450f)) + vec2<f32>(133f, 213f)) * vec2<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9522u, 6u)] - var_2.x)), -580f)));
    return _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, abs(13157u), 1u, firstTrailingBit(35623u)) & select(~_wgslsmith_sub_vec4_u32(vec4<u32>(54006u, u_input.b.x, u_input.b.x, 50722u), vec4<u32>(29754u, arg_1, 1u, 1u)), ~vec4<u32>(arg_1, 55933u, arg_1, arg_1) >> (max(vec4<u32>(u_input.b.x, u_input.b.x, 78893u, u_input.b.x), vec4<u32>(arg_1, arg_1, arg_1, 4294967295u)) % vec4<u32>(32u)), any(vec3<bool>(true, true, true))), vec4<u32>(min(0u, firstLeadingBit(arg_1)), ~_wgslsmith_div_u32(4294967295u, 11853u), firstLeadingBit(22836u), arg_1) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(arg_1, 37885u, 1540u, 11071u)) % vec4<u32>(32u)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global0 = array<f32, 6>();
    let var_0 = any(vec4<bool>(true, true, true, true));
    global0 = array<f32, 6>();
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x << (1u % 32u), 6u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 6u)])) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u << (u_input.b.x % 32u), 6u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_0 | 19972u, 6u)]))));
    return firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x >> (max(arg_0, 18975u) % 32u), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.c.x)), vec4<i32>(-2147483647i, var_1, 3928i, var_1)), var_1), var_1 >> (abs(firstLeadingBit(60871u)) % 32u), -15861i, abs(29895i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    global1 = array<vec2<i32>, 14>();
    var var_0 = vec4<i32>(u_input.c.x, u_input.c.x, 55135i, u_input.c.x);
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.c.x, ~var_0.x, -27682i, -2147483647i), _wgslsmith_sub_vec4_i32(func_3(u_input.b.x), firstTrailingBit(vec4<i32>(10212i, u_input.c.x, -1i, -2147483647i)))) | ~countOneBits(~vec4<i32>(-3403i, -2214i, var_0.x, var_0.x)), firstTrailingBit(vec4<i32>(-(u_input.c.x | 1i), _wgslsmith_clamp_i32(-690i, -u_input.a.x, _wgslsmith_mult_i32(var_0.x, 77563i)), abs(var_0.x << (1u % 32u)), 1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_3, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3 >> (4294967295u % 32u), 89338u), 6u)]) >= global0[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, ~0u, arg_3), 14u)];
    return global1[_wgslsmith_index_u32(arg_3, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x >> (~(~_wgslsmith_div_u32(7920u, u_input.b.x)) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(70238u, 6u)], -646f, global0[_wgslsmith_index_u32(3788u, 6u)]))), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(62387u, 6u)] - global0[_wgslsmith_index_u32(21254u, 6u)])), vec3<bool>(var_0, all(vec2<bool>(var_0, true)), var_0)))));
    var_1 = func_1(117f, 4294967295u);
    var var_3 = Struct_5(Struct_3(!vec3<bool>(var_0, all(vec3<bool>(var_0, var_0, var_0)), false), _wgslsmith_add_vec2_i32(func_2(vec3<bool>(var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, false), Struct_1(true), 1u), -global1[_wgslsmith_index_u32(1u, 14u)]) ^ vec2<i32>(-1i, 1i), Struct_2(-1i)));
    var var_4 = vec4<i32>(9092i, (_wgslsmith_mod_i32(-var_3.a.c.a, var_3.a.b.x) | ~(0i | u_input.c.x)) ^ ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, 1i, 5788i), ~vec3<i32>(var_3.a.b.x, -1i, -2147483647i)), max(select(i32(-1i) * -2147483647i, 0i, !var_3.a.a.x) & min(countOneBits(u_input.c.x), u_input.a.x & var_3.a.b.x), -39241i), var_3.a.b.x);
    let var_5 = -9546i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(max(var_1.x, 4294967295u), firstLeadingBit(u_input.b.x), var_1.x, _wgslsmith_div_u32(var_1.x, 1u))), _wgslsmith_f_op_f32(sign(var_2.x)));
}

