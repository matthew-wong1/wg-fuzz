struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 122806u, 23793u), true, vec3<u32>(0u, 62200u, 1388u), 1090f, 333f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(abs(~vec3<u32>(~1u, ~u_input.b.x, 47837u)), !all(!vec3<bool>(global0.b, false, true)), vec3<u32>(u_input.b.x, ~(1u >> (0u % 32u)) | u_input.b.x, 1u ^ (countOneBits(0u) & global0.a.x)), global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)));
    var var_1 = Struct_2(Struct_1(var_0.a, false, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.c, 1u, var_0.c.x) >> (vec3<u32>(94343u, var_0.c.x, var_0.c.x) % vec3<u32>(32u))), countOneBits(max(vec3<u32>(global0.c.x, 1u, global0.a.x), vec3<u32>(var_0.a.x, 4914u, global0.c.x))), ~select(u_input.b.xxz, vec3<u32>(global0.a.x, 65374u, var_0.a.x), vec3<bool>(global0.b, true, true))), _wgslsmith_f_op_f32(global0.e * -797f), global0.d), !select(select(!vec4<bool>(false, var_0.b, false, global0.b), select(vec4<bool>(global0.b, false, var_0.b, var_0.b), vec4<bool>(global0.b, var_0.b, true, global0.b), false), select(true, false, true)), !select(vec4<bool>(global0.b, var_0.b, false, global0.b), vec4<bool>(global0.b, true, global0.b, var_0.b), var_0.b), vec4<bool>(any(vec2<bool>(true, global0.b)), all(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, global0.b)))));
    var_1 = Struct_2(Struct_1(firstLeadingBit(~vec3<u32>(1u, var_1.a.c.x, 97618u)), false, select(vec3<u32>(var_0.a.x, 4294967295u, global0.c.x), ~global0.c, false) << (abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, var_0.a.x), vec3<u32>(global0.c.x, global0.a.x, var_1.a.c.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-298f, var_0.e)) - 1000f), var_0.e, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.e, -1000f)))))), var_1.b);
    global0 = var_1.a;
    var var_2 = Struct_2(Struct_1(firstLeadingBit(max(abs(vec3<u32>(4294967295u, global0.a.x, u_input.c)), select(u_input.b.zxz, u_input.b.wzz, var_1.b.x))), true, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1.a.a.x, var_1.a.c.x, 4294967295u)), u_input.b.yzz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(var_1.b, select(select(vec4<bool>(var_0.b, global0.b, false, var_1.a.b), vec4<bool>(false, false, true, false), global0.b), !select(vec4<bool>(true, false, false, var_0.b), var_1.b, var_1.b), !vec4<bool>(false, true, var_1.a.b, var_1.b.x)), !(!select(vec4<bool>(false, true, var_1.a.b, false), var_1.b, var_1.b))));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<bool>(!(firstTrailingBit(29332u) <= 4294967295u) && !global0.b, true, func_3(), true);
    let var_1 = Struct_3(187f, global0.d, -_wgslsmith_mult_i32(~min(arg_2.x, arg_2.x), arg_2.x), ~arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3)))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_f32(exp2(arg_3)))));
    var var_2 = countOneBits(countOneBits(firstLeadingBit(~vec3<u32>(global0.a.x, 1u, arg_0.x)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(var_1.d, u_input.b.x, 0u))));
    let var_3 = 1u;
    var var_4 = global0.e;
    return Struct_1(~(~(u_input.b.xzw ^ u_input.b.wzx) >> (global0.a % vec3<u32>(32u))), func_3(), _wgslsmith_sub_vec3_u32(vec3<u32>(16006u, 62717u, ~global0.c.x >> (4294967295u % 32u)), global0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(f32(-1f) * -935f)))), _wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(-global0.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec3<u32>(reverseBits(_wgslsmith_sub_u32(global0.c.x << (19826u % 32u), arg_0.a.x >> (17426u % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(arg_0.a.x, arg_0.a.x), u_input.b.x), ~vec2<u32>(arg_0.a.x, 1u)), arg_0.a.x), true, vec3<u32>(~u_input.c, ~(~global0.a.x), ~(~_wgslsmith_mult_u32(arg_0.c.x, arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.e);
    var var_0 = Struct_2(Struct_1(~vec3<u32>(arg_0.c.x ^ 4294967295u, arg_0.c.x >> (u_input.a % 32u), firstLeadingBit(arg_0.a.x)), true, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, global0.c.x, 3463u), vec3<u32>(u_input.b.x, arg_0.a.x, 4294967295u), vec3<u32>(1u, 0u, global0.c.x)), 509f, _wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1453f, 649f)))))), select(!select(vec4<bool>(true, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, true, global0.b, arg_0.b), true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b, (arg_0.b && false) || true, true, global0.b)));
    let var_1 = Struct_2(arg_0, !(!vec4<bool>(any(vec2<bool>(var_0.b.x, true)), arg_0.b, global0.b & var_0.b.x, all(vec3<bool>(var_0.a.b, global0.b, false)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(round(func_2(u_input.b.xzz >> (vec3<u32>(global0.c.x, var_1.a.a.x, 1392u) % vec3<u32>(32u)), true, vec3<i32>(reverseBits(-2629i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(8955i, 18859i), vec2<i32>(35695i, 0i))), 1756f).d)), 647f, 1i, ~countOneBits(var_0.a.a.x >> (1u % 32u)), true);
    var var_3 = func_2(~(func_2(u_input.b.wzz, true, -vec3<i32>(-8077i, var_2.c, var_2.c), -1271f).c & vec3<u32>(var_2.d ^ 18238u, var_1.a.c.x, 75367u)), select(all(!var_1.b) && true, false, false), vec3<i32>(38593i, var_2.c, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, var_2.c, var_2.c)), max(vec3<i32>(var_2.c, 2147483647i, 37937i), vec3<i32>(-1i, var_2.c, var_2.c)) ^ -vec3<i32>(var_2.c, 31468i, 1i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e + var_1.a.d))));
    return func_2(firstTrailingBit(_wgslsmith_clamp_vec3_u32(global0.a << (vec3<u32>(u_input.a, 1688u, 5107u) % vec3<u32>(32u)), arg_0.c, _wgslsmith_clamp_vec3_u32(arg_0.c, ~var_1.a.c, ~u_input.b.yzw))), var_3.b, firstTrailingBit((vec3<i32>(var_2.c, var_2.c, -1i) | vec3<i32>(-28049i, -17821i, var_2.c)) << (global0.a % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_1.a.e));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = !(!arg_0.xw);
    var var_1 = arg_1;
    let var_2 = !all(arg_0.zwz);
    var_1 = arg_1;
    global0 = func_4(func_2(firstTrailingBit(var_1.c), global0.b, vec3<i32>(arg_2, -1i, select(arg_2, -39038i, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_1.d))) - var_1.d)));
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(0i, -1i), -2147483647i) >> (arg_1.a.x % 32u), _wgslsmith_clamp_i32(arg_2, -arg_2, abs(~(~(-23684i)))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(countOneBits(countOneBits(arg_2.a.c)), arg_1 | (-486f < _wgslsmith_f_op_f32(-arg_2.a.d)), arg_2.a.c, global0.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-729f, 935f))))))));
    global0 = func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.a.x, _wgslsmith_add_u32(4294967295u, global0.c.x) & _wgslsmith_div_u32(global0.c.x, 18048u), var_0.c.x), arg_2.a.a, _wgslsmith_add_vec3_u32(~(~global0.c), _wgslsmith_sub_vec3_u32(firstTrailingBit(var_0.a), arg_3 ^ vec3<u32>(arg_2.a.a.x, 4698u, 52471u)))), true, abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, -12751i, -61855i), max(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, arg_0, arg_0)))) | _wgslsmith_mult_vec3_i32(select(firstLeadingBit(vec3<i32>(2147483647i, -8458i, arg_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(-22032i, arg_0, 4234i), vec3<i32>(arg_0, arg_0, -49137i)), true), -(vec3<i32>(arg_0, arg_0, arg_0) << (var_0.a % vec3<u32>(32u)))), _wgslsmith_f_op_f32(floor(-468f)));
    let var_1 = -(~(-(~vec2<i32>(-5019i, 2147483647i))));
    global0 = Struct_1(~vec3<u32>(abs(~var_0.a.x), 0u, 1u), global0.b, _wgslsmith_add_vec3_u32(~vec3<u32>(~arg_3.x, max(38606u, 1u), 20004u), arg_2.a.a), arg_2.a.d, func_2(vec3<u32>(abs(abs(arg_3.x)), ~u_input.a, arg_2.a.c.x), func_4(arg_2.a).b, countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0, arg_0), vec3<i32>(2147483647i, arg_0, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e, -177f) * _wgslsmith_f_op_f32(select(arg_2.a.e, global0.e, true))))).d);
    var_0 = func_2(u_input.b.zxz, false, -vec3<i32>(~_wgslsmith_mod_i32(16627i, arg_0), arg_0, arg_0 >> (29601u % 32u)), _wgslsmith_f_op_f32(780f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - _wgslsmith_f_op_f32(-var_0.d)))));
    return Struct_1((~(~arg_3) >> (_wgslsmith_mult_vec3_u32(arg_3, min(vec3<u32>(var_0.c.x, 16283u, 49581u), vec3<u32>(var_0.c.x, u_input.b.x, arg_2.a.a.x))) % vec3<u32>(32u))) ^ vec3<u32>(min(_wgslsmith_add_u32(global0.a.x, u_input.b.x), 77990u >> (0u % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_2.a.c.x, 24661u), ~arg_2.a.c.x), ~(~global0.a.x)), func_4(arg_2.a).b, vec3<u32>(global0.c.x, (~9381u >> (~arg_3.x % 32u)) << (_wgslsmith_div_u32(u_input.a, 21194u) % 32u), firstLeadingBit(_wgslsmith_mult_u32(abs(3147u), ~global0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.d)), 2099f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(firstLeadingBit(-func_1(!vec4<bool>(global0.b, global0.b, global0.b, global0.b), Struct_1(u_input.b.xwy, global0.b, u_input.b.xzw, -735f, 1686f), 36451i >> (u_input.b.x % 32u))), func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(34162u, u_input.a, global0.c.x), global0.a), true, select(-vec3<i32>(-10443i, 1856i, 2147483647i) << (~vec3<u32>(u_input.c, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, -2147483647i, func_1(vec4<bool>(global0.b, global0.b, false, true), Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.c), true, global0.a, 257f, global0.d), -2147483647i)), !(!vec3<bool>(global0.b, true, false))), global0.d).b, Struct_2(func_2(func_2(vec3<u32>(0u, 7688u, 44344u), 46912u != global0.a.x, firstLeadingBit(vec3<i32>(-1i, -16427i, 0i)), _wgslsmith_f_op_f32(1149f * 242f)).c, all(!vec3<bool>(global0.b, false, true)), vec3<i32>(_wgslsmith_div_i32(1i, 1i), ~(-22843i), ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + global0.d))), select(!(!vec4<bool>(global0.b, global0.b, false, global0.b)), !vec4<bool>(global0.b, true, global0.b, false), !(!vec4<bool>(global0.b, global0.b, global0.b, global0.b)))), ~(~(~vec3<u32>(u_input.a, u_input.b.x, 26895u))) << (countOneBits(global0.a) % vec3<u32>(32u)));
    global0 = Struct_1(u_input.b.xxw, !(true | func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(13768i, 0i), vec2<i32>(29107i, -7191i)), var_0.d > -557f, Struct_2(Struct_1(var_0.c, true, u_input.b.yxy, var_0.e, -1033f), vec4<bool>(global0.b, var_0.b, false, global0.b)), vec3<u32>(var_0.a.x, u_input.b.x, 20124u)).b), vec3<u32>(global0.a.x | global0.c.x, 4294967295u, ~(~global0.a.x)), var_0.e, _wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(-global0.e))));
    var_0 = Struct_1(u_input.b.zzy, true, vec3<u32>(1u, _wgslsmith_mod_u32(reverseBits(abs(4134u)), ~select(1u, global0.a.x, global0.b)), reverseBits(~_wgslsmith_mult_u32(global0.c.x, 1u))), _wgslsmith_div_f32(global0.d, var_0.e), 1838f);
    global0 = Struct_1(vec3<u32>(~(~(~u_input.b.x)), 52578u, ~(~min(90877u, 0u))), false, vec3<u32>(1u, func_5(~1i, !(45100u <= u_input.c), Struct_2(func_2(vec3<u32>(global0.a.x, 43279u, global0.c.x), false, vec3<i32>(2147483647i, -25872i, 1i), global0.d), vec4<bool>(false, var_0.b, true, false)), vec3<u32>(0u, u_input.c, 0u)).a.x, ~u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-176f + 185f), 143f)), var_0.e);
    global0 = func_4(Struct_1(~var_0.a, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, global0.b), global0.b), !vec4<bool>(true, true, global0.b, false), 0u > u_input.c)), vec3<u32>(~(~u_input.a), 51140u, 0u ^ ~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-181f, 518f)), var_0.d, true)) - global0.d), global0.e));
    var var_1 = !vec2<bool>(true, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(global0.e, _wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.e)))) + _wgslsmith_f_op_f32(floor(global0.e))), global0.d, _wgslsmith_f_op_f32(func_2(func_5(2147483647i, global0.b, Struct_2(Struct_1(vec3<u32>(global0.c.x, 3171u, u_input.c), var_0.b, u_input.b.yyz, -579f, global0.e), vec4<bool>(var_1.x, false, var_1.x, true)), vec3<u32>(12623u, 8768u, u_input.a)).c, !var_0.b, abs(vec3<i32>(3583i, 29975i, 0i)), -552f).d * _wgslsmith_f_op_f32(-global0.e))), max(_wgslsmith_mult_i32(firstTrailingBit(abs(1i)), 1i), 2147483647i));
}

