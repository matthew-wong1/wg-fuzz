struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = select(!(!(!global0[_wgslsmith_index_u32(u_input.a, 10u)] && false)), !global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(~1u, 10u)]);
    let var_1 = Struct_2(all(select(vec3<bool>(var_0, global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(22944u, 10u)], false), !vec3<bool>(true, var_0, false))) != var_0, Struct_1(min(countOneBits(-arg_0.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 37814i, arg_0.x), -47635i)), ~countOneBits(1u), countOneBits(reverseBits(countOneBits(vec3<u32>(38458u, 33779u, u_input.a))))), vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(1i, arg_0.x, arg_0.x))), arg_0), 1i, _wgslsmith_add_i32(-arg_0.x, 1i), ~max(33938i, arg_0.x << (u_input.a % 32u))), global0[_wgslsmith_index_u32(min(~u_input.a, u_input.a ^ ~u_input.a), 10u)], max(vec4<i32>(2147483647i, _wgslsmith_add_i32(arg_0.x, 18245i), arg_0.x, 0i), vec4<i32>(0i, arg_0.x, firstLeadingBit(_wgslsmith_mult_i32(arg_0.x, 2147483647i)), arg_0.x)));
    var var_2 = -var_1.e.yxx;
    var_2 = ~vec3<i32>(-1i, _wgslsmith_sub_i32(var_2.x & abs(arg_0.x), i32(-1i) * -1i), 6996i);
    let var_3 = 12743i;
    return vec2<bool>(!any(vec3<bool>(true, true, true == var_0)), !(!var_1.a && true));
}

fn func_4(arg_0: vec2<bool>) -> bool {
    global0 = array<bool, 10>();
    let var_0 = abs(vec2<u32>(32498u, _wgslsmith_add_u32(~u_input.a, u_input.a)) ^ ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a, 43846u)), abs(vec2<u32>(u_input.a, 1u))));
    let var_1 = ~u_input.a != ~countOneBits(~(u_input.a & var_0.x));
    let var_2 = Struct_1(5084i, u_input.a, (vec3<u32>(~var_0.x, ~u_input.a, abs(3263u)) & vec3<u32>(6509u, 140665u, 29456u)) << (vec3<u32>(4294967295u, reverseBits(reverseBits(4294967295u)), 15598u) % vec3<u32>(32u)));
    let var_3 = Struct_2(!arg_0.x || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(805f, -870f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f - 427f))), var_2, vec4<i32>(7991i >> (max(~4294967295u, var_2.c.x << (0u % 32u)) % 32u), var_2.a, var_2.a, _wgslsmith_add_i32(min(_wgslsmith_mod_i32(var_2.a, -1i), -67872i ^ var_2.a), _wgslsmith_mult_i32(var_2.a, -28029i))), true, _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, var_2.a, -_wgslsmith_clamp_i32(var_2.a, -41503i, 25127i), 1i), abs(vec4<i32>(var_2.a, -1i, -32298i, var_2.a | 35589i))));
    return true && all(vec4<bool>(global0[_wgslsmith_index_u32(~(~20830u), 10u)], all(!vec3<bool>(false, var_1, arg_0.x)), select(u_input.a >= u_input.a, true, arg_0.x), var_3.a | var_1));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = -56310i;
    var var_1 = vec2<bool>(true, true);
    var var_2 = func_4(func_3(abs(~(-vec3<i32>(arg_1.a, -2147483647i, 21569i)))));
    var_1 = func_3(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.e.wwy, vec3<i32>(-1i, arg_0.b.a, arg_1.a)), arg_0.c.xxx));
    let var_3 = -firstTrailingBit(arg_1.a);
    return vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_1.c.x, abs(u_input.a)), 10u)], arg_0.d, true, global0[_wgslsmith_index_u32(229u, 10u)]);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = ~select(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, u_input.a)), abs(~vec2<u32>(1u, u_input.a))), vec2<u32>(4294967295u, ~(u_input.a ^ u_input.a)), select(false, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10811u, 0u), vec2<u32>(21899u, 0u)), 10u)], !(true | arg_1.x)));
    var var_1 = select(min(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, abs(40611u)), ~(~19183u)), _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(var_0.x, u_input.a)), var_0.x)), ~firstLeadingBit(min(4215u, var_0.x)), !func_2(Struct_2(select(false, true, global0[_wgslsmith_index_u32(var_0.x, 10u)]), Struct_1(arg_2.x, 1u, vec3<u32>(0u, var_0.x, 0u)), ~vec4<i32>(arg_2.x, arg_3.x, arg_3.x, arg_3.x), func_3(vec3<i32>(arg_3.x, arg_3.x, 9883i)).x, arg_2), Struct_1(18464i, 1u, vec3<u32>(1u, 4294967295u, 39767u))).x);
    var var_2 = arg_0.x;
    let var_3 = abs(select(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.a, 11711u), vec3<u32>(u_input.a, var_0.x, var_0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(37538u, 0u, var_0.x), vec3<u32>(var_0.x, 4294967295u, 14065u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 107956u, u_input.a), vec3<u32>(20814u, u_input.a, u_input.a)) >> ((~vec3<u32>(72614u, u_input.a, u_input.a) << (firstTrailingBit(vec3<u32>(var_0.x, 1u, var_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), true));
    let var_4 = ~(~max(vec4<u32>(7305u, 8343u, 52772u, 0u) & (vec4<u32>(var_3.x, 0u, 0u, var_3.x) >> (vec4<u32>(1u, u_input.a, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_3.x, 0u, 46296u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 25116u, 49172u, u_input.a), vec4<u32>(u_input.a, var_0.x, u_input.a, u_input.a), vec4<u32>(63063u, u_input.a, u_input.a, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, 5642u, var_3.x), vec4<u32>(u_input.a, 0u, u_input.a, var_3.x)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(881f)))) + arg_0.x)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(374f, -861f), vec2<f32>(563f, -301f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, -1839f) + vec2<f32>(-851f, -633f)))))), !vec4<bool>(true, true, any(func_2(Struct_2(false, Struct_1(-1i, u_input.a, vec3<u32>(1u, arg_0.x, u_input.a)), vec4<i32>(1i, -25835i, -6462i, -2147483647i), global0[_wgslsmith_index_u32(arg_0.x, 10u)], vec4<i32>(-2147483647i, 0i, 0i, 0i)), Struct_1(2147483647i, 4717u, arg_0.zyw))), !(global0[_wgslsmith_index_u32(u_input.a, 10u)] == false)), reverseBits(-vec4<i32>(~14498i, _wgslsmith_sub_i32(-2147483647i, -14623i), -11893i, -39205i)), ~select(-vec2<i32>(1i, 1i), vec2<i32>(-14057i, 0i), func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 10u)], Struct_1(-58868i, u_input.a, arg_0.xwy), vec4<i32>(38124i, 2147483647i, 3722i, 51250i), true, vec4<i32>(-1i, -26467i, -18298i, -2147483647i)), Struct_1(-20229i, 28005u, arg_0.yyy)).xx)));
    global0 = array<bool, 10>();
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(46331i, -17280i, 2044i, -7484i)), -_wgslsmith_sub_i32(68453i, -1i)) & _wgslsmith_div_i32(~(~4078i), 1i), ~arg_0.x, max(abs(countOneBits(vec3<u32>(1u, u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(86673u << (arg_0.x % 32u), _wgslsmith_mod_u32(4294967295u, arg_0.x), u_input.a), arg_0.wzy)));
    var var_2 = func_2(Struct_2(true, var_1, -abs(vec4<i32>(var_1.a, -25173i, var_1.a, -33532i) & vec4<i32>(var_1.a, -90959i, var_1.a, var_1.a)), (var_1.a ^ -var_1.a) > var_1.a, ~select(~vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a), -vec4<i32>(var_1.a, var_1.a, var_1.a, 0i), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(13128u, 10u)], false, global0[_wgslsmith_index_u32(27429u, 10u)]))), var_1);
    let var_3 = Struct_2(!func_3(vec3<i32>(-2147483647i, var_1.a, var_1.a) & -vec3<i32>(var_1.a, var_1.a, -20051i)).x, Struct_1(12735i, arg_0.x >> (countOneBits(1u) % 32u), vec3<u32>(_wgslsmith_mult_u32(var_1.b, firstLeadingBit(66731u)), select(abs(4294967295u), 4294967295u, true), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, var_1.c.x, arg_0.x)), select(var_1.c, var_1.c, var_2.yxx)))), _wgslsmith_add_vec4_i32(-vec4<i32>(-var_1.a, var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a, -2147483647i, 27666i), vec4<i32>(-1i, -1i, -13622i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a, -731i, var_1.a), vec4<i32>(-8027i, 11894i, -1595i, var_1.a))), countOneBits(select(-vec4<i32>(var_1.a, var_1.a, 16641i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.a, -24400i, 0i), vec4<i32>(0i, var_1.a, -60976i, var_1.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(26588u, 6047u, u_input.a, arg_0.x)), 10u)]))), func_3(firstLeadingBit(-vec3<i32>(-11595i, 41811i, var_1.a))).x || !((var_1.a < -33776i) && all(vec4<bool>(global0[_wgslsmith_index_u32(34392u, 10u)], false, true, false))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_1.a, 0i, var_1.a) >> (vec4<u32>(arg_0.x, 1u, u_input.a, arg_0.x) % vec4<u32>(32u)), select(vec4<i32>(var_1.a, -2147483647i, -2147483647i, 1i), vec4<i32>(0i, 17280i, var_1.a, -1i), var_2.x)));
    return -3629i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(~reverseBits(-5297i), 24780i);
    var_0 = func_1(min(~vec4<u32>(1u, u_input.a, u_input.a, 36096u) & abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 19352u)), ~abs(vec4<u32>(0u, u_input.a, u_input.a, 16595u) << (vec4<u32>(u_input.a, 66823u, u_input.a, 69957u) % vec4<u32>(32u)))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(select(reverseBits(vec4<u32>(30990u, 13464u, 1u, 77838u)), vec4<u32>(1u, u_input.a, u_input.a, 2313u), true), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 72209u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true)) & reverseBits(_wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(1u, u_input.a, 29372u, 35965u))), vec4<u32>(select(4294967295u, 1u, false), _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_div_u32(0u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.x), var_1.zz), min(var_1.ww, var_1.yw)), ~vec2<u32>(87287u, 4294967295u), vec2<bool>(true, true))), ~(~var_1.yx), _wgslsmith_add_i32(1i, countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-41426i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(37221i, 47364i), vec2<i32>(-7076i, 46966i))))), vec3<f32>(260f, _wgslsmith_f_op_f32(trunc(-451f)), 1000f));
}

