struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(!(!any(vec4<bool>(false, false, arg_0.a, true))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -37108i, u_input.a, u_input.a), vec4<i32>(0i, arg_1, u_input.a, -31803i)) < arg_1, _wgslsmith_clamp_u32(1u, 0u, 7322u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(17901u, arg_2), vec2<u32>(arg_2, arg_0.d)), true)), arg_0.d, 1u, Struct_2(all(select(!vec4<bool>(true, arg_0.a, arg_0.a, false), select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(false, true, arg_0.a, true), arg_0.a), false)), arg_0.a));
    var var_1 = !arg_0.a;
    let var_2 = -2285f;
    let var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(~vec3<i32>(firstLeadingBit(arg_1), abs(arg_1), 0i)), -vec3<i32>(2147483647i, _wgslsmith_mod_i32(u_input.a, arg_1), countOneBits(_wgslsmith_add_i32(arg_1, 16121i))), vec3<i32>(-28005i, arg_1, min(~_wgslsmith_mod_i32(u_input.a, u_input.a), arg_1)));
    var_1 = any(select(vec4<bool>(arg_0.a, any(vec3<bool>(arg_0.a, true, true)) | !arg_0.a, var_0.d.b, arg_0.a), !(!select(vec4<bool>(false, false, var_0.a.a, var_0.a.b), vec4<bool>(var_0.a.a, arg_0.a, true, var_0.d.b), vec4<bool>(arg_0.a, false, var_0.d.a, false))), 1596f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * -395f) + var_2)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(select(firstTrailingBit(reverseBits(vec4<u32>(4294967295u, arg_0.d, 4294967295u, arg_0.d))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.c, var_0.c, var_0.b), select(vec4<u32>(18701u, var_0.b, 35618u, arg_0.d), vec4<u32>(67233u, arg_2, arg_0.d, 4294967295u), vec4<bool>(true, false, true, var_0.a.a))), select(select(vec4<bool>(true, false, arg_0.a, var_0.a.b), vec4<bool>(var_0.a.b, false, true, true), arg_0.a), select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(true, false, var_0.d.a, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, arg_0.a), true))), max(~(~vec4<u32>(arg_0.d, 38633u, arg_2, 16681u)), ~vec4<u32>(arg_0.d, arg_0.d, var_0.b, arg_2))), vec4<u32>(_wgslsmith_add_u32(1u, 8003u), arg_0.d, 1u, abs(~(arg_2 | 0u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_4) -> f32 {
    return -392f;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(select(true, all(vec4<bool>(true, true, true, false)) && !all(vec2<bool>(true, false)), all(vec2<bool>(true, true)) != true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -134f, 2815f, -1133f)))), any(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -760f, 507f), vec4<f32>(arg_0, arg_0, 1043f, arg_0), false))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-580f, arg_0, 1000f, arg_0))))), arg_0, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(func_4(~vec2<u32>(var_0.d, var_0.d | 4137u), vec2<bool>(true, true), Struct_4(func_3(Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(sign(177f)), var_0.d), -18792i, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(15623u, var_0.d)), firstLeadingBit(vec2<u32>(var_0.d, 1u)))), !all(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), true)), arg_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, 369f, -771f, var_0.b.x)))))));
    var_0 = Struct_1(!(!var_0.a | !any(vec3<bool>(var_0.a, false, var_0.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(926f, var_0.b.x, -715f, var_0.c))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -221f, var_0.c, arg_0), vec4<f32>(arg_0, var_0.c, 883f, 604f), var_0.a))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1131f, var_0.b.x, -568f, var_0.b.x), _wgslsmith_f_op_vec4_f32(-var_0.b)))), _wgslsmith_f_op_vec4_f32(-var_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), 189f)))))), 51408u);
    let var_2 = Struct_2(!(~reverseBits(4294967295u) >= var_0.d), ~reverseBits(min(var_0.d, 1u)) >= 1u);
    var var_3 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_2.b, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a)), vec2<bool>(var_2.a, false)))), var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 211f), 445f))), var_0.d);
    return Struct_4(countOneBits(~vec4<u32>(var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_3.d, var_3.d), vec3<u32>(var_3.d, var_3.d, 21377u)), ~0u, countOneBits(var_3.d))), (true == (any(vec2<bool>(var_2.b, false)) == true)) | all(select(!vec3<bool>(true, true, var_0.a), !vec3<bool>(true, true, var_0.a), select(vec3<bool>(false, var_2.a, var_2.b), vec3<bool>(var_0.a, var_3.a, var_2.b), vec3<bool>(var_0.a, false, var_2.a)))), u_input.a, var_3.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-func_2(2239f, _wgslsmith_mult_vec2_i32(arg_3.zz, arg_3.yz), arg_3.x, countOneBits(vec3<i32>(arg_0.c, arg_0.c, arg_3.x))).d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1461f), _wgslsmith_f_op_f32(f32(-1f) * -675f), -473f, -495f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x)))), 519f)), 112075u & arg_0.a.x);
    var var_1 = func_2(-441f, arg_3.xz, 2147483647i, ~vec3<i32>(arg_0.c, _wgslsmith_mod_i32(32526i, -15639i), -19007i));
    var_0 = Struct_1(true, var_1.d, _wgslsmith_f_op_f32(func_4(func_3(Struct_1(arg_0.b, arg_0.d, 386f, func_3(Struct_1(true, arg_0.d, 1517f, var_0.d), 12899i, 4294967295u).x), 0i, ~1u).wz, select(vec2<bool>(all(vec3<bool>(true, var_0.a, arg_2.d.a)), false), vec2<bool>(165f > var_1.d.x, !arg_2.a.a), true), Struct_4(var_1.a, !arg_0.b, ~arg_3.x, vec4<f32>(1000f, -1008f, var_0.b.x, var_0.b.x)))), ~var_0.d);
    let var_2 = Struct_2(true, all(!(!vec3<bool>(false, true, arg_2.d.b))));
    var var_3 = Struct_3(arg_1, 53585u, var_1.a.x, Struct_2(0i < -(~arg_3.x), arg_0.b));
    return Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.d))) + _wgslsmith_f_op_vec4_f32(-var_1.d)) * vec4<f32>(func_2(-1059f, vec2<i32>(arg_3.x, 0i), _wgslsmith_clamp_i32(-1i, -38915i, var_1.c), vec3<i32>(4089i, 1i, -25586i)).d.x, _wgslsmith_f_op_f32(ceil(-1000f)), arg_0.d.x, _wgslsmith_f_op_f32(-func_2(var_1.d.x, arg_3.zy, -2147483647i, vec3<i32>(var_1.c, u_input.a, -12216i)).d.x))), _wgslsmith_f_op_f32(round(var_0.c)), 47394u);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit((abs(vec3<u32>(28758u, arg_2.d, arg_0.d)) ^ (vec3<u32>(arg_2.d, 60743u, 6239u) ^ vec3<u32>(arg_2.d, 1u, arg_2.d))) << (~(~vec3<u32>(arg_2.d, 4294967295u, 1u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(func_2(_wgslsmith_f_op_f32(arg_2.c - arg_0.b.x), vec2<i32>(u_input.a, 1i), ~1i, vec3<i32>(u_input.a, u_input.a, u_input.a)).a.yzx, max(vec3<u32>(arg_2.d, 4294967295u, 4294967295u), vec3<u32>(arg_0.d, ~arg_2.d, arg_0.d | 1u))));
    var var_1 = select(vec4<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, u_input.a, 1i, -11887i) | vec4<i32>(u_input.a, -501i, -2131i, -10962i)) << (func_3(arg_2, u_input.a, arg_0.d) % vec4<u32>(32u)), abs(countOneBits(vec4<i32>(u_input.a, -8649i, -3190i, 2147483647i)))), _wgslsmith_clamp_i32(-(~(-26493i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~u_input.a), -2147483647i), func_2(-701f, firstTrailingBit(-vec2<i32>(2147483647i, -2147483647i)), -9645i, max(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(u_input.a, u_input.a, 33006i))).c, -1i), ~(~(~select(vec4<i32>(-25034i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_2.a, true, arg_0.a, false)))), vec4<bool>(func_2(_wgslsmith_f_op_f32(func_4(vec2<u32>(arg_0.d, var_0.x), vec2<bool>(false, arg_0.a), func_2(-1821f, vec2<i32>(6516i, 0i), 16179i, vec3<i32>(u_input.a, u_input.a, u_input.a)))), select(vec2<i32>(u_input.a, 22761i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), all(vec3<bool>(arg_0.a, true, true))), u_input.a << (0u % 32u), vec3<i32>(4642i, _wgslsmith_clamp_i32(0i, -49819i, 2147483647i), 1i)).b, true, true, false));
    let var_2 = ~14688i;
    var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(-_wgslsmith_add_i32(-89731i, var_2), var_1.x)), ~u_input.a, -(~var_2), _wgslsmith_add_i32(1232i, firstLeadingBit(-(~1i))));
    let var_3 = all(!select(!vec4<bool>(true, arg_0.a, true, arg_0.a), select(!vec4<bool>(false, arg_0.a, false, arg_2.a), select(vec4<bool>(arg_2.a, false, arg_0.a, arg_2.a), vec4<bool>(arg_0.a, false, false, false), vec4<bool>(false, arg_0.a, true, true)), arg_2.a), arg_0.a));
    return func_2(1583f, vec2<i32>(-var_1.x, u_input.a), reverseBits(var_1.x), ~vec3<i32>(_wgslsmith_mult_i32(var_1.x << (var_0.x % 32u), var_1.x | var_1.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.x, 33824i), u_input.a), -37526i));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<u32>(~(~1u), abs(0u));
    return func_6(func_5(func_2(1f, -firstLeadingBit(vec2<i32>(u_input.a, 1i)), 1i, ~(-vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_2(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), select(true, select(true, true, true), true)), Struct_3(Struct_2(true, false), _wgslsmith_mult_u32(var_0.x << (var_0.x % 32u), 34516u), 0u, Struct_2(true, true)), vec3<i32>(func_2(-503f, -vec2<i32>(u_input.a, u_input.a), u_input.a, abs(vec3<i32>(2147483647i, u_input.a, u_input.a))).c, u_input.a, ~(-2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(545f, -1872f), -233f, -1000f)), func_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -787f), abs(vec2<i32>(29960i, -23358i)) | vec2<i32>(u_input.a, 2147483647i), -u_input.a << (func_2(-557f, vec2<i32>(-39703i, -2147483647i), u_input.a, vec3<i32>(-1i, u_input.a, -2147483647i)).a.x % 32u), vec3<i32>(u_input.a, u_input.a, -1872i) & ~vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -265f), firstLeadingBit(vec2<i32>(8161i, u_input.a)), 1i, vec3<i32>(31182i, 0i, 9063i)).b, true), Struct_3(Struct_2(all(vec2<bool>(false, true)), false), ~var_0.x, abs(0u), Struct_2(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)))), -vec3<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a, -1i), u_input.a)));
}

fn func_7(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    return Struct_3(Struct_2(arg_2.d.x < _wgslsmith_f_op_f32(exp2(func_5(arg_0, Struct_2(false, arg_2.b), Struct_3(Struct_2(false, arg_0.b), arg_0.a.x, arg_0.a.x, Struct_2(arg_0.b, arg_2.b)), vec3<i32>(1i, -1i, -1i)).b.x)), func_1().c >= (_wgslsmith_sub_i32(u_input.a, 25273i) & -arg_0.c)), 1352u, 5594u, Struct_2(any(!select(vec4<bool>(true, false, arg_0.b, true), vec4<bool>(arg_2.b, false, arg_0.b, true), vec4<bool>(false, false, false, false))), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_7(func_1(), _wgslsmith_f_op_f32(abs(-151f)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(221f, 131f)))), -firstLeadingBit(vec2<i32>(u_input.a, -1i)), -u_input.a, countOneBits(abs(vec3<i32>(29365i, u_input.a, u_input.a))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_2 = func_2(-116f, ~vec2<i32>(-firstLeadingBit(-1i), -_wgslsmith_sub_i32(u_input.a, 2147483647i)), reverseBits(-1i) >> (~(~var_1.b) % 32u), _wgslsmith_div_vec3_i32(-vec3<i32>(460i, min(1i, u_input.a), _wgslsmith_clamp_i32(-21444i, -2147483647i, -1i)), vec3<i32>(_wgslsmith_add_i32(-1i, ~1i), u_input.a, ~(-39599i))));
    let var_3 = _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 26247u, 1u, 52987u), _wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(7788u, var_2.a.x, 9103u, 50155u))), var_2.a.x), ~(1u >> (_wgslsmith_div_u32(var_1.c, var_1.c) % 32u)), ~var_2.a.x, 1u >> (~4294967295u % 32u)));
    var var_4 = abs(0i);
    var_4 = firstTrailingBit(u_input.a);
    var var_5 = func_2(var_2.d.x, vec2<i32>(min(var_2.c, -47129i) >> (_wgslsmith_mod_u32(2673u, 1u) % 32u), var_2.c) & max(vec2<i32>(~u_input.a, 9562i), select(~vec2<i32>(var_2.c, u_input.a), vec2<i32>(-1i, var_2.c), vec2<bool>(var_1.d.a, false))), func_1().c, _wgslsmith_mult_vec3_i32(min(-select(vec3<i32>(-20709i, 1i, u_input.a), vec3<i32>(-49715i, var_2.c, u_input.a), vec3<bool>(var_2.b, var_2.b, true)), vec3<i32>(~57504i, -13808i, 2147483647i)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, var_2.c, -2147483647i), vec3<i32>(var_2.c, 43478i, var_2.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 6215i), vec3<i32>(u_input.a, 68435i, -20258i), vec3<i32>(15527i, -1i, -21254i))) << (~vec3<u32>(0u, 8454u, 1u) % vec3<u32>(32u))));
    let var_6 = countOneBits(vec3<i32>(-43650i, ~var_2.c, reverseBits(-(~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

