struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    let var_0 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 77205u, 0u, 74935u), ~vec4<u32>(1u, 4294967295u, arg_0.a.a.x, 1u), vec4<u32>(u_input.a.x, arg_0.a.a.x, 0u, 4294967295u)), u_input.a) ^ 42326u);
    var var_1 = true;
    let var_2 = i32(-1i) * -1177i;
    var_1 = true;
    var var_3 = Struct_4(arg_0.a, arg_0.b, vec2<bool>(false, _wgslsmith_f_op_f32(arg_0.b.b + _wgslsmith_f_op_f32(ceil(arg_0.a.e.b.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b, arg_0.a.e.b.x))), select(select(select(vec4<bool>(arg_0.d.x, arg_0.c.x, false, true), arg_0.d, arg_0.d), arg_0.d, !(!arg_0.c.x)), arg_0.d, arg_0.d));
    return ~19836u;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_4(Struct_2(~max(abs(u_input.a.yy), _wgslsmith_add_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, 27684u))), reverseBits(max(u_input.a.ww, u_input.a.zy) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(120632u, u_input.a.x), u_input.a.yy)), ~(~(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x) % vec3<u32>(32u)))), vec2<bool>(true, all(vec2<bool>(true, false))), Struct_1(-2147483647i, vec2<f32>(_wgslsmith_div_f32(899f, -171f), 450f))), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-393f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-176f))))), -355f), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, select(true, false, false)), !all(vec2<bool>(true, true))), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), !any(vec2<bool>(true, false))), !(_wgslsmith_dot_vec2_i32(vec2<i32>(-18286i, arg_0), vec2<i32>(arg_0, u_input.c)) <= (u_input.b | arg_0))), !select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, false, false)), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))));
    var var_1 = var_0.a.d.x;
    let var_2 = select(_wgslsmith_div_vec4_i32(-(max(vec4<i32>(-61916i, 42062i, var_0.a.e.a, -26859i), vec4<i32>(u_input.b, 24176i, -51588i, 9116i)) ^ ~vec4<i32>(arg_0, 46161i, 3379i, 1i)), ((vec4<i32>(-1i, u_input.c, u_input.b, -1i) & vec4<i32>(u_input.c, arg_0, 2147483647i, u_input.c)) << (vec4<u32>(var_0.a.a.x, 0u, u_input.d.x, 11863u) % vec4<u32>(32u))) & ~(-vec4<i32>(arg_0, arg_0, var_0.a.e.a, -68423i))), _wgslsmith_clamp_vec4_i32(~(abs(vec4<i32>(arg_0, -1i, 36623i, u_input.b)) >> (u_input.a % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, 7110i), -vec4<i32>(0i, arg_0, var_0.a.e.a, var_0.a.e.a)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0, 1i, -1i) << (u_input.a % vec4<u32>(32u)), abs(vec4<i32>(var_0.a.e.a, var_0.a.e.a, 26176i, var_0.a.e.a))))), false);
    var_1 = !all(!var_0.a.d);
    var var_3 = 799u;
    return _wgslsmith_f_op_f32(abs(var_0.b.a)) <= var_0.b.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = ~firstLeadingBit(arg_0.x);
    var var_1 = ~(~arg_0) ^ vec3<u32>(abs(countOneBits(~69191u)), min(4294967295u, arg_0.x), u_input.d.x);
    var_1 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(countOneBits(arg_0 & vec3<u32>(18755u, var_1.x, 19961u)), u_input.a.wzz)), ~vec3<u32>(arg_0.x, 1u ^ func_2(Struct_4(Struct_2(vec2<u32>(0u, 1u), var_1.yz, u_input.a.wyw, vec2<bool>(true, false), Struct_1(-2147483647i, vec2<f32>(983f, -488f))), Struct_3(491f, -2425f), vec2<bool>(true, true), vec4<bool>(false, false, true, true)), vec3<i32>(u_input.c, 31288i, 45171i)), 89414u));
    var_1 = ~vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, select(vec3<u32>(25158u, 10834u, arg_0.x), u_input.a.yyx, false)), 11171u), 1u);
    var_1 = vec3<u32>(select(_wgslsmith_mod_u32(~min(4294967295u, var_1.x), ~(~46826u)), ~64976u, !func_3(u_input.b)), select(var_1.x, ~_wgslsmith_clamp_u32(var_1.x, 1u, _wgslsmith_add_u32(21642u, 95975u)), true), 12689u);
    return Struct_4(Struct_2(u_input.d, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), u_input.a.ww)), ~vec3<u32>(arg_0.x, arg_0.x, 46767u) & u_input.a.wyx, select(vec2<bool>(true, true), vec2<bool>(true, 39959u == u_input.d.x), vec2<bool>(true, true)), Struct_1(u_input.b, vec2<f32>(925f, _wgslsmith_f_op_f32(max(-439f, 136f))))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1667f) * _wgslsmith_f_op_f32(f32(-1f) * -294f)) - 494f)), select(select(vec2<bool>(false, all(vec3<bool>(false, true, false))), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, func_3(1i)), -1000f != _wgslsmith_f_op_f32(round(457f)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(func_3(-5849i), true, select(true, false, true), false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.wzz);
    var var_1 = Struct_3(var_0.a.e.b.x, var_0.a.e.b.x);
    let var_2 = _wgslsmith_dot_vec2_u32(var_0.a.c.zy, vec2<u32>(u_input.d.x >> (abs(0u) % 32u), _wgslsmith_div_u32(var_0.a.a.x, 0u)));
    var var_3 = var_0.a;
    let var_4 = countOneBits(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.e.a, 18301i, u_input.c, -14666i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.e.a, var_3.e.a, u_input.b, var_0.a.e.a), vec4<i32>(var_3.e.a, 2147483647i, var_0.a.e.a, -2147483647i))), (vec4<i32>(-17515i, -51326i, var_3.e.a, -2147483647i) ^ vec4<i32>(var_0.a.e.a, u_input.c, u_input.b, u_input.c)) >> (u_input.a % vec4<u32>(32u))));
    var var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_4), -331f, _wgslsmith_div_vec4_i32(select(var_4, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 0i, -52046i, 78294i), var_4), vec4<i32>(u_input.c, -33059i, 1i, -1i)), vec4<bool>(true, true, true, true)), select(var_4, _wgslsmith_mult_vec4_i32(var_4 << (u_input.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(35411i, -2147483647i, var_4.x, 68564i), var_4, var_4)), vec4<bool>(var_0.c.x, true, all(vec2<bool>(false, var_0.d.x)), !var_0.c.x))), var_4.x);
}

