struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec4_i32(u_input.c << (vec4<u32>(0u, 0u, 30372u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(max(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-55357i, u_input.b.x, -4588i, 2147483647i), u_input.b, vec4<bool>(false, true, false, true)), max(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), _wgslsmith_add_vec4_i32(firstLeadingBit(u_input.b), ~u_input.c)), u_input.b));
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, select(~_wgslsmith_div_u32(2953u, 4294967295u), _wgslsmith_mod_u32(7646u, ~95416u), true), 11463u), ~vec3<u32>(min(_wgslsmith_mult_u32(46712u, 19158u), abs(0u)), 0u, _wgslsmith_div_u32(25734u, _wgslsmith_add_u32(1u, 59012u))), ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33832u, 59157u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(55900u, 60155u, 4294967295u), vec3<u32>(1u, 41714u, 18181u), vec3<u32>(0u, 78289u, 49819u))), vec3<u32>(1u, 1u, 1u)));
    var var_2 = countOneBits(select(~(-_wgslsmith_div_vec3_i32(var_0.wxw, u_input.c.wzw)), select(vec3<i32>(-31698i, -2471i, -1i) ^ var_0.wzx, u_input.b.xyw, true) & vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.xxy, var_0.yyy), 1i, u_input.b.x), true));
    var var_3 = Struct_1(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, _wgslsmith_f_op_f32(-392f + -728f))))), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), 634f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(275f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-537f)), 216f)), -1490f, _wgslsmith_f_op_f32(f32(-1f) * -403f))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f + var_3.b.x)))), var_3.e.x, _wgslsmith_f_op_f32(sign(497f)));
    return _wgslsmith_div_vec4_f32(var_3.e, _wgslsmith_f_op_vec4_f32(-var_3.e));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.d + arg_2.d), 645f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_2.e.zw * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.x, var_0.x)), _wgslsmith_f_op_f32(-arg_0.d)), arg_2.e.yz))), arg_2.a);
    let var_2 = vec4<bool>(true, false, !(!(_wgslsmith_f_op_f32(f32(-1f) * -257f) <= _wgslsmith_f_op_f32(arg_2.b.x - arg_2.d))), false);
    var var_3 = arg_2;
    var var_4 = ((!any(vec3<bool>(false, false, false)) && false) || false) | (~(~u_input.c.x) <= u_input.b.x);
    return vec3<bool>(false, false | all(var_2), all(!vec4<bool>(true, arg_0.c.x, all(var_2), -233f <= var_0.x)));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    return select(!vec3<bool>(arg_0.b, false, true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), func_4(Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), arg_0.a.x), vec2<bool>(any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), arg_0.b), -1503f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1000f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(func_3())))), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 86943u, 8017u)), reverseBits(~vec3<u32>(17762u, 60447u, 4294967295u))), Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, arg_0.b), false)), _wgslsmith_f_op_vec2_f32(sign(arg_0.a)), !select(vec2<bool>(false, true), vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(628f, -917f, -371f, -842f)))))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.c.x < 0i), vec3<bool>(all(vec2<bool>(true, false)), false, true)), select(vec3<bool>(true, select(false, true, false), true), func_2(Struct_2(arg_0.zx, false)), false), true);
    var var_1 = var_0.x;
    var var_2 = vec3<i32>(~(~18531i >> (0u % 32u)), 0i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -9299i), reverseBits(firstLeadingBit(2147483647i)), -2147483647i));
    let var_3 = true;
    let var_4 = !var_0.xx;
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -550f), true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-701f))))))), arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2.wwx;
    var var_1 = Struct_1(arg_0.a && arg_0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, arg_0.d) * vec2<f32>(517f, arg_0.b.x)), vec2<f32>(1000f, arg_0.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.xz), _wgslsmith_f_op_vec2_f32(arg_0.e.yz + vec2<f32>(arg_0.e.x, arg_0.e.x))))), arg_0.b)), !func_2(Struct_2(arg_0.e.yy, arg_0.a)).xy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(max(-469f, _wgslsmith_f_op_f32(abs(810f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(select(arg_0.e.xwz, vec3<f32>(847f, 279f, arg_0.e.x), arg_3))))))));
    var var_2 = arg_0.c;
    var var_3 = Struct_1(true, var_1.e.yz, vec2<bool>(true, true), var_1.e.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, -663f, 934f, _wgslsmith_f_op_f32(arg_0.e.x - -110f)), _wgslsmith_f_op_vec4_f32(min(arg_0.e, var_1.e))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -924f), var_1.e.x, -439f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.e, arg_0.e)) + arg_0.e), any(vec2<bool>(true, true)))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, arg_0.e.x)))), !var_2.x);
    return Struct_1(any(func_4(arg_0, firstTrailingBit(vec3<u32>(var_0.x, arg_2.x, 4294967295u)), Struct_1(var_1.c.x, vec2<f32>(var_1.d, var_1.d), vec2<bool>(var_4.b, true), var_4.a.x, vec4<f32>(var_1.e.x, 218f, -1729f, 1000f))).yx) | (_wgslsmith_dot_vec3_u32(vec3<u32>(8772u, var_0.x, var_0.x), vec3<u32>(var_0.x, 5553u, var_0.x)) >= 73638u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-325f, _wgslsmith_f_op_f32(629f * var_4.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.d))))), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(452f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.e.x)), _wgslsmith_f_op_f32(-1295f * 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x + var_4.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) + _wgslsmith_f_op_f32(trunc(-2182f))) - arg_0.e.x), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(arg_0.e.ywy)).x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.d))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(exp2(arg_0.e.xz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(723f, arg_1.a.x)))))))), !arg_1.b);
    let var_1 = ~abs(~firstTrailingBit(36910u));
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(0i, _wgslsmith_mult_i32(u_input.c.x | -56373i, -40567i) << (countOneBits(_wgslsmith_mod_u32(27182u, var_1)) % 32u)));
    var var_3 = ~_wgslsmith_mult_vec3_u32(select(countOneBits(~vec3<u32>(var_1, var_1, var_1)), vec3<u32>(var_1, var_1, 1u) & countOneBits(vec3<u32>(15726u, 1u, 65576u)), vec3<bool>(u_input.c.x <= 0i, func_4(arg_0, vec3<u32>(4294967295u, var_1, 1u), arg_0).x, !arg_0.a)), _wgslsmith_mod_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 41353u, 1u), vec3<u32>(var_1, var_1, var_1)), vec3<u32>(9347u, var_1, var_1)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, var_1, var_1), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1, 4294967295u), vec3<u32>(1u, var_1, var_1)), vec3<u32>(7146u, 1u, 72101u))));
    var_3 = ~(~vec3<u32>(~var_1, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(92016u, var_3.x, var_3.x, var_1), vec4<u32>(1u, var_1, var_1, var_3.x)), firstTrailingBit(16827u), countOneBits(4294967295u)), ~firstLeadingBit(25139u)));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 790f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.x - -623f), _wgslsmith_div_f32(var_0.a.x, -475f))))), 1760f), all(select(select(!vec4<bool>(true, arg_0.a, false, arg_0.a), select(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(var_0.b, true, false, false), false), vec4<bool>(true, var_0.b, arg_0.c.x, arg_0.c.x)), !select(vec4<bool>(arg_1.b, false, false, var_0.b), vec4<bool>(arg_1.b, arg_1.b, true, arg_0.a), false), vec4<bool>(arg_0.a, true, !arg_1.b, !arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-57136i, ~u_input.a);
    var var_1 = func_6(func_5(Struct_1(!any(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-307f, -1603f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2062f, -587f) - vec2<f32>(1347f, 964f)), any(vec4<bool>(true, false, false, false)))), vec2<bool>(50964i >= u_input.b.x, true), _wgslsmith_f_op_f32(min(-298f, -521f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-664f, -1000f, 279f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-156f, 1000f, -845f, 1353f))))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)), vec4<u32>(1u, 10591u, ~13327u, select(0u, 32601u, true)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(74482u, 4294967295u, 0u, 22931u)) % vec4<u32>(32u)), vec3<bool>(true, !any(vec4<bool>(false, true, false, true)), true)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-513f, -1184f)), func_5(Struct_1(false, vec2<f32>(-530f, 1001f), vec2<bool>(false, true), 1732f, vec4<f32>(646f, 1092f, 536f, 1545f)), false, vec4<u32>(18919u, 1u, 9471u, 1u), vec3<bool>(false, false, true)).e.x)), false));
    var var_2 = func_5(func_5(Struct_1(!var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1482f, 820f), vec2<f32>(-771f, var_1.a.x), false))), !select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, true), var_1.b), var_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), any(vec2<bool>(!var_1.b, var_1.b)), vec4<u32>(36679u, ~abs(18250u), 1u, _wgslsmith_clamp_u32(4294967295u, 1u, 1u)), !vec3<bool>(all(vec4<bool>(true, true, var_1.b, var_1.b)), true & var_1.b, !var_1.b)), any(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_1.a.x, var_1.a.x)), func_5(Struct_1(var_1.b, var_1.a, vec2<bool>(true, false), var_1.a.x, vec4<f32>(var_1.a.x, 1199f, var_1.a.x, 686f)), false, vec4<u32>(0u, 1u, 1u, 73228u), vec3<bool>(true, var_1.b, var_1.b)).a)).xy), vec4<u32>(~(~4294967295u), select(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 75879u), vec2<u32>(65920u, 1u)), !var_1.b), 37595u, _wgslsmith_sub_u32(countOneBits(select(1u, 17412u, false)), ~_wgslsmith_mult_u32(72008u, 27897u))), !(!select(!vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(var_1.b, false, var_1.b), !vec3<bool>(var_1.b, var_1.b, true))));
    var_1 = func_6(Struct_1(func_2(Struct_2(var_1.a, true)).x, var_2.b, !func_4(Struct_1(var_2.c.x, var_2.b, vec2<bool>(var_1.b, var_1.b), 108f, var_2.e), ~vec3<u32>(84627u, 1637u, 1u), func_5(Struct_1(true, vec2<f32>(-1766f, 589f), vec2<bool>(false, false), var_2.d, var_2.e), var_2.a, vec4<u32>(4294967295u, 33157u, 4294967295u, 1u), vec3<bool>(false, false, var_2.a))).zy, 1000f, var_2.e), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, func_5(Struct_1(false, var_2.b, vec2<bool>(false, false), var_2.d, var_2.e), var_2.a, vec4<u32>(2081u, 25016u, 1u, 4294967295u), vec3<bool>(var_2.c.x, false, false)).b.x) - _wgslsmith_f_op_vec2_f32(var_2.e.yw + _wgslsmith_f_op_vec2_f32(-var_1.a))), func_5(func_5(Struct_1(var_1.b, vec2<f32>(var_1.a.x, var_2.e.x), var_2.c, var_2.b.x, var_2.e), !var_1.b, ~vec4<u32>(38036u, 88394u, 22477u, 0u), vec3<bool>(true, true, var_1.b)), all(select(vec4<bool>(var_2.c.x, var_1.b, true, var_1.b), vec4<bool>(true, var_2.a, false, var_2.a), vec4<bool>(true, true, true, false))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 5257u, 1u), vec4<u32>(24886u, 19898u, 4294967295u, 15109u))), vec3<bool>(var_2.a, any(vec3<bool>(true, var_2.a, true)), true)).a));
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(55169u, 1u, 4294967295u)), select(vec3<u32>(0u, 0u, 21664u), vec3<u32>(0u, 0u, 16558u), vec3<bool>(var_2.a, true, var_2.a)) ^ abs(vec3<u32>(15390u, 20779u, 30652u))), ~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-269f, -734f, _wgslsmith_f_op_f32(var_2.b.x - 1059f))))), 1u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18880u), ~vec2<u32>(4294967295u, 28967u)));
}

