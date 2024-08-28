struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(422f, arg_1.c) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, -435f) + vec2<f32>(arg_1.c, -180f))))), arg_1.a || true, arg_0.x, u_input.c);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -111f))), u_input.d.ywz, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, -661f) - var_0.a), var_0.a, vec2<bool>(var_0.b, false))))), select(arg_1.b, !arg_1.a, true) & ((u_input.d.x | 53783u) >= reverseBits(u_input.d.x)), 1i, var_0.d));
    let var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(max(var_0.a.x, arg_1.c)), ~max(firstLeadingBit(var_1.b), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d, 4294967295u, var_1.b.x) << (vec3<u32>(26394u, 1u, u_input.d.x) % vec3<u32>(32u)), var_1.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a))), !(!var_2 || all(vec3<bool>(var_2, true, arg_1.b))), -32364i, abs(4294967295u)));
    let var_4 = !vec4<bool>(arg_1.b, u_input.a.x >= _wgslsmith_mult_i32(arg_0.x, arg_0.x), true, (var_3.c.d | _wgslsmith_clamp_u32(var_3.b.x, var_3.c.d, 1u)) == var_1.b.x);
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(-1071f, -207f), 241f), true, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, abs(-15998i), abs(arg_1.x), min(0i, 1i)), countOneBits(vec4<i32>(u_input.a.x, -2147483647i, -10499i, 2147483647i))), _wgslsmith_sub_i32(-18447i, i32(-1i) * -1i), any(vec2<bool>(true, true))), u_input.d.x);
    var var_1 = 2147483647i;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), true, (_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, var_0.c, u_input.b), vec4<i32>(u_input.b, -23502i, arg_1.x, -75216i)), _wgslsmith_sub_i32(arg_1.x, u_input.e.x)) & arg_1.x) << (var_0.d % 32u), u_input.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), (1u > abs(_wgslsmith_add_u32(arg_0, 4294967295u))) || (!var_0.b && true), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.x, arg_1.x), ~firstTrailingBit(u_input.a.x)), firstTrailingBit(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, 41274u, 3014u), u_input.d.zxx, !var_0.b), ~(~vec3<u32>(u_input.d.x, arg_0, 72461u)))));
    let var_2 = !(!(var_0.a.x <= var_0.a.x) && select(all(vec2<bool>(var_0.b, var_0.b)), var_0.b, var_0.b));
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 20726u, 5897u), _wgslsmith_div_vec4_u32(~countOneBits(max(u_input.d, u_input.d)), u_input.d));
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(9639u, max(u_input.c, 0u)), vec2<u32>(min(u_input.d.x, func_4(func_3(vec3<i32>(-7479i, -2147483647i, 16464i), Struct_4(true, true, 839f)), _wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(1i, u_input.b)))), ((1u >> (u_input.c % 32u)) & (u_input.c ^ 53613u)) ^ countOneBits(_wgslsmith_clamp_u32(29161u, u_input.c, 0u))));
    var var_1 = vec4<u32>(~u_input.c, firstLeadingBit(94805u), ~2389u, u_input.d.x);
    let var_2 = -1i;
    var var_3 = Struct_2(-438f, u_input.d.yzx, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(953f * 1271f), _wgslsmith_f_op_f32(min(-1971f, -1413f))))), any(select(arg_0, select(arg_0, arg_0, vec3<bool>(false, arg_0.x, true)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i, u_input.e.x, u_input.e.x) >> (u_input.d.yxy % vec3<u32>(32u))), vec3<i32>(~var_2, min(0i, -1i), select(-1i, u_input.b, false))), 0u));
    return Struct_3(var_3.c);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<bool>(all(select(vec4<bool>(all(vec4<bool>(arg_3, arg_3, arg_2.a.b, arg_1)), all(arg_0), any(vec3<bool>(true, false, false)), true), vec4<bool>(true, !arg_1, true, all(vec2<bool>(arg_1, arg_3))), arg_2.a.b)), arg_3, !any(select(vec4<bool>(arg_3, true, arg_2.a.b, true), vec4<bool>(false, arg_2.a.b, true, true), all(arg_0))), true);
    var var_1 = Struct_4(~0u < u_input.d.x, all(var_0.xzx), _wgslsmith_f_op_f32(f32(-1f) * -545f));
    let var_2 = true;
    var_1 = Struct_4(var_1.b, var_0.x, arg_2.a.a.x);
    var_1 = Struct_4(1u == _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.d.xzx), countOneBits(vec3<u32>(arg_2.a.d, arg_2.a.d, 4294967295u))), func_2(select(!select(var_0.yzx, vec3<bool>(var_1.a, arg_0.x, false), var_0.yyy), var_0.yzw, -540f == _wgslsmith_f_op_f32(-arg_2.a.a.x))).a.b, var_1.c);
    return arg_2.a;
}

fn func_6(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(arg_3);
}

fn func_1() -> Struct_2 {
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(32110u, 82802u), u_input.d.ww, u_input.d.yx), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.yz, vec2<u32>(4294967295u, u_input.c)), vec2<u32>(u_input.c, 4294967295u))) & firstLeadingBit(reverseBits(~u_input.d.xz)), ~abs(u_input.e.x), func_5(!vec2<bool>(true, u_input.c <= 1u), true, func_2(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), u_input.c >= 58745u))));
    var var_1 = Struct_4(var_0.a.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-797f, var_0.a.a.x)) * var_0.a.a.x));
    var_1 = Struct_4(true, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(select(vec3<bool>(var_0.a.b, var_0.a.b, false), vec3<bool>(var_0.a.b, true, true), false)).a.a.x))));
    let var_2 = 4294967295u;
    var var_3 = var_1.a;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_add_vec3_u32(vec3<u32>(67773u, var_2, _wgslsmith_div_u32(0u, var_0.a.d ^ u_input.d.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, var_0.a.d), u_input.d.zyx, firstTrailingBit(vec3<u32>(var_2, 40447u, var_0.a.d))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, var_0.a.d, 22230u), vec3<u32>(20035u, u_input.c, var_2), vec3<u32>(var_0.a.d, var_0.a.d, 6459u)))), func_2(!vec3<bool>(!var_0.a.b, select(var_0.a.b, true, var_0.a.b), var_1.b)).a);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> StorageBuffer {
    let var_0 = true;
    var var_1 = func_2(select(vec3<bool>(arg_0.c.b, !select(arg_0.c.b, arg_0.c.b, true), arg_2), select(!select(vec3<bool>(arg_0.c.b, arg_2, var_0), vec3<bool>(arg_2, true, arg_0.c.b), arg_0.c.b), select(vec3<bool>(arg_2, true, arg_2), select(vec3<bool>(var_0, false, true), vec3<bool>(false, true, var_0), true), select(vec3<bool>(var_0, var_0, arg_2), vec3<bool>(arg_0.c.b, true, true), vec3<bool>(arg_0.c.b, false, arg_2))), select(!vec3<bool>(arg_0.c.b, var_0, arg_0.c.b), !vec3<bool>(var_0, var_0, arg_2), arg_0.c.b)), vec3<bool>(false, func_1().c.b, 44397u < func_6(-1156f, arg_0.b.xx, 28220i, Struct_1(vec2<f32>(arg_0.c.a.x, arg_0.a), var_0, 0i, u_input.c)).a.d)));
    var var_2 = false;
    var_1 = Struct_3(func_2(select(select(!vec3<bool>(true, var_1.a.b, arg_2), vec3<bool>(var_0, arg_0.c.b, false), var_1.a.b), vec3<bool>(!arg_2, var_1.a.b, arg_2), func_2(!vec3<bool>(arg_0.c.b, true, var_0)).a.b)).a);
    var_2 = false;
    return StorageBuffer(0u, vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -44664i, arg_0.c.c, -57077i), vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i)), ~vec4<i32>(-14760i, u_input.b, -1i, -2147483647i)), arg_0.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(39406u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 42993u, 0u, u_input.d.x), u_input.d)), min(countOneBits(u_input.d.wy), max(firstTrailingBit(u_input.d.zw), countOneBits(u_input.d.yw)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, -1419f))))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstLeadingBit(-min(-2147483647i, u_input.e.x)), ~(~_wgslsmith_sub_u32(var_0.x, u_input.d.x))));
    let var_2 = ~abs(countOneBits(1u));
    let var_3 = -vec3<i32>(~_wgslsmith_mod_i32(-24283i & var_1.a.c, u_input.a.x), select(var_1.a.c, ~min(u_input.a.x, 10724i), true), i32(-1i) * -9639i);
    var var_4 = vec4<bool>(true, all(vec3<bool>(true, true, true)), (-37378i | _wgslsmith_sub_i32(var_3.x, i32(-1i) * -22044i)) > 44452i, !var_1.a.b);
    let x = u_input.a;
    s_output = func_7(func_1(), min(var_2 & (var_0.x | var_2), ~20087u), true);
}

