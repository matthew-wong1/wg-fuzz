struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(14738i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), 739f), true, false, Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), 1746f)), Struct_2(1i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), -1013f), true, true, Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true), -364f)), vec4<i32>(878i, -1i, i32(-2147483648), -7199i)), Struct_3(Struct_2(23913i, Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, false), 1495f), false, true, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, false), -1160f)), Struct_2(-1i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), 855f), false, false, Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, false), -247f)), vec4<i32>(0i, 0i, 2147483647i, 2147483647i)));

var<private> global2: array<vec3<f32>, 24>;

var<private> global3: i32 = 1i;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global3 = i32(-1i) * -4954i;
    let var_0 = -vec2<i32>(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-7299i, -26792i), vec2<i32>(66987i, 13825i))), 23115i);
    let var_1 = Struct_2(abs(abs(var_0.x)), Struct_1(vec3<bool>(true, true, (i32(-1i) * -27786i) != (var_0.x & -45322i)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(279f, _wgslsmith_f_op_f32(-100f - 1260f))))), false, any(select(vec2<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true))), vec2<bool>(true, true), true)), Struct_1(vec3<bool>(true, (37449u >> (u_input.a % 32u)) >= u_input.a, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1400f)) + 247f) - _wgslsmith_f_op_f32(f32(-1f) * -485f))));
    global1 = array<Struct_3, 2>();
    let var_2 = firstTrailingBit(10291u);
    return min(~(~(-2147483647i)), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(34234i, var_0.x), var_0))) | var_1.a;
}

fn func_2() -> i32 {
    var var_0 = max(vec3<i32>(27136i, func_3(), abs(8693i)), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(-38434i, -1i, 27533i)), vec3<i32>(_wgslsmith_add_i32(select(-34891i, 2147483647i, false), 1i), ~1i, (i32(-1i) * -1i) << (u_input.a % 32u))));
    var_0 = _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2147483647i), max(var_0.xz, var_0.xx)), var_0.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, -1i), -2147483647i))), _wgslsmith_mod_vec3_i32(~(-(vec3<i32>(-24751i, -36463i, var_0.x) | vec3<i32>(var_0.x, -81488i, 22429i))), _wgslsmith_add_vec3_i32(~(vec3<i32>(var_0.x, var_0.x, 15226i) & vec3<i32>(1i, var_0.x, var_0.x)), firstLeadingBit(vec3<i32>(-12496i, 0i, 1i)) ^ -vec3<i32>(-2147483647i, var_0.x, var_0.x))));
    var var_1 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0.x, var_0.x)), ~var_0.zy, -vec2<i32>(~select(var_0.x, var_0.x, false), ~(1i >> (u_input.a % 32u))));
    global4 = 4582i;
    var var_2 = -var_0.yz;
    return -(var_2.x ^ _wgslsmith_sub_i32(-max(2147483647i, var_2.x), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1746i, 65572i), var_0.zx))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32) -> u32 {
    global1 = array<Struct_3, 2>();
    global3 = -_wgslsmith_mod_i32(-_wgslsmith_mod_i32(select(-18790i, arg_2, false), func_2()), _wgslsmith_add_i32(37548i, -42585i));
    let var_0 = Struct_1(select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, false), select(vec3<bool>(all(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), all(vec4<bool>(true, true, true, true))), vec3<bool>(false, 40978i <= -arg_2, true)), vec3<bool>(any(vec2<bool>(false, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-772f)))));
    var var_1 = Struct_3(Struct_2(abs(-53755i), Struct_1(vec3<bool>(any(var_0.a.xy), select(var_0.b.x, false, true), var_0.b.x), var_0.a, _wgslsmith_f_op_f32(-1896f - var_0.c)), (abs(7758i) & (73283i >> (u_input.a % 32u))) <= 1i, true, Struct_1(select(var_0.a, !var_0.a, select(vec3<bool>(true, var_0.b.x, var_0.b.x), var_0.a, var_0.b.x)), vec3<bool>(true, arg_2 != arg_2, var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -970f))), Struct_2(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_2, arg_2, arg_0)), vec3<i32>(-arg_0, 1i << (arg_1 % 32u), -8335i | arg_2)), var_0, var_0.a.x, all(vec4<bool>(!var_0.b.x, 4294967295u != arg_1, false, var_0.b.x)), Struct_1(vec3<bool>(all(var_0.a), false, var_0.b.x == var_0.a.x), !vec3<bool>(var_0.a.x, var_0.b.x, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-507f - -1000f), _wgslsmith_f_op_f32(min(-173f, -836f)))))), vec4<i32>(reverseBits(~(~22526i)), -reverseBits(-18737i ^ arg_2), ~arg_2, arg_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-720f, var_1.b.e.c, -2598f, var_1.b.b.c), vec4<f32>(var_1.b.e.c, var_1.b.b.c, var_1.b.b.c, 315f))) + vec4<f32>(-480f, 434f, var_1.a.b.c, var_1.a.e.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(505f, var_0.c, var_1.b.b.c, -1233f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.e.c, var_0.c, -1509f, var_0.c) - vec4<f32>(218f, -464f, var_0.c, var_1.b.e.c)), !vec4<bool>(false, var_1.a.c, true, true))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1265f, var_1.a.e.c, -1000f) - vec4<f32>(var_1.a.b.c, var_0.c, var_1.b.b.c, -1516f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.c)), var_1.a.e.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.c - var_0.c)), _wgslsmith_f_op_f32(1000f * var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f - -1322f)) <= var_0.c, false, all(var_0.a))));
    return _wgslsmith_div_u32(arg_1, u_input.a) & arg_1;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_2(1i, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, all(vec2<bool>(false, true)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, false)), false, any(vec4<bool>(true, false, true, false)))), 1091f), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))) && true, arg_2.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, any(vec3<bool>(true, true, true)))), Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(false, false, arg_2.x != -1109f), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-940f + arg_2.x)));
    let var_1 = Struct_3(Struct_2(min(8696i, i32(-1i) * -var_0.a), Struct_1(vec3<bool>(var_0.e.b.x, !var_0.b.a.x, var_0.b.a.x), select(vec3<bool>(false, var_0.e.a.x, true), var_0.b.a, !vec3<bool>(var_0.d, var_0.c, var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) * var_0.b.c)), !all(var_0.b.b), all(vec3<bool>(!var_0.e.a.x, true, false)), Struct_1(!select(vec3<bool>(true, false, var_0.b.a.x), vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.b.b.x, false, var_0.d)), vec3<bool>(true, var_0.c, any(vec2<bool>(true, var_0.c))), -497f)), Struct_2(_wgslsmith_add_i32(-4570i, ~_wgslsmith_add_i32(50564i, -968i)), var_0.b, select(!var_0.e.b.x, true, var_0.b.b.x), (_wgslsmith_f_op_f32(1000f + 598f) < arg_2.x) != select(true, true, !var_0.c), Struct_1(select(!vec3<bool>(true, var_0.b.a.x, var_0.b.b.x), vec3<bool>(true, var_0.e.a.x, var_0.c), any(vec3<bool>(var_0.b.b.x, false, var_0.b.a.x))), select(var_0.e.a, vec3<bool>(var_0.b.a.x, var_0.e.b.x, var_0.d), !var_0.c), -236f)), vec4<i32>(var_0.a, 1i << (arg_0 % 32u), select(-43761i, var_0.a, var_0.b.a.x), -var_0.a));
    global0 = ~u_input.a;
    global3 = -var_1.a.a;
    var var_2 = Struct_1(vec3<bool>(!var_0.b.b.x, var_1.b.d, true), !(!var_0.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1186f * -229f)));
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 2>();
    global0 = func_4(~0u, 30232u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-602f)), _wgslsmith_f_op_f32(-507f + 139f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, -456f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1902f, 325f), vec2<f32>(860f, 2104f)))))), vec4<u32>(~_wgslsmith_mult_u32(reverseBits(u_input.a), 0u), func_1(~(~(-1i)), 66025u, -1i), ~_wgslsmith_div_u32(reverseBits(u_input.a), abs(u_input.a)), 4294967295u));
    let var_0 = func_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, ~reverseBits(1u)), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a, 0u, 60887u), vec3<u32>(u_input.a, 0u, 17632u), true), ~vec3<u32>(0u, 0u, u_input.a))), min(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 29296u) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), abs(u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(trunc(385f)))))), vec4<u32>(~u_input.a, ~reverseBits(u_input.a >> (u_input.a % 32u)), min(max(u_input.a, 7258u), func_1(-8913i, u_input.a, -2147483647i)), 1u));
    var var_1 = Struct_2(_wgslsmith_sub_i32(2147483647i, 28701i) << ((var_0 ^ u_input.a) % 32u), Struct_1(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, true)))), 911f), false, all(vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false & all(vec4<bool>(false, false, true, false)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)), true), vec3<bool>(true && all(vec4<bool>(true, true, true, true)), false, all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(step(537f, 1235f))));
    var var_2 = Struct_3(Struct_2(4559i, Struct_1(select(!var_1.e.b, !var_1.e.b, true), var_1.e.a, var_1.e.c), !(!(!var_1.c)), var_1.d, var_1.e), Struct_2(-_wgslsmith_sub_i32(reverseBits(29725i), var_1.a >> (4294967295u % 32u)), var_1.e, any(var_1.e.b), false, Struct_1(vec3<bool>(var_1.c, var_1.b.b.x, var_1.e.b.x), !vec3<bool>(true, var_1.e.b.x, true), -183f)), -firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 41351i, -13722i, var_1.a), vec4<i32>(1i, 2147483647i, var_1.a, var_1.a)), var_1.a, 1i, var_1.a)));
    var_2 = Struct_3(var_2.a, var_2.a, -(~var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(52791u);
}

