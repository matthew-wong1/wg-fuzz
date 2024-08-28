struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_4(firstTrailingBit(_wgslsmith_sub_u32(~arg_0.c.a, 47209u & u_input.b)) & u_input.b, arg_0, arg_0, ~(-u_input.c), Struct_1(4294967295u));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1000f, _wgslsmith_div_f32(arg_0.d, 1167f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d, 1359f, var_0.b.d)))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.d, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1121f, -1630f, var_0.c.d)))))));
    let var_2 = var_0;
    let var_3 = Struct_4(min(abs(global0.x), ~_wgslsmith_mod_u32(~global0.x, abs(var_2.c.c.a))), var_2.b, arg_0, i32(-1i) * -var_0.d, var_0.c.c);
    var var_4 = firstTrailingBit(~_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, var_3.d, -36836i)), vec3<i32>(var_2.d, var_3.d, 2147483647i))) | (_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(11212i, 0i, var_0.d) & vec3<i32>(-33660i, var_2.d, -36759i)), _wgslsmith_add_vec3_i32(vec3<i32>(-8282i, var_0.d, 62761i), vec3<i32>(var_0.d, var_0.d, var_3.d)), countOneBits(firstLeadingBit(vec3<i32>(2147483647i, 1i, var_3.d)))) & max(vec3<i32>(-var_0.d, _wgslsmith_div_i32(u_input.c, u_input.c), 1i), vec3<i32>(var_3.d, -1i, select(0i, var_2.d, false))));
    return ~u_input.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> vec2<u32> {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(~(~22888u), abs(global0.x))), _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yy, u_input.a.xw), u_input.a.zx), _wgslsmith_mult_vec2_u32(u_input.a.zy ^ u_input.a.yw, _wgslsmith_sub_vec2_u32(u_input.a.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), u_input.a.wz)))));
    let var_0 = arg_1.e.x;
    global0 = ~u_input.a.xy;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    var var_2 = arg_1.b;
    return u_input.a.zw;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<bool> {
    global0 = func_4(vec2<bool>(arg_1.c.a, !all(vec4<bool>(false, true, true, true))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.d * arg_0.x), arg_1.b.b.x)), arg_0.x, -1305f, _wgslsmith_f_op_f32(1610f * _wgslsmith_f_op_f32(-274f - -1000f))), arg_1.c.c, arg_1.c.c, Struct_1(reverseBits(countOneBits(global0.x))), vec4<bool>(!arg_1.c.a, arg_1.d <= 11729i, true, func_3(Struct_3(arg_1.b.a, vec2<f32>(-1026f, -782f), arg_1.e, arg_1.b.d)) == 74602u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_1.b.d))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(894f, -1590f), arg_1.c.d))))), -_wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(arg_1.d, u_input.c, -11208i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-57045i, -1i, -1i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d, 0i, 1i, 32768i), vec4<i32>(u_input.c, 2147483647i, -27726i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 31625i, u_input.c, -63472i), vec4<i32>(arg_1.d, 2147483647i, 30588i, 24938i)))));
    let var_0 = select(min(-vec3<i32>(~39780i, 2147483647i, abs(u_input.c)), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.d, 20520i, arg_1.d), firstTrailingBit(vec3<i32>(arg_1.d, u_input.c, 0i))) >> (vec3<u32>(1u, global0.x | 28950u, 0u) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-37890i, max(arg_1.d, -30238i))), -16263i, i32(-1i) * -2147483647i), arg_1.b.a);
    let var_1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(36119u, func_4(vec2<bool>(true, false), Struct_2(arg_0, Struct_1(global0.x), Struct_1(1u), Struct_1(arg_1.a), vec4<bool>(arg_1.c.a, arg_1.c.a, true, true)), 899f, vec4<i32>(40302i, 2147483647i, 6069i, arg_1.d)).x, ~global0.x, 1u), u_input.a)));
    let var_2 = var_0.x ^ abs(-1i);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(arg_1.d, arg_1.d), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, 0i, var_2, var_2), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_1.d, -65205i, var_2), vec4<i32>(0i, arg_1.d, arg_1.d, -2147483647i))), -var_2, i32(-1i) * -2147483647i), ~_wgslsmith_add_vec3_i32(select(vec3<i32>(-2147483647i, var_0.x, var_2), var_0, true), -vec3<i32>(arg_1.d, var_0.x, -1i))));
    return vec4<bool>(arg_1.c.a, arg_1.b.a || (arg_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1529f * arg_0.x) - arg_0.x)), false, any(select(!(!vec3<bool>(arg_1.b.a, arg_1.b.a, true)), !vec3<bool>(arg_1.c.a, true, true), ~(-1855i) != firstLeadingBit(var_3.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(arg_0.x, -1658f))), -1099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-484f, arg_0.x)) - _wgslsmith_f_op_f32(1000f - arg_0.x)), -271f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, arg_0)) + arg_0))), Struct_4(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~16790u, _wgslsmith_mult_u32(global0.x, u_input.a.x)), 1u), Struct_3(select(false, true, !arg_1.x), arg_0.zy, Struct_1(~11805u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), Struct_3(!arg_1.x, vec2<f32>(arg_0.x, arg_0.x), Struct_1(reverseBits(u_input.a.x)), -689f), 17276i, Struct_1(u_input.a.x))).yyx;
    let var_1 = Struct_4(_wgslsmith_clamp_u32(0u, 0u, 0u), Struct_3(true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1080f))), Struct_1(_wgslsmith_add_u32(~global0.x, u_input.b)), -1004f), Struct_3(any(select(!var_0.zx, select(vec2<bool>(var_0.x, arg_1.x), arg_1.yx, var_0.zy), !var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, arg_0.x))), Struct_1(_wgslsmith_mod_u32(global0.x, _wgslsmith_clamp_u32(4294967295u, u_input.b, 14671u))), 1448f), (u_input.c >> (37335u % 32u)) >> (58638u % 32u), Struct_1(global0.x));
    return Struct_2(arg_0, var_1.e, var_1.b.c, Struct_1(~(~(~var_1.c.c.a))), !(!arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(1u, arg_3.c, Struct_3(!arg_0.e.x, vec2<f32>(-527f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1322f - arg_1.x), _wgslsmith_f_op_f32(select(arg_0.a.x, 1000f, arg_3.c.a))))), func_5(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<bool>(false, arg_0.e.x, true, true), -2147483647i).d, _wgslsmith_f_op_f32(sign(1411f))), u_input.c, arg_3.e);
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.c.d, _wgslsmith_f_op_f32(step(278f, _wgslsmith_f_op_f32(926f + _wgslsmith_f_op_f32(arg_0.a.x - var_0.c.b.x))))))));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_4 = var_0.b.a;
    return arg_3;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(610f - arg_0), 351f, 695f, -492f)), select(func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, 293f, -322f), vec4<f32>(2897f, 1270f, arg_0, arg_0))), Struct_4(u_input.a.x, Struct_3(false, vec2<f32>(arg_0, 638f), Struct_1(global0.x), arg_0), Struct_3(true, vec2<f32>(-1276f, 486f), Struct_1(global0.x), 688f), u_input.c, Struct_1(4193u))), vec4<bool>(true, true, true, 1i <= u_input.c), false), max(~countOneBits(-1i), -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(349f, arg_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, arg_0)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), -1561f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(173f, arg_0), vec2<f32>(475f, arg_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), abs(u_input.a.wx), Struct_4(~func_4(vec2<bool>(true, true), func_5(vec4<f32>(arg_0, arg_0, -1275f, arg_0), vec4<bool>(false, true, false, true), 0i), _wgslsmith_f_op_f32(-arg_0), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & vec4<i32>(-1i, -26729i, u_input.c, u_input.c)).x, Struct_3(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-3892f, arg_0), vec2<f32>(arg_0, -400f))))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, 1349f, 1469f, arg_0)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), 0i).d, arg_0), Struct_3(false, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0)), Struct_1(u_input.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0)), -395f))), u_input.c, func_5(vec4<f32>(arg_0, -405f, -620f, arg_0), vec4<bool>(true, true, true, true), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 5154i, -4071i), vec3<i32>(u_input.c, 84279i, 1i))).d));
    let var_1 = Struct_4(63084u, func_6(func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, 365f, 250f, arg_0) * vec4<f32>(-435f, arg_0, 879f, var_0.c.d)))), vec4<bool>(var_0.b.a, var_0.b.a, var_0.c.a | true, func_5(vec4<f32>(var_0.c.d, var_0.c.d, var_0.c.b.x, -231f), vec4<bool>(var_0.c.a, var_0.b.a, var_0.b.a, false), 29665i).e.x), -var_0.d), vec2<f32>(var_0.b.d, 1337f), min(abs(vec2<u32>(global0.x, 0u)), u_input.a.yy) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.e.a, var_0.b.c.a), _wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, u_input.a.x))), Struct_4(func_6(Struct_2(vec4<f32>(-499f, arg_0, arg_0, var_0.b.b.x), Struct_1(global0.x), var_0.e, Struct_1(1u), vec4<bool>(false, var_0.b.a, var_0.c.a, true)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.d, arg_0), var_0.b.b)), u_input.a.zz, Struct_4(1u, var_0.b, var_0.c, u_input.c, Struct_1(4294967295u))).a, func_6(Struct_2(vec4<f32>(var_0.c.d, -434f, -450f, 579f), Struct_1(u_input.b), var_0.c.c, var_0.c.c, vec4<bool>(var_0.c.a, var_0.c.a, false, var_0.c.a)), _wgslsmith_div_vec2_f32(var_0.b.b, var_0.c.b), _wgslsmith_div_vec2_u32(u_input.a.yz, vec2<u32>(u_input.b, global0.x)), func_6(Struct_2(vec4<f32>(var_0.c.d, -1284f, arg_0, var_0.c.d), var_0.b.c, var_0.c.c, Struct_1(0u), vec4<bool>(var_0.c.a, false, var_0.c.a, var_0.c.a)), vec2<f32>(arg_0, -576f), vec2<u32>(u_input.b, u_input.a.x), Struct_4(0u, var_0.c, var_0.b, 2147483647i, var_0.b.c))).b, var_0.c, var_0.d, var_0.e)).c, Struct_3(false && !(var_0.c.a & var_0.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, -465f)), var_0.c.c, -1129f), u_input.c ^ var_0.d, func_6(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -252f, -1929f, arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_0.b.b.x, var_0.b.d, 1175f), vec4<f32>(arg_0, var_0.b.d, -382f, var_0.c.d)), true)), func_6(func_5(vec4<f32>(var_0.b.b.x, 230f, 310f, 794f), vec4<bool>(false, true, var_0.b.a, var_0.c.a), -1i), _wgslsmith_f_op_vec2_f32(step(var_0.c.b, vec2<f32>(var_0.c.b.x, var_0.b.b.x))), vec2<u32>(29344u, global0.x), Struct_4(98161u, var_0.b, Struct_3(true, vec2<f32>(-479f, -103f), var_0.b.c, 538f), 48707i, Struct_1(var_0.b.c.a))).b.c, func_6(Struct_2(vec4<f32>(arg_0, arg_0, 1827f, var_0.c.d), var_0.e, var_0.e, var_0.c.c, vec4<bool>(var_0.c.a, false, var_0.c.a, false)), _wgslsmith_f_op_vec2_f32(var_0.c.b + var_0.b.b), vec2<u32>(0u, var_0.a) >> (vec2<u32>(global0.x, u_input.a.x) % vec2<u32>(32u)), Struct_4(u_input.b, var_0.c, var_0.c, var_0.d, Struct_1(u_input.a.x))).b.c, Struct_1(1u), vec4<bool>(true, var_0.b.a, var_0.b.a, true)), _wgslsmith_f_op_vec2_f32(step(var_0.c.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1020f, arg_0) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(173f, 101f)))))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, abs(global0.x)), ~(u_input.a.zz << (vec2<u32>(0u, 76237u) % vec2<u32>(32u)))), func_6(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 934f, -454f, arg_0), vec4<f32>(-792f, arg_0, 166f, var_0.c.b.x), true)), func_6(Struct_2(vec4<f32>(var_0.c.b.x, arg_0, 1114f, arg_0), Struct_1(4294967295u), Struct_1(var_0.c.c.a), Struct_1(82779u), vec4<bool>(true, false, var_0.b.a, true)), vec2<f32>(-1017f, 1000f), u_input.a.zx, Struct_4(var_0.a, Struct_3(var_0.b.a, var_0.c.b, Struct_1(var_0.b.c.a), 1479f), Struct_3(false, vec2<f32>(arg_0, 1379f), Struct_1(1u), 1084f), 19139i, Struct_1(u_input.a.x))).c.c, Struct_1(1u), Struct_1(u_input.b), func_2(vec4<f32>(-1289f, arg_0, 112f, var_0.c.d), Struct_4(0u, var_0.b, Struct_3(true, var_0.c.b, var_0.b.c, -691f), u_input.c, Struct_1(u_input.a.x)))), vec2<f32>(-119f, _wgslsmith_f_op_f32(f32(-1f) * -281f)), vec2<u32>(u_input.a.x ^ global0.x, u_input.a.x), Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.b.c.a, 91969u, var_0.a), u_input.a), var_0.c, Struct_3(var_0.b.a, var_0.b.b, Struct_1(7943u), var_0.b.b.x), u_input.c, func_5(vec4<f32>(arg_0, 225f, arg_0, 1000f), vec4<bool>(var_0.c.a, var_0.c.a, true, var_0.b.a), -1i).b))).c.c);
    var var_2 = func_5(vec4<f32>(arg_0, var_0.b.d, _wgslsmith_f_op_f32(-var_0.c.b.x), var_1.c.b.x), !func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, var_0.c.d, var_0.b.d, 387f))), !(!vec4<bool>(false, var_0.c.a, false, var_0.c.a)), 28982i).e, 1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2.a.yyy + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -964f), var_1.b.b.x)), -950f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(685f, var_0.b.d))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(f32(-1f) * -1404f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d, 101f, 405f)) + vec3<f32>(839f, 1799f, var_2.a.x)))));
    var_0 = Struct_4(~23724u, var_1.c, var_1.b, max(0i, u_input.c), Struct_1(~(~1u) << (~(var_1.c.c.a & var_0.c.c.a) % 32u)));
    return func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, var_1.b.b.x, var_3.x, var_0.c.d)))), -_wgslsmith_clamp_i32(0i, -3338i, u_input.c) >= abs(var_0.d))), !var_2.e, 2147483647i).e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec3<bool>(func_1(-147f), true, func_6(func_5(vec4<f32>(-174f, -1263f, -1000f, 1714f), vec4<bool>(true, false, false, true), 23379i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -118f)), abs(vec2<u32>(73383u, 4294967295u)), Struct_4(u_input.a.x, Struct_3(false, vec2<f32>(-417f, 1000f), Struct_1(u_input.a.x), 1000f), Struct_3(true, vec2<f32>(208f, 1911f), Struct_1(0u), 1275f), u_input.c, Struct_1(4294967295u))).b.a)), vec3<bool>(true, true, true), true);
    global0 = reverseBits(countOneBits(~countOneBits(vec2<u32>(20900u, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    let var_2 = func_6(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1234f, var_1, var_1, var_1) - vec4<f32>(var_1, 1704f, 265f, -377f))))), func_6(func_5(vec4<f32>(-1798f, var_1, 866f, var_1), vec4<bool>(var_0.x, false, var_0.x, false), u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -371f)), countOneBits(u_input.a.yz ^ u_input.a.wz), Struct_4(u_input.a.x, func_6(Struct_2(vec4<f32>(var_1, -1632f, 497f, -1000f), Struct_1(4294967295u), Struct_1(u_input.b), Struct_1(10393u), vec4<bool>(false, true, var_0.x, var_0.x)), vec2<f32>(var_1, -272f), vec2<u32>(6269u, 14358u), Struct_4(6127u, Struct_3(var_0.x, vec2<f32>(var_1, var_1), Struct_1(1u), 1040f), Struct_3(var_0.x, vec2<f32>(1000f, var_1), Struct_1(5508u), -227f), u_input.c, Struct_1(4294967295u))).c, Struct_3(true, vec2<f32>(var_1, var_1), Struct_1(global0.x), -737f), u_input.c >> (1u % 32u), Struct_1(0u))).b.c, func_6(Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(170f, var_1, -690f, var_1))), func_6(Struct_2(vec4<f32>(var_1, var_1, var_1, 1338f), Struct_1(4294967295u), Struct_1(20636u), Struct_1(global0.x), vec4<bool>(var_0.x, true, true, true)), vec2<f32>(var_1, -445f), vec2<u32>(u_input.b, global0.x), Struct_4(global0.x, Struct_3(true, vec2<f32>(var_1, var_1), Struct_1(4294967295u), -683f), Struct_3(true, vec2<f32>(var_1, var_1), Struct_1(0u), 1425f), u_input.c, Struct_1(global0.x))).e, Struct_1(20672u), Struct_1(4294967295u), vec4<bool>(true, var_0.x, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 483f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 426f))), firstLeadingBit(~vec2<u32>(1u, 1u)), func_6(Struct_2(vec4<f32>(var_1, var_1, -1403f, var_1), Struct_1(u_input.a.x), Struct_1(global0.x), Struct_1(0u), vec4<bool>(false, var_0.x, true, var_0.x)), vec2<f32>(1926f, var_1), ~vec2<u32>(4294967295u, u_input.a.x), Struct_4(u_input.a.x, Struct_3(true, vec2<f32>(2297f, -740f), Struct_1(global0.x), var_1), Struct_3(true, vec2<f32>(var_1, 365f), Struct_1(1u), var_1), -28753i, Struct_1(global0.x)))).e, func_5(vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(2460f)), _wgslsmith_f_op_f32(min(var_1, 1380f)), _wgslsmith_f_op_f32(-var_1)), vec4<bool>(false, true, true, !var_0.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, u_input.c, u_input.c, -39177i), vec4<i32>(u_input.c, -1i, 0i, 29284i)), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c))).b, vec4<bool>(var_0.x, !func_6(Struct_2(vec4<f32>(var_1, var_1, var_1, var_1), Struct_1(3354u), Struct_1(1u), Struct_1(u_input.b), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec2<f32>(var_1, -1222f), vec2<u32>(5922u, 4294967295u), Struct_4(12866u, Struct_3(false, vec2<f32>(var_1, -143f), Struct_1(128118u), 276f), Struct_3(false, vec2<f32>(var_1, -707f), Struct_1(0u), 1539f), -40452i, Struct_1(u_input.b))).b.a, false, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2711f, -1735f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, var_1))))), vec2<u32>(global0.x, ~_wgslsmith_div_u32(4294967295u, ~80259u)), Struct_4(~u_input.a.x, Struct_3(var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-152f, var_1) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1225f) + vec2<f32>(var_1, 450f))), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1294f, -365f, var_1) + vec4<f32>(var_1, var_1, -1219f, -2543f)), !vec4<bool>(var_0.x, false, var_0.x, false), u_input.c).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f - var_1) - _wgslsmith_f_op_f32(var_1 * var_1))), Struct_3(var_0.x & (var_0.x | var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1155f, 389f))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(19666u, global0.x))), 244f), u_input.c, func_5(vec4<f32>(800f, -1659f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)), vec4<bool>(var_0.x, var_0.x, true, true), 2147483647i).d)).b.c;
    global0 = abs(min(vec2<u32>(select(60842u, global0.x, var_0.x), select(0u, 1u, var_0.x)) >> (max(~vec2<u32>(4294967295u, 4294967295u), ~u_input.a.wx) % vec2<u32>(32u)), vec2<u32>(global0.x, u_input.b)));
    var var_3 = vec3<i32>(13047i, -20380i, reverseBits(-83013i));
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x >> (global0.x % 32u), u_input.b << (u_input.a.x % 32u), 0u), (u_input.a | vec4<u32>(15324u, u_input.a.x, 0u, 30657u)) << (u_input.a % vec4<u32>(32u)), vec4<u32>(~var_2.a, global0.x, var_2.a << (u_input.b % 32u), firstLeadingBit(195u))) ^ (u_input.a << (~vec4<u32>(global0.x, u_input.a.x, 0u, 1u) % vec4<u32>(32u))), var_2.a);
}

