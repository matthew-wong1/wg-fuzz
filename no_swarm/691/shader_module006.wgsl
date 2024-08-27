struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 63028u;

var<private> global1: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global1 = any(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), true)));
    let var_0 = countOneBits(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(min(-2147483647i, u_input.a), -40728i), 124i), abs(u_input.c), -25863i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-42533i, u_input.a), vec2<i32>(u_input.a, u_input.a))) & -max(2147483647i, -12013i)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c << (u_input.b % 32u), -54144i, -2147483647i), _wgslsmith_clamp_vec4_i32(var_0 & var_0, var_0 >> (vec4<u32>(4541u, u_input.b, u_input.b, 25297u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.c, var_0.x, -1i), var_0))), (vec4<i32>(var_0.x, var_0.x, u_input.a, 2147483647i) ^ select(vec4<i32>(-86i, 1i, -4948i, 0i), var_0, vec4<bool>(true, false, false, false))) & ~(~vec4<i32>(u_input.c, u_input.a, var_0.x, -1i))));
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), firstLeadingBit(~(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b)))));
    let var_3 = Struct_1(var_1.a);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, 1039f, -1699f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1165f, -577f, 262f), vec3<f32>(544f, -856f, -488f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, 582f, -337f)), vec3<f32>(1988f, 1117f, -571f))), vec3<bool>(_wgslsmith_f_op_f32(sign(-1889f)) < -1000f, true, _wgslsmith_clamp_u32(u_input.b, var_2, var_2) >= var_2)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    global1 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - 1577f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-296f, -605f)) + 918f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(615f, 1712f, -602f))), _wgslsmith_f_op_vec3_f32(func_3()), !arg_1.x))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + var_0.x)));
    var var_2 = Struct_2(~(~(~reverseBits(vec3<u32>(4294967295u, 38590u, 1u)))), Struct_1(_wgslsmith_dot_vec2_i32(select(max(arg_2.yy, vec2<i32>(-1i, arg_2.x)), select(vec2<i32>(u_input.a, arg_2.x), vec2<i32>(0i, 21874i), arg_1.x), vec2<bool>(false, false)), arg_2.xy)), Struct_1(u_input.a), arg_2.x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(197f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x))))));
    return Struct_2(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_3, u_input.b)), vec3<u32>(select(4294967295u, arg_3, arg_0.x), _wgslsmith_sub_u32(u_input.b, var_2.a.x), 1u)) << (~vec3<u32>(arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_3), vec3<u32>(15691u, var_2.a.x, 1u)), arg_3 & 46533u) % vec3<u32>(32u)), var_2.b, Struct_1(~(~(-arg_2.x))), arg_2.x);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = func_2(!vec3<bool>(!all(vec4<bool>(false, arg_1.x, false, arg_1.x)), true, true), arg_1.wz, vec4<i32>(_wgslsmith_add_i32(u_input.c, ~u_input.a), ~u_input.a, _wgslsmith_div_i32(abs(-10002i) & u_input.a, 0i), 1i), u_input.b);
    let var_1 = Struct_1(-((u_input.c >> (1u % 32u)) ^ 25295i));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(min(var_0.b.a, -1i), var_0.c.a), u_input.c, 1i), vec3<i32>(-2147483647i, 0i, 0i)), firstLeadingBit(min(_wgslsmith_add_vec3_i32(max(vec3<i32>(1i, var_0.c.a, u_input.c), vec3<i32>(-66952i, -35707i, 0i)), min(vec3<i32>(13577i, var_1.a, var_1.a), vec3<i32>(-2147483647i, u_input.a, 0i))), vec3<i32>(_wgslsmith_mod_i32(u_input.a, 52240i), var_0.b.a, 1i))));
    let var_3 = vec3<u32>(u_input.b, ~((_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(6412u, var_0.a.x, u_input.b)) & firstLeadingBit(0u)) | ~1u), abs(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(var_0.a.zz, var_0.a.yx)) & reverseBits(func_2(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.zy, vec4<i32>(10783i, u_input.a, -2147483647i, var_2), 62891u).a.x)));
    let var_4 = var_0.c;
    return vec2<i32>(-2147483647i, ~abs(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~countOneBits(vec3<u32>(u_input.b, 4294967295u, 0u))) >> (~vec3<u32>(~u_input.b, ~u_input.b, ~u_input.b) % vec3<u32>(32u)), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.c)), func_1(742f, vec4<bool>(false, true, true, true))), -u_input.c)), func_2(!vec3<bool>(false, true, all(vec4<bool>(true, false, true, false))), select(vec2<bool>(u_input.b <= u_input.b, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), countOneBits(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_u32(u_input.b << (4294967295u % 32u), ~(~46017u))).c, 2147483647i);
    var_0 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_0.a.x, 0u, 1u), _wgslsmith_dot_vec2_u32(var_0.a.zy, vec2<u32>(var_0.a.x, u_input.b)), 4294967295u >> (var_0.a.x % 32u)), ~(~vec3<u32>(u_input.b, 4231u, var_0.a.x))), var_0.a), Struct_1(func_2(vec3<bool>(true, true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), vec4<i32>(-6086i, var_0.b.a, var_0.d, -1i) | select(vec4<i32>(u_input.c, var_0.d, 2147483647i, -30442i), vec4<i32>(2147483647i, -2147483647i, 49347i, -37105i), vec4<bool>(true, true, false, true)), 4294967295u).b.a), func_2(vec3<bool>(!select(true, false, true), true, false), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), firstLeadingBit(abs(vec4<i32>(u_input.a, 24306i, u_input.a, -65474i) & vec4<i32>(var_0.b.a, 1i, u_input.a, var_0.b.a))), u_input.b | _wgslsmith_mod_u32(u_input.b, u_input.b)).b, -1i);
    let var_1 = func_2(!(!vec3<bool>(u_input.a == 18624i, all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, true)))), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))), vec2<bool>(true, true)), ~select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.d, u_input.a, -2147483647i), vec4<i32>(var_0.c.a, -1i, u_input.a, 1i)), max(vec4<i32>(var_0.c.a, u_input.c, 0i, -26868i), vec4<i32>(-45313i, u_input.a, u_input.a, 2147483647i)), vec4<bool>(true, true, true, true)) >> (~(~vec4<u32>(10598u, 16176u, 4294967295u, u_input.b)) % vec4<u32>(32u)), ~var_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1116f, _wgslsmith_f_op_vec3_f32(func_3()).x))));
    var var_3 = func_2(select(vec3<bool>(_wgslsmith_div_u32(var_1.a.x, 2862u) < (4294967295u >> (var_1.a.x % 32u)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), true), vec3<bool>(all(vec4<bool>(false, false, false, false)) || false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), all(vec2<bool>(true, true))), vec3<bool>(!(var_0.a.x > 0u), all(vec2<bool>(true, false)) && select(true, true, false), true | any(vec2<bool>(false, false)))), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), true), vec2<bool>(any(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true))), vec2<bool>(true, any(vec4<bool>(true, false, false, false))))), select(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.a, u_input.c, var_0.c.a, var_0.c.a), vec4<i32>(var_1.c.a, u_input.c, 14404i, u_input.a), vec4<i32>(-1i, var_1.c.a, 0i, 0i)) & vec4<i32>(var_1.d, u_input.a, 2581i, u_input.c)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, 19619i, 1i), 5241i, min(u_input.c, u_input.c)), _wgslsmith_mult_i32(u_input.c, select(var_1.c.a, -37322i, true)), var_0.b.a, var_0.b.a), true), _wgslsmith_mod_u32(var_0.a.x, ((16330u & var_1.a.x) & (u_input.b & 36284u)) << ((u_input.b | 1u) % 32u))).c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u), ~(-min(u_input.a ^ u_input.c, _wgslsmith_sub_i32(-54463i, 10151i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(1369f)))), vec2<f32>(-1230f, _wgslsmith_f_op_vec3_f32(func_3()).x))), var_0.a.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -198f)));
}

