struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 266f)), arg_2)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, -629f, arg_2), vec3<f32>(arg_2, 678f, arg_2)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_2, arg_2), vec3<f32>(-872f, 699f, arg_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1176f, 847f))))))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 9005i, u_input.a), -vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) >> (vec4<u32>(9006u, 34127u, u_input.b.x, u_input.c) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(reverseBits(-u_input.a), u_input.a), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, arg_1, u_input.a, arg_1)) ^ reverseBits(vec4<i32>(0i, u_input.a, u_input.a, 48237i)), ~vec4<i32>(0i, arg_1, 2147483647i, arg_1)), u_input.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(35463i, u_input.a), max(-13127i, arg_1)), _wgslsmith_div_i32(u_input.a, arg_1), u_input.a)));
    let var_2 = !any(arg_0);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_2)), _wgslsmith_f_op_f32(exp2(arg_2)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(!all(vec2<bool>(false, true)), !all(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, arg_0.x == u_input.c)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2202f, 1078f))))));
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_2(var_0.x, Struct_1(vec4<bool>(false, any(vec3<bool>(false, true, false)) || true, true, true)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))), global0[_wgslsmith_index_u32((~_wgslsmith_sub_u32(arg_0.x, u_input.c) >> (4651u % 32u)) >> (25522u % 32u), 5u)]);
    let var_2 = true;
    return Struct_2(var_1.a, Struct_1(var_1.b.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    global0 = array<Struct_1, 5>();
    var var_0 = func_2(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(42712u, _wgslsmith_add_u32(u_input.b.x, u_input.c), select(arg_1.x, arg_1.x, true), reverseBits(arg_1.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(49u, 1u, u_input.b.x, arg_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(55477u, u_input.c, arg_1.x, 50375u), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, u_input.b.x)))));
    var_0 = Struct_2(var_0.a, arg_2);
    let var_1 = arg_3;
    var_0 = func_2(~max(firstLeadingBit(vec4<u32>(1u, 0u, u_input.b.x, 0u)), vec4<u32>(~30661u, _wgslsmith_div_u32(u_input.c, u_input.b.x), 29670u, _wgslsmith_sub_u32(4294967295u, u_input.b.x))));
    return vec4<bool>(any(vec2<bool>(true, arg_2.a.x)), false, arg_3 >= _wgslsmith_f_op_f32(arg_0.x - var_1), !select(!var_0.b.a.x, arg_2.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = u_input.b.x ^ u_input.c;
    var var_1 = Struct_1(select(vec4<bool>(true, (-2147483647i ^ u_input.a) == _wgslsmith_div_i32(u_input.a, u_input.a), all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 287f)), (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.c, u_input.c, 11388u)) << (vec3<u32>(1621u, u_input.c, 4294967295u) % vec3<u32>(32u)), Struct_1(vec4<bool>(true, true, true, true)), -1347f)));
    let var_2 = firstTrailingBit(reverseBits(vec4<i32>(-1i, _wgslsmith_sub_i32(-u_input.a, u_input.a), -2147483647i, ~_wgslsmith_sub_i32(u_input.a, u_input.a))));
    let var_3 = var_1.a.x;
    let var_4 = _wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), u_input.a < 0i), _wgslsmith_dot_vec4_i32(var_2, var_2), 566f)).x, true)) != -101f;
    let var_5 = abs(firstLeadingBit(4294967295u));
    var var_6 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-569f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 420f)), -472f)), _wgslsmith_div_f32(643f, func_2(reverseBits(vec4<u32>(25220u, 61083u, 4690u, 1u))).a)), func_2(vec4<u32>(countOneBits(9224u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, 0u), 83399u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_5, 1u), u_input.b.xz), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5, u_input.c), vec2<u32>(u_input.c, 0u)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_6.a + _wgslsmith_f_op_f32(round(-216f))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(9510u, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(var_5, 0u)), 0u, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.c), select(vec4<u32>(76401u, u_input.c, var_5, u_input.c), vec4<u32>(39037u, var_5, 4294967295u, 20761u), var_1.a)), var_6.b.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_5), u_input.b.yz), _wgslsmith_div_u32(0u, 27436u), u_input.c), countOneBits(vec4<u32>(5808u, u_input.b.x, u_input.c, u_input.c)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_6.a, var_6.a, -614f, 589f))), vec4<f32>(665f, var_6.a, var_6.a, var_6.a), all(vec2<bool>(false, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(578f, -567f, var_6.a, -338f), vec4<f32>(var_6.a, -2435f, 1629f, var_6.a)))))), vec4<u32>(u_input.b.x, ~u_input.b.x, var_5, ~u_input.b.x));
}

