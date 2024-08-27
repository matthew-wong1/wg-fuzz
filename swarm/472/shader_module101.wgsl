struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4) -> bool {
    let var_0 = vec3<bool>(true, true, true);
    return all(vec4<bool>(false, !var_0.x, true, true));
}

fn func_3() -> i32 {
    var var_0 = ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(~75267u, 1u), 1u));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-316f)), -258f))) - -545f)));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, ~_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c >> ((u_input.a.x | u_input.a.x) % 32u)), firstLeadingBit(-vec3<i32>(-2147483647i, u_input.c, 1i)) << (select(~vec3<u32>(u_input.a.x, 0u, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<bool>(true, true, true)) % vec3<u32>(32u))), firstLeadingBit(countOneBits(vec3<i32>(u_input.c, 1i, 1i) << (abs(vec3<u32>(55465u, u_input.b, 1u)) % vec3<u32>(32u)))));
    var_2 = 1u;
    return -u_input.c;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a), ~34715u), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(267f, arg_2.x, arg_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -992f), Struct_1(~(u_input.b & u_input.b) >> (u_input.a.x % 32u), u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, -1161f, arg_2.x))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 2184f, arg_0)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 663f)))))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2059f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(select(arg_0, -512f, true)))))), Struct_1(6753u, ~(1u & u_input.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.c)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, var_0.b, arg_0)), _wgslsmith_f_op_vec3_f32(select(var_0.a.c, vec3<f32>(842f, arg_2.x, var_0.b), true))))))));
    var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(58119u, 62162u), vec2<u32>(var_0.c.b, 32164u)) | (44446u ^ ~var_0.a.b), 1u, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), 2553f, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1431f * 525f), _wgslsmith_f_op_f32(var_0.b + -223f)))), _wgslsmith_f_op_f32(arg_2.x * -1401f), Struct_1((abs(u_input.a.x) | (u_input.a.x | 1145u)) >> (~min(14842u, 32516u) % 32u), _wgslsmith_mod_u32(var_0.c.a, var_0.a.b), var_0.a.c));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~((vec3<u32>(var_0.a.b, 553u, u_input.b) ^ vec3<u32>(6379u, var_0.c.b, var_0.c.a)) << ((vec3<u32>(var_0.a.a, 0u, 4294967295u) & vec3<u32>(u_input.a.x, 30845u, 57843u)) % vec3<u32>(32u))), vec3<u32>(0u, 4294967295u, 0u)), 10894u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(select(u_input.b, u_input.a.x, false)), abs(u_input.b), u_input.a.x), 0u));
    var var_2 = !(arg_3.x == u_input.c);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1342f)), _wgslsmith_div_f32(-1580f, _wgslsmith_div_f32(830f, 1000f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 789f))) + _wgslsmith_f_op_f32(arg_1.x * -1008f)))), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yz)))), -vec2<i32>(~func_3(), u_input.c)));
    var var_2 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(u_input.a >> (vec2<u32>(u_input.a.x, arg_0.c.b) % vec2<u32>(32u))), u_input.a, _wgslsmith_add_vec2_u32(~vec2<u32>(34957u, 0u), reverseBits(u_input.a))), select(u_input.a, vec2<u32>(0u, arg_0.a.b) & (u_input.a >> (u_input.a % vec2<u32>(32u))), !vec2<bool>(var_0, var_0)));
    var_2 = vec2<u32>(var_2.x, 1u);
    var_2 = u_input.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, !all(vec3<bool>(false, false, true)), !func_1(vec4<u32>(u_input.a.x, 46398u, 4294967295u, 1u), Struct_4(vec3<u32>(u_input.b, u_input.a.x, u_input.b), Struct_1(u_input.a.x, 70u, vec3<f32>(1000f, 1941f, -378f)), u_input.a)), select(func_2(Struct_3(Struct_1(4294967295u, 1u, vec3<f32>(758f, -1000f, -235f)), 145f, Struct_1(u_input.a.x, u_input.b, vec3<f32>(1511f, -624f, 1332f))), vec3<f32>(437f, -1600f, -1469f)), any(vec2<bool>(true, true)), true)), (true != all(vec4<bool>(true, true, true, false))) != (true | all(vec3<bool>(true, true, false))));
    var var_1 = 9095i;
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = select(select(select(select(!vec2<bool>(var_2.x, true), !vec2<bool>(var_2.x, var_0.x), vec2<bool>(true, false)), !vec2<bool>(var_0.x, true), var_0.zz), select(var_2.xy, !select(var_0.yz, vec2<bool>(var_2.x, true), var_0.x), true), var_0.zz), vec2<bool>(all(!vec2<bool>(var_2.x, var_0.x)), any(select(select(vec2<bool>(false, false), var_2.wx, false), !var_0.xz, vec2<bool>(var_2.x, true)))), !var_2.zx);
    var var_4 = Struct_5(-1i, Struct_2(~(vec4<u32>(u_input.b, u_input.a.x, 1u, 49025u) | ~vec4<u32>(4294967295u, u_input.b, 59376u, u_input.a.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 9307i), vec2<i32>(31622i, u_input.c)), firstTrailingBit(vec2<i32>(-23554i, -25692i))) ^ vec2<i32>(i32(-1i) * -1i, 0i), Struct_1(120820u, ~(~u_input.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, 202f, 653f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1209f, 355f, 414f) - vec3<f32>(146f, 1087f, 1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1922f)), -731f)), _wgslsmith_f_op_f32(-1f))), func_2(Struct_3(Struct_1(4294967295u, 74765u, vec3<f32>(-1339f, -416f, 2523f)), _wgslsmith_f_op_f32(f32(-1f) * -175f), Struct_1(u_input.a.x, 4294967295u, vec3<f32>(-721f, 1000f, -1000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1802f, -1246f, 137f)))))) == (_wgslsmith_f_op_f32(round(1f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-223f, -1000f)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.b.x, vec2<u32>(select(4294967295u, ~(~var_4.b.c.b), true), var_4.b.a.x << (_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.a.x), 1u ^ var_4.b.a.x) % 32u)), vec3<i32>(_wgslsmith_div_i32(13995i, var_4.a), ~(1i & u_input.c), -1i) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -11263i, 5592i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.b.b.x, -1i, u_input.c), vec3<i32>(6149i, -2147483647i, u_input.c)), (vec3<i32>(var_4.b.b.x, -46114i, 1i) << (var_4.b.a.zzz % vec3<u32>(32u))) ^ -vec3<i32>(u_input.c, 26056i, -33124i)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b.d), var_4.b.c.c.x)))), ~_wgslsmith_div_vec3_u32(var_4.b.a.yyz, ~(~vec3<u32>(29659u, 57098u, 69492u))));
}

