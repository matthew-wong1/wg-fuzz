struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(31727u, 1u, vec2<i32>(0i, -10348i)), Struct_1(0u, 29793u, vec2<i32>(i32(-2147483648), 0i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = -1i >= u_input.a;
    global0 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(select(min(vec2<i32>(arg_1.c.x, u_input.a), arg_1.c), _wgslsmith_mult_vec2_i32(arg_1.c, vec2<i32>(12294i, arg_1.c.x)), vec2<bool>(false, var_0)), _wgslsmith_add_vec2_i32(~arg_1.c, _wgslsmith_mod_vec2_i32(arg_1.c, arg_1.c))) & _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_1.c.x), vec2<i32>(arg_1.c.x, 1i))), abs(vec2<i32>(-14015i, -2147483647i) & arg_1.c)), vec2<i32>(select(arg_1.c.x, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, 1i), arg_1.c)), true), 34254i));
    var var_2 = Struct_1(74687u, 23788u, _wgslsmith_mult_vec2_i32(-arg_1.c, (_wgslsmith_sub_vec2_i32(arg_1.c, var_1) & ~vec2<i32>(arg_1.c.x, -1i)) & vec2<i32>(_wgslsmith_mult_i32(u_input.a, arg_1.c.x), firstTrailingBit(arg_1.c.x))));
    var var_3 = 9115i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1815f, 335f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1198f, 431f), vec2<f32>(-368f, -575f)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, _wgslsmith_sub_u32(arg_0.x, arg_0.x)), vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, 75741u)), ~4431u), arg_0.x));
    let var_1 = !select(!(1u > var_0.x), false || any(vec4<bool>(true, true, true, true)), all(vec2<bool>(any(vec3<bool>(false, false, true)), true)));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1044f, -537f), vec2<f32>(798f, 229f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-397f, 268f)), 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1588f, 214f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-335f, 426f), _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(0u, var_0.x, arg_0.x), global0[_wgslsmith_index_u32(1u, 2u)]))))));
    let var_4 = select(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_1 | 0i, countOneBits(-1i), u_input.a), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_1, arg_1, -60205i, -5670i)), ~vec4<i32>(arg_1, arg_2, arg_2, -17771i))), vec4<i32>(arg_2, 1i ^ _wgslsmith_mod_i32(arg_1, -2147483647i), 1i, -(i32(-1i) * -2147483647i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -1i, u_input.a, u_input.a), -vec4<i32>(arg_2, arg_2, -40255i, arg_1)) ^ vec4<i32>(-2147483647i, 64015i, reverseBits(-2147483647i), arg_1), all(!select(select(vec4<bool>(false, false, true, var_1), vec4<bool>(true, false, var_1, var_1), var_1), vec4<bool>(var_1, false, var_1, var_1), any(vec3<bool>(var_1, false, true)))));
    return var_4.yx;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(arg_0.a), _wgslsmith_sub_u32(19745u, arg_0.a));
    let var_1 = firstTrailingBit(~vec4<u32>(max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(20842u, arg_0.a, 31577u, arg_0.b), vec4<u32>(arg_0.a, 1u, 53715u, 37628u))), 1u, _wgslsmith_add_u32(~32760u, select(4294967295u, 1u, false)), ~0u));
    var var_2 = select(-1i, u_input.a, true & all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true))) >= u_input.a;
    var var_3 = select(var_1, (_wgslsmith_add_vec4_u32(~vec4<u32>(30293u, 0u, arg_0.b, var_1.x), ~vec4<u32>(arg_0.a, 4294967295u, 0u, var_1.x)) << ((var_1 & vec4<u32>(11818u, arg_0.a, var_1.x, 82256u)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(var_1, ~max(vec4<u32>(51737u, 40793u, arg_0.a, 29312u), vec4<u32>(var_1.x, arg_0.a, 16323u, arg_0.a)), vec4<u32>(0u, 4294967295u << (arg_0.b % 32u), ~0u, ~arg_0.b)) % vec4<u32>(32u)), true);
    let var_4 = vec4<bool>(false & all(vec3<bool>(all(vec2<bool>(true, false)), false, true)), any(!vec4<bool>(any(vec4<bool>(false, false, false, false)), select(true, false, true), true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, select(true, true, true)), all(vec3<bool>(false, true, true)))), false);
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1959f * -661f), _wgslsmith_f_op_f32(abs(-637f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -142f), 1000f)))), _wgslsmith_f_op_f32(round(-929f)), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-268f, -412f, -1040f))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(260f, -654f, -651f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !(!select(vec4<bool>(true, true, true, false), vec4<bool>(u_input.a >= 0i, true, any(vec4<bool>(false, true, false, true)), true), vec4<bool>(true, true, true, true)));
    var var_1 = arg_1;
    let var_2 = var_1.c;
    var var_3 = Struct_1(firstTrailingBit(1u), ~4294967295u, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(arg_1.c.x), var_2.x), i32(-1i) * -arg_1.c.x), -countOneBits(var_2.x) | u_input.a));
    var_3 = global0[_wgslsmith_index_u32(~(~var_3.b << (_wgslsmith_div_u32((var_3.a | 4294967295u) << ((8413u << (arg_1.b % 32u)) % 32u), var_3.b) % 32u)), 2u)];
    return Struct_1(var_3.b, 1u, arg_1.c);
}

fn func_1() -> bool {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(1u, ~reverseBits(61371u), -func_2(vec2<u32>(96288u, 1u), -1i, u_input.a)))), Struct_1(13071u, 1u, -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-47630i, -34693i), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(68589i, 0i))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_clamp_u32(max(var_0.a, countOneBits(4294967295u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 69791u, 4294967295u, 0u), vec4<u32>(var_0.a, var_0.b, var_0.a, var_0.a))), var_0.a)), min(4294967295u, var_0.a | _wgslsmith_mult_u32(1u, 1u)), min(vec2<i32>(_wgslsmith_div_i32(1i, ~var_0.c.x), min(countOneBits(u_input.a), 1i)), ~(~(~var_0.c))));
    global0 = array<Struct_1, 2>();
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1823f, 230f, -991f)) * vec3<f32>(1000f, 2439f, -419f)))), select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))))), func_5(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(851f)))), -1313f, _wgslsmith_f_op_vec3_f32(func_4(func_5(vec3<f32>(1070f, -267f, 1000f), Struct_1(var_0.a, 0u, var_1.c)))).x), Struct_1(var_1.b, var_0.a, _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, var_1.c.x), false), var_0.c))));
    let var_2 = min(-43913i, 1i);
    return !any(!vec2<bool>(any(vec3<bool>(false, true, false)), true));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec2<i32> {
    let var_0 = true;
    var var_1 = vec2<bool>(select(!var_0, all(vec3<bool>(!var_0, true, true)), !var_0), false);
    global0 = array<Struct_1, 2>();
    var_1 = vec2<bool>((true & (_wgslsmith_clamp_u32(4294967295u, 11678u, 27724u) < (4294967295u << (arg_2 % 32u)))) | var_0, !var_0);
    global0 = array<Struct_1, 2>();
    return -vec2<i32>(firstLeadingBit(u_input.a), firstLeadingBit(-10068i)) & -(arg_0.c | _wgslsmith_mod_vec2_i32(~arg_0.c, func_5(vec3<f32>(-857f, -1965f, 567f), Struct_1(4294967295u, 35292u, vec2<i32>(u_input.a, -2147483647i))).c));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_1;
    var var_1 = vec3<u32>(1u, var_0.a, 4294967295u);
    return any(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(~(~37401u), _wgslsmith_add_u32(1u, firstLeadingBit(1u)))) & _wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(13490u, 0u, 7301u, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(1u, ~23704u), 0u, ~0u, ~(20552u >> (0u % 32u)))), 2u)];
    var_0 = Struct_1(abs(var_0.a), ~(~4294967295u), ~vec2<i32>(~firstLeadingBit(var_0.c.x), -1i));
    var var_1 = var_0.c.x;
    let var_2 = func_7(global0[_wgslsmith_index_u32(313u, 2u)], Struct_1(~abs(var_0.b), abs(max(1u, var_0.b) & 17517u), func_6(global0[_wgslsmith_index_u32(~var_0.b, 2u)], select(func_1(), var_0.c.x > -2147483647i, true), ~(var_0.a & 1u))), vec3<f32>(_wgslsmith_f_op_f32(select(-230f, _wgslsmith_f_op_f32(f32(-1f) * -322f), true || all(vec2<bool>(true, true)))), -562f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1600f)), 1160f, any(vec3<bool>(false, true, true))))));
    var_1 = 44455i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~u_input.a, vec3<u32>(1u ^ _wgslsmith_add_u32(~21449u, firstTrailingBit(var_0.b)), var_0.b, ~1u), 1u, ~firstTrailingBit(vec2<u32>(var_0.b >> (1u % 32u), var_0.b)));
}

