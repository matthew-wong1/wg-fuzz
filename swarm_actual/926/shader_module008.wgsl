struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global2 = u_input.d.x;
    global0 = -9555i & u_input.c;
    let var_0 = (_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 12540u)), vec2<u32>(firstTrailingBit(1u), 31414u ^ u_input.a.x)) & u_input.a) | u_input.a;
    let var_1 = ~(~vec3<i32>(firstTrailingBit(u_input.e.x), u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, 0i), ~u_input.e.x)));
    let var_2 = var_0;
    return ~(~(-var_1));
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(~u_input.c, _wgslsmith_add_i32(-min(firstTrailingBit(u_input.b.x), u_input.e.x << (4294967295u % 32u)), ~(~(2147483647i >> (1u % 32u)))));
    let var_1 = vec4<u32>(~u_input.a.x, _wgslsmith_mult_u32(~(u_input.a.x >> (reverseBits(1u) % 32u)), ~min(abs(u_input.a.x), u_input.a.x)), _wgslsmith_clamp_u32(17631u, 15331u, ~4294967295u), ~0u);
    let var_2 = true;
    global3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, 481f, 833f) * vec3<f32>(global3.x, global3.x, global3.x)))))));
    let var_3 = Struct_1(var_0, max(~(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.a.x) << (var_1 % vec4<u32>(32u))), countOneBits(vec4<u32>(~var_1.x, ~u_input.a.x, var_1.x, ~0u))), select(!(!select(vec4<bool>(var_2, true, true, var_2), vec4<bool>(true, var_2, var_2, false), var_2)), vec4<bool>(select(false || var_2, all(vec2<bool>(var_2, true)), true), true, global3.x != -838f, true), vec4<bool>(any(!vec3<bool>(var_2, false, var_2)), u_input.b.x != var_0, true & (true != var_2), var_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, -1000f, global3.x)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), 207f)), global3.x, -1109f)));
    return Struct_1(1i, vec4<u32>(u_input.a.x, ~(~0u), 0u, ~(~u_input.a.x) & _wgslsmith_mod_u32(~0u, max(u_input.a.x, u_input.a.x))), select(vec4<bool>(!all(var_3.c.xz), var_3.c.x, true, _wgslsmith_div_f32(1300f, var_3.d.x) > _wgslsmith_f_op_f32(trunc(-1000f))), vec4<bool>(true, true, true, var_2), ((var_3.c.x & false) | false) == all(var_3.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.d * var_3.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, var_3.d.x, 460f)), !vec3<bool>(true, false, var_3.c.x))), var_3.d));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = arg_0;
    global3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-871f, var_0.d.x, -500f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1231f, arg_2.d.x, arg_1), var_0.d, true)))), !arg_0.c.wwy))))));
    let var_1 = vec3<bool>(!(-_wgslsmith_add_i32(-55907i, 1i) < firstLeadingBit(_wgslsmith_div_i32(var_0.a, u_input.b.x))), true, true | any(vec4<bool>(arg_0.c.x, all(arg_0.c.xxw), false, false)));
    let var_2 = func_3((vec3<i32>(-35926i, 1i, _wgslsmith_clamp_i32(-77175i, -1i, -2147483647i)) | max(func_2(true), ~vec3<i32>(arg_2.a, 28271i, u_input.b.x))) ^ (vec3<i32>(-1i) * -(vec3<i32>(var_0.a, var_0.a, -14064i) | vec3<i32>(u_input.d.x, var_0.a, var_0.a))));
    var var_3 = Struct_1(_wgslsmith_add_i32(~arg_0.a, min(~1i, ~(~(-12860i)))), ~var_2.b, !vec4<bool>(true, arg_0.c.x, true, false), arg_0.d);
    return arg_0.c.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -52858i) | vec4<i32>(48155i, 40940i, 1i, u_input.b.x), vec4<i32>(u_input.d.x, u_input.e.x, -2147483647i, u_input.e.x) >> (vec4<u32>(u_input.a.x, 40173u, u_input.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(~vec3<i32>(18464i, u_input.d.x, -36073i), select(vec3<i32>(12578i, -16592i, u_input.c), -vec3<i32>(u_input.d.x, u_input.c, u_input.e.x), func_3(vec3<i32>(2147483647i, u_input.b.x, -4928i)).c.yyw))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1965f + -1468f))))) <= global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(~(~u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(10367u, 5945u, u_input.a.x, 4569u), vec4<u32>(9123u, u_input.a.x, 0u, u_input.a.x)), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(451f, global3.x, 968f) * vec3<f32>(931f, global3.x, 1083f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, 1000f, global3.x))))), global3.x, Struct_1(~(-1i), min(vec4<u32>(8494u, 0u, u_input.a.x, 26827u) & vec4<u32>(8882u, 0u, 1u, 20506u), _wgslsmith_clamp_vec4_u32(vec4<u32>(34283u, 38743u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), u_input.d.x > 19198i), vec3<f32>(1f, -942f, 522f))), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)));
    var var_1 = func_3(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(10654i, countOneBits(u_input.c), _wgslsmith_sub_i32(u_input.c, u_input.e.x)), select(vec3<i32>(23079i, 2147483647i, 9924i), abs(vec3<i32>(-1i, u_input.e.x, 1i)), func_3(vec3<i32>(1i, u_input.e.x, -1i)).c.xyy), reverseBits(reverseBits(vec3<i32>(1i, u_input.b.x, u_input.b.x))))));
    let var_2 = Struct_1(u_input.e.x, ~firstLeadingBit(var_1.b), !(!var_1.c), _wgslsmith_f_op_vec3_f32(-var_1.d));
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~55300u, 40532u & var_1.b.x, var_1.b.x), ~(~1u), var_2.b.x), ~(~select(var_1.b.zyz, vec3<u32>(var_1.b.x, 4294967295u, 1u), var_1.c.zxx))), ~(~max(vec3<u32>(4294967295u, 1u, 23215u), vec3<u32>(var_1.b.x, 0u, var_1.b.x))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.e.x, var_1.a, 0i) >> (var_1.b % vec4<u32>(32u)), abs(vec4<i32>(0i, var_2.a, var_1.a, var_2.a))) ^ ~(vec4<i32>(-1i, var_2.a, var_2.a, var_2.a) >> (var_2.b % vec4<u32>(32u)))), min(53191i, -(i32(-1i) * -u_input.b.x)), -1000f);
}

