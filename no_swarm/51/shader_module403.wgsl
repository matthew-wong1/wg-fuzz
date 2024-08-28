struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(2147483647i, i32(-2147483648), 38348i, 21052i, 2147483647i, 30209i, -53026i, i32(-2147483648), i32(-2147483648), -12684i, 22884i, 34020i, -44304i, 1i, 549i, i32(-2147483648), -1i, -40174i, -9962i, 24175i, i32(-2147483648), 0i, -1i, 30095i, 2147483647i, -1i, 31530i, i32(-2147483648), -16749i);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, false), -1962f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> vec4<bool> {
    global2 = Struct_1(select(select(!vec3<bool>(true, arg_3.x, true), vec3<bool>(true, true, true), vec3<bool>(arg_3.x, arg_1.a.x, true)), global2.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_0 = -29971i > (_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, arg_2, -16073i), vec4<i32>(38538i, u_input.a.x, 2147483647i, -1i))), _wgslsmith_div_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(global1.x, 29u)], 43381i, global0[_wgslsmith_index_u32(global1.x, 29u)], arg_2), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global1.x, 29u)], -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(1i, arg_2, -16198i, 0i)))) | max(0i, reverseBits(u_input.a.x) ^ firstTrailingBit(arg_2)));
    let var_1 = vec3<i32>(max(u_input.a.x, -20431i), 2147483647i, arg_2);
    global0 = array<i32, 29>();
    let var_2 = arg_1.a.x;
    return vec4<bool>(!(_wgslsmith_f_op_f32(-arg_1.b) <= 2493f) && !(!(!arg_3.x)), true, false, var_2 || false);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec4<i32> {
    var var_0 = arg_3.yxy;
    var var_1 = global2.b;
    global2 = Struct_1(vec3<bool>(!all(arg_0.a), false, true), 279f);
    let var_2 = Struct_1(!(!vec3<bool>(true, true, func_2(vec3<f32>(global2.b, arg_0.b, -2215f), Struct_1(global2.a, arg_0.b), 26260i, vec4<bool>(arg_0.a.x, arg_1, global2.a.x, false)).x)), arg_0.b);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, global2.b, 327f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-844f, global2.b)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -209f) - vec2<f32>(788f, -486f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, 1140f), vec2<f32>(arg_0.b, global2.b)), false | var_2.a.x))) + vec2<f32>(-894f, _wgslsmith_div_f32(1202f, _wgslsmith_f_op_f32(ceil(arg_0.b))))), _wgslsmith_f_op_f32(-global2.b));
    return vec4<i32>(_wgslsmith_clamp_i32(~(-arg_2.x), -1i, arg_2.x), _wgslsmith_sub_i32(1762i, _wgslsmith_div_i32(-firstLeadingBit(u_input.a.x), _wgslsmith_add_i32(21489i, -u_input.a.x))), 2147483647i, 16528i);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    let var_0 = all(!select(select(!vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), select(vec4<bool>(true, global2.a.x, false, false), vec4<bool>(true, false, global2.a.x, false), false), select(global2.a.x, false, false)), select(func_2(vec3<f32>(604f, global2.b, 179f), Struct_1(global2.a, 942f), u_input.a.x, vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), func_2(vec3<f32>(1108f, global2.b, global2.b), Struct_1(global2.a, global2.b), arg_0.x, vec4<bool>(true, global2.a.x, true, global2.a.x))), vec4<bool>(any(global2.a), global2.a.x | global2.a.x, false || global2.a.x, any(vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x)))));
    var var_1 = global1.x;
    var var_2 = max(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 34938i), vec4<i32>(arg_1, u_input.a.x, arg_0.x, arg_2.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, arg_0.x, -28808i, 21724i), vec4<i32>(-54808i, 0i, arg_0.x, u_input.a.x)), abs(func_3(Struct_1(global2.a, global2.b), false, vec3<i32>(arg_2.x, global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(global1.x, 29u)]), vec4<u32>(4294967295u, 11655u, global1.x, global1.x)))), -global0[_wgslsmith_index_u32(countOneBits(1u << (1u % 32u)), 29u)]));
    var var_3 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, 753f, -459f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 522f, -972f) * vec3<f32>(-981f, -1000f, -1006f))))), Struct_1(select(global2.a, vec3<bool>(var_0, true, var_0), !vec3<bool>(false, global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1886f, global2.b)))), -30402i, func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(642f, global2.b, -1024f) + vec3<f32>(2503f, global2.b, 474f)))), Struct_1(vec3<bool>(true, true, true), global2.b), ~2147483647i << (global1.x % 32u), vec4<bool>(true, global2.a.x, any(global2.a), false))).zyw, 1055f);
    var_2 = arg_1;
    return all(vec3<bool>(global2.a.x, !all(!vec4<bool>(true, var_0, true, global2.a.x)), (true & select(global2.a.x, global2.a.x, true)) || any(vec2<bool>(global2.a.x, global2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(470f)) * 316f)))), 387f));
    let var_1 = !(!vec4<bool>(true, any(vec4<bool>(false, true, global2.a.x, true)), global2.a.x, global2.a.x));
    var_0 = _wgslsmith_f_op_f32(-global2.b);
    var var_2 = (select(var_1.x, !global2.a.x, func_1(u_input.a.xy, _wgslsmith_dot_vec3_i32(vec3<i32>(43196i, global0[_wgslsmith_index_u32(27820u, 29u)], global0[_wgslsmith_index_u32(11742u, 29u)]), vec3<i32>(-65803i, u_input.a.x, 7762i)), u_input.a.zx)) != false) | !(abs(1u) != select(global1.x, _wgslsmith_clamp_u32(7743u, global1.x, global1.x), true));
    let var_3 = _wgslsmith_f_op_f32(global2.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b)) - global2.b))), global2.b));
    global0 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(round(277f)), -284f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1255f, var_3, var_3))))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1.x, 29u)], reverseBits(~global0[_wgslsmith_index_u32(42783u, 29u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b - var_3))));
}

