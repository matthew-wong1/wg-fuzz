struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(633f)))))));
    var_0 = 447f;
    var var_1 = -max(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), vec2<i32>(1i, -9122i << (1u % 32u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, min(-20956i, 1i)), _wgslsmith_mod_i32(-18474i, -16657i) >> (select(0u, 1u, true) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(230f - -1482f) - 187f) * 1456f) + 221f) - 1921f);
    var var_3 = _wgslsmith_add_vec2_i32(-(~vec2<i32>(0i, 2147483647i) << (~u_input.a.yz % vec2<u32>(32u))), abs(vec2<i32>(_wgslsmith_add_i32(-12072i, -45199i), _wgslsmith_div_i32(0i, -53505i)))) & _wgslsmith_mod_vec2_i32(firstLeadingBit(abs(reverseBits(vec2<i32>(3180i, -38381i)))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, -1i), max(vec2<i32>(0i, 14991i), -vec2<i32>(8538i, 0i)), _wgslsmith_div_vec2_i32(~vec2<i32>(-29586i, 0i), -vec2<i32>(-2147483647i, -2147483647i))));
    return vec3<bool>(false == any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true, true & ((all(vec4<bool>(false, false, true, false)) || any(vec3<bool>(false, true, false))) && true));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = u_input.a;
    let var_1 = arg_2.c;
    let var_2 = select(vec3<bool>(true, true, any(arg_0.b)), !select(select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_2.d.x), vec3<bool>(arg_2.d.x, arg_2.d.x, false), vec3<bool>(false, arg_2.a, true)), !vec3<bool>(arg_0.b.x, arg_2.d.x, true), any(vec3<bool>(arg_2.d.x, arg_0.b.x, arg_0.b.x))), !vec3<bool>(true, true, arg_0.b.x), select(!vec3<bool>(arg_2.a, arg_2.a, arg_0.b.x), vec3<bool>(arg_2.d.x, false, arg_0.b.x), vec3<bool>(true, arg_0.b.x, arg_2.a))), all(select(vec3<bool>(all(vec4<bool>(arg_2.a, arg_0.b.x, arg_2.a, arg_0.b.x)), arg_2.a, arg_0.b.x), func_3(), (u_input.b.x >= 1u) | true)));
    return arg_1.x;
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(-111f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-434f, _wgslsmith_f_op_f32(func_2(Struct_5(vec3<i32>(14988i, 2763i, 43354i), vec2<bool>(arg_0.b, arg_0.c), arg_0.a.x), vec4<f32>(arg_0.a.x, -738f, arg_0.a.x, arg_0.a.x), Struct_1(arg_0.b, arg_0.d, u_input.a.wx, vec2<bool>(false, arg_0.b), arg_0.d), arg_0.a.x)))) + arg_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))))), _wgslsmith_f_op_f32(trunc(1496f)));
    let var_1 = Struct_5(select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i) << (_wgslsmith_add_vec3_u32(u_input.a.wyz, u_input.b) % vec3<u32>(32u)), ~(~vec3<i32>(45856i, -1i, -2147483647i))), vec3<i32>(-19557i, 2147483647i, firstLeadingBit(2147483647i)), select(vec3<bool>(arg_0.b | arg_0.c, arg_0.c, !arg_0.c), select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.b), !vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(true, true, true)), arg_0.c)), select(!select(!vec2<bool>(arg_0.b, arg_0.b), func_3().xz, !arg_0.c), !(!select(vec2<bool>(arg_0.b, arg_0.c), vec2<bool>(false, false), vec2<bool>(false, false))), !(!select(true, arg_0.c, arg_0.c))), var_0.x);
    let var_2 = vec3<u32>(u_input.a.x, u_input.c, ~69545u);
    var var_3 = max(~max(_wgslsmith_mult_u32(abs(u_input.c), u_input.b.x), ~max(35652u, var_2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, select(4294967295u, 0u, arg_0.b) ^ u_input.b.x, u_input.a.x), vec3<u32>(_wgslsmith_add_u32(~2719u, ~4294967295u), arg_0.d, 25817u)));
    let var_4 = var_1.a.x;
    return !(!vec4<bool>(true, true, !func_3().x, arg_0.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = ~select(vec4<i32>(firstLeadingBit(arg_1.a.x ^ 2147483647i), 1i, _wgslsmith_mult_i32(arg_1.a.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -13448i) ^ vec4<i32>(1i, arg_1.a.x, arg_1.a.x, -2147483647i), vec4<i32>(-33849i, -1531i, arg_1.a.x, -2017i))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(28055i, arg_1.a.x, -50017i, arg_1.a.x) & vec4<i32>(arg_1.a.x, arg_1.a.x, -45453i, arg_1.a.x), abs(vec4<i32>(2147483647i, 0i, arg_1.a.x, arg_1.a.x)))), (!arg_3.b.d.d.x | false) != false);
    return var_0;
}

fn func_5(arg_0: vec4<i32>) -> Struct_5 {
    var var_0 = -arg_0;
    let var_1 = _wgslsmith_add_u32(4294967295u, u_input.c);
    let var_2 = Struct_3(Struct_1(true & all(vec3<bool>(true, true, true)), min(var_1, var_1), ~(~(u_input.b.xz ^ vec2<u32>(u_input.b.x, var_1))), !func_1(Struct_4(vec3<f32>(1477f, -1993f, -818f), true, true, var_1)).zx, var_1), Struct_2(Struct_1(all(vec3<bool>(false, true, true)), var_1, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34924u, 4294967295u, u_input.b.x, var_1), vec4<u32>(var_1, u_input.b.x, 11586u, var_1)), firstLeadingBit(var_1)), vec2<bool>(true, true), _wgslsmith_mult_u32(16646u, 1u & u_input.c)), vec3<bool>(true, true, true), Struct_1(select(true, false, false), 58145u, ~vec2<u32>(u_input.b.x, u_input.c), select(vec2<bool>(false, false), func_3().xy, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), max(~3506u, 1u)), Struct_1(true, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(45617u, 4294967295u, var_1, 8278u) ^ vec4<u32>(1u, 11197u, u_input.a.x, 4294967295u)), u_input.b.zy, vec2<bool>(true, arg_0.x > arg_0.x), 1u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1487f, -2238f) - vec2<f32>(238f, -423f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-862f, 2077f))))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-585f + _wgslsmith_f_op_f32(trunc(-956f))))), 1146f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-277f)), _wgslsmith_f_op_f32(1679f * 1291f))))), 1101f));
    var_0 = (vec4<i32>(-1i) * -(~(vec4<i32>(var_0.x, -17082i, var_0.x, var_0.x) << (vec4<u32>(0u, var_2.a.c.x, var_2.a.e, 29622u) % vec4<u32>(32u))))) >> (~(~(~u_input.a)) % vec4<u32>(32u));
    let var_3 = Struct_1(var_2.b.a.d.x, var_2.b.d.c.x, u_input.b.zy, var_2.a.d, ~(var_2.b.a.c.x << (var_1 % 32u)));
    return Struct_5(-(func_4(!vec4<bool>(false, true, true, var_2.a.a), Struct_5(var_0.yzz, var_3.d, 222f), Struct_2(Struct_1(false, 0u, vec2<u32>(var_3.b, 44372u), var_3.d, 12056u), var_2.b.b, var_3, var_3, var_2.b.e), var_2).zzy ^ ~(arg_0.xxy & arg_0.zxx)), select(var_3.d, vec2<bool>(!func_1(Struct_4(var_2.c.xzz, false, var_2.b.a.a, var_3.b)).x, false), !var_3.d), _wgslsmith_f_op_f32(floor(var_2.b.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_1(Struct_4(vec3<f32>(-1625f, -2761f, 743f), false, false, 4294967295u)), vec4<bool>(true, true, true, true)), func_3().x | all(vec3<bool>(true, true, false))), Struct_5(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), 26528i >> (u_input.b.x % 32u), _wgslsmith_div_i32(-35268i, 27617i)), vec2<bool>(select(false, false, true), true), -387f), Struct_2(Struct_1(true, u_input.c, vec2<u32>(0u, 1u), vec2<bool>(false, false), u_input.c), vec3<bool>(true, true, true), Struct_1(false, 42959u, vec2<u32>(u_input.a.x, 7881u), select(vec2<bool>(true, true), vec2<bool>(true, true), false), 1u), Struct_1(any(vec4<bool>(false, false, true, false)), 1u, vec2<u32>(0u, 0u) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), func_3().zz, 45575u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, -2275f))))), Struct_3(Struct_1(all(vec4<bool>(false, true, false, true)), u_input.a.x, u_input.a.xz, vec2<bool>(false, false), u_input.c >> (u_input.c % 32u)), Struct_2(Struct_1(false, u_input.c, u_input.a.zx, vec2<bool>(false, true), 0u), vec3<bool>(true, true, true), Struct_1(true, u_input.b.x, u_input.b.yx, vec2<bool>(false, false), u_input.b.x), Struct_1(true, 1u, u_input.b.xy, vec2<bool>(true, false), u_input.a.x), vec2<f32>(-296f, -1357f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -884f, -440f, -388f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1024f))), -1000f, var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-443f, 1788f, -426f), vec3<f32>(-1055f, var_0.c, -1167f), vec3<bool>(var_0.b.x, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, -143f, var_0.c)))))));
    var var_2 = Struct_2(Struct_1(select(true, all(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.a.x == countOneBits(-1i)), _wgslsmith_mult_u32(~1u, abs(u_input.c)), ~u_input.b.zx, select(!(!var_0.b), func_1(Struct_4(var_1, var_0.b.x, var_0.b.x, u_input.b.x)).zy, false), _wgslsmith_div_u32(~(u_input.b.x << (u_input.c % 32u)), 4294967295u)), !select(!vec3<bool>(false, var_0.b.x, false), !func_3(), vec3<bool>(true, true, true)), Struct_1(!var_0.b.x, _wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, u_input.b.x), ~_wgslsmith_add_u32(0u, 4294967295u)), vec2<u32>(1u, u_input.a.x), select(func_3().xy, var_0.b, func_1(Struct_4(var_1, var_0.b.x, false, 1686u)).xx), u_input.b.x), Struct_1(var_0.b.x, firstLeadingBit(~u_input.c), u_input.a.wz, vec2<bool>(select(false, select(var_0.b.x, var_0.b.x, var_0.b.x), true), !var_0.b.x), ~(~(~53345u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-977f - var_1.x))));
    var_2 = Struct_2(Struct_1(all(!select(vec4<bool>(var_0.b.x, var_0.b.x, false, false), vec4<bool>(var_2.a.d.x, true, true, var_0.b.x), vec4<bool>(false, false, false, var_0.b.x))), u_input.c, vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, var_2.d.b, u_input.c)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 8848u)), !var_0.b, _wgslsmith_sub_u32(0u, var_2.d.e)), vec3<bool>(!(!var_0.b.x), var_2.c.d.x, var_0.b.x), var_2.a, var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.xx)) * var_2.e));
    let var_3 = u_input.a.zz;
    let var_4 = 0u;
    let var_5 = _wgslsmith_clamp_u32(var_3.x, _wgslsmith_div_u32(var_3.x, 1u), firstLeadingBit(_wgslsmith_mult_u32(var_4, ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.a.zwz))));
    let x = u_input.a;
    s_output = StorageBuffer((((var_0.a | vec3<i32>(var_0.a.x, 44872i, -61042i)) & var_0.a) ^ abs(var_0.a)) << (abs((u_input.a.xxx ^ vec3<u32>(var_3.x, 40323u, 14641u)) << (reverseBits(vec3<u32>(30398u, 0u, var_4)) % vec3<u32>(32u))) % vec3<u32>(32u)), 1928f, ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, var_0.a.x), ~vec4<i32>(-1i, var_0.a.x, var_0.a.x, -1i)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), firstLeadingBit(vec4<i32>(-7367i, -40164i, 12187i, var_0.a.x)))));
}

