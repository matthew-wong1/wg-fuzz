struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 17193i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = -1i;
    global0 = firstLeadingBit(0i);
    global0 = arg_0.x;
    let var_0 = arg_1;
    var var_1 = min(_wgslsmith_clamp_i32(-countOneBits(~0i), 1i, -1i), arg_1.a.x);
    return Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 1333f, -582f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global0 = arg_1.x;
    global0 = arg_1.x;
    var var_0 = u_input.a;
    global0 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_1.x, arg_1.x, 2147483647i)), arg_1) ^ 2147483647i;
    var_0 = abs(u_input.a);
    return 1u;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = ~u_input.a;
    var var_1 = min(countOneBits(max(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a)), reverseBits(~vec2<u32>(21063u, 1u)))), ~(~(vec2<u32>(0u, arg_0) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))) >> (vec2<u32>(~u_input.a, ~(~arg_0)) % vec2<u32>(32u)));
    var_0 = _wgslsmith_div_u32(55862u ^ u_input.a, ~_wgslsmith_mult_u32(func_3(1i, ~vec3<i32>(42269i, arg_1.a.x, -39180i), func_2(vec4<i32>(arg_1.a.x, 1i, arg_1.a.x, -2147483647i), arg_1)), arg_0 >> (arg_0 % 32u)));
    var var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~vec2<u32>(arg_0, 45063u))) << ((_wgslsmith_div_vec2_u32(~vec2<u32>(1u, var_1.x), ~vec2<u32>(4576u, 0u)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(7190u, u_input.a), vec2<u32>(arg_0, u_input.a)), ~vec2<u32>(u_input.a, 46839u))) % vec2<u32>(32u)), vec2<u32>(122328u, 4294967295u));
    var_0 = var_1.x ^ _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 4294967295u >> (var_1.x % 32u), _wgslsmith_clamp_u32(var_1.x, 268u, var_1.x), var_1.x & 4294967295u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(42921u, 1u, 1u, u_input.a), vec4<u32>(arg_0, 4294967295u, 91712u, 29682u), vec4<u32>(u_input.a, 21789u, 0u, var_1.x)), ~vec4<u32>(var_1.x, arg_0, 1u, 16442u))), min(vec4<u32>(0u, var_1.x | 4294967295u, 1u, arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, 64820u, u_input.a), vec4<u32>(u_input.a, 9833u, 0u, var_1.x))));
    return ~(vec2<i32>(select(arg_1.a.x, max(-61250i, arg_1.a.x), true), -arg_1.a.x) >> (reverseBits(~(vec2<u32>(arg_0, var_1.x) ^ vec2<u32>(39875u, arg_0))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    global0 = ~(-(func_2(vec4<i32>(2147483647i, -2147483647i, -1i, -14309i), Struct_1(arg_0.a, arg_0.b)).a.x & _wgslsmith_add_i32(arg_0.a.x, 1i))) << ((_wgslsmith_mult_u32(38213u, ~50324u & u_input.a) | ~min(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 2924u, 0u), vec3<u32>(u_input.a, arg_1.x, 4294967295u)))) % 32u);
    let var_0 = arg_0.a;
    let var_1 = vec3<bool>(false, false, true);
    global0 = var_0.x;
    var var_2 = func_2(abs(vec4<i32>(-var_0.x, -2147483647i, ~4482i, _wgslsmith_dot_vec3_i32(vec3<i32>(24831i, var_0.x, var_0.x), vec3<i32>(-2147483647i, 49505i, var_0.x)))) & vec4<i32>(var_0.x, ~countOneBits(-2147483647i), _wgslsmith_mod_i32(1i, func_1(1u, arg_0).x), _wgslsmith_mod_i32(var_0.x << (u_input.a % 32u), -1i)), func_2(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.a.x, 21342i, arg_0.a.x), vec4<i32>(arg_0.a.x, 0i, arg_0.a.x, var_0.x))), arg_0));
    return var_1.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = func_2(~countOneBits(vec4<i32>(i32(-1i) * -1i, -2147483647i, -23224i, _wgslsmith_div_i32(-2147483647i, 2147483647i))), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(3073i, 4999i), _wgslsmith_div_vec2_i32(vec2<i32>(34536i, -63199i), vec2<i32>(-2147483647i, 2147483647i))), max(abs(vec2<i32>(-10021i, 53906i)), abs(vec2<i32>(-11222i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-522f, 1462f, -531f), vec3<f32>(-1000f, 229f, 463f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, -1591f, 299f))))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, var_0.a.x, var_0.a.x, 2147483647i)), countOneBits(vec4<i32>(var_0.a.x, 1i, -13123i, var_0.a.x)))), -(~reverseBits(1944i))) <= var_0.a.x;
    global0 = var_0.a.x;
    global0 = _wgslsmith_div_i32(min(min(abs(-var_0.a.x), _wgslsmith_mod_i32(var_0.a.x, var_0.a.x)), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-23360i, 2147483647i, 29974i), var_0.a.x)), firstLeadingBit(var_0.a.x) >> (0u % 32u));
    var_0 = func_2(-(~countOneBits(vec4<i32>(var_0.a.x, var_0.a.x, -18719i, -25713i) >> (vec4<u32>(u_input.a, 1u, u_input.a, 0u) % vec4<u32>(32u)))), Struct_1(select(-var_0.a, var_0.a, vec2<bool>(arg_0.x, var_0.a.x < -13277i)), var_0.b));
    return Struct_1(~(~vec2<i32>(_wgslsmith_clamp_i32(1i, var_0.a.x, var_0.a.x), _wgslsmith_clamp_i32(var_0.a.x, 0i, 0i))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(1231f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x - 1330f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(true, func_4(Struct_1(func_1(u_input.a, Struct_1(vec2<i32>(17095i, 43798i), vec3<f32>(1000f, 280f, -161f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(945f, 272f, -204f))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4074u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 14049u)))), true, true), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(20519u, select(u_input.a, u_input.a, true)), ~u_input.a & (26091u >> (u_input.a % 32u)))));
    var var_1 = all(select(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, true, true)));
    var var_2 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, (var_0.a.x | 0i) >= var_0.a.x, true), vec4<bool>(func_4(func_2(vec4<i32>(2147483647i, var_0.a.x, -12072i, var_0.a.x), Struct_1(vec2<i32>(var_0.a.x, 2147483647i), vec3<f32>(-1511f, 356f, 2055f))), vec4<u32>(16794u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 30413u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 14815u, 4294967295u)) != firstLeadingBit(0u), all(vec2<bool>(true, true)) | true, (4294967295u << (u_input.a % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 8924u), vec4<u32>(u_input.a, u_input.a, 97205u, 91152u))));
    global0 = ~var_0.a.x;
    var_2 = !select(!(!vec4<bool>(var_2.x, true, true, var_2.x)), !select(vec4<bool>(false, var_2.x, var_2.x, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), select(vec4<bool>(true, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) * -283f)), ~(~select(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(36349u, u_input.a), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - 829f)))))), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(17960i, 28859i, 42533i)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(18527i, -24546i, var_0.a.x) ^ vec3<i32>(2147483647i, var_0.a.x, var_0.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, var_0.a.x), vec3<i32>(var_0.a.x, 0i, var_0.a.x))))));
}

