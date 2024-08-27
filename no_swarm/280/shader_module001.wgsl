struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(any(vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), all(vec3<bool>(true, false, true)) | true)), _wgslsmith_sub_i32(abs(u_input.b.x), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 7394i, u_input.b.x), select(vec4<i32>(u_input.b.x, 14320i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, -15867i, u_input.b.x, -2147483647i), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-932f)), _wgslsmith_f_op_f32(-1277f - 442f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(921f, -825f), vec2<f32>(822f, 867f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1922f, -259f), vec2<f32>(580f, 346f)))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec2<bool>(true, false))))))), Struct_1(-16082i, -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(41912i, u_input.b.x, u_input.b.x))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), u_input.a >= u_input.a)), firstTrailingBit(i32(-1i) * -1i)));
    let var_1 = Struct_1(0i, vec3<i32>(countOneBits(_wgslsmith_mod_i32(var_0.b, var_0.b) >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), 1i << (u_input.a % 32u), _wgslsmith_div_i32(-1i, abs(_wgslsmith_mod_i32(-1i, -2147483647i)))), true, -31902i);
    let var_2 = Struct_1(_wgslsmith_div_i32(abs(var_1.b.x), _wgslsmith_clamp_i32(reverseBits(0i), var_0.d.d, 0i >> (u_input.a % 32u)) ^ u_input.b.x), vec3<i32>(_wgslsmith_add_i32(1i, var_0.d.b.x), 1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(0i, -2147483647i), _wgslsmith_div_i32(-8723i, var_1.d))) ^ var_1.b, !(!(var_1.c || var_1.c)), var_1.d);
    let var_3 = var_2;
    var var_4 = Struct_2(true, var_1.d, _wgslsmith_f_op_vec2_f32(max(var_0.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-124f - 164f), _wgslsmith_f_op_f32(-522f * var_0.c.x)))))), var_2);
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(var_4.b, ~_wgslsmith_sub_i32(-36146i, 22378i))), firstLeadingBit(_wgslsmith_add_i32(2147483647i, -22036i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(max(-2147483647i, var_3.d), _wgslsmith_mod_i32(var_0.d.a, -2147483647i), 35863i), var_4.d.b));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = vec3<i32>(u_input.b.x, u_input.b.x, func_3());
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(-53178i, u_input.b.x);
    var var_2 = vec4<bool>((var_0.x != var_0.x) | select(false, -11005i <= var_0.x, all(vec3<bool>(true, true, true)) | true), false, !any(vec3<bool>(true, true, true)), !(!(~u_input.a >= (arg_0 << (u_input.a % 32u)))));
    let var_3 = vec2<u32>(min(24943u, _wgslsmith_mult_u32(0u, arg_0)), ~u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(6372u, u_input.a, 13422u) ^ vec3<u32>(arg_0, 29540u, arg_0)) % 32u)) ^ vec2<u32>(firstLeadingBit(4294967295u) | u_input.a, 47381u);
    var_0 = _wgslsmith_mod_vec3_i32(firstTrailingBit(-(vec3<i32>(-42908i, -7222i, 10068i) & vec3<i32>(26241i, u_input.b.x, 1i))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 25456i, -36198i), vec3<i32>(u_input.b.x, var_0.x, var_0.x))) | _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-1i, 1i, 0i)), -vec3<i32>(var_0.x, 26485i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i))) >> (_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(var_3.x, 1u, 4294967295u) >> (vec3<u32>(26345u, arg_0, 1u) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0, 48917u, arg_0)), ~(~vec3<u32>(u_input.a, 36081u, var_3.x))), select(~vec3<u32>(arg_0, u_input.a, arg_0), vec3<u32>(0u, 4294967295u, 0u) << (vec3<u32>(1u, 62595u, arg_0) % vec3<u32>(32u)), var_2.ywx) >> ((~vec3<u32>(26036u, arg_0, arg_0) << (_wgslsmith_div_vec3_u32(vec3<u32>(25284u, 60255u, var_3.x), vec3<u32>(u_input.a, var_3.x, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_3(Struct_2(select(all(select(var_2.wz, var_2.zz, var_2.x)), true, true), var_1.x, arg_1.xy, Struct_1(u_input.b.x, ~(-vec3<i32>(19732i, var_0.x, var_0.x)), var_2.x, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1))), vec3<i32>(u_input.b.x, min(_wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(-1i, var_1.x)), abs(var_1.x)), _wgslsmith_mult_i32(0i, abs(-2147483647i))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(func_2(u_input.a, arg_1.b).a.d, _wgslsmith_f_op_f32(abs(3234f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x)))), 248f)));
    let var_1 = func_2(~(~1u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(426f))), _wgslsmith_f_op_f32(abs(1f)), -1490f, var_0.b))));
    var var_2 = !select(!select(select(vec2<bool>(var_1.a.a, false), vec2<bool>(false, true), arg_1.a.a), vec2<bool>(false, false), vec2<bool>(true, var_0.a.c)), select(select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_1.a.a), arg_0), vec2<bool>(arg_0, true), var_1.a.d.c && false), select(select(vec2<bool>(arg_1.a.d.c, true), vec2<bool>(true, true), false), vec2<bool>(var_0.a.c, var_0.a.c), select(vec2<bool>(arg_0, true), vec2<bool>(arg_1.a.a, false), vec2<bool>(false, arg_1.a.d.c))), arg_0), !select(vec2<bool>(true, true), vec2<bool>(var_1.a.a, arg_0), !var_1.a.a));
    let var_3 = func_2(4294967295u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(912f, var_0.c, -535f, var_0.c), vec4<f32>(1000f, var_1.a.c.x, 961f, arg_1.a.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, var_0.b, 1549f, var_0.c)))))));
    var_2 = select(select(vec2<bool>(var_3.a.d.c, any(!vec4<bool>(false, false, false, var_0.a.c))), select(vec2<bool>(arg_1.a.d.c, arg_0), select(vec2<bool>(arg_0, var_0.a.c), !vec2<bool>(var_3.a.d.c, false), false), vec2<bool>(!arg_0, !var_2.x)), !vec2<bool>(var_3.a.d.c, true)), !(!select(!vec2<bool>(var_1.a.a, false), vec2<bool>(arg_0, var_3.a.d.c), false & var_1.a.a)), true);
    return Struct_4(Struct_1(27697i, vec3<i32>(min(min(21174i, arg_1.c.x), -19256i), ~var_3.c.x, -6050i), arg_1.a.d.c, -(20232i | u_input.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(642f * -3270f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1374f, -904f)) - _wgslsmith_f_op_f32(abs(var_3.a.c.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(step(var_1.b.x, var_3.b.x))))))), var_3.a.c.x);
}

fn func_5(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = 7750u;
    let var_1 = func_4(!(!(select(false, arg_0.a.c, true) | arg_0.a.c)), func_2(~1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_0.b, arg_0.c, 135f), vec4<f32>(arg_0.c, -136f, arg_0.b, 634f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1647f, arg_0.b, -279f, -1000f) + vec4<f32>(arg_0.c, arg_0.c, 450f, arg_0.b))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -534f, arg_0.b, -1000f) + vec4<f32>(576f, -1118f, 751f, 437f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 687f, 1000f, arg_0.c))))));
    var_0 = u_input.a;
    var var_2 = var_1.a.c;
    let var_3 = vec4<bool>(var_1.a.c, all(!select(vec3<bool>(arg_0.a.c, true, var_1.a.c), vec3<bool>(true, var_1.a.c, true), any(vec2<bool>(false, var_1.a.c)))), all(!(!vec4<bool>(var_1.a.c, true, arg_0.a.c, arg_0.a.c))) || var_1.a.c, !all(vec2<bool>(false, var_1.a.c)));
    return arg_0.a.b;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(1474u, 0u);
    var var_1 = ~(vec4<u32>(2014u, ~(~0u), ~_wgslsmith_sub_u32(u_input.a, 73796u), u_input.a) | (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_0, var_0), vec4<u32>(51499u, 35525u, var_0, u_input.a), vec4<u32>(var_0, u_input.a, 4294967295u, 4294967295u)) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(60906u, u_input.a, var_0, var_0), vec4<u32>(var_0, 0u, 51925u, u_input.a)) << (~vec4<u32>(var_0, u_input.a, 0u, u_input.a) % vec4<u32>(32u)))));
    var_1 = reverseBits(vec4<u32>(var_0, firstTrailingBit(1u), 10834u, 34053u));
    let var_2 = func_5(func_4(-216f == _wgslsmith_f_op_f32(trunc(-260f)), func_2(_wgslsmith_mod_u32(u_input.a >> (4294967295u % 32u), var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1081f, arg_1.c, arg_1.b, arg_1.c))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c, arg_2.x, arg_2.x, -326f), vec4<f32>(arg_2.x, arg_2.x, 1283f, 171f))))));
    var var_3 = true;
    return Struct_3(Struct_2(true, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, 1i), arg_1.a.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1797f, 583f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) + arg_2)), vec2<f32>(-1157f, -1682f))), func_4(!arg_0, func_2(_wgslsmith_mult_u32(var_1.x, 11887u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_1.c, 1000f, arg_1.b) + vec4<f32>(431f, arg_2.x, arg_2.x, arg_2.x)))).a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1104f + arg_2.x))) - _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(468f - 1042f))), -1097f, -1568f, arg_1.b), var_2);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_mult_i32(-21430i, _wgslsmith_mod_i32(max(0i, arg_0.c.x), u_input.b.x)), -(~vec3<i32>(-20661i, -1i, -18921i)), select(all(select(vec4<bool>(arg_0.a.d.c, arg_0.a.d.c, arg_0.a.a, false), vec4<bool>(arg_0.a.d.c, false, arg_0.a.d.c, false), arg_0.a.a)), !(!arg_0.a.a), arg_0.a.a), _wgslsmith_dot_vec3_i32((arg_0.a.d.b ^ vec3<i32>(-37546i, u_input.b.x, 0i)) >> (select(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 28966u), vec3<bool>(arg_0.a.d.c, false, arg_0.a.d.c)) % vec3<u32>(32u)), ~(~vec3<i32>(-2147483647i, 2147483647i, u_input.b.x)))), -160f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x) * arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.a.c.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(true, Struct_4(Struct_1(1i, vec3<i32>(u_input.b.x, var_0.a.a, 1i), var_0.a.c, 2147483647i), var_0.b, var_0.c), vec2<f32>(472f, -1755f), arg_0.a.d).a.c.x) * -946f)) + var_0.c);
    let var_2 = Struct_4(func_1(false, func_4(true, Struct_3(arg_0.a, arg_0.b, -vec3<i32>(u_input.b.x, 1i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(arg_0.a.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, 408f) - vec2<f32>(-1250f, var_0.b)))), Struct_1(var_0.a.d, arg_0.a.d.b, !var_0.a.c, countOneBits(func_3()))).a.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.c.x, arg_0.a.c.x)) + arg_0.b.x) - _wgslsmith_div_f32(1000f, -980f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.c.x)) * _wgslsmith_f_op_f32(-var_0.c))), var_0.b));
    var var_3 = arg_0;
    var var_4 = func_1(true, Struct_4(Struct_1(-5252i, var_2.a.b, func_1(true, var_0, var_3.a.c, func_2(0u, var_3.b).a.d).a.a, ~min(62824i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) + _wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(340f + var_3.a.c.x))), var_2.c), vec2<f32>(505f, -1336f), Struct_1(var_0.a.a, func_1(all(vec3<bool>(true, false, var_0.a.c)), func_4(var_0.a.c, Struct_3(arg_0.a, arg_0.b, vec3<i32>(arg_0.a.d.b.x, u_input.b.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(var_3.b.wy * _wgslsmith_f_op_vec2_f32(round(arg_0.b.xy))), func_2(_wgslsmith_sub_u32(56629u, u_input.a), _wgslsmith_div_vec4_f32(arg_0.b, vec4<f32>(164f, -798f, arg_0.a.c.x, 1394f))).a.d).a.d.b, func_4(false, Struct_3(Struct_2(var_2.a.c, 2147483647i, vec2<f32>(var_1, arg_0.a.c.x), var_3.a.d), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -836f, var_0.b, -280f), vec4<f32>(var_3.a.c.x, var_3.a.c.x, var_1, 1240f)), vec3<i32>(u_input.b.x, var_0.a.d, var_2.a.b.x))).a.c, -9734i)).a.a;
    return func_2(~(~abs(u_input.a)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(-12969i, reverseBits(~(~vec3<i32>(2147483647i, u_input.b.x, -2147483647i))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-552f, _wgslsmith_f_op_f32(-510f + 513f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f)))), -712f);
    var var_1 = func_6(func_1(true, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, -257f))), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.a.d, -44168i), var_0.a.b), -var_0.a.b.x), (vec3<i32>(-14778i, 2147483647i, var_0.a.a) >> (vec3<u32>(u_input.a, 29350u, u_input.a) % vec3<u32>(32u))) & min(var_0.a.b, vec3<i32>(u_input.b.x, u_input.b.x, var_0.a.b.x)), any(vec3<bool>(var_0.a.c, true, false)), var_0.a.a >> (select(3727u, 2793u, var_0.a.c) % 32u))));
    var var_2 = var_0.a;
    var_2 = func_6(Struct_3(func_1(var_2.c, Struct_4(func_2(1u, vec4<f32>(var_1.b.x, -1312f, -903f, 1000f)).a.d, _wgslsmith_f_op_f32(-var_1.b.x), var_1.a.c.x), _wgslsmith_f_op_vec2_f32(floor(var_1.a.c)), var_0.a).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_div_f32(var_1.a.c.x, 145f), _wgslsmith_f_op_f32(1000f - var_1.b.x), _wgslsmith_f_op_f32(min(-328f, var_1.b.x)))), var_0.a.b)).a.d;
    var_1 = func_1(u_input.a <= ~u_input.a, Struct_4(var_1.a.d, _wgslsmith_f_op_f32(535f - _wgslsmith_f_op_f32(step(-759f, _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1273f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c)))), Struct_1(var_0.a.a ^ ~(var_2.d ^ -22112i), var_0.a.b, var_1.a.d.c, var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f * _wgslsmith_div_f32(-1893f, var_0.b)) + _wgslsmith_f_op_f32(ceil(1173f))), _wgslsmith_f_op_f32(trunc(2255f)), _wgslsmith_dot_vec4_i32(max(abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 23062i, var_2.b.x), vec4<i32>(21217i, var_0.a.d, var_1.c.x, u_input.b.x))), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.b.x, -2147483647i, var_2.d, 2147483647i), vec4<i32>(58312i, -51117i, -6242i, -31975i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(~var_2.b.yz, var_1.c.xx), _wgslsmith_sub_i32(-2147483647i, -1i), -1i, 2758i)));
}

