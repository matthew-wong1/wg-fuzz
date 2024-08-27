struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-36400i, 0i, i32(-2147483648));

var<private> global1: array<f32, 27> = array<f32, 27>(-805f, -665f, 351f, 827f, -434f, -980f, -785f, 456f, 535f, -1467f, -2332f, -218f, -1662f, 674f, 1000f, -1372f, 432f, 1001f, -745f, -377f, -1824f, 1082f, 1167f, -1000f, 503f, 1000f, -1916f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    var var_0 = 54i;
    var var_1 = Struct_2(Struct_1(true, abs(~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.b)) & vec4<u32>(_wgslsmith_clamp_u32(9611u, 27119u, u_input.a), u_input.b, u_input.b, u_input.a), ~(~vec4<u32>(0u, 26907u, 4294967295u, u_input.b) ^ vec4<u32>(0u, 0u, 0u, 0u))), select(_wgslsmith_mod_i32(select(0i >> (u_input.a % 32u), global0.x, true), _wgslsmith_div_i32(2147483647i, max(0i, global0.x))), max(global0.x, -2147483647i), all(vec3<bool>(all(vec2<bool>(true, true)), true, true))));
    let var_2 = vec2<u32>(~(~65184u), u_input.b);
    var var_3 = var_1.a;
    return vec3<i32>(var_1.b, -(global0.x >> (var_3.b.x % 32u)), -var_1.b);
}

fn func_2() -> vec4<f32> {
    var var_0 = true;
    global1 = array<f32, 27>();
    global0 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(1i, 4493i, _wgslsmith_div_i32(global0.x, global0.x))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(13951i, global0.x, global0.x), firstTrailingBit(vec3<i32>(global0.x, global0.x, -1i))), _wgslsmith_div_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_add_vec3_i32(vec3<i32>(0i, global0.x, -2147483647i), vec3<i32>(global0.x, 2147483647i, 0i)))));
    var_0 = true;
    var var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, -1i, -13425i), -vec3<i32>(global0.x, global0.x, 66784i)), _wgslsmith_sub_i32(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-4684i, -9175i, -1i, 2147483647i), vec4<i32>(global0.x, 1i, global0.x, 1i))), _wgslsmith_dot_vec3_i32(func_3(), ~vec3<i32>(global0.x, 1i, global0.x))), firstLeadingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, global0.x, 0i), vec3<i32>(global0.x, global0.x, global0.x))));
    return vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, abs(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, u_input.a))), ~17285u), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~u_input.a, 27u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(1u, 32616u, true), 27u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(56362u, 27u)]))))), _wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * -1000f)), global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b) & ~0u, 27u)]);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + global1[_wgslsmith_index_u32(arg_1.b.x, 27u)])))));
    return ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.b.x, _wgslsmith_dot_vec4_u32(~arg_1.c, arg_1.c)), 6179u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((global1[_wgslsmith_index_u32(func_1(abs(vec2<i32>(global0.x, 396i)), Struct_1(true, vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b), vec4<u32>(69982u, u_input.b, u_input.a, u_input.a)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 27u)] * global1[_wgslsmith_index_u32(12891u, 27u)])), 27u)] >= _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~455u, 27u)], _wgslsmith_f_op_f32(ceil(260f)))) && !(true & any(vec3<bool>(true, true, false))));
    var var_1 = (firstTrailingBit(global0.yy) & _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(global0.yx), vec2<i32>(global0.x, -1i)), vec2<i32>(global0.x, global0.x) | -global0.zx)) ^ _wgslsmith_div_vec2_i32(-vec2<i32>(-global0.x, global0.x), ~countOneBits(global0.xz));
    global0 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(-(vec3<i32>(global0.x, global0.x, global0.x) >> (vec3<u32>(0u, 49302u, u_input.a) % vec3<u32>(32u))), max(vec3<i32>(0i, -1i, var_1.x), -vec3<i32>(0i, var_1.x, var_1.x)), vec3<i32>(-global0.x, -var_1.x, -23775i));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(25370i, global0.x, 0i, global0.x) & vec4<i32>(13311i, var_1.x, var_1.x, var_1.x)), vec4<i32>(-global0.x, -var_1.x, _wgslsmith_mult_i32(global0.x, global0.x), ~(-1i))) ^ -34126i, -8077i);
    let var_3 = Struct_2(Struct_1(any(vec2<bool>(all(vec3<bool>(var_0, false, var_0)), var_0)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 20046u, u_input.a, 4294967295u), vec4<u32>(_wgslsmith_mult_u32(49073u, u_input.a), _wgslsmith_div_u32(u_input.a, 3710u), 17034u, 1u)), vec4<u32>(u_input.b, u_input.a, u_input.b, 10158u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(abs(countOneBits(var_1.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -42073i, var_2.x, global0.x), vec4<i32>(2147483647i, var_1.x, -23205i, global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(22154i, -1885i, -2147483647i), vec3<i32>(global0.x, var_1.x, var_2.x)), true), var_1.x), global0.x));
    var_1 = min(global0.yy, min(_wgslsmith_add_vec2_i32(~vec2<i32>(global0.x, global0.x) >> ((var_3.a.c.xx >> (var_3.a.b.xz % vec2<u32>(32u))) % vec2<u32>(32u)), ~(global0.xz | vec2<i32>(-8769i, -1i))), global0.zy));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(~var_3.b, var_3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(var_3.a.c.x, 27u)]) * vec2<f32>(495f, global1[_wgslsmith_index_u32(0u, 27u)])) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-580f, 605f)))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(select(-269f, global1[_wgslsmith_index_u32(var_3.a.c.x, 27u)], true)))))));
}

