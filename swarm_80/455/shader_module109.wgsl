struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(-723f + 117f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-422f, 300f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1050f, -410f)), _wgslsmith_f_op_f32(-394f + -1548f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2233f * 408f), 1000f))), 165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1785f, -712f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b <= u_input.b, true, true), true), vec3<bool>(-30377i == _wgslsmith_add_i32(u_input.b, 8275i), true && select(true, true, false), true), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), countOneBits(u_input.a.x), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), -1836f), _wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)), select(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, -12446i), vec2<bool>(true, false))), 2147483647i), _wgslsmith_sub_vec3_i32(firstTrailingBit(countOneBits(vec3<i32>(u_input.b, 21752i, 30776i))), -abs(vec3<i32>(-2147483647i, 1i, -2147483647i))), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(209f, -530f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1165f, 1447f), vec2<f32>(458f, 606f))), vec2<i32>(reverseBits(u_input.b), -26708i), u_input.b >> (_wgslsmith_clamp_u32(arg_0.x, arg_0.x, u_input.a.x) % 32u)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 2147483647i, -3071i))), -(u_input.b | 38267i)), vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), 1i, u_input.b) << (vec3<u32>(abs(arg_0.x), 0u, ~arg_0.x) % vec3<u32>(32u))), Struct_2(Struct_1(vec3<bool>(true, -47587i < u_input.b, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(591f, -833f) - vec2<f32>(932f, -1676f))), ~(-vec2<i32>(u_input.b, 0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-40891i, u_input.b, -6539i, u_input.b), vec4<i32>(-2147483647i, u_input.b, -51131i, u_input.b)), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -1i, 2147483647i), reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)) & max(vec3<i32>(u_input.b, -29945i, 2147483647i), vec3<i32>(-23467i, -52701i, u_input.b))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-786f, -294f), vec2<f32>(368f, -524f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-246f, 459f), vec2<f32>(-661f, 352f), false))), vec2<i32>(0i, -2147483647i), 57767i), 0i, ~(-vec3<i32>(u_input.b, -5381i, 0i))));
    var var_1 = select(vec4<bool>(var_0.d.a.a.x, !var_0.e.a.a.x || var_0.e.a.a.x, true, any(!select(vec2<bool>(var_0.e.c.a.x, true), var_0.e.a.a.yz, var_0.b.xy))), !select(!select(vec4<bool>(true, var_0.e.c.a.x, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.e.c.a.x, var_0.d.c.a.x, var_0.e.a.a.x), vec4<bool>(true, var_0.d.c.a.x, false, var_0.d.a.a.x)), select(vec4<bool>(false, true, true, var_0.e.c.a.x), select(vec4<bool>(false, true, var_0.b.x, var_0.d.c.a.x), vec4<bool>(true, var_0.d.a.a.x, var_0.d.a.a.x, var_0.d.c.a.x), false), !var_0.e.c.a.x), _wgslsmith_mod_i32(u_input.b, -22586i) < _wgslsmith_sub_i32(u_input.b, var_0.e.d)), !(!vec4<bool>(select(false, false, var_0.b.x), true, true, any(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)))));
    var_1 = !vec4<bool>(!var_1.x, any(!vec4<bool>(var_0.e.a.a.x, false, var_1.x, var_1.x)), ~4294967295u != ~u_input.a.x, !var_0.e.c.a.x);
    let var_2 = Struct_3(Struct_2(Struct_1(vec3<bool>(false & var_0.b.x, !var_0.e.a.a.x, var_0.d.a.a.x), _wgslsmith_f_op_vec2_f32(var_0.d.c.b * _wgslsmith_f_op_vec2_f32(var_0.d.c.b * vec2<f32>(var_0.d.a.b.x, -1784f))), (vec2<i32>(40931i, 28420i) ^ var_0.d.a.c) & countOneBits(vec2<i32>(-38078i, 10464i)), -1i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, 9191i, 2147483647i)) & (vec3<i32>(33347i, -24032i, var_0.d.a.d) >> (vec3<u32>(arg_0.x, 39426u, u_input.a.x) % vec3<u32>(32u))), var_0.e.e << (max(arg_0, vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % vec3<u32>(32u))), var_0.d.a, u_input.b, vec3<i32>(-var_0.d.e.x, reverseBits(1i), _wgslsmith_div_i32(u_input.b, firstLeadingBit(u_input.b)))), true, _wgslsmith_div_i32(u_input.b, countOneBits(~var_0.e.e.x) | var_0.e.e.x), reverseBits(~select(max(9995u, 0u), _wgslsmith_mult_u32(4294967295u, arg_0.x), false)));
    var_1 = select(vec4<bool>(!(3989u > firstLeadingBit(u_input.a.x)), any(!vec3<bool>(true, true, var_1.x)), true, 28388i == _wgslsmith_sub_i32(~0i, u_input.b << (arg_0.x % 32u))), select(select(select(!vec4<bool>(var_1.x, false, var_0.e.c.a.x, true), vec4<bool>(true, var_0.e.a.a.x, var_0.e.a.a.x, var_2.b), false), select(!vec4<bool>(var_0.d.c.a.x, var_2.a.a.a.x, true, false), !vec4<bool>(var_0.b.x, var_0.e.c.a.x, var_2.b, var_0.b.x), select(vec4<bool>(var_0.d.c.a.x, false, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), false)), select(!var_0.e.c.a.x, select(false, var_0.e.c.a.x, true), var_2.b)), vec4<bool>(!var_1.x, false, var_1.x, true), true), vec4<bool>(!all(!vec3<bool>(var_2.a.c.a.x, var_0.d.c.a.x, true)), true, any(vec4<bool>(var_1.x && var_0.e.c.a.x, u_input.b >= 1i, var_1.x, var_2.a.c.a.x)), var_2.d >= var_0.c));
    return ~9751i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_div_f32(389f, 1378f)), -vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_i32(abs(20572i), u_input.b)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(6518i, -1i, u_input.b)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -21873i, -11415i), vec3<i32>(1330i, -75104i, u_input.b), vec3<i32>(2147483647i, 18213i, u_input.b))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-546f, 1000f), vec2<f32>(-328f, -211f), true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(374f, 548f))))), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), 17506i), 9479i >> (~u_input.a.x % 32u), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, -1i), -vec2<i32>(-16829i, u_input.b)), ~_wgslsmith_div_i32(31524i, u_input.b))), true == (func_3(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) >= 2147483647i), u_input.b, _wgslsmith_mod_u32(~u_input.a.x, 1u));
    var var_1 = var_0.a;
    var var_2 = Struct_1(select(select(var_1.a.a, !var_0.a.c.a, !(!vec3<bool>(false, var_0.a.c.a.x, var_0.b))), select(vec3<bool>(var_0.a.c.b.x >= -182f, true, true), vec3<bool>(any(vec3<bool>(var_1.c.a.x, true, var_0.a.c.a.x)), true, any(var_1.a.a.yx)), any(!vec4<bool>(var_0.a.c.a.x, true, var_0.b, true))), u_input.a.x >= (var_0.d << (1u % 32u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-630f, 1107f), vec2<f32>(var_1.a.b.x, var_0.a.c.b.x), vec2<bool>(var_0.a.a.a.x, false))), _wgslsmith_f_op_vec2_f32(-var_1.a.b))), _wgslsmith_f_op_vec2_f32(trunc(var_1.a.b))), var_1.a.b), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_mod_vec2_i32(~var_1.b.xy, min(vec2<i32>(var_0.c, u_input.b), vec2<i32>(u_input.b, u_input.b)))), -vec2<i32>(min(var_1.d, 25744i), _wgslsmith_div_i32(var_0.c, 81839i))), u_input.b | -countOneBits(_wgslsmith_dot_vec3_i32(var_1.b, var_0.a.e)));
    var_2 = var_1.a;
    let var_3 = false == any(select(select(!vec4<bool>(true, var_0.b, var_1.a.a.x, var_2.a.x), select(vec4<bool>(false, false, var_0.a.c.a.x, true), vec4<bool>(var_0.b, var_1.c.a.x, true, true), vec4<bool>(var_1.c.a.x, false, var_0.b, true)), true), vec4<bool>(!var_0.b, var_1.a.a.x, true, var_0.b), vec4<bool>(!var_1.c.a.x, false || var_1.a.a.x, true, true)));
    return Struct_1(vec3<bool>(true, true, _wgslsmith_mod_i32(var_0.a.b.x & var_2.d, abs(u_input.b)) < -var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(627f, 1560f), _wgslsmith_f_op_vec2_f32(var_1.c.b * vec2<f32>(var_1.c.b.x, var_0.a.c.b.x))), _wgslsmith_f_op_vec2_f32(abs(var_0.a.c.b))) - var_0.a.a.b), countOneBits(abs(var_1.b.zz ^ vec2<i32>(var_1.a.d, u_input.b)) >> (~vec2<u32>(31873u, u_input.a.x) % vec2<u32>(32u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -11493i, firstLeadingBit(u_input.b), ~var_1.e.x), vec4<i32>(u_input.b ^ 45455i, min(u_input.b, var_0.a.a.d), var_0.a.b.x, min(39244i, -32302i))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = vec4<bool>(func_2().a.x, arg_1, arg_1, arg_0.c == 1u);
    var var_2 = arg_0.d;
    var_1 = !(!vec4<bool>(select(true, true, arg_2.x < -1844i), select(var_1.x, arg_0.b.x, all(vec4<bool>(arg_0.b.x, true, arg_1, var_2.a.a.x))), true, any(vec2<bool>(arg_0.b.x, false))));
    let var_3 = abs(firstTrailingBit(1u) ^ (countOneBits(u_input.a.x) >> (0u % 32u)));
    return Struct_3(arg_0.e, 0u != var_3, _wgslsmith_add_i32(-1i, min(firstTrailingBit(var_0.c.x), ~firstTrailingBit(3292i))), _wgslsmith_mod_u32(abs(~1u), 1u));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    var var_0 = func_4(Struct_4(vec4<f32>(func_4(Struct_4(vec4<f32>(arg_0.a.a.b.x, -792f, arg_0.a.a.b.x, -867f), vec3<bool>(true, arg_0.b, true), arg_0.d, Struct_2(arg_0.a.a, vec3<i32>(u_input.b, -1i, arg_0.a.b.x), arg_0.a.c, arg_1, vec3<i32>(arg_0.a.a.d, u_input.b, -2147483647i)), Struct_2(arg_0.a.a, arg_0.a.b, arg_0.a.c, -3319i, arg_0.a.b)), arg_0.a.a.a.x, arg_0.a.b & arg_0.a.b).a.a.b.x, arg_0.a.c.b.x, -446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.b.x))), arg_0.a.c.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0.d, 14194u, arg_0.d) | ~vec4<u32>(52679u, u_input.a.x, u_input.a.x, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d, 0u, u_input.a.x, arg_0.d), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 7705u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), arg_0.a, func_4(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, 140f, 161f, -982f) + vec4<f32>(arg_0.a.c.b.x, arg_0.a.c.b.x, 420f, arg_0.a.c.b.x)), arg_0.a.a.a, ~arg_0.d, Struct_2(Struct_1(vec3<bool>(false, false, arg_0.b), arg_0.a.c.b, arg_0.a.e.zx, arg_1), arg_0.a.b, Struct_1(arg_0.a.a.a, vec2<f32>(295f, 964f), arg_0.a.e.xx, 4574i), 0i, arg_0.a.e), arg_0.a), false, ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 16966i, 5668i), vec3<i32>(arg_1, 9445i, -12145i))).a), arg_0.b, vec3<i32>(_wgslsmith_add_i32(-12332i, _wgslsmith_mult_i32(arg_0.a.b.x, ~arg_0.c)), 30123i, arg_1)).d;
    var var_1 = arg_1;
    var var_2 = ~u_input.b;
    var_2 = _wgslsmith_mod_i32(arg_1, -1i);
    let var_3 = arg_0.a;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.c.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_3.c.b.x)), -1546f))))), vec2<f32>(_wgslsmith_f_op_f32(max(-980f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.b.x + arg_0.a.a.b.x)))), _wgslsmith_f_op_f32(arg_0.a.c.b.x - 1405f)), vec2<bool>(true, !var_3.c.a.x)));
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1740f + 432f), 527f, _wgslsmith_f_op_f32(713f + 416f), _wgslsmith_f_op_f32(min(-1673f, 121f))), vec3<bool>(true, true, true), max(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<f32>(-158f, -119f), vec2<i32>(u_input.b, 0i), u_input.b), vec3<i32>(18506i, 7390i, u_input.b), func_2(), reverseBits(u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(2147483647i, u_input.b, 0i))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(615f, -647f), vec2<i32>(u_input.b, 2147483647i), -31920i), vec3<i32>(-18876i, -6094i, 5505i), Struct_1(vec3<bool>(true, false, false), vec2<f32>(499f, -113f), vec2<i32>(u_input.b, 2147483647i), 12570i), max(u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-20542i, -2147483647i, u_input.b), vec3<i32>(u_input.b, 29573i, -58164i)))), abs(~u_input.a.x) <= _wgslsmith_mult_u32(reverseBits(71726u), _wgslsmith_div_u32(1u, 22516u)), vec3<i32>((42081i << (u_input.a.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(44947u, 5167u, u_input.a.x, u_input.a.x)) % 32u), u_input.b, 1i)), u_input.b << (0u % 32u)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, -1387f));
    let var_1 = _wgslsmith_f_op_f32(min(-452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(max(var_0.x, 1231f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1721f, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1711f, var_1)))))));
    var var_2 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(195f)))), func_4(Struct_4(vec4<f32>(864f, 110f, -2290f, var_0.x), vec3<bool>(true, false, true), u_input.a.x << (u_input.a.x % 32u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(var_1, 1334f), vec2<i32>(u_input.b, u_input.b), u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b), Struct_1(vec3<bool>(false, false, true), vec2<f32>(var_1, 1143f), vec2<i32>(25476i, 0i), u_input.b), -2147483647i, vec3<i32>(u_input.b, u_input.b, u_input.b)), func_4(Struct_4(vec4<f32>(var_0.x, 2049f, var_0.x, var_1), vec3<bool>(true, false, false), u_input.a.x, Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1059f, -314f), vec2<i32>(1i, -1i), 31063i), vec3<i32>(-1i, u_input.b, -37945i), Struct_1(vec3<bool>(false, true, true), vec2<f32>(var_0.x, var_0.x), vec2<i32>(25187i, u_input.b), u_input.b), 42711i, vec3<i32>(u_input.b, u_input.b, 1i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(var_1, var_0.x), vec2<i32>(35617i, u_input.b), 1i), vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(vec3<bool>(false, true, false), vec2<f32>(var_1, var_1), vec2<i32>(-1i, 13719i), 1311i), u_input.b, vec3<i32>(u_input.b, -1119i, 13905i))), true, vec3<i32>(u_input.b, u_input.b, 16541i)).a), !(var_0.x != var_1), vec3<i32>(-27316i, -2956i, -5363i)).a.c.b.x, true)), _wgslsmith_f_op_vec2_f32(func_5(Struct_3(Struct_2(func_4(Struct_4(vec4<f32>(var_0.x, var_1, var_0.x, 1090f), vec3<bool>(true, false, false), 0u, Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(var_0.x, var_1), vec2<i32>(2147483647i, 1i), u_input.b), vec3<i32>(u_input.b, 1i, 1i), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1570f, var_1), vec2<i32>(u_input.b, u_input.b), u_input.b), -2147483647i, vec3<i32>(u_input.b, u_input.b, -32226i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(var_0.x, var_0.x), vec2<i32>(-1i, u_input.b), 8961i), vec3<i32>(u_input.b, u_input.b, 0i), Struct_1(vec3<bool>(true, true, true), vec2<f32>(var_0.x, 959f), vec2<i32>(2147483647i, u_input.b), -2147483647i), u_input.b, vec3<i32>(-3224i, 0i, u_input.b))), true, vec3<i32>(-2147483647i, u_input.b, u_input.b)).a.c, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1163f, -1177f), vec2<i32>(u_input.b, u_input.b), u_input.b), 2147483647i, vec3<i32>(1i, u_input.b, 0i)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 1255i, u_input.b), vec3<i32>(u_input.b, 0i, u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 39620u, 14274u), vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(11907u, 4294967295u, u_input.a.x)), vec3<u32>(u_input.a.x, 0u, 59955u))), u_input.b)).x, _wgslsmith_f_op_f32(exp2(func_2().b.x)), -260f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(vec3<bool>(true, false, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1841f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-718f * -1387f), _wgslsmith_f_op_f32(f32(-1f) * -146f))))), vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -15917i), vec2<i32>(-1i, u_input.b)), vec2<i32>(-27170i, u_input.b) ^ vec2<i32>(u_input.b, 9186i)), 23333i), ~(-u_input.b));
    var var_1 = -121f;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, -1809f, 1204f, -1270f)))), select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), all(var_0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 427f, var_0.b.x, 1822f) + vec4<f32>(var_0.b.x, var_0.b.x, -391f, -1166f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 1597f, var_0.b.x, -868f))) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-1152f + var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), -2322f)))));
    let var_3 = reverseBits(0u);
    var_1 = var_0.b.x;
    var var_4 = !vec4<bool>(false, true, true && var_0.a.x, var_0.a.x);
    var var_5 = ~min(~max(vec4<u32>(3964u, u_input.a.x, var_3, 4294967295u), vec4<u32>(var_3, u_input.a.x, 0u, 1u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(46617u, 46667u, 1678u, u_input.a.x) | vec4<u32>(1u, 27532u, var_3, var_3), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_3)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(0u, 71607u, u_input.a.x, u_input.a.x)));
    var var_6 = var_5.wx;
    var var_7 = all(var_4.yw);
    let x = u_input.a;
    s_output = StorageBuffer(-1081f, func_2().c);
}

