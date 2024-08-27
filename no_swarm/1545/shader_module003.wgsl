struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_3(select(!vec3<bool>(true, arg_0 || arg_0, select(false, arg_0, true)), vec3<bool>(arg_0 && arg_0, arg_0, false), all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), all(vec4<bool>(arg_0, arg_0, arg_0, false))))), vec3<u32>(countOneBits(firstTrailingBit(abs(1u))), 30093u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, u_input.a.x, 1u)), vec3<u32>(1u, firstLeadingBit(u_input.a.x), 4294967295u))), global0.a.wyx, vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(max(429f, 1145f)), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -709f)), Struct_2(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, u_input.b))) >> (u_input.a % vec2<u32>(32u)), abs(vec3<u32>(u_input.b, select(5034u, u_input.a.x, arg_0), u_input.a.x))));
    var var_1 = u_input.a.x;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-714f - var_0.c.x), 224f, global0.d, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f * -292f) - _wgslsmith_f_op_f32(global0.d * global0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b - global0.a.x))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - var_0.c.x)));
    var_1 = _wgslsmith_dot_vec4_u32(~reverseBits(select(vec4<u32>(1u, 43277u, 39117u, 4294967295u), ~vec4<u32>(u_input.a.x, 21097u, u_input.b, 10112u), var_0.a.x)), vec4<u32>(~_wgslsmith_div_u32(u_input.b >> (43536u % 32u), 1u), _wgslsmith_mult_u32(u_input.a.x, ~30799u), _wgslsmith_add_u32(0u, _wgslsmith_div_u32(var_0.e.b.x, 67208u)) << (var_0.b.x % 32u), _wgslsmith_mult_u32(36220u, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-760f, -493f, var_0.c.x, -560f)))))), global0.a.x, u_input.c.x, -300f);
    return _wgslsmith_mult_vec4_i32(~select(-vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x) >> ((vec4<u32>(4294967295u, 23556u, 18673u, 78560u) >> (vec4<u32>(15189u, u_input.a.x, 62304u, 51110u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, -40951i), 14712i, _wgslsmith_div_i32(-1i, arg_1.x), firstLeadingBit(u_input.c.x)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), -(firstTrailingBit(arg_1) >> (~vec4<u32>(var_0.b.x, u_input.a.x, var_0.b.x, 26496u) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = func_3(!(!select(true, true, true)), ~(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(3629i, global0.c, 6159i, global0.c), vec4<i32>(-17343i, -2147483647i, global0.c, global0.c))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) % vec4<u32>(32u))));
    var var_1 = ~(~1u);
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(~0u, ~1u)), max(firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x))), reverseBits(u_input.a))), vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b) << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 30814u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b))), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)), u_input.b));
    global0 = Struct_1(global0.a, arg_0.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(firstTrailingBit(select(vec3<i32>(-2147483647i, global0.c, u_input.c.x), var_0.xzx, true)), firstLeadingBit(var_0.wwy) | ~var_0.wyw)), -179f);
    var_0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -26548i, -1i, -u_input.c.x, _wgslsmith_mod_i32(38100i, u_input.c.x)), vec4<i32>(global0.c, func_3(false, vec4<i32>(u_input.c.x, global0.c, -2164i, var_0.x)).x, ~global0.c, -1i));
    return Struct_2(min(reverseBits(min(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), firstLeadingBit(u_input.a))), select(vec2<u32>(max(5947u, var_2.a.x), u_input.a.x), vec2<u32>(12983u, countOneBits(var_2.b.x)), (u_input.a.x >> (u_input.a.x % 32u)) <= 1u)), select(~reverseBits(var_2.b), ~(vec3<u32>(var_2.a.x, 33472u, u_input.b) | (var_2.b | vec3<u32>(2911u, 43063u, 4294967295u))), !(64025i <= firstLeadingBit(u_input.c.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * -1541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(select(global0.a.x, -2003f, true))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-507f, -1193f, 1989f, global0.d)))))), 1f, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, 2147483647i, global0.c, 2147483647i) >> (vec4<u32>(var_0.b.x, u_input.b, var_0.b.x, 1u) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, global0.c, 1406i), vec4<i32>(-2147483647i, global0.c, 0i, 23790i))), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-global0.d)))));
    var var_1 = select(vec4<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(true, true, true))), select(false, true && any(vec2<bool>(true, true)), !all(vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, false, true)), !(!any(vec4<bool>(false, false, false, true)))), !vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, true), abs(u_input.a.x) <= abs(35903u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.d, -146f)), -382f), 1000f), ~(-22886i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))))));
    let var_2 = countOneBits(vec2<i32>(-1i, global0.c));
    return func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-113f, global0.b)))))), global0.a.wz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(~(global0.c ^ global0.c)), 53914i, _wgslsmith_mult_i32(u_input.c.x, ~countOneBits(u_input.c.x))), _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.c.x), vec3<i32>(56362i, global0.c, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<i32>(-36606i, -1i, u_input.c.x), vec3<i32>(-27617i, global0.c, -2147483647i)))), vec3<i32>(global0.c, -5430i, -global0.c >> (_wgslsmith_dot_vec3_u32(var_0.b, var_0.b) % 32u)), -vec3<i32>(u_input.c.x >> (95160u % 32u), global0.c, u_input.c.x)));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f)), _wgslsmith_div_f32(200f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1026f - global0.b)))), global0.d, global0.d), 1349f, reverseBits(var_1.x), -376f);
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1178f - 1000f), _wgslsmith_f_op_f32(-1968f * 1606f), global0.a.x, _wgslsmith_div_f32(1111f, -853f))), _wgslsmith_f_op_f32(f32(-1f) * -1147f), _wgslsmith_mod_i32(-26945i, -(~2147483647i)), _wgslsmith_f_op_f32(-global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.ww) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-216f, -758f) * vec2<f32>(1000f, global0.d)) - _wgslsmith_f_op_vec2_f32(sign(global0.a.xy))))), vec4<f32>(_wgslsmith_f_op_f32(select(var_3.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-290f)))), all(select(vec2<bool>(true, var_2), vec2<bool>(false, true), vec2<bool>(var_2, true))))), 417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - -893f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * _wgslsmith_f_op_f32(-623f - var_3.b)), _wgslsmith_f_op_f32(-1f)))), -vec2<i32>(~_wgslsmith_sub_i32(0i, 21007i), -global0.c));
}

