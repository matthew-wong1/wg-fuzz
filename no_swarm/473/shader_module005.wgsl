struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false))));
    let var_1 = ~u_input.a.x >> (u_input.a.x % 32u);
    let var_2 = var_1;
    var_0 = select(select(select(vec3<bool>(false, true || var_0.x, all(vec2<bool>(true, var_0.x))), vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)), vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x))), !var_0.x), select(!vec3<bool>(true, false & var_0.x, var_0.x), vec3<bool>(true, var_2 != var_2, any(!var_0.yz)), false), vec3<bool>(all(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true), true)), all(select(!vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(var_0.x, var_0.x, false))), true));
    var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-382f, 3194f))) > _wgslsmith_f_op_f32(f32(-1f) * -2046f), var_0.x != !var_0.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, 0i), -u_input.b.x) == countOneBits(~u_input.b.x)), select(select(!(!vec3<bool>(true, false, var_0.x)), select(!vec3<bool>(false, false, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), false | var_0.x), vec3<bool>(var_0.x, all(vec4<bool>(true, true, true, true)), var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, true)), true), !(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))), !vec3<bool>(var_0.x, false, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) + _wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_2(false, min(_wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), firstTrailingBit(reverseBits(vec3<u32>(0u, u_input.a.x, 0u)))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(14530u, 6518u, 0u), ~32071u, 1u) << (3226u % 32u)), -min(_wgslsmith_add_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.yxz, vec3<i32>(u_input.b.x, u_input.b.x, 0i))), 28556i));
    var var_2 = Struct_4(Struct_1(select(vec4<bool>(!var_1.a, u_input.a.x <= u_input.a.x, var_1.a, true), vec4<bool>(!var_1.a, true, var_1.a & var_1.a, !var_1.a), any(vec4<bool>(var_1.a, false, var_1.a, var_1.a)))), Struct_2(true, var_1.b, min(reverseBits(-29519i), 0i)), Struct_2(true, 4294967295u, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c, var_1.c, var_1.c), vec4<i32>(var_1.c, 54771i, 0i, -1i)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, -1i), u_input.b.x << (7935u % 32u)))), Struct_1(vec4<bool>(!var_1.a, var_1.a, any(!vec2<bool>(var_1.a, var_1.a)), !select(false, false, var_1.a))));
    let var_3 = Struct_4(Struct_1(var_2.d.a), Struct_2(any(var_2.d.a.zw), u_input.a.x | _wgslsmith_mod_u32(~u_input.a.x, var_1.b), 0i), Struct_2(var_1.a, var_2.c.b, ~(~0i)), var_2.a);
    let var_4 = ~(~var_3.c.b);
    return abs(u_input.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = ~(-57313i);
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -64806i), -_wgslsmith_sub_vec2_i32(u_input.b.ww, vec2<i32>(-29603i, u_input.b.x))), (~vec2<i32>(u_input.b.x, -2147483647i) >> (func_2() % vec2<u32>(32u))) & u_input.b.wx);
    var var_1 = Struct_1(!(!vec4<bool>(false, u_input.a.x != 0u, false, true)));
    var var_2 = Struct_1(vec4<bool>(!arg_1.x, arg_1.x, true, all(vec2<bool>(all(vec3<bool>(true, arg_1.x, true)), arg_1.x && true))));
    return _wgslsmith_mod_u32(~arg_3.x, arg_3.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = -1209f;
    let var_1 = !select(any(arg_1.d.a.zw), arg_0.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x - arg_0.x), _wgslsmith_f_op_f32(-var_0))), (true | arg_1.a.a.x) && all(select(arg_1.d.a, arg_1.d.a, true)));
    let var_2 = Struct_3(arg_1.a, arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_f32(-arg_2.x), -628f)), Struct_1(!arg_1.a.a), 5747i);
    let var_3 = Struct_4(Struct_1(arg_1.a.a), Struct_2(_wgslsmith_clamp_i32(-var_2.e, firstLeadingBit(0i), abs(2147483647i)) == _wgslsmith_mod_i32(reverseBits(-1i), var_2.e), _wgslsmith_div_u32(58030u & firstTrailingBit(69593u), _wgslsmith_clamp_u32(u_input.a.x, 59205u << (arg_1.b % 32u), 61772u)), _wgslsmith_add_i32(arg_1.e, 46084i)), Struct_2(var_2.a.a.x, 18085u, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.zz), ~(-23174i))), Struct_1(!select(select(vec4<bool>(arg_1.a.a.x, false, var_2.d.a.x, true), vec4<bool>(false, arg_1.a.a.x, true, true), var_1), select(vec4<bool>(arg_1.a.a.x, var_1, arg_1.a.a.x, var_1), vec4<bool>(arg_1.d.a.x, false, false, var_1), arg_1.a.a.x), !var_1)));
    var var_4 = Struct_2(!all(!(!vec2<bool>(true, var_1))), 43243u, _wgslsmith_sub_i32(-(~(-2147483647i)), _wgslsmith_sub_i32(0i, -1i >> (var_3.c.b % 32u)) | var_2.e));
    return Struct_1(!arg_1.a.a);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -147f))), 1531f);
    var var_1 = select(!vec4<bool>((arg_2.c < arg_3.c) || false, arg_3.a, true, arg_3.a), arg_0.a, arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(ceil(var_0));
    var var_3 = !(!(!vec4<bool>(arg_2.a, 249f < var_0, false, true)));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-var_0), 1104f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(436f * var_2), 1906f, var_2, -658f)))));
    return func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_4.yx, vec2<f32>(927f, 1155f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1057f, var_2))), _wgslsmith_div_vec2_f32(vec2<f32>(-513f, var_0), var_4.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1487f, 1405f)) - vec2<f32>(_wgslsmith_f_op_f32(303f - 580f), _wgslsmith_f_op_f32(var_0 * var_0)))), Struct_3(Struct_1(arg_0.a), _wgslsmith_div_u32(func_1(u_input.a, vec3<bool>(true, true, true), arg_3.a, abs(vec4<u32>(1u, 0u, 1u, arg_3.b))), 50763u), _wgslsmith_f_op_vec3_f32(-var_4.xzy), arg_0, _wgslsmith_div_i32(~arg_2.c, arg_3.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(640f)), _wgslsmith_f_op_f32(round(-750f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(712f * -151f), _wgslsmith_f_op_f32(669f - -543f)), Struct_3(Struct_1(vec4<bool>(false, true, true, false)), func_1(vec2<u32>(72339u, 4294967295u), vec3<bool>(true, false, false), true, vec4<u32>(1u, 0u, 25302u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, 826f, -450f) + vec3<f32>(-1283f, 222f, 571f)), Struct_1(vec4<bool>(true, false, true, false)), 12961i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(596f, -695f))) * vec2<f32>(-196f, 220f))), any(vec2<bool>(select(false, true, true), true)), Struct_2(true, ~(~u_input.a.x), -u_input.b.x), Struct_2(true, _wgslsmith_div_u32(u_input.a.x, 1u), abs(~u_input.b.x))), u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-666f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(878f)), 1922f), 442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(230f, -815f))))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(681f, -133f), vec2<f32>(-1074f, -572f))))), Struct_3(Struct_1(vec4<bool>(true, true, true, true)), ~select(4294967295u, u_input.a.x, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-903f, 161f, -510f)), vec3<f32>(-887f, 1592f, -1870f)), Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b.yz), u_input.b.x ^ 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_div_f32(-1096f, -1214f)))), u_input.b.x);
    let var_1 = var_0.c.x;
    var var_2 = var_1;
    var_2 = var_0.c.x;
    let var_3 = !(!var_0.a.a.yy);
    var_2 = 456f;
    var_2 = _wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~u_input.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, _wgslsmith_div_f32(-216f, var_0.c.x), 375f, -271f))))), ~abs(~(vec3<u32>(5952u, 24490u, u_input.a.x) >> (vec3<u32>(var_0.b, u_input.a.x, var_0.b) % vec3<u32>(32u)))), 39691u, select(firstLeadingBit(u_input.b.zxx), select(_wgslsmith_clamp_vec3_i32(~u_input.b.yzx, -u_input.b.xxx, -vec3<i32>(-34851i, 50067i, u_input.b.x)), select(-vec3<i32>(-1i, u_input.b.x, u_input.b.x), -vec3<i32>(9666i, var_0.e, var_0.e), func_4(var_0.c.yx, Struct_3(Struct_1(var_0.d.a), var_0.b, var_0.c, Struct_1(vec4<bool>(false, var_3.x, var_0.a.a.x, false)), var_0.e), var_0.c.xy).a.x), any(!var_0.d.a.yzz)), var_3.x));
}

