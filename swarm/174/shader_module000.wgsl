struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<u32> {
    let var_0 = ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(max(u_input.b, u_input.b) | (vec4<i32>(u_input.b.x, u_input.b.x, -1i, -1i) | u_input.b), u_input.b, -vec4<i32>(0i, 0i, u_input.b.x, 0i)), u_input.b);
    var var_1 = vec2<bool>(all(vec2<bool>(true, false)), all(select(vec3<bool>(all(vec2<bool>(false, false)), true, all(vec3<bool>(true, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))));
    var_1 = vec2<bool>(all(vec3<bool>(true, all(vec3<bool>(true, var_1.x, true)) && var_1.x, true)), true);
    let var_2 = 1u;
    var_1 = select(vec2<bool>(true, true), vec2<bool>(false, (false & var_1.x) & var_1.x), !(!all(!vec2<bool>(var_1.x, true))));
    return vec4<u32>(~abs(_wgslsmith_add_u32(abs(var_2), 35832u)), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, ~(~1u)), u_input.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(65216i, u_input.b.x, 37379i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -52365i, 1i)) | -(~vec4<i32>(u_input.b.x, -12741i, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2586i, u_input.b.x, 17073i, u_input.b.x), u_input.b), u_input.b)) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(35788u, u_input.a.x, 0u, u_input.a.x)), func_3())) % vec4<u32>(32u));
    var var_1 = Struct_3(421f, func_3().ww);
    let var_2 = Struct_2(Struct_1(vec4<f32>(-702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(135f))), 1576f, 549f), 1u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(762f, -319f) + vec2<f32>(var_1.a, 132f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + vec2<f32>(var_1.a, var_1.a)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, var_1.a))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -1144f, var_1.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, 303f))), vec3<f32>(var_1.a, _wgslsmith_div_f32(-1347f, 111f), var_1.a))), 43910u), vec3<i32>(0i, u_input.b.x | -1i, -abs(var_0.x) | (i32(-1i) * -13860i)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.zz);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_2.a.a)))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a.c.x)), -830f, var_3.x, var_3.x)), ~var_2.a.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c.x, var_2.a.a.x) - vec2<f32>(var_3.x, var_1.a)), var_2.a.a.zz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c.x, var_3.x, _wgslsmith_f_op_f32(floor(866f)))), 85340u), vec3<i32>(~abs(var_2.b.x), 0i, _wgslsmith_div_i32(1i, ~42477i)));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_5 {
    let var_0 = ~vec3<u32>(0u, ~max(1u, _wgslsmith_add_u32(0u, 35262u)), arg_1.a.e);
    let var_1 = vec3<u32>(u_input.a.x >> (abs(var_0.x) % 32u), reverseBits(~_wgslsmith_add_u32(var_0.x, 4294967295u) >> (arg_1.a.e % 32u)), u_input.a.x);
    var var_2 = -arg_1.b.zx;
    let var_3 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(floor(722f)))), _wgslsmith_div_f32(arg_1.a.d.x, arg_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(405f))), arg_1.a.c.x), 1u, arg_1.a.d.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_1.a.a.zxx, arg_1.a.a.ywz)))), arg_1.a.b));
    var_2 = firstTrailingBit(vec2<i32>(var_2.x, u_input.b.x));
    return Struct_5(countOneBits(~u_input.a), _wgslsmith_mult_u32(9132u, u_input.a.x));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = all(vec4<bool>(true, !(_wgslsmith_dot_vec2_i32(arg_1, arg_1) > u_input.b.x), false, !(true || select(false, true, false))));
    var var_1 = max(2147483647i, 2147483647i) << (~(~u_input.a.x) % 32u);
    var var_2 = select(select(vec2<bool>(~arg_1.x >= 0i, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), !any(vec3<bool>(true, true, true))), vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), false | any(vec3<bool>(true, true, true))), (~0u >> (arg_2.a.e % 32u)) > (func_3().x ^ arg_0.b));
    var var_3 = arg_1.x;
    var var_4 = Struct_2(Struct_1(arg_2.a.a, 20276u, _wgslsmith_f_op_vec2_f32(select(arg_2.a.d.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.c) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_2.a.a.x), vec2<f32>(arg_2.a.d.x, 633f)))), var_2.x)), arg_2.a.a.xwz, func_3().x), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, arg_3.x, countOneBits(23203i)), 1i, arg_1.x)));
    return u_input.b.zxw;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = ~(vec3<i32>(arg_0.x, ~reverseBits(-1i), arg_0.x) >> (u_input.a % vec3<u32>(32u)));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~2147483647i, _wgslsmith_sub_i32(u_input.b.x, ~(-1i)), 11635i), -vec3<i32>(_wgslsmith_sub_i32(0i ^ arg_0.x, var_0.x >> (0u % 32u)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.x, -1i, var_0.x)), ~vec3<i32>(-2147483647i, -34210i, u_input.b.x)), u_input.b.x));
    var_0 = func_5(func_4(false, func_2()), vec2<i32>(countOneBits(u_input.b.x), _wgslsmith_sub_i32(-var_0.x, 46124i)), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1001f, 1000f, -176f, -1804f)))), u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, 21364u) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, 1351f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-293f, -764f, -599f) - vec3<f32>(-509f, 1000f, 258f)), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), ~u_input.a.x | 1u)), _wgslsmith_sub_vec3_i32(-select(vec3<i32>(1i, 46451i, var_0.x), arg_0.xwx, true), ~(vec3<i32>(u_input.b.x, arg_0.x, u_input.b.x) ^ arg_0.ywz) & (arg_0.xww << (~vec3<u32>(u_input.a.x, u_input.a.x, 60161u) % vec3<u32>(32u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(646f)))), _wgslsmith_f_op_f32(floor(-1523f))))), countOneBits(reverseBits(~(vec2<u32>(11422u, u_input.a.x) >> (u_input.a.zz % vec2<u32>(32u))))));
    var_0 = select(vec3<i32>(i32(-1i) * -2147483647i, countOneBits(~u_input.b.x), _wgslsmith_dot_vec4_i32(abs(-u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(30263i, u_input.b.x, 63326i, var_0.x) ^ arg_0, _wgslsmith_add_vec4_i32(u_input.b, arg_0)))), vec3<i32>(var_0.x ^ max(_wgslsmith_div_i32(2147483647i, -9647i), 1i), 6533i, func_2().b.x), all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), true), true)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-965f, 1136f, -2814f, 1283f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, var_1.a, -1836f, var_1.a) - vec4<f32>(-1000f, 2067f, -596f, -540f)))))), _wgslsmith_sub_u32(14522u, ~(4294967295u & u_input.a.x)) | abs(abs(_wgslsmith_clamp_u32(u_input.a.x, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1090f, -1533f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2286f, var_1.a) * vec2<f32>(var_1.a, 1595f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.a), vec2<f32>(252f, var_1.a)))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2().a.a.x - -106f), 912f, var_1.a)), 4294967295u);
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_5 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), arg_1.d.x))));
    var_0 = 38505u;
    var_1 = vec3<f32>(-1238f, -1216f, -803f);
    var var_2 = Struct_2(Struct_1(arg_1.a, select(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yy, firstTrailingBit(vec2<u32>(arg_1.b, u_input.a.x))), any(vec3<bool>(arg_0, true, arg_0))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, -474f)))), _wgslsmith_f_op_vec3_f32(arg_1.a.zww - arg_1.a.yyw), arg_1.e), func_5(Struct_5(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(arg_1.e, u_input.a.x, 22570u)) & firstTrailingBit(u_input.a), select(u_input.a.x, u_input.a.x, !arg_0)), u_input.b.zz, Struct_4(arg_1), vec3<i32>(func_5(Struct_5(u_input.a, u_input.a.x), abs(vec2<i32>(88285i, u_input.b.x)), Struct_4(Struct_1(vec4<f32>(-178f, arg_1.c.x, 2279f, arg_1.a.x), arg_1.b, arg_1.a.xz, vec3<f32>(arg_1.d.x, arg_1.d.x, arg_1.a.x), arg_1.e)), u_input.b.zzz).x, abs(u_input.b.x), u_input.b.x)));
    return Struct_5(~vec3<u32>(~func_2().a.b, ~(~23711u), ~u_input.a.x), arg_1.e);
}

fn func_7(arg_0: Struct_5, arg_1: i32) -> u32 {
    var var_0 = vec2<u32>(~arg_0.b, _wgslsmith_mod_u32(arg_0.b >> (4294967295u % 32u), _wgslsmith_div_u32(min(arg_0.a.x, arg_0.b) & (13041u | arg_0.a.x), arg_0.a.x)));
    let var_1 = -_wgslsmith_mult_i32(11787i, arg_1);
    let var_2 = ~(~15780u);
    var_0 = arg_0.a.yy | u_input.a.zy;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-3437f, 1875f, 2313f, 437f), vec4<f32>(-273f, -3351f, 155f, 341f))), vec4<f32>(func_1(vec4<i32>(-21535i, -38694i, arg_1, -11515i)).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1804f), -811f, _wgslsmith_div_f32(536f, 392f)))), ~(~(~arg_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1474f + -900f), _wgslsmith_div_f32(680f, 328f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2125f, -776f, -248f), vec3<f32>(-408f, 978f, 2077f))), func_6(true, func_1(-u_input.b)).a.x));
    return ~var_2;
}

fn func_8(arg_0: u32, arg_1: Struct_5, arg_2: bool) -> Struct_3 {
    let var_0 = !vec4<bool>(any(vec4<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, false)), !arg_2, true, true)), !(true & all(vec2<bool>(arg_2, false))), arg_2, any(vec3<bool>(false || arg_2, true, !arg_2)));
    var var_1 = vec2<u32>(max(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 11178u, arg_1.b, 26299u), vec4<u32>(arg_0, 4294967295u, arg_1.b, arg_1.a.x) | vec4<u32>(147169u, 25837u, arg_1.a.x, arg_0))), 1u) << (arg_1.a.yx % vec2<u32>(32u));
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f * _wgslsmith_div_f32(474f, 260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), true)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.a.xy), vec2<u32>(var_1.x, arg_1.a.x) >> (func_3().yz % vec2<u32>(32u))), (~vec2<u32>(arg_1.b, var_1.x) << (firstTrailingBit(u_input.a.yy) % vec2<u32>(32u))) >> (arg_1.a.yx % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zy;
    let var_1 = func_8(func_7(func_6(true, func_1(u_input.b | u_input.b)), 1i), Struct_5(abs(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), u_input.a), ~u_input.a)), 1u), any(!vec4<bool>(true, true, false, var_0.x != 2147483647i)));
    var var_2 = u_input.b.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * var_1.a))) + -1954f);
    var var_4 = func_8(~33265u, Struct_5(vec3<u32>(~(~u_input.a.x), ~(var_1.b.x >> (var_1.b.x % 32u)), u_input.a.x), reverseBits(u_input.a.x)), var_0.x < _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.b.wz, vec2<i32>(-85721i, -17199i)), vec2<i32>(u_input.b.x ^ u_input.b.x, ~u_input.b.x)));
    var var_5 = (-vec2<i32>(i32(-1i) * -2147483647i, func_2().b.x) ^ (abs(firstLeadingBit(vec2<i32>(var_0.x, 2147483647i))) & u_input.b.xy)) | _wgslsmith_mult_vec2_i32(-vec2<i32>(func_5(Struct_5(vec3<u32>(u_input.a.x, 88094u, 1u), 4768u), vec2<i32>(var_0.x, var_0.x), Struct_4(Struct_1(vec4<f32>(var_4.a, var_1.a, var_4.a, 1948f), u_input.a.x, vec2<f32>(-278f, -850f), vec3<f32>(var_1.a, -1299f, -855f), u_input.a.x)), u_input.b.yxx).x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, 8335i, u_input.b.x), u_input.b)), u_input.b.yw);
    let var_6 = true;
    var var_7 = func_2().a;
    var var_8 = u_input.b ^ abs(firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec3_i32(var_8.xwx, vec3<i32>(var_5.x, 1i, -1i)), countOneBits(2147483647i), countOneBits(var_5.x), var_0.x) >> (min(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(3090u, var_1.b.x, 4294967295u, var_7.e), vec4<u32>(19343u, 4294967295u, var_4.b.x, 4294967295u), vec4<u32>(18973u, var_1.b.x, 27695u, var_4.b.x)), vec4<u32>(var_4.b.x, 41245u, var_4.b.x, var_7.b), !vec4<bool>(var_6, var_6, var_6, var_6)), vec4<u32>(26154u, ~0u, 1u, 1u)) % vec4<u32>(32u)));
}

