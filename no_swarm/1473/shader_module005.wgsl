struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<f32>(1050f, -537f, -842f), 1u, vec2<f32>(-147f, 980f), vec4<f32>(-1000f, -247f, 388f, 1052f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = ~(~countOneBits(u_input.c.zx));
    var_0 = vec2<u32>(~u_input.d, firstLeadingBit(4294967295u));
    var var_1 = Struct_1(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1453f), arg_0, _wgslsmith_f_op_f32(803f * -686f))))), 1u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.ww * vec2<f32>(1002f, arg_1.x)) - _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(ceil(global0.e.xy)))))), global0.e);
    var var_2 = vec4<bool>(!any(vec4<bool>(true, true, true, true)), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-410f * var_1.e.x))) < var_1.e.x), true);
    var var_3 = Struct_1(firstTrailingBit(u_input.a ^ ~var_1.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.e.x, -1474f, true)) + -670f), 536f), var_1.e.zyz)), var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, 560f), global0.e.xy)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-575f, -595f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), -483f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, global0.e.x, 1000f, -1396f))))) - global0.e));
    return -740f;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec2<i32>(((u_input.b.x ^ global0.a.x) ^ (8539i << (0u % 32u))) ^ _wgslsmith_add_i32(0i, 1i), u_input.b.x), _wgslsmith_f_op_vec3_f32(max(global0.e.wwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1858f, global0.d.x)) - global0.b))), firstTrailingBit(u_input.c.x & 0u), vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-676f, global0.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -223f))), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(func_3(-2092f, vec2<f32>(global0.e.x, global0.d.x), global0.d.x, global0.e.x)), -1468f, _wgslsmith_f_op_f32(ceil(global0.b.x)))));
    global0 = Struct_1(vec2<i32>(60378i, _wgslsmith_clamp_i32(~2147483647i, 2147483647i ^ u_input.b.x, 24678i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(abs(-2042f)))), 869f, _wgslsmith_f_op_f32(func_3(global0.d.x, _wgslsmith_f_op_vec2_f32(-global0.b.zy), _wgslsmith_div_f32(1414f, -475f), _wgslsmith_f_op_f32(min(global0.d.x, global0.d.x)))))), _wgslsmith_mult_u32(u_input.e, global0.c), global0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1982f, global0.b.x)), _wgslsmith_f_op_f32(global0.b.x * -1923f), _wgslsmith_f_op_f32(min(1186f, global0.b.x)), _wgslsmith_f_op_f32(-global0.d.x))), vec4<f32>(776f, _wgslsmith_f_op_f32(ceil(1181f)), _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.e.x, global0.b.x), vec2<f32>(global0.d.x, 1291f))), _wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(ceil(global0.e.x)))))));
    var var_0 = Struct_1(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(min(0i, u_input.a.x), 0i >> (~global0.c % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e.xxw * _wgslsmith_f_op_vec3_f32(abs(global0.e.wzw)))), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.b.yx + _wgslsmith_f_op_vec2_f32(-global0.e.yw)), global0.b.yy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.b.xz)) * _wgslsmith_f_op_vec2_f32(-global0.b.yz)))), _wgslsmith_f_op_vec4_f32(global0.e * global0.e));
    let var_1 = !vec3<bool>(var_0.e.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + global0.d.x), select(select(true, true, all(vec3<bool>(true, false, false))), true, false), true);
    global0 = Struct_1(vec2<i32>(32426i, var_0.a.x << (_wgslsmith_div_u32(u_input.d, 25876u << (0u % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.b)))))), 97673u, _wgslsmith_f_op_vec2_f32(-var_0.b.xz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.e.x * global0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(-1000f * var_0.b.x)), -2071f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x * global0.b.x))))));
    return Struct_1(min(vec2<i32>((u_input.a.x | global0.a.x) << (1u % 32u), global0.a.x), ~u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), -1111f, -1127f)), _wgslsmith_sub_u32(~(~u_input.c.x), 28076u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.e.yw))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1902f, 694f, var_0.b.x, -189f)), _wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(-global0.e))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_2;
    global0 = func_2();
    var var_0 = select(select(vec3<bool>(true, true, any(vec2<bool>(true, false))), vec3<bool>(true, false, true), vec3<bool>(true, arg_3.b.x > arg_3.b.x, false)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), !vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true)), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true));
    let var_1 = arg_0;
    let var_2 = var_0.x;
    return arg_3;
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(min(671f, 1000f)));
    var var_1 = func_4(func_2(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-1326f)), _wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(-global0.d.x)))), u_input.c.x | firstTrailingBit(74953u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.e.yx, vec2<f32>(global0.b.x, 168f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.e.x, 2145f, 540f) - global0.e)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, -977f, global0.e.x, 419f)), _wgslsmith_div_vec4_f32(global0.e, vec4<f32>(-919f, global0.e.x, -389f, global0.d.x)))))), func_2());
    let var_2 = false;
    let var_3 = _wgslsmith_add_u32(u_input.d, 1u);
    var var_4 = func_2();
    return vec4<i32>(var_1.a.x, 4848i, 0i << (_wgslsmith_clamp_u32(~var_1.c | ~4294967295u, var_3, ~_wgslsmith_add_u32(u_input.c.x, 4294967295u)) % 32u), i32(-1i) * -_wgslsmith_sub_i32(~26946i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(1i, ~(~firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, global0.a.x))), -u_input.a.x);
    var var_1 = max(-(vec4<i32>(-1i) * -(vec4<i32>(-33600i, 0i, global0.a.x, 22360i) & vec4<i32>(global0.a.x, global0.a.x, -1i, global0.a.x))), select(_wgslsmith_sub_vec4_i32(abs(func_1()), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -8720i, global0.a.x, global0.a.x), vec4<i32>(7190i, -2147483647i, global0.a.x, 3054i), vec4<i32>(35410i, global0.a.x, -26358i, u_input.a.x))), select(vec4<i32>(func_2().a.x, _wgslsmith_div_i32(global0.a.x, 0i), -35009i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, -7635i, u_input.b.x), vec4<i32>(var_0.x, -13544i, global0.a.x, -19692i))), vec4<i32>(-42540i, global0.a.x, 31842i, -27787i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-5030i, -77116i, var_0.x, global0.a.x), vec4<i32>(u_input.a.x, var_0.x, 26810i, -33649i)), vec4<bool>(true, true, true, true)), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), !any(vec2<bool>(true, true)), select(true, select(true, true, false), true), true)));
    global0 = Struct_1(vec2<i32>(-12187i, i32(-1i) * -var_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(897f, -1331f, 2006f), _wgslsmith_f_op_vec3_f32(exp2(global0.e.wyx)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false))))), global0.e.wzw), reverseBits(_wgslsmith_add_u32(global0.c, 2083u)), _wgslsmith_f_op_vec2_f32(global0.b.xy - vec2<f32>(_wgslsmith_div_f32(global0.e.x, -1909f), func_2().e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-578f + global0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(934f, vec2<f32>(global0.b.x, global0.d.x), -786f, -164f)) + _wgslsmith_f_op_f32(-global0.b.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, 1000f, global0.b.x, global0.e.x) + global0.e)))))));
    let var_2 = func_4(Struct_1(-(~vec2<i32>(49942i, 2147483647i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.e.x, global0.e.x)) * global0.e.yzw), vec3<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(min(global0.d.x, -317f))))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.c, 67926u, 22736u, u_input.c.x) | u_input.c), _wgslsmith_div_vec4_u32(~u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(27753u, 4294967295u, 2079u, global0.c), u_input.c))), _wgslsmith_f_op_vec2_f32(sign(global0.e.wz)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.e.x))), global0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1070f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.e.x, 1730f)), _wgslsmith_f_op_f32(-global0.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -601f), global0.d.x)))), func_4(func_4(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-global0.e.xyw), ~global0.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.e.x, -1610f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e.x, global0.d.x, global0.d.x, -1477f), vec4<f32>(984f, global0.e.x, 645f, 1000f)))), global0.d, func_2(), func_4(func_2(), _wgslsmith_div_vec2_f32(global0.d, vec2<f32>(global0.d.x, -1228f)), Struct_1(var_1.wy, global0.e.wwz, u_input.e, vec2<f32>(-889f, -1255f), global0.e), func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, global0.b.x))), func_4(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, global0.e.x)) + vec2<f32>(1739f, global0.e.x)), func_4(func_2(), _wgslsmith_f_op_vec2_f32(round(global0.e.zy)), Struct_1(vec2<i32>(1219i, var_1.x), global0.b, 67488u, global0.d, vec4<f32>(496f, global0.e.x, -419f, global0.b.x)), Struct_1(u_input.b, vec3<f32>(global0.d.x, -1522f, global0.e.x), global0.c, vec2<f32>(-793f, global0.d.x), global0.e)), func_2()), Struct_1(var_1.ww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.e.x, global0.b.x)), 1u, func_4(func_4(Struct_1(vec2<i32>(var_1.x, -2147483647i), vec3<f32>(global0.b.x, -121f, global0.d.x), 18112u, vec2<f32>(global0.e.x, -994f), global0.e), global0.b.yy, Struct_1(u_input.b, global0.b, global0.c, global0.b.xz, global0.e), Struct_1(vec2<i32>(-12167i, 4199i), vec3<f32>(1112f, 205f, -1480f), global0.c, vec2<f32>(global0.e.x, 1254f), vec4<f32>(global0.b.x, -1000f, -414f, -1112f))), vec2<f32>(1000f, 1374f), Struct_1(vec2<i32>(-1i, global0.a.x), global0.e.www, 4294967295u, global0.e.xw, global0.e), Struct_1(vec2<i32>(u_input.b.x, var_1.x), vec3<f32>(131f, global0.d.x, global0.d.x), 87870u, vec2<f32>(-1074f, global0.e.x), global0.e)).d, vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), func_4(Struct_1(vec2<i32>(-1i, 13328i), global0.b, global0.c, vec2<f32>(global0.e.x, -2051f), global0.e), vec2<f32>(1266f, global0.b.x), Struct_1(vec2<i32>(var_0.x, global0.a.x), global0.e.xyx, global0.c, global0.d, global0.e), Struct_1(var_1.zx, global0.e.yww, u_input.d, vec2<f32>(global0.d.x, -1054f), global0.e)).e.x, _wgslsmith_f_op_f32(global0.b.x + 236f), -1490f))), Struct_1(var_1.zy, global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, global0.c, 0u), ~(~vec3<u32>(76366u, 1u, 4294967295u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.e.wx + _wgslsmith_f_op_vec2_f32(min(global0.b.zy, global0.e.xz))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.e)))));
    var var_3 = func_4(func_2(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1918f), func_2().b.x), func_2(), var_2);
    global0 = Struct_1(countOneBits(reverseBits(vec2<i32>(i32(-1i) * -2147483647i, firstTrailingBit(var_1.x)))), vec3<f32>(-1000f, var_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))))), var_2.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(global0.b.x, vec2<f32>(-275f, var_3.b.x), -1000f, var_2.b.x)))), _wgslsmith_f_op_f32(ceil(var_3.b.x))), _wgslsmith_f_op_f32(func_3(697f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1984f, -1562f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))))), var_2.e);
    let var_4 = Struct_1(-_wgslsmith_sub_vec2_i32(firstLeadingBit(var_0.yz), var_0.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), ~var_3.c, vec2<f32>(_wgslsmith_div_f32(-1799f, _wgslsmith_f_op_f32(-738f + var_2.b.x)), -670f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_3.e, var_3.e)))), var_3.e)));
    var_1 = _wgslsmith_add_vec4_i32(max(_wgslsmith_add_vec4_i32(-(vec4<i32>(var_0.x, var_4.a.x, 1i, -2147483647i) ^ vec4<i32>(2147483647i, 24562i, var_1.x, -6364i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_2.a.x, var_0.x, u_input.b.x, var_1.x), vec4<i32>(global0.a.x, -57296i, 13054i, var_4.a.x) >> (u_input.c % vec4<u32>(32u)))), ~min(vec4<i32>(var_0.x, u_input.a.x, -48379i, 26845i), _wgslsmith_add_vec4_i32(vec4<i32>(var_4.a.x, global0.a.x, var_4.a.x, 0i), vec4<i32>(1i, -43222i, 1i, -45749i)))), select(vec4<i32>(abs(u_input.a.x), (1i << (global0.c % 32u)) >> ((34913u & u_input.c.x) % 32u), reverseBits(var_0.x ^ var_4.a.x), min(u_input.a.x, u_input.a.x)), vec4<i32>(var_4.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_3.a.x, var_1.x), vec3<i32>(var_0.x, var_4.a.x, -1i)), 1i & global0.a.x, -45634i), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(abs(var_4.c), 58369u, _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(var_3.c, u_input.c.x)), ~var_2.c)), vec4<i32>(select(func_2().a.x, ~var_2.a.x, true), 1i, reverseBits(_wgslsmith_mod_i32(1i, -2147483647i)), 0i) & -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-32485i, var_2.a.x, global0.a.x, -1i), vec4<i32>(var_0.x, var_4.a.x, global0.a.x, -2147483647i)), vec4<i32>(70945i, var_2.a.x, var_0.x, var_4.a.x)));
}

