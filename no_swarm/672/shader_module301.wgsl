struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(350f, -236f, -209f), vec4<u32>(4294967295u, 0u, 4294967295u, 38712u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global0 = Struct_3(global0.a, reverseBits(global0.b));
    var var_0 = Struct_2(Struct_1((min(u_input.a.x, 83408u) < ~u_input.a.x) || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -262f))), Struct_1(all(vec3<bool>(u_input.b == u_input.b, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -1862f)))));
    var var_1 = 1u;
    var var_2 = Struct_3(global0.a, _wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(global0.b.x, 1u, 4854u, 1u), vec4<u32>(0u, global0.b.x, u_input.a.x, 1u), var_0.a.a) << (_wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 30919u), global0.b) % vec4<u32>(32u))), ~firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global0.b.x) & vec4<u32>(0u, 0u, global0.b.x, u_input.a.x))));
    var var_3 = Struct_4(Struct_2(Struct_1(var_0.a.a, -737f), var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b, -574f, 251f, 453f), vec4<f32>(-143f, var_0.b.b, var_0.b.b, -114f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-726f, var_0.b.b, global0.a.x, var_0.a.b))))), any(!vec2<bool>(var_0.b.a, var_0.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.b, global0.a.x, var_0.a.b, var_0.a.b), vec4<f32>(var_2.a.x, 810f, var_2.a.x, var_0.a.b))) + vec4<f32>(248f, global0.a.x, 386f, -1567f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 930f, var_0.a.b, -811f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2089f, var_2.a.x, -1008f, 375f)))))), global0.b.x, vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0.a.b)) - -488f), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f - 666f) * _wgslsmith_f_op_f32(-493f - 232f)))));
    return i32(-1i) * -65699i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-1i, -1i, arg_2, u_input.b)), -(~vec4<i32>(arg_2, 2147483647i, u_input.b, arg_2) << (firstTrailingBit(global0.b) % vec4<u32>(32u)))), arg_2, u_input.b, u_input.b);
    return (vec4<i32>(func_3(), 24672i, -15951i, arg_2) & vec4<i32>(arg_2, _wgslsmith_clamp_i32(u_input.b, max(var_0.x, arg_2), 0i), var_0.x, max(arg_2, countOneBits(1i)))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-57242i, var_0.x), 10591i), ~firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(-1425i, 1i), arg_2), ~(~vec4<i32>(6098i, u_input.b, -2147483647i, 2896i)) | select(vec4<i32>(var_0.x, u_input.b, var_0.x, 37764i), vec4<i32>(var_0.x, -7787i, var_0.x, var_0.x) << (vec4<u32>(global0.b.x, u_input.a.x, 30434u, global0.b.x) % vec4<u32>(32u)), !vec4<bool>(true, false, arg_1.a, false)));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_3(global0.a, ~(~max(vec4<u32>(global0.b.x, 0u, global0.b.x, u_input.a.x), min(global0.b, vec4<u32>(global0.b.x, global0.b.x, 4294967295u, 101184u)))));
    global0 = var_0;
    global0 = var_0;
    global0 = Struct_3(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(399f, var_0.a.x)))), ~var_0.b >> (vec4<u32>(global0.b.x, u_input.a.x, var_0.b.x, select(_wgslsmith_clamp_u32(61471u, 4294967295u, var_0.b.x), _wgslsmith_dot_vec2_u32(global0.b.wy, u_input.a.xy), select(true, true, false))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.a.yz)));
    return var_0;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    global0 = arg_0;
    global0 = func_4(max(_wgslsmith_div_i32(~(-u_input.b), i32(-1i) * -2987i), _wgslsmith_dot_vec4_i32(~func_2(vec3<bool>(false, arg_1.b.a, arg_1.a.a), arg_1.b, arg_3), vec4<i32>(7213i, u_input.b, u_input.b, -u_input.b))), ~arg_3);
    let var_0 = arg_0.b.x;
    return 6463u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(15548u, 4294967295u, func_1(Struct_3(vec3<f32>(-495f, 582f, global0.a.x), vec4<u32>(global0.b.x, 1u, u_input.a.x, global0.b.x)), Struct_2(Struct_1(false, 358f), Struct_1(true, global0.a.x)), vec4<u32>(u_input.a.x, 4294967295u, global0.b.x, u_input.a.x), u_input.b), ~global0.b.x) | ~(~vec4<u32>(u_input.a.x, 0u, 105106u, 32761u)), ~global0.b));
    let var_0 = vec3<bool>(_wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) + 156f)) >= -343f, ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(45933u, u_input.a.x)) >= 20084u, !any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(round(-508f));
    global0 = func_4(_wgslsmith_mod_i32(u_input.b, 23129i), ~(-16402i));
    let var_2 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(14958i, -2147483647i), vec2<i32>(u_input.b, u_input.b)) >> (~global0.b.yz % vec2<u32>(32u))), min(~func_2(var_0, Struct_1(false, global0.a.x), 5301i).yx, abs(~vec2<i32>(0i, 49621i)))) >> (31865u % 32u);
    var var_3 = Struct_4(Struct_2(Struct_1(false, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, -732f), 890f)), Struct_1(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-795f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 197f, var_1, 304f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-686f, global0.a.x, -953f, -1473f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, global0.a.x, global0.a.x, global0.a.x)) + vec4<f32>(193f, 236f, global0.a.x, -1554f))))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global0.b.x, global0.b.x, u_input.a.x, global0.b.x))), min(global0.b, global0.b)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 * -728f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, -295f))))), 309f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.a.x, var_1, true)), func_4(_wgslsmith_mult_i32(var_2, var_2), ~2147483647i).a.x))));
    var_3 = Struct_4(Struct_2(var_3.a.b, var_3.a.a), var_3.b, 11720u, global0.a);
    var var_4 = vec3<i32>(((_wgslsmith_sub_i32(var_2, 29197i) << (var_3.c % 32u)) | max(var_2, var_2)) | ~_wgslsmith_mod_i32(1i, var_2), -firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 63954i), vec3<i32>(-7899i, u_input.b, 1i)), ~var_2)), i32(-1i) * -(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

