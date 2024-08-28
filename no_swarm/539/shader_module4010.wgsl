struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_add_i32(30539i, _wgslsmith_clamp_i32(0i, u_input.c, -5714i)), 1i), vec3<i32>(~firstTrailingBit(u_input.c), u_input.a, ~1i)), -1356i);
    var var_1 = Struct_5(vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(64132i, 1i, -37287i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -9049i, 0i, 2147483647i), vec4<i32>(-1i, -1i, 2147483647i, var_0.b)), u_input.c), (0i & u_input.c) ^ (u_input.a & 0i))));
    var_0 = Struct_4(var_0.a | var_0.a, -_wgslsmith_mod_i32(-_wgslsmith_mult_i32(var_0.a.x, u_input.c), var_0.a.x));
    let var_2 = abs(max(~(u_input.b.x | u_input.b.x), u_input.b.x));
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(19103u, 69518u, var_2, 56678u), vec4<u32>(0u, var_2, 8438u, 1140u), arg_1), reverseBits(~vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(4530u, 25615u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, 1u, 57987u), vec4<u32>(14630u, u_input.b.x, var_2, 19514u)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), ~abs(vec4<u32>(var_2, 48724u, 1u, var_2)))) & _wgslsmith_div_u32(_wgslsmith_sub_u32(var_2, firstLeadingBit(0u)) | 1u, u_input.b.x | (35346u ^ countOneBits(u_input.b.x)));
    return vec4<bool>(any(vec3<bool>(true, true, true)), true, !any(vec2<bool>(false, any(arg_1))), all(vec4<bool>(arg_1.x, true, !arg_1.x, arg_1.x)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(vec4<u32>(u_input.b.x, firstTrailingBit(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0, 1u) >> (vec3<u32>(u_input.b.x, 52842u, var_0) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 0u, u_input.b.x)), var_0), Struct_1(u_input.b.x ^ u_input.b.x, !vec2<bool>(arg_1.x, false & arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-791f, _wgslsmith_f_op_f32(select(arg_0, 726f, arg_1.x)), arg_0) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, 471f, -627f), vec3<f32>(606f, 957f, -1491f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, arg_0, arg_0)))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(29695u, var_0, u_input.b.x, var_0), vec4<u32>(u_input.b.x, u_input.b.x, 33429u, var_0), vec4<u32>(4294967295u, var_0, var_0, 97522u)) | ~vec4<u32>(34150u, u_input.b.x, 27465u, 0u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_0, var_0), vec4<u32>(var_0, 22745u, u_input.b.x, var_0), vec4<u32>(1u, u_input.b.x, var_0, var_0)), ~vec4<u32>(var_0, 19552u, 25965u, 0u), arg_1), vec4<bool>(any(arg_1.zw), true, all(arg_1.ywy), all(arg_1.wxx))), any(vec2<bool>(true, false))));
    let var_2 = var_1.b.b;
    var_1 = Struct_2(countOneBits(vec4<u32>(var_1.b.d.x, 24316u, ~_wgslsmith_div_u32(4294967295u, 19006u), abs(max(u_input.b.x, 38709u)))), Struct_1(_wgslsmith_mod_u32(var_0, var_0), select(arg_1.xz, func_3(_wgslsmith_f_op_f32(-arg_0), arg_1).yz, arg_1.xy), var_1.b.c, vec4<u32>(~abs(4294967295u), u_input.b.x, _wgslsmith_sub_u32(~var_1.a.x, 50934u), 24052u), ~12620i <= firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, 17124i)))));
    var_1 = Struct_2(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.d.zz, var_1.a.yx), var_1.b.a, 4294967295u, var_0)), Struct_1(abs(u_input.b.x), !func_3(-1000f, vec4<bool>(true, true, var_1.b.e, false)).yy, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), arg_0, 813f), select(var_1.b.d, _wgslsmith_add_vec4_u32(vec4<u32>(9599u, var_1.b.a, var_0, u_input.b.x) | var_1.a, ~vec4<u32>(var_0, var_1.b.d.x, var_0, var_0)), arg_1), true));
    return -_wgslsmith_mult_vec2_i32(max(~vec2<i32>(u_input.a, -38357i) ^ vec2<i32>(0i, -20460i), firstLeadingBit(-vec2<i32>(0i, u_input.c))), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -5578i), vec2<i32>(-66401i, u_input.a) >> ((vec2<u32>(0u, u_input.b.x) << (vec2<u32>(58502u, 49262u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_5(-func_4(-291f, func_3(_wgslsmith_f_op_f32(arg_0.c.x * 476f), arg_3)));
    var var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_add_u32(arg_0.d.x, u_input.b.x), select(vec2<bool>(arg_0.b.x, arg_1.x >= _wgslsmith_f_op_f32(select(arg_1.x, arg_0.c.x, arg_3.x))), !(!(!arg_3.xw)), !arg_3.ww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.d ^ firstTrailingBit((arg_0.d << (vec4<u32>(arg_0.a, arg_0.d.x, 0u, u_input.b.x) % vec4<u32>(32u))) << (vec4<u32>(58141u, u_input.b.x, arg_0.d.x, 0u) % vec4<u32>(32u))), arg_0.e);
    var_1 = arg_2;
    let var_3 = vec2<bool>(!var_2.b.x, any(!vec3<bool>(arg_0.b.x, arg_3.x, any(vec4<bool>(true, true, false, arg_0.b.x)))));
    return var_3.x;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-273f)), _wgslsmith_f_op_f32(-849f * _wgslsmith_f_op_f32(-929f + 160f))))) + vec2<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(2412f + 1f), true)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -951f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -1031f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)), select(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, var_0.x))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 704f), vec2<f32>(var_0.x, -937f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1263f, var_0.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))))))));
    let var_1 = ~_wgslsmith_mod_vec2_u32(~(vec2<u32>(62104u, u_input.b.x) & u_input.b) ^ ~u_input.b, ~u_input.b);
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + var_0.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-162f, _wgslsmith_f_op_f32(1881f * var_0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1547f) + -1000f), -430f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f * -330f) - -902f), _wgslsmith_div_f32(var_0.x, 1f), 1463f)), select(!vec3<bool>(func_2(Struct_1(var_1.x, vec2<bool>(true, false), vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.b.x, 1u, 18186u, 16437u), false), vec3<f32>(-425f, -410f, var_0.x), Struct_4(vec3<i32>(23342i, arg_1.a.x, u_input.a), u_input.a), vec4<bool>(true, true, true, true)), true, true), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, true), !(!(var_0.x < -939f)))));
    return vec2<bool>(all(!vec4<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), 30618u == u_input.b.x, func_3(var_0.x, vec4<bool>(false, true, true, true)).x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = Struct_1(u_input.b.x, !select(select(vec2<bool>(true, true), func_1(Struct_5(vec2<i32>(-22702i, 15266i)), Struct_5(vec2<i32>(u_input.c, -1i))), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(-25113i < u_input.c, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, -943f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1295f, 570f, false)))))), ~firstTrailingBit(vec4<u32>(1u, u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(36357u, 26414u)))), !(!any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a | func_4(175f, vec4<bool>(var_1.e, var_1.b.x, var_1.b.x, var_1.b.x)).x, ~(-2147483647i), _wgslsmith_mod_i32(1i, i32(-1i) * -2147483647i)), reverseBits(~vec3<i32>(u_input.c, 1i, u_input.a)) & select(-vec3<i32>(u_input.a, u_input.a, u_input.c), -vec3<i32>(u_input.c, u_input.a, u_input.a), vec3<bool>(var_1.e, true, var_1.e))), ~(-1i), u_input.c);
    var_0 = ~(-(i32(-1i) * -1i));
    var_0 = -_wgslsmith_add_i32(1i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.d.wxz, var_1.c.x, reverseBits(~vec3<u32>(1u, ~u_input.b.x, var_1.d.x)));
}

