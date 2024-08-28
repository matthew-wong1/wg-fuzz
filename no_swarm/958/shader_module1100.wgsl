struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 10>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<f32, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.b.x, 10u)], global1[_wgslsmith_index_u32(arg_0.x, 10u)], 869f), vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], 949f, global1[_wgslsmith_index_u32(80401u, 10u)])))))))));
    global1 = array<f32, 10>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1227f + global1[_wgslsmith_index_u32(~arg_0.x, 10u)]), ~(-(~(~66929i))), -167f);
    var var_2 = Struct_1(vec3<i32>(max(arg_1.a.x, -(~arg_1.a.x)), u_input.a, -_wgslsmith_sub_i32(~global0.a.x, _wgslsmith_mult_i32(u_input.a, var_1.b))), ~abs(~(~global0.b)), select(select(!arg_1.c, vec2<bool>(false, arg_0.x > arg_1.d.x), select(any(vec4<bool>(false, arg_1.c.x, arg_1.c.x, false)), true, true)), arg_1.c, vec2<bool>(select(select(true, true, arg_1.c.x), any(vec4<bool>(global0.c.x, true, true, arg_1.c.x)), !global0.c.x), !(global0.a.x < var_1.b))), ~abs(vec2<u32>(4294967295u, global0.b.x)));
    return abs(global0.d) << (var_2.d % vec2<u32>(32u));
}

fn func_4(arg_0: f32) -> f32 {
    global1 = array<f32, 10>();
    var var_0 = select(!(!(!global0.c.x)), select(global0.c.x, -1i >= global0.a.x, global0.c.x), any(!(!vec3<bool>(true, global0.c.x, true))) || all(select(select(global0.c, global0.c, vec2<bool>(global0.c.x, global0.c.x)), global0.c, global0.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(28725u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], 456f)))))));
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    return -926f;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: bool) -> vec2<bool> {
    global0 = Struct_1(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, arg_0, -44414i, -15772i)), -vec4<i32>(2510i, 0i, arg_1, global0.a.x)) ^ ((i32(-1i) * -9885i) << (_wgslsmith_dot_vec3_u32(global0.b, global0.b) % 32u)), -46191i), select(_wgslsmith_clamp_vec3_u32(global0.b, vec3<u32>(0u, global0.d.x ^ global0.b.x, reverseBits(1u)), vec3<u32>(global0.d.x, 4294967295u, global0.d.x | global0.d.x)), _wgslsmith_div_vec3_u32(global0.b, abs(~global0.b)), !vec3<bool>(global0.c.x, 142f != arg_2, false)), select(global0.c, vec2<bool>(_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(1503f + -703f), arg_3), global0.c), ~(~(~vec2<u32>(4294967295u, global0.d.x))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(724f)), 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    var var_1 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b.x), func_3(global0.b, Struct_1(global0.a, global0.b, vec2<bool>(global0.c.x, true), global0.d))), 10u)])), -arg_1, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -371f)));
    var var_2 = min(countOneBits(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, var_0.b, global0.a.x), vec4<i32>(42959i, 16570i, -1i, -1i)))), vec4<i32>(-18433i >> (~global0.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-9765i, 36009i, u_input.a, -1i), vec4<i32>(-27097i, arg_1, 46036i, arg_1)) << (abs(global0.d.x) % 32u), 0i | (arg_1 & global0.a.x), 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(66999u, global0.d.x), 4294967295u, global0.d.x, global0.d.x), ~vec4<u32>(4294967295u, 4294967295u, global0.d.x, global0.b.x)) % vec4<u32>(32u)));
    return !vec2<bool>(false, 4294967295u >= countOneBits(global0.d.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    let var_0 = ~_wgslsmith_mult_vec2_i32(-vec2<i32>(-u_input.a, u_input.a), vec2<i32>(global0.a.x, -63603i));
    var var_1 = (vec3<u32>(4294967295u, 43521u, firstLeadingBit(global0.b.x)) ^ ~_wgslsmith_sub_vec3_u32(global0.b | global0.b, global0.b)) | abs(global0.b);
    var var_2 = !select(vec2<bool>(false, arg_1.x), arg_1.yw, func_2(-_wgslsmith_clamp_i32(46134i, u_input.a, var_0.x), ~68007i << (var_1.x % 32u), arg_0.x, arg_1.x));
    return 7786i;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> StorageBuffer {
    global0 = Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(50678i, global0.a.x), vec2<i32>(arg_0.b, -1760i)), global0.a.x, arg_0.b), abs(global0.a)), global0.b, global0.c, ~global0.b.xy);
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    let var_0 = arg_0;
    return StorageBuffer(arg_1, vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.d.x, 80322u, global0.d.x), vec4<u32>(global0.d.x, 4294967295u, global0.d.x, 0u)), ~(23230u ^ global0.d.x)), abs(1u), 10686u, global0.d.x & 1u), global0.d.x ^ (global0.d.x | 0u), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-30809i, _wgslsmith_sub_i32(u_input.a, arg_0.b)), _wgslsmith_sub_i32(-10002i, global0.a.x) & 1i, ~var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(67382u, 10u)])))), _wgslsmith_dot_vec3_i32(vec3<i32>(func_1(vec2<f32>(global1[_wgslsmith_index_u32(global0.d.x, 10u)], global1[_wgslsmith_index_u32(global0.d.x, 10u)]), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), global1[_wgslsmith_index_u32(36558u, 10u)]), i32(-1i) * -12673i, 2147483647i), vec3<i32>(global0.a.x, global0.a.x, u_input.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(38801u, global0.d.x, global0.b.x), vec3<u32>(43704u, 1u, global0.b.x)) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(select(0u, global0.b.x, false), abs(global0.b.x), abs(global0.b.x)), 10u)]), vec3<f32>(_wgslsmith_f_op_f32(-801f + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0.b.x, 10u)])), 7627u == global0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.b.x, 10u)])) - global1[_wgslsmith_index_u32(1u, 10u)]), 1204f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -407f)))), global1[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(~global0.d.x, _wgslsmith_div_u32(34965u, global0.b.x)), 15u, !global0.c.x), 10u)], false);
}

