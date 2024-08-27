struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2440i, 37137i, -1988i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(select(vec4<bool>(false, true, (34930i >> (arg_0.x % 32u)) < 1i, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, true))), vec4<bool>(false, true, true, (arg_0.x << (arg_0.x % 32u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), arg_0.wz))));
    var var_1 = ~(-18584i);
    var_1 = -71974i;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-12737i, global0.x, 0i, 1i)), u_input.b);
    let var_3 = ~(~(u_input.b.x | _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0.xz, vec2<i32>(23557i, 3574i)), vec2<i32>(10882i, 2147483647i))));
    return 1i << ((abs(~(~arg_0.x)) | 4547u) % 32u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(-2088f, _wgslsmith_f_op_f32(793f * 684f))), Struct_1(!vec4<bool>(true, any(vec4<bool>(false, false, false, true)), false, true)), Struct_3(vec2<u32>(0u, _wgslsmith_add_u32(arg_0, 28705u << (arg_0 % 32u)))));
    global0 = vec4<i32>(~(-u_input.a), reverseBits(abs((-21314i ^ arg_1) | ~(-2147483647i))), abs(func_3(vec4<u32>(57814u, ~26108u, ~4294967295u, ~0u))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, -2147483647i, 2147483647i, 0i)), u_input.b), min(0i, abs(_wgslsmith_mult_i32(2147483647i, arg_1)))));
    let var_1 = true;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(~(~u_input.b), firstLeadingBit(abs(u_input.b)))));
    var var_3 = 4294967295u;
    return firstTrailingBit(firstLeadingBit(14875i) ^ global0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: Struct_5) -> vec4<i32> {
    global0 = u_input.b;
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, -947f, arg_1), vec3<f32>(arg_1, arg_1, arg_1))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -799f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(601f, arg_1, -923f) - vec3<f32>(1034f, 454f, -292f)), select(arg_0.x, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, -439f, arg_1)))))), ~u_input.a, Struct_1(!vec4<bool>(true, true, false, !arg_0.x)));
    global0 = firstLeadingBit(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(arg_2, arg_2, var_0.b, arg_2)), vec4<i32>(0i, u_input.b.x, -2147483647i, arg_2)), vec4<i32>(arg_2, u_input.a, arg_2, global0.x) >> (max(vec4<u32>(0u, arg_3.a, 9505u, 0u), vec4<u32>(arg_3.a, arg_3.a, arg_3.a, 1u)) % vec4<u32>(32u))));
    global0 = vec4<i32>(-42727i, firstLeadingBit(func_3(vec4<u32>(arg_3.a, arg_3.a, 39717u, 18076u) ^ vec4<u32>(arg_3.a, 24927u, arg_3.a, arg_3.a))) >> (arg_3.a % 32u), ~(-39606i), var_0.b);
    var var_1 = arg_3.a & 1u;
    return _wgslsmith_sub_vec4_i32(-u_input.b, ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(21459i, arg_2, -5982i, var_0.b), vec4<i32>(arg_2, 2147483647i, global0.x, -2147483647i)), vec4<i32>(arg_2, 34890i, u_input.b.x, -71180i), true) ^ firstTrailingBit(abs(u_input.b)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = func_4(!(!vec2<bool>(arg_0.c.a.x, arg_0.c.a.x)), -1000f, _wgslsmith_mod_i32(func_2(~81509u, ~arg_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a, false))), _wgslsmith_clamp_i32(-1i, u_input.a, -54683i)), Struct_5(~firstTrailingBit(0u))) & -vec4<i32>(arg_0.b << (~4294967295u % 32u), 1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, -15496i, 1i), vec4<i32>(0i, arg_0.b, u_input.b.x, global0.x))), 1i);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f), 1f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 225f), -2181f))), Struct_1(select(select(arg_0.c.a, !vec4<bool>(arg_0.c.a.x, true, arg_0.c.a.x, arg_0.c.a.x), all(vec4<bool>(false, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x))), arg_0.c.a, select(!vec4<bool>(true, false, arg_0.c.a.x, arg_0.c.a.x), select(arg_0.c.a, vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x), arg_0.c.a.x), !vec4<bool>(true, arg_0.c.a.x, false, true)))), Struct_3(~(~vec2<u32>(67122u, 65307u))));
    var var_2 = ~max(~(~vec3<u32>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x)), vec3<u32>(var_1.c.a.x, _wgslsmith_add_u32(4294967295u, var_1.c.a.x) << (countOneBits(0u) % 32u), var_1.c.a.x));
    global0 = -u_input.b;
    var var_3 = var_1.a;
    return _wgslsmith_mod_u32(var_2.x, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u >= _wgslsmith_div_u32(func_1(Struct_2(vec3<f32>(-696f, 550f, -450f), ~(-2147483647i), Struct_1(vec4<bool>(true, true, false, false)))), 0u);
    var_0 = 814f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-828f - 1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(686f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(2092f)), _wgslsmith_f_op_f32(f32(-1f) * -1276f)))));
    let var_1 = vec2<bool>(!any(vec3<bool>(false, true, true)), !(!all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_dot_vec2_u32(vec2<u32>(3232u, 20280u), vec2<u32>(1939u, 1u)) & 4294967295u) << (_wgslsmith_mult_u32(abs(0u), 70111u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2343f, 979f), vec2<f32>(-432f, 1054f)) - vec2<f32>(-1114f, -232f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-670f, 645f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(478f, 617f))) + vec2<f32>(-1305f, _wgslsmith_f_op_f32(select(1990f, 1215f, false))))));
}

