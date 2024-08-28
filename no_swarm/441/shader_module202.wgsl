struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-540f, -929f);

var<private> global1: array<Struct_3, 5>;

var<private> global2: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec2<f32> {
    global1 = array<Struct_3, 5>();
    var var_0 = !vec3<bool>(arg_2.x == -(-16400i << (u_input.b.x % 32u)), all(!vec3<bool>(true, arg_0, arg_0)), !(arg_0 || arg_0));
    let var_1 = Struct_1(vec4<bool>(true == all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !any(select(vec4<bool>(false, true, arg_0, true), vec4<bool>(true, true, false, false), false)), var_0.x, 60352u == u_input.b.x), -arg_2, 2147483647i < ~u_input.c.x);
    global2 = ~(var_1.b.x << (4294967295u % 32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(2116f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))));
    return _wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-992f * -665f), global0.x))) - var_2.yx));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(~u_input.b.yz, u_input.b.zy, u_input.b.xy);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.b, u_input.d, -4960i, u_input.d), vec4<i32>(13705i, -25352i, 2147483647i, arg_0.b)), ~vec4<i32>(831i, -1i, u_input.c.x, arg_0.a.c.b.x)) > 2147483647i, _wgslsmith_mod_vec4_u32(select(vec4<u32>(32322u, u_input.a, 13553u, 0u) ^ vec4<u32>(4294967295u, u_input.a, 33561u, 4294967295u), vec4<u32>(1u, u_input.a, 56545u, u_input.b.x) >> (vec4<u32>(4294967295u, 5314u, 19463u, arg_0.a.a) % vec4<u32>(32u)), arg_0.a.c.a), ~(~vec4<u32>(72761u, 21770u, arg_0.a.a, u_input.a))), arg_0.a.c.b)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(true, vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u), vec3<i32>(0i, arg_0.a.b.b.x, u_input.d))).x, _wgslsmith_f_op_f32(abs(arg_1.x))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, -1345f)), global0.x)), arg_1));
    let var_1 = ~reverseBits(vec3<u32>(1u, abs(1u | u_input.b.x), (var_0.x << (var_0.x % 32u)) ^ _wgslsmith_clamp_u32(u_input.b.x, u_input.a, 1u)));
    let var_2 = firstLeadingBit(max(~vec4<u32>(countOneBits(u_input.b.x), ~3313u, 1u << (var_1.x % 32u), ~807u), firstTrailingBit(vec4<u32>(u_input.a, var_0.x, 1u, var_1.x >> (1u % 32u)))));
    let var_3 = Struct_4(arg_0.a.a);
    return ~abs(~arg_0.a.a);
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = ~52171u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(f32(-1f) * -1532f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(439f, 1263f, 1389f), vec3<f32>(global0.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -170f, global0.x)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, 420f) * vec3<f32>(1150f, global0.x, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(650f, global0.x, 470f) * vec3<f32>(var_1.x, global0.x, 851f)), true))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(124f, -1546f, var_1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(731f, global0.x)), -612f, -1000f))));
    let var_2 = global1[_wgslsmith_index_u32(func_2(Struct_3(arg_0.a, arg_0.a.c.b.x, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz + vec2<f32>(var_1.x, var_1.x))), var_1.yx)), 5u)];
    var_0 = u_input.a;
    return !(abs(2147483647i) >= u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_u32(countOneBits(~u_input.a) & ~firstLeadingBit(u_input.a), u_input.a), Struct_1(vec4<bool>(false, func_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 19525u), 5u)]), false, true), vec3<i32>(_wgslsmith_mult_i32(0i, u_input.d), -u_input.c.x, min(u_input.c.x, -29295i)) >> (firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b)) % vec3<u32>(32u)), true), Struct_1(select(vec4<bool>(u_input.b.x > u_input.a, all(vec4<bool>(false, true, false, true)), true, select(true, false, false)), vec4<bool>(true, false, true, u_input.a == u_input.b.x), !all(vec2<bool>(false, false))), vec3<i32>(_wgslsmith_sub_i32(1i, -u_input.d), _wgslsmith_mult_i32(~(-114051i), u_input.d), max(~u_input.c.x, u_input.d)), (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) != (u_input.b.x ^ 4294967295u)) | true), countOneBits(~(min(24156u, u_input.a) >> (func_2(global1[_wgslsmith_index_u32(4294967295u, 5u)], vec2<f32>(1313f, -147f)) % 32u))));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.b.b.x & -11756i, -var_0.c.b.x, ~u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 29260i, u_input.c.x), vec4<i32>(38251i, 2147483647i, 1i, var_0.b.b.x)) ^ ~vec4<i32>(-51446i, -1i, var_0.b.b.x, var_0.b.b.x)), ~vec4<i32>(~u_input.d, var_0.b.b.x, _wgslsmith_dot_vec2_i32(var_0.b.b.zy, vec2<i32>(u_input.c.x, -1i)), var_0.c.b.x)), ~vec4<i32>(~var_0.b.b.x, 1i, var_0.c.b.x ^ ~0i, -min(u_input.d, var_0.b.b.x)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-231f)), 1816f);
    var var_2 = !((67421u != var_0.d) & var_0.b.c);
    var var_3 = Struct_2(4294967295u, Struct_1(vec4<bool>(!func_1(Struct_3(Struct_2(u_input.a, Struct_1(var_0.b.a, var_0.b.b, true), Struct_1(vec4<bool>(true, var_0.c.c, var_0.c.a.x, var_0.c.c), var_0.b.b, true), var_0.d), var_1, false)), var_0.b.c, false, var_0.a >= (var_0.d ^ 1u)), -var_0.c.b, !var_0.c.a.x), var_0.c, u_input.b.x);
    var var_4 = var_0.b;
    var var_5 = vec2<bool>(any(select(var_3.c.a.yw, vec2<bool>(true, var_3.c.c), vec2<bool>(true, true))) || var_0.b.c, var_4.b.x <= (firstTrailingBit(u_input.c.x ^ 55620i) & _wgslsmith_mod_i32(var_1, var_1)));
    let var_6 = _wgslsmith_mult_vec2_i32(vec2<i32>(~var_0.b.b.x, _wgslsmith_div_i32(firstLeadingBit(-var_1), _wgslsmith_mod_i32(var_3.b.b.x, 0i) << (0u % 32u))), ~((vec2<i32>(var_4.b.x, var_4.b.x) & vec2<i32>(-19014i, -2147483647i)) >> (~u_input.b.xy % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x) < global0.x)) + global0.x), 912f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1422f, -660f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(281f, 1594f), vec2<f32>(-2550f, global0.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-307f, global0.x)))), true)), vec2<i32>(0i, ~var_3.b.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_6, vec2<i32>(1i, 1i)), var_6));
}

