struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_sub_u32(global1.a.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, arg_1.a.x, 4294967295u), vec4<u32>(u_input.c, 0u, global1.a.x, 51967u) & vec4<u32>(50138u, 4294967295u, 0u, u_input.c)), _wgslsmith_mod_u32(10807u, arg_1.a.x)), firstLeadingBit(u_input.b), global1.a.x));
    var var_0 = arg_1.a.x >> (reverseBits(~0u) % 32u);
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_add_u32(~23383u, global1.a.x), abs(_wgslsmith_clamp_u32(u_input.c, 14515u, 12863u)), _wgslsmith_sub_u32(4294967295u, ~arg_1.a.x)) ^ ~(~vec3<u32>(global1.a.x, global1.a.x, u_input.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.a.x, 0u), vec3<u32>(1u, arg_1.a.x, u_input.b)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(global1.b)));
    global2 = array<Struct_1, 5>();
    global1 = Struct_2(~select(global1.a, ~(vec3<u32>(0u, 9326u, 3493u) | var_1.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec3_f32(round(global1.b)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - arg_0.x)))), global1.b.x), global1.b.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.b.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.x, 377f)) + -196f))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_2(select(vec3<u32>(max(15549u, global1.a.x), 82150u, 13789u), ~global1.a >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(22281u, 4294967295u, u_input.c), vec3<u32>(1u, 4294967295u, u_input.c)) % vec3<u32>(32u)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(-941f)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x)) - arg_2) * vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, arg_2.x), vec2<f32>(arg_2.x, 537f))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, arg_0.x), 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 1062f)), -861f)));
    let var_1 = arg_3.x;
    global1 = Struct_2(var_0.a, vec3<f32>(476f, var_0.b.x, var_0.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * global1.b.x));
    global1 = var_0;
    return -select(max(0i, -1i), -(~(-2147483647i)), var_0.a.x > arg_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec4_i32(select(~abs(vec4<i32>(-53551i, arg_2.x, arg_2.x, arg_2.x) ^ vec4<i32>(arg_2.x, 2147483647i, arg_2.x, 10786i)), vec4<i32>(~firstTrailingBit(34069i), -select(arg_2.x, arg_2.x, true), _wgslsmith_div_i32(-1i, i32(-1i) * -56504i), arg_2.x), !vec4<bool>(select(false, false, true), true, true, true)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(~(-19436i), -1i, arg_2.x, arg_2.x), ~(-vec4<i32>(arg_2.x, 2147483647i, 6063i, 1i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -2147483647i) >> (vec4<u32>(4294967295u, arg_0.a.x, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(arg_2.x, -6295i, 40388i, arg_2.x) & vec4<i32>(22925i, 9293i, arg_2.x, 1i))));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(func_2(_wgslsmith_mult_vec2_u32(~arg_0.a.yz, vec2<u32>(0u, global1.a.x)), arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 473f, arg_0.b.x))), vec3<bool>(true, 0i <= var_0.x, true)), ~_wgslsmith_div_i32(-2147483647i << (arg_0.a.x % 32u), arg_2.x ^ 2147483647i), firstTrailingBit(-_wgslsmith_clamp_i32(-1i, var_0.x, -7000i)), _wgslsmith_dot_vec2_i32(-arg_2, select(arg_2, var_0.yy, true) ^ ~var_0.xy)), _wgslsmith_clamp_vec4_i32(max(reverseBits(vec4<i32>(44934i, var_0.x, 42528i, var_0.x) >> (vec4<u32>(global1.a.x, u_input.c, 4294967295u, arg_1.a.x) % vec4<u32>(32u))), vec4<i32>(-2147483647i, var_0.x, 23180i, -42965i) << (abs(vec4<u32>(global1.a.x, 0u, global1.a.x, u_input.c)) % vec4<u32>(32u))), vec4<i32>(~(var_0.x | 10961i), arg_2.x, 2147483647i, ~(i32(-1i) * -13201i)), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, 0i), vec3<i32>(var_0.x, arg_2.x, 1i))), -arg_2.x, -abs(0i), arg_2.x)));
    var_0 = ~(~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 49443i, 13376i, arg_2.x), vec4<i32>(-5193i, -56959i, var_0.x, -12749i)))));
    let var_1 = firstTrailingBit(_wgslsmith_add_i32(~(~arg_2.x), func_2(abs(_wgslsmith_sub_vec2_u32(arg_1.a.yz, arg_0.a.xx)), _wgslsmith_mult_i32(i32(-1i) * -34398i, select(arg_2.x, arg_2.x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1793f, global1.b.x, arg_1.b.x)) * _wgslsmith_f_op_vec3_f32(-arg_0.b)), vec3<bool>(true, true, all(vec4<bool>(true, false, true, false))))));
    var var_2 = arg_2.x;
    return -1i | ((var_1 & 0i) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, _wgslsmith_add_i32(17857i, -26143i)), vec2<i32>(-2147483647i, -1i)), vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -5415i), _wgslsmith_add_i32(~(i32(-1i) * -85098i), -func_1(Struct_2(global1.a, vec3<f32>(global1.b.x, 108f, -1393f)), Struct_2(vec3<u32>(global1.a.x, u_input.c, 0u), vec3<f32>(global1.b.x, global1.b.x, global1.b.x)), vec2<i32>(-26754i, 1i)))), true);
    global1 = Struct_2(vec3<u32>(~(~u_input.a | 72825u), 0u, 1748u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(128f, global1.b.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(525f * -479f), global1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f + global1.b.x)), -747f), _wgslsmith_f_op_f32(ceil(global1.b.x))));
    global2 = array<Struct_1, 5>();
    var_0 = ~(~(vec2<i32>(_wgslsmith_mult_i32(62693i, -8827i), reverseBits(var_0.x)) >> (max(global1.a.xx & vec2<u32>(u_input.b, global1.a.x), ~global1.a.yx) % vec2<u32>(32u))));
    global1 = Struct_2(global1.a, vec3<f32>(global1.b.x, -563f, _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(global1.b.x - -1491f), true))));
    global1 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(1u, global1.a.x, global1.a.x)), vec3<u32>(1u, 1u, countOneBits(4294967295u))), ~(~global1.a), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 0u, global1.a.x), global1.a >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, u_input.c, 7207u), vec3<u32>(0u, global1.a.x, u_input.c)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.x, 1391f, -157f))) + _wgslsmith_div_vec3_f32(global1.b, global1.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, global1.b.x)) - _wgslsmith_f_op_vec3_f32(floor(global1.b))))));
    let var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~(global1.a >> (global1.a % vec3<u32>(32u))), abs(vec3<u32>(8505u, 0u, 0u) & vec3<u32>(global1.a.x, 6221u, global1.a.x))) & ((_wgslsmith_sub_u32(u_input.b, u_input.c) | firstLeadingBit(global1.a.x)) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 21926u, global1.a.x), ~global1.a))), 5u)];
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -694f) < _wgslsmith_f_op_f32(trunc(1f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -max((var_0.x << (var_1.a.x % 32u)) >> (min(34104u, u_input.a) % 32u), firstTrailingBit(~var_0.x)), var_1.a, global1.b, 8747u);
}

