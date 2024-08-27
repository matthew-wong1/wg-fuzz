struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(23940u, 4294967295u, 35011u, 13049u), vec4<u32>(1u, 0u, 0u, 1114u), vec4<u32>(4294967295u, 1u, 46780u, 4294967295u), vec4<u32>(10467u, 1u, 1u, 0u), vec4<u32>(10799u, 83513u, 1198u, 0u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(51080u, 0u, 64665u, 25561u), vec4<u32>(4294967295u, 0u, 1u, 8758u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(27190u, 15766u, 4294967295u, 18684u), vec4<u32>(4294967295u, 0u, 39410u, 46174u), vec4<u32>(4294967295u, 1u, 4294967295u, 68855u), vec4<u32>(0u, 26608u, 47356u, 59045u), vec4<u32>(1u, 1u, 1u, 17934u), vec4<u32>(23396u, 4294967295u, 1u, 0u), vec4<u32>(69787u, 67604u, 46795u, 1u), vec4<u32>(4294967295u, 87160u, 41529u, 27158u), vec4<u32>(33101u, 1u, 10889u, 1u), vec4<u32>(553u, 26360u, 4294967295u, 1u), vec4<u32>(4294967295u, 13947u, 68184u, 53978u));

var<private> global1: vec2<i32> = vec2<i32>(19117i, -38546i);

var<private> global2: u32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<u32>(~(~_wgslsmith_mult_u32(reverseBits(u_input.a), arg_0)), _wgslsmith_clamp_u32(0u, ~46632u, u_input.a), arg_0);
    let var_1 = abs(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(80742u, u_input.a, 4294967295u), var_0)) << (_wgslsmith_div_u32(u_input.a >> (u_input.a % 32u), 19444u) % 32u)) >> (~u_input.b % 32u);
    let var_2 = abs(min(~vec4<i32>(u_input.c, 1i, global1.x, global1.x) | vec4<i32>(-2147483647i, u_input.c, 26929i, -8698i), vec4<i32>(-global1.x, _wgslsmith_div_i32(global1.x, u_input.c), -18176i, 14092i))) >> (_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]) % vec4<u32>(32u));
    var var_3 = (4294967295u << (var_1 % 32u)) | ~((~0u << (var_1 % 32u)) | abs(countOneBits(arg_0)));
    var var_4 = _wgslsmith_add_vec4_i32(select(select(~max(vec4<i32>(global1.x, 51228i, u_input.c, 2147483647i), vec4<i32>(-1i, global1.x, global1.x, u_input.c)), vec4<i32>(u_input.c | global1.x, -55384i, u_input.c, abs(global1.x)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), var_2, arg_1.x), var_2);
    return Struct_3(false);
}

fn func_3() -> bool {
    let var_0 = countOneBits(min(_wgslsmith_sub_vec3_i32(~(vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(-28794i, u_input.c, global1.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.c, -25071i), ~vec3<i32>(global1.x, 53879i, global1.x))), ~(~vec3<i32>(u_input.c, global1.x, u_input.c))));
    global2 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(724f, 431f)))) - _wgslsmith_f_op_f32(1254f + 1537f));
    var var_2 = Struct_4(vec2<bool>(func_2(max(_wgslsmith_mult_u32(u_input.b, 53954u), _wgslsmith_dot_vec4_u32(vec4<u32>(48403u, 1u, 60426u, u_input.b), vec4<u32>(u_input.a, u_input.b, 1u, 27399u))), vec2<bool>(false, all(vec4<bool>(false, false, false, false)))).a, -1487f > _wgslsmith_f_op_f32(select(513f, _wgslsmith_f_op_f32(abs(var_1)), true))), Struct_2(Struct_1(!all(vec4<bool>(false, false, true, false)), reverseBits(firstLeadingBit(u_input.b)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(592f - 628f)) * var_1), Struct_1(any(vec4<bool>(true, true, true, false)), 4294967295u, vec2<bool>(true, true)), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), true), var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-935f + var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, var_1))), var_1))), Struct_2(Struct_1(true, firstLeadingBit(~u_input.b), !select(vec2<bool>(false, true), vec2<bool>(false, false), false)), _wgslsmith_f_op_f32(-var_1), Struct_1(true & (var_1 > 559f), ~_wgslsmith_add_u32(u_input.b, u_input.a), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), select(vec4<bool>(true, u_input.c > -23926i, all(vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), true), vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, false))));
    let var_3 = abs(_wgslsmith_add_i32(u_input.c, ~(-13005i))) | -43280i;
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> Struct_2 {
    global1 = -countOneBits(-(firstLeadingBit(vec2<i32>(-1i, 36792i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(-41766i, global1.x), vec2<i32>(global1.x, 2147483647i))));
    var var_0 = vec3<i32>(67384i, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.c), -u_input.c) | (vec2<i32>(-1i) * -vec2<i32>(-5507i, u_input.c)), vec2<i32>(global1.x, ~1i)), select(u_input.c, 0i, arg_1.e.e));
    var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(-15263i, var_0.x, var_0.x), abs(vec3<i32>(global1.x, var_0.x, u_input.c)), vec3<i32>(var_0.x, var_0.x, global1.x) | vec3<i32>(global1.x, var_0.x, -934i)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 36359i), vec3<i32>(u_input.c, global1.x, u_input.c)), vec3<i32>(26269i, global1.x, 1i)), -vec3<i32>(1i, 1i, -2147483647i))), vec3<i32>(_wgslsmith_sub_i32(u_input.c, max(-1i, min(1i, var_0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(13758i, global1.x), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(var_0.x, u_input.c)), -2147483647i, 30547i | u_input.c), -vec4<i32>(var_0.x, u_input.c, u_input.c, var_0.x) | (vec4<i32>(2147483647i, 5270i, global1.x, 2147483647i) ^ vec4<i32>(-3546i, var_0.x, u_input.c, global1.x))), -2147483647i));
    var var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(select(select(var_0.x, var_0.x, false), firstTrailingBit(u_input.c), arg_0.a), countOneBits(u_input.c)), -1i));
    var var_2 = _wgslsmith_f_op_f32(floor(774f));
    return Struct_2(Struct_1(!(min(arg_2, arg_1.e.c.b) > arg_2), 1u, vec2<bool>(true, !(!arg_0.a))), arg_1.d, Struct_1(arg_3, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_2, u_input.a), firstTrailingBit(vec3<u32>(0u, arg_1.e.c.b, u_input.a)))), !vec2<bool>(!arg_3, !arg_1.b.d.x)), select(!select(select(arg_1.e.d, arg_1.e.d, arg_1.b.d), arg_1.b.d, func_3()), select(!select(vec4<bool>(true, false, true, arg_1.e.a.c.x), vec4<bool>(false, true, true, false), arg_3), vec4<bool>(arg_3 && false, true, true, 20722u >= arg_1.e.a.b), !vec4<bool>(true, false, arg_1.a.x, arg_3)), true), !select(arg_3, arg_3, true) | arg_1.b.e);
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    global1 = arg_0.zy;
    let var_0 = func_4(func_2(0u, vec2<bool>(true, false)), Struct_4(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_3()), Struct_2(Struct_1(true, max(46295u, u_input.a), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1657f * 264f))), Struct_1(all(vec2<bool>(true, false)), ~1u, vec2<bool>(true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), -1000f, 272f, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-386f, -1012f)))), Struct_1(true, _wgslsmith_div_u32(u_input.a, 1u), vec2<bool>(true, true)), vec4<bool>(true, true, true, true), true)), u_input.b, true);
    global2 = min(_wgslsmith_mult_u32(~23122u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 76140u), ~vec2<u32>(var_0.a.b, 9062u))), min(~u_input.b, 1u));
    global2 = ~u_input.a;
    global2 = _wgslsmith_mult_u32(abs(min(1u, 25981u & var_0.a.b) ^ 0u), select(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(~var_0.a.b, u_input.a)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(19501u, var_0.a.b, var_0.a.b, 1u)), global0[_wgslsmith_index_u32(59779u, 20u)]), true));
    return select(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_0.a.b, var_0.c.b))), countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(6506u, u_input.b))), (max(arg_0.x, global1.x) > -global1.x) && true) & _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(12089u, 1u) << (vec2<u32>(u_input.a, var_0.c.b) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(var_0.c.b, var_0.a.b))), ~vec2<u32>(~var_0.c.b, ~0u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = !arg_1.b.d.x;
    let var_1 = arg_0;
    global1 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(abs(abs(vec2<i32>(global1.x, -22620i)))), ~(-select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global1.x, -15152i), true))), min(_wgslsmith_mod_i32(0i, max(~24155i, -u_input.c)), ~(-(~global1.x))));
    var var_2 = _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(round(1552f)));
    var var_3 = arg_1;
    return Struct_3(any(func_4(Struct_3(false), arg_1, arg_1.e.a.b, !arg_1.e.d.x).d.wzx) || ((arg_1.e.c.b | (12303u << (0u % 32u))) < arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.a) | vec2<u32>(27837u, u_input.a))), ~vec2<u32>(u_input.a, _wgslsmith_sub_u32(u_input.b, 13658u)), ~max(func_1(vec4<i32>(global1.x, 113827i, 32986i, 0i)), select(vec2<u32>(0u, 6272u), vec2<u32>(u_input.a, u_input.a), true))), Struct_4(select(vec2<bool>(select(false, false, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), func_4(func_2(~u_input.b, vec2<bool>(true, true)), Struct_4(vec2<bool>(true, true), func_4(Struct_3(false), Struct_4(vec2<bool>(false, true), Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, false)), 1328f, Struct_1(false, u_input.a, vec2<bool>(false, false)), vec4<bool>(true, false, true, true), false), -461f, -959f, Struct_2(Struct_1(false, u_input.b, vec2<bool>(false, false)), -2473f, Struct_1(true, u_input.a, vec2<bool>(false, true)), vec4<bool>(false, false, true, true), false)), 0u, true), -914f, _wgslsmith_f_op_f32(sign(199f)), func_4(Struct_3(true), Struct_4(vec2<bool>(false, true), Struct_2(Struct_1(true, 22293u, vec2<bool>(true, false)), -282f, Struct_1(false, 4294967295u, vec2<bool>(true, false)), vec4<bool>(true, true, false, true), true), 1036f, 280f, Struct_2(Struct_1(false, 2971u, vec2<bool>(false, false)), -570f, Struct_1(false, u_input.b, vec2<bool>(true, true)), vec4<bool>(false, true, true, false), false)), u_input.b, true)), firstTrailingBit(38719u), true), -408f, 1f, Struct_2(Struct_1(true, countOneBits(4294967295u), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 644f))), Struct_1(true, u_input.a, vec2<bool>(true, true)), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 1u), ~countOneBits(_wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a), vec2<f32>(func_4(Struct_3(false), Struct_4(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(Struct_1(false, u_input.a, vec2<bool>(true, false)), -733f, Struct_1(true, u_input.b, vec2<bool>(true, false)), vec4<bool>(true, true, true, true), true), -850f, 1404f, func_4(Struct_3(true), Struct_4(vec2<bool>(true, true), Struct_2(Struct_1(false, 1u, vec2<bool>(false, false)), -715f, Struct_1(true, u_input.b, vec2<bool>(true, false)), vec4<bool>(true, true, true, true), true), -867f, -345f, Struct_2(Struct_1(true, 3900u, vec2<bool>(true, false)), -406f, Struct_1(true, u_input.b, vec2<bool>(true, true)), vec4<bool>(true, false, true, true), false)), 1u, false)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 3825u, 32000u, 76015u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), any(vec4<bool>(true, true, true, true))).b, -825f));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -560f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(~u_input.a ^ u_input.a, 20u)])), ~(u_input.b ^ _wgslsmith_mult_u32(1u << (u_input.a % 32u), 1u)), u_input.a);
}

