struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 0u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> i32 {
    global0 = countOneBits(vec4<u32>(5139u >> ((29427u >> (u_input.a % 32u)) % 32u), global0.x, ~_wgslsmith_add_u32(global0.x, u_input.a), 58613u)) ^ ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, global0.x), vec4<u32>(14777u, u_input.a, global0.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(36848u, global0.x, global0.x, u_input.a), vec4<u32>(global0.x, 34145u, 0u, 28543u))), vec4<u32>(u_input.a, 0u, 0u, 0u) | ~vec4<u32>(1600u, global0.x, global0.x, 0u));
    var var_0 = Struct_2(Struct_1(-u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.www, vec3<f32>(-1000f, arg_1.x, arg_1.x))))), u_input.b.x, select(false, !arg_2.x, !arg_3.x == true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_1.x, arg_1.x, -2317f, 1056f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1))))));
    var var_1 = var_0.a;
    let var_2 = select(vec2<bool>(false, all(arg_2.wyz)), select(!(!(!arg_3)), vec2<bool>(any(!vec3<bool>(true, false, var_1.d)), true), select(select(false, true, arg_3.x) && all(vec3<bool>(var_0.a.d, false, true)), _wgslsmith_f_op_f32(-var_0.a.b.x) < var_0.a.e.x, false)), ~28678u < global0.x);
    let var_3 = u_input.a;
    return min(25695i, var_0.a.a.x);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_4(57969u, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23893u, 28356u) & global0.wzz, vec3<u32>(global0.x, 54763u, u_input.a) | global0.wxy), min(0u, _wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(global0.x, global0.x)))));
    let var_1 = arg_3.x;
    let var_2 = vec4<i32>(-2147483647i, -reverseBits(-4754i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-42632i, ~arg_1.x, ~(-18568i), func_3(vec4<i32>(-1i, arg_0, arg_2.a.c, arg_0), arg_2.a.e, vec4<bool>(arg_2.a.d, arg_3.x, false, false), vec2<bool>(true, arg_2.a.d)))), ~(~vec4<i32>(10118i, arg_2.a.a.x, 19565i, arg_2.a.c) << (abs(vec4<u32>(var_0.b.x, global0.x, var_0.a, 26601u)) % vec4<u32>(32u)))), 2147483647i);
    let var_3 = var_0;
    global0 = vec4<u32>(abs(0u), u_input.a, 0u, 0u >> ((~u_input.a << (1u % 32u)) % 32u));
    return ~(~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, global0.x, 16177u, global0.x) | vec4<u32>(51309u, 30144u, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, var_3.b.x, var_0.a), vec4<u32>(u_input.a, var_0.b.x, var_0.a, 47425u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32) -> Struct_2 {
    let var_0 = -1i;
    global0 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4765u, u_input.a, arg_2, arg_2), vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x))) >> (vec4<u32>(4294967295u | min(u_input.a, arg_2), u_input.a, _wgslsmith_mult_u32(min(global0.x, 4294967295u), arg_2), ~10631u) % vec4<u32>(32u)), ~(vec4<u32>(1u, ~arg_2, ~arg_2, firstTrailingBit(arg_2)) | func_4(func_3(vec4<i32>(var_0, u_input.d, 0i, 34586i), vec4<f32>(arg_0, 545f, arg_0, arg_0), vec4<bool>(true, true, true, false), vec2<bool>(false, false)), vec2<i32>(var_0, -1i) & vec2<i32>(0i, 19941i), Struct_2(Struct_1(vec2<i32>(arg_1, 1i), vec3<f32>(arg_0, -158f, arg_0), var_0, false, vec4<f32>(arg_0, arg_0, 106f, 111f))), select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    global0 = ~min(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_2, 37677u, u_input.a, 15753u)), vec4<u32>(arg_2 & 79540u, 4761u, arg_2 | 0u, 51869u ^ global0.x)), ~(~vec4<u32>(419u, global0.x, global0.x, 4294967295u)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(48375u, 1u, 4294967295u, arg_2), vec4<u32>(u_input.a, 0u, 51766u, 0u)) % vec4<u32>(32u)));
    var var_1 = Struct_3(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), any(vec2<bool>(true, true)), false), vec4<bool>(_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(trunc(-711f)), true | all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), false), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec2<bool>(true, false))))), 1229f, Struct_2(Struct_1(vec2<i32>(2147483647i, var_0) | vec2<i32>(u_input.b.x, 43175i), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -1428f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, -181f, -1466f))), 1i, true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))));
    let var_2 = var_1.c;
    return Struct_2(Struct_1(~vec2<i32>(var_0, func_3(vec4<i32>(19629i, 30941i, var_0, var_0), var_2.a.e, vec4<bool>(var_2.a.d, false, var_1.c.a.d, var_1.c.a.d), var_1.a.xx)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.e.x, var_1.b))))), var_2.a.a.x, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.a.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1261f, 1589f, -2509f, var_1.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1889f, 1000f, 432f, -1000f), vec4<f32>(489f, -922f, var_1.c.a.b.x, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 889f, arg_0, var_1.b) + vec4<f32>(var_2.a.b.x, -1837f, var_1.b, 1861f))))));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_5 {
    let var_0 = any(!vec3<bool>(true, !all(vec2<bool>(arg_1, arg_1)), any(vec2<bool>(false, true)) || any(vec3<bool>(true, true, false))));
    let var_1 = func_2(-1363f, _wgslsmith_sub_i32(2147483647i, min(_wgslsmith_clamp_i32(u_input.c >> (1u % 32u), -1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c) ^ vec2<i32>(u_input.d, 1i), vec2<i32>(2147483647i, u_input.b.x)))), _wgslsmith_mod_u32(u_input.a, arg_0 >> (3061u % 32u)));
    global0 = vec4<u32>(countOneBits(1u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18674u, max(0u, 0u), 42127u ^ arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0, 1u), vec4<u32>(u_input.a, u_input.a, arg_0, 0u) & vec4<u32>(1u, global0.x, global0.x, 1716u))), u_input.a) << (vec4<u32>(select(global0.x, u_input.a, arg_1) >> (abs(1u) % 32u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(40647u, u_input.a) | vec2<u32>(7899u, 30666u)), vec2<u32>(1u, firstLeadingBit(45838u))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 643u, u_input.a), ~global0.xzw)), arg_0) % vec4<u32>(32u));
    let var_2 = -vec3<i32>(_wgslsmith_div_i32(abs(countOneBits(2147483647i)), -506i), ~u_input.c, ~(~8331i));
    global0 = vec4<u32>(~abs(~global0.x), abs(~u_input.a), ~global0.x, ~(~0u | _wgslsmith_sub_u32(arg_0, 1u))) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(55610u, 0u, arg_0, u_input.a), vec4<u32>(3025u, 17018u, arg_0, 0u)), ~vec4<u32>(44564u, 4294967295u, arg_0, u_input.a)), vec4<u32>(abs(~0u), (u_input.a << (73122u % 32u)) >> (~0u % 32u), 9231u, ~arg_0 & 0u), vec4<u32>(0u, u_input.a, arg_0, ~5392u)) % vec4<u32>(32u));
    return Struct_5(global0.wzx, Struct_3(select(select(vec4<bool>(var_0, false, false, var_1.a.d), vec4<bool>(var_1.a.d, arg_1, arg_1, var_1.a.d), any(vec3<bool>(arg_1, var_1.a.d, false))), !(!vec4<bool>(var_0, true, arg_1, var_1.a.d)), select(!vec4<bool>(var_1.a.d, true, true, var_1.a.d), !vec4<bool>(false, false, false, var_0), select(vec4<bool>(false, var_0, false, false), vec4<bool>(arg_1, var_0, true, var_1.a.d), vec4<bool>(true, false, true, true)))), var_1.a.b.x, func_2(var_1.a.b.x, -1i, 48852u)), 1329f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.x, u_input.a, 0u) & vec4<u32>(27680u, 1u, 0u, 0u), select(vec4<u32>(4294967295u, 0u, 111898u, u_input.a), vec4<u32>(13025u, 30011u, 4294967295u, 1u), false)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, firstTrailingBit(42229u), ~4294967295u) % vec4<u32>(32u))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1323u, u_input.a, 33692u), vec4<u32>(u_input.a, 39166u, 12419u, 26214u))) << (vec4<u32>(1u, u_input.a, _wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(global0.x, 1u)), 23539u << (u_input.a % 32u)) % vec4<u32>(32u))));
    let var_0 = func_1(firstTrailingBit(_wgslsmith_clamp_u32(global0.x, u_input.a, u_input.a ^ 1u)), global0.x <= global0.x);
    var var_1 = func_1(57u, !func_1(u_input.a, all(!var_0.b.a)).b.a.x);
    var var_2 = func_1(u_input.a, (all(var_1.b.a.xz) | true) | false);
    var_2 = var_0;
    var var_3 = var_2.b;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))))), var_2.c);
    var var_5 = var_2.b.c.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-var_2.b.c.a.a, vec2<i32>(var_3.c.a.c >> (31592u % 32u), -52148i)), func_2(var_0.b.b, var_1.b.c.a.c, _wgslsmith_add_u32(var_1.a.x, ~0u)).a.a & var_1.b.c.a.a, var_2.b.c.a.c, 420f, -vec3<i32>(firstTrailingBit(~0i), _wgslsmith_dot_vec4_i32(vec4<i32>(480i, var_0.b.c.a.c, var_3.c.a.a.x, var_1.b.c.a.a.x), vec4<i32>(var_0.b.c.a.c, -34174i, var_2.b.c.a.a.x, 2715i)) ^ countOneBits(var_3.c.a.a.x), _wgslsmith_mult_i32(-8021i & var_3.c.a.a.x, ~u_input.b.x)));
}

