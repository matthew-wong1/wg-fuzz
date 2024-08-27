struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 11970u, 2670u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global0 = min(vec3<u32>(_wgslsmith_mult_u32(arg_0.x ^ arg_0.x, ~53383u), arg_1.x, u_input.c) ^ (max(vec3<u32>(4294967295u, global0.x, global0.x), u_input.b) ^ ~vec3<u32>(4159u, arg_1.x, u_input.c)), arg_1.yxy);
    global0 = arg_1.yyz;
    var var_0 = ~u_input.a;
    var_0 = _wgslsmith_sub_i32(-25741i, u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1733f, 1357f, -339f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, 1000f, -554f))))));
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(-u_input.a, arg_2.b, 15426i ^ u_input.a, countOneBits(arg_2.b)), ~vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), 2147483647i, _wgslsmith_mult_i32(arg_2.b, -1i), -arg_2.b)) | 2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = countOneBits(select(~(global0.x & ~global0.x), abs(abs(~global0.x)), true));
    var var_1 = Struct_2(Struct_1(true, abs(_wgslsmith_mult_i32(func_3(vec4<u32>(u_input.c, global0.x, 0u, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, global0.x, 0u), arg_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(19333i, 20620i, u_input.a, arg_0.a.b), vec4<i32>(-26156i, arg_0.c.b, 11804i, u_input.a)))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.a.c, arg_0.a.c), ~reverseBits(vec3<i32>(-2147483647i, -26388i, -1i)))), u_input.a, Struct_1(arg_0.a.a == ((false | arg_0.c.a) & true), arg_0.a.b, arg_0.c.c), vec2<i32>(max(_wgslsmith_mult_i32(_wgslsmith_add_i32(-24317i, arg_0.d.x), u_input.a), ~_wgslsmith_mod_i32(arg_0.b, arg_0.a.b)), countOneBits(21993i) & arg_0.d.x));
    var var_2 = -select(vec3<i32>(reverseBits(u_input.a), arg_0.b, 27160i) >> (u_input.b % vec3<u32>(32u)), arg_0.c.c, var_1.c.a);
    var var_3 = !select(any(select(select(vec3<bool>(false, false, arg_0.a.a), vec3<bool>(var_1.a.a, true, var_1.c.a), vec3<bool>(arg_0.c.a, false, true)), !vec3<bool>(false, false, arg_0.a.a), !vec3<bool>(false, var_1.a.a, arg_0.c.a))), any(select(select(vec2<bool>(arg_0.a.a, false), vec2<bool>(false, arg_0.c.a), vec2<bool>(true, false)), vec2<bool>(arg_0.a.a, true), !vec2<bool>(arg_0.c.a, true))), 1i == var_2.x);
    var var_4 = Struct_2(Struct_1(true, u_input.a, -(abs(vec3<i32>(u_input.a, 0i, 0i)) | var_1.a.c)), var_1.c.b, var_1.c, vec2<i32>(arg_0.a.b ^ -_wgslsmith_dot_vec3_i32(arg_0.c.c, arg_0.a.c), -_wgslsmith_dot_vec3_i32(-var_1.c.c, select(vec3<i32>(u_input.a, u_input.a, -3422i), vec3<i32>(35438i, 87543i, u_input.a), var_1.c.a))));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + -1000f), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_1))))) >= _wgslsmith_f_op_f32(exp2(arg_1)), min(abs(~(-1i)), arg_0.d.x), vec3<i32>(-2147483647i, reverseBits(-31269i ^ (var_2.x >> (11134u % 32u))), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.a.c.x, -4308i), -18761i, -2147483647i), -u_input.a)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = u_input.b;
    let var_0 = Struct_2(func_2(Struct_2(arg_0.a, -2943i, arg_0.a, -arg_0.a.c.zy), -817f), -1i, arg_0.c, _wgslsmith_sub_vec2_i32(~(select(vec2<i32>(arg_0.a.c.x, u_input.a), vec2<i32>(arg_0.b, 36856i), true) << (~vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u))), -vec2<i32>(_wgslsmith_clamp_i32(0i, arg_0.b, 50954i), 0i)));
    let var_1 = var_0.a.a;
    global0 = vec3<u32>(countOneBits(1u), ~u_input.b.x, ~reverseBits(1u) << (u_input.c % 32u));
    let var_2 = global0.yx;
    return Struct_1(true, 1i, arg_0.c.c);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = abs(~18641i);
    let var_1 = u_input.b.x;
    var var_2 = abs(u_input.a);
    var_0 = firstLeadingBit(abs(1i));
    let var_3 = _wgslsmith_div_u32(~1u, 3202u) & (((var_1 << (firstTrailingBit(1u) % 32u)) << (4294967295u % 32u)) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.b.x), vec2<u32>(global0.x, u_input.c)));
    return select(!select(vec3<bool>(arg_2.a || arg_1, true, true), !vec3<bool>(false, arg_1, true), select(vec3<bool>(false, arg_1, false), select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(true, false, false), vec3<bool>(true, true, arg_1)), arg_1 | false)), select(!vec3<bool>(true, var_1 > 70119u, any(vec4<bool>(arg_2.a, arg_1, false, false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, arg_1, arg_2.a), vec3<bool>(true, arg_2.a, arg_1))), !vec3<bool>(arg_0 > arg_0, !arg_2.a, true)), true);
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec3<u32>(0u, 41027u, 4294967295u) & vec3<u32>(abs(75618u), global0.x & ~_wgslsmith_add_u32(u_input.c, global0.x), ~_wgslsmith_mod_u32(1u, u_input.b.x));
    let var_1 = Struct_2(Struct_1(!any(vec2<bool>(arg_3.a, arg_3.a)), arg_2.a.b & ~_wgslsmith_add_i32(11217i, 4237i), _wgslsmith_mod_vec3_i32(reverseBits(reverseBits(vec3<i32>(29041i, 2147483647i, arg_3.b))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(6832i, u_input.a), vec2<i32>(arg_3.c.x, -1i)), i32(-1i) * -33108i, 1i))), -arg_3.c.x, Struct_1(func_2(Struct_2(Struct_1(false, 16511i, arg_3.c), u_input.a, Struct_1(arg_3.a, u_input.a, arg_2.c.c), vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -554f)).a | select(any(vec3<bool>(false, arg_2.a.a, true)), true, arg_2.a.a), arg_2.c.b, arg_3.c), vec2<i32>(select(u_input.a, ~abs(71754i), select(true, arg_0.x, arg_0.x) & (global0.x != 26801u)), arg_3.c.x));
    let var_2 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(func_3(vec4<u32>(41750u, 44651u, 0u, u_input.c) >> (vec4<u32>(4294967295u, 1u, arg_1, 27933u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(66300u, 2056u, 1u, 60972u), vec4<u32>(4294967295u, 4294967295u, 87025u, 107316u), vec4<u32>(46007u, 4294967295u, 17055u, arg_1)), Struct_1(arg_0.x, var_1.c.c.x, vec3<i32>(u_input.a, -9096i, 0i))), -var_1.b, -2147483647i, ~(-1i)), _wgslsmith_add_vec4_i32(-min(vec4<i32>(-29630i, -1i, arg_2.b, -29739i), vec4<i32>(var_1.a.c.x, 2147483647i, 7208i, arg_2.a.b)), abs(firstLeadingBit(vec4<i32>(-33062i, 50247i, 0i, 1i))))));
    var var_3 = -295f;
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(0u ^ var_0.x), u_input.b.x, arg_1, _wgslsmith_sub_u32(var_0.x, ~u_input.b.x)), ~(~vec4<u32>(32044u, global0.x, arg_1, global0.x))), 49226u, ~(~_wgslsmith_dot_vec3_u32(abs(var_0), firstTrailingBit(vec3<u32>(u_input.c, 23753u, 78148u)))));
    return Struct_2(Struct_1(true, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -2147483647i), -(~vec2<i32>(10779i, -51453i))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.d, var_1.a.c.yx), -13226i | var_1.a.b, arg_3.b | u_input.a)), arg_2.d.x, arg_2.a, min(arg_3.c.zz, _wgslsmith_sub_vec2_i32(~var_1.a.c.yz, -vec2<i32>(-2147483647i, arg_3.c.x)) ^ arg_3.c.yy));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> u32 {
    global0 = ~(~u_input.b);
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(round(-347f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f), arg_0.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1430f))), func_4(Struct_2(func_2(Struct_2(Struct_1(true, -28916i, vec3<i32>(31535i, u_input.a, -12787i)), 2147483647i, Struct_1(false, u_input.a, vec3<i32>(u_input.a, u_input.a, 0i)), vec2<i32>(-1i, u_input.a)), -999f), i32(-1i) * -48000i, Struct_1(false, u_input.a, vec3<i32>(1i, u_input.a, u_input.a)), max(vec2<i32>(-36025i, -49675i), vec2<i32>(u_input.a, 0i))))), _wgslsmith_mod_u32(arg_1.x, reverseBits(70976u)), Struct_2(Struct_1(all(vec2<bool>(true, false)), -_wgslsmith_clamp_i32(2147483647i, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a ^ u_input.a)), ~(-(u_input.a << (arg_1.x % 32u))), Struct_1(true, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.a, 25609i, 17105i), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) << (arg_1 % vec4<u32>(32u))), vec3<i32>(31013i, u_input.a, 1i)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, u_input.a)), vec2<i32>(u_input.a, -1i)), firstTrailingBit(-vec2<i32>(u_input.a, u_input.a)))), func_4(Struct_2(Struct_1(true, ~41990i, vec3<i32>(u_input.a, 0i, 0i) ^ vec3<i32>(1i, u_input.a, -24453i)), ~0i, Struct_1(any(vec3<bool>(false, true, true)), -2147483647i, select(vec3<i32>(u_input.a, -17584i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a), false)), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.a), u_input.a))));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(2250i, countOneBits(var_0.a.b)), var_0.d.x);
    var_0 = func_6(!select(select(select(vec3<bool>(var_0.c.a, var_0.a.a, var_0.a.a), vec3<bool>(true, var_0.a.a, true), false), select(vec3<bool>(true, false, true), vec3<bool>(var_0.c.a, var_0.a.a, var_0.c.a), vec3<bool>(var_0.a.a, false, true)), any(vec4<bool>(var_0.c.a, var_0.a.a, var_0.c.a, var_0.c.a))), select(select(vec3<bool>(var_0.c.a, false, var_0.c.a), vec3<bool>(true, var_0.a.a, true), vec3<bool>(var_0.c.a, var_0.a.a, var_0.a.a)), !vec3<bool>(var_0.c.a, true, true), !vec3<bool>(var_0.c.a, var_0.a.a, false)), var_0.a.a), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global0.x), arg_1.zw), _wgslsmith_sub_u32(u_input.c, 667u))), ~global0.x ^ select(arg_1.x, max(arg_1.x, 7276u), true), arg_1.x), func_6(func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.x, -307f)))), var_0.c.a, Struct_1(var_0.a.a, var_0.c.b, select(vec3<i32>(-12695i, 0i, var_1.x), vec3<i32>(u_input.a, var_0.d.x, 0i), var_0.c.a))), arg_1.x, func_6(select(!vec3<bool>(true, var_0.a.a, var_0.c.a), select(vec3<bool>(false, false, var_0.c.a), vec3<bool>(var_0.a.a, var_0.c.a, var_0.a.a), true), select(vec3<bool>(false, var_0.a.a, var_0.c.a), vec3<bool>(false, var_0.a.a, true), true)), ~u_input.b.x, func_6(vec3<bool>(var_0.c.a, false, var_0.a.a), _wgslsmith_mod_u32(72756u, 1u), func_6(vec3<bool>(var_0.c.a, true, false), global0.x, Struct_2(Struct_1(true, var_0.d.x, vec3<i32>(u_input.a, u_input.a, -1i)), -7258i, Struct_1(var_0.c.a, var_0.a.c.x, vec3<i32>(var_0.b, var_0.d.x, var_0.a.b)), vec2<i32>(var_1.x, var_0.b)), var_0.a), Struct_1(var_0.c.a, 12437i, vec3<i32>(u_input.a, -40966i, var_0.a.c.x))), var_0.a), var_0.c), func_6(select(!func_5(-932f, false, var_0.a), !vec3<bool>(var_0.c.a, var_0.a.a, var_0.a.a), var_0.a.a), _wgslsmith_dot_vec4_u32(arg_1, ~arg_1), func_6(vec3<bool>(true, true, true), 1u, Struct_2(var_0.a, ~25143i, func_4(Struct_2(Struct_1(var_0.a.a, var_0.c.b, vec3<i32>(u_input.a, 36894i, -1i)), var_0.c.b, var_0.a, var_1)), var_1), func_6(func_5(arg_0.x, var_0.a.a, Struct_1(false, u_input.a, vec3<i32>(0i, 28660i, u_input.a))), _wgslsmith_mult_u32(2057u, u_input.b.x), Struct_2(Struct_1(var_0.a.a, u_input.a, vec3<i32>(var_0.b, 5366i, var_1.x)), -2147483647i, var_0.c, vec2<i32>(5632i, u_input.a)), func_6(vec3<bool>(false, false, var_0.a.a), 1u, Struct_2(var_0.a, u_input.a, var_0.c, vec2<i32>(7927i, u_input.a)), var_0.c).a).a), var_0.c).c);
    global0 = abs(_wgslsmith_clamp_vec3_u32(u_input.b, ~(_wgslsmith_mult_vec3_u32(arg_1.yyz, u_input.b) >> (_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.c, 0u)) % vec3<u32>(32u))), ~min(vec3<u32>(43765u, global0.x, 56820u), vec3<u32>(125888u, 1u, 0u))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = var_0;
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~47375u, ~0u), global0.x), global0.x ^ 0u, select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, 1824f, -1000f, 239f)), ~reverseBits(vec4<u32>(12847u, u_input.b.x, global0.x, global0.x))), _wgslsmith_add_u32(abs(global0.x), global0.x), all(func_5(482f, true, Struct_1(false, -1i, vec3<i32>(u_input.a, -2147483647i, 33242i))).xz) && !(u_input.a != -14162i)), global0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(func_1(vec4<f32>(-1506f, 575f, -434f, 1115f), vec4<u32>(4294967295u, global0.x, 4294967295u, u_input.b.x)), 33602u), abs(global0.xx)));
    let var_3 = reverseBits(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(42907i, -17563i, 0i) >> (vec3<u32>(var_2.x, 46382u, var_2.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -23440i)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(224f, 444f, 1257f, 1618f) + vec4<f32>(1034f, 741f, -1122f, -880f))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, global0.x, var_2.x, 0u), vec4<u32>(4294967295u, 32476u, var_2.x, 1u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1038f)))))), var_3.zy, vec4<u32>(u_input.c, ~u_input.c, abs(max(select(var_2.x, 104888u, var_0), 0u)), abs(global0.x)));
}

