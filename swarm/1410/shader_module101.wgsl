struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(-1i, -2147483647i, -19129i, -44992i), abs(vec4<i32>(-4949i, arg_3.b.d.x, 80762i, -1i)), arg_2.a), countOneBits((vec4<i32>(arg_3.b.b.x, 2147483647i, arg_0.x, 56265i) << (vec4<u32>(38505u, 4294967295u, 24284u, 35787u) % vec4<u32>(32u))) | reverseBits(vec4<i32>(-4035i, arg_3.b.d.x, -2147483647i, arg_0.x)))), ~max(reverseBits(vec4<i32>(2147483647i, arg_1.x, 2147483647i, arg_1.x)), vec4<i32>(arg_0.x, 1i, arg_0.x, arg_3.b.d.x)) << (~arg_3.c % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b.a, arg_3.c.x, 27484u, 1u), arg_3.c), arg_3.c)), firstTrailingBit(arg_3.c));
    let var_2 = select(!vec3<bool>(arg_3.a, any(select(vec4<bool>(arg_3.a, arg_2.a, arg_3.b.c.a, true), vec4<bool>(true, arg_2.a, false, arg_2.b.x), arg_3.b.c.a)), all(select(vec4<bool>(arg_3.b.c.a, true, arg_2.a, arg_2.a), vec4<bool>(arg_3.a, arg_2.a, true, true), true))), select(vec3<bool>(true | (arg_3.a || false), arg_2.b.x, true), select(!vec3<bool>(true, false, arg_3.b.c.a), vec3<bool>(arg_2.b.x, arg_3.b.c.b.x, arg_3.a), all(vec3<bool>(arg_3.a, true, arg_2.b.x))), select(vec3<bool>(!arg_3.b.c.a, !arg_2.b.x, arg_3.b.d.x >= arg_0.x), vec3<bool>(all(vec3<bool>(true, arg_2.b.x, arg_2.a)), false && arg_3.b.c.a, any(vec3<bool>(false, arg_2.b.x, arg_2.b.x))), 8256u > ~arg_3.b.a)), select(select(vec3<bool>(arg_2.a == false, !arg_3.a, arg_3.a), select(select(vec3<bool>(true, arg_3.a, true), vec3<bool>(arg_2.a, arg_2.b.x, false), true), select(vec3<bool>(false, arg_3.a, true), vec3<bool>(false, arg_2.a, arg_3.a), vec3<bool>(true, arg_2.a, false)), vec3<bool>(true, arg_2.a, arg_2.a)), all(!vec3<bool>(arg_3.b.c.b.x, arg_2.b.x, arg_3.b.c.b.x))), select(vec3<bool>(false, arg_2.b.x == true, !arg_3.a), select(vec3<bool>(false, arg_2.b.x, arg_2.a), !vec3<bool>(arg_2.b.x, true, false), false), select(select(vec3<bool>(true, true, arg_2.b.x), vec3<bool>(true, arg_3.b.c.b.x, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2.b.x, arg_2.a), true), !vec3<bool>(arg_2.a, true, false))), any(vec3<bool>(false, arg_3.b.c.b.x, true))));
    var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_3.b.a, 30253u, arg_3.b.a), vec4<u32>(0u, 0u, var_1.x, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.x, ~4294967295u, _wgslsmith_div_u32(var_1.x, u_input.a), arg_3.c.x), _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a, var_1.x, var_1.x, var_1.x), arg_3.c), vec4<u32>(u_input.a, var_1.x, var_1.x, arg_3.c.x) << (vec4<u32>(38529u, u_input.a, 57183u, var_1.x) % vec4<u32>(32u))))), min(select(vec4<u32>(1u, 4294967295u, 2070u, arg_3.b.a), arg_3.c >> (vec4<u32>(40399u, arg_3.b.a, arg_3.c.x, arg_3.c.x) % vec4<u32>(32u)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_2.x, arg_3.a, arg_3.a), vec4<bool>(var_2.x, var_2.x, arg_2.b.x, true))), vec4<u32>(abs(1u), 34890u & u_input.a, _wgslsmith_div_u32(u_input.a, var_1.x), var_1.x | 0u)) >> (arg_3.c % vec4<u32>(32u)), arg_3.c);
    return 0u;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    var var_0 = min(vec3<i32>(_wgslsmith_add_i32(abs(1i), firstLeadingBit(_wgslsmith_mod_i32(arg_2.b.b.x, arg_2.b.d.x))), firstTrailingBit(~arg_2.b.b.x), _wgslsmith_div_i32(abs(arg_2.b.d.x), arg_2.b.d.x)), -((~vec3<i32>(7010i, arg_0.e, -27943i) | countOneBits(vec3<i32>(-13737i, -2147483647i, 2147483647i))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(0u, 1u, 56842u)), vec3<u32>(58274u, 4294967295u, 14801u)) % vec3<u32>(32u))));
    let var_1 = abs(u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(919f, arg_2.d.x, -2465f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, arg_2.d.x, 358f) - vec3<f32>(148f, -957f, 139f)))))));
    var var_3 = -var_0.xz;
    var var_4 = ~(~func_3(max(vec3<i32>(arg_2.b.d.x, -41374i, arg_0.e) << (arg_2.c.wyx % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b.b.x, arg_0.e, -2895i), vec3<i32>(var_3.x, var_0.x, arg_2.b.b.x))), _wgslsmith_div_vec2_i32(arg_2.b.d, abs(var_0.xz)), Struct_1(any(vec2<bool>(true, true)), vec2<bool>(arg_0.c.x, arg_0.c.x)), arg_2));
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-203f)) * _wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_f32(max(arg_3.a, _wgslsmith_f_op_f32(floor(arg_3.a)))), arg_3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1167f, 789f, arg_3.a) * vec3<f32>(arg_3.a, -1918f, 1062f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.a, arg_3.a, arg_3.a), vec3<f32>(-408f, -2170f, 665f))))))), false));
    let var_1 = arg_2.x;
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1355f)) + arg_3.a)), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a), arg_3.a, _wgslsmith_f_op_f32(-arg_3.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, var_0.x, arg_3.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(561f, -1208f, arg_3.a), vec3<f32>(var_0.x, arg_3.a, 1114f), vec3<bool>(true, true, arg_2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_3.a, var_0.x) + vec3<f32>(var_0.x, arg_3.a, var_0.x)))))));
    return Struct_2(firstTrailingBit(max(61518u, ~77579u)), abs(abs(vec2<i32>(-1i) * -arg_3.b)), Struct_1(false, arg_2.xy), vec2<i32>(abs(11719i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.x, arg_0.x, 41246i), reverseBits(vec4<i32>(-2147483647i, -51996i, 2147483647i, arg_0.x))), vec4<i32>(arg_0.x, -20733i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_3.b.x, arg_3.b.x), vec3<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x)), abs(arg_3.b.x)))));
}

fn func_1() -> bool {
    let var_0 = ~(0i);
    var var_1 = ~(~(~1u));
    var var_2 = Struct_4(true, func_4(firstLeadingBit(-select(vec2<i32>(0i, var_0), vec2<i32>(var_0, var_0), vec2<bool>(true, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 35169u) & vec2<u32>(0u, 1u), ~vec2<u32>(u_input.a, 25477u)), vec3<bool>(select(func_2(Struct_5(vec2<u32>(u_input.a, u_input.a), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), vec4<bool>(false, false, true, false), var_0), vec3<u32>(132088u, 0u, u_input.a), Struct_4(true, Struct_2(u_input.a, vec2<i32>(2147483647i, var_0), Struct_1(true, vec2<bool>(false, true)), vec2<i32>(-58772i, 58051i)), vec4<u32>(u_input.a, u_input.a, u_input.a, 40993u), vec2<f32>(477f, -220f))), true, all(vec2<bool>(true, false))), true, true), Struct_3(_wgslsmith_f_op_f32(-834f - _wgslsmith_div_f32(2930f, 1495f)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), countOneBits(vec2<i32>(var_0, 13190i))), 0u)), min(~(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) << (reverseBits(vec4<u32>(u_input.a, 30019u, 107487u, 1u)) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, 4294967295u, 26040u, u_input.a)) >> ((countOneBits(vec4<u32>(24329u, u_input.a, u_input.a, 0u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(18136u, 7930u, u_input.a, 45228u), vec4<u32>(1u, u_input.a, u_input.a, 34355u), vec4<u32>(u_input.a, 2338u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-1264f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-682f + -231f)))))));
    let var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(45185u, 1u, 1u) | var_2.c.wxy), ~var_2.c.www), 0u), firstTrailingBit(firstTrailingBit(var_2.b.b)), Struct_1(false | func_4(vec2<i32>(-1i, 2147483647i), select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, var_2.c.x), var_2.b.c.b), select(vec3<bool>(var_2.b.c.b.x, false, false), vec3<bool>(true, false, var_2.b.c.b.x), vec3<bool>(true, true, var_2.b.c.a)), Struct_3(-573f, vec2<i32>(var_0, var_2.b.b.x), 71185u)).c.a, !var_2.b.c.b), _wgslsmith_mult_vec2_i32(var_2.b.b & max(vec2<i32>(var_2.b.d.x, 1i), var_2.b.d), vec2<i32>(i32(-1i) * -2147483647i, ~(-9932i))) << (vec2<u32>(_wgslsmith_clamp_u32(u_input.a, var_2.b.a, _wgslsmith_div_u32(var_2.b.a, 1u)), var_2.c.x) % vec2<u32>(32u)));
    var var_4 = Struct_5(_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a, 0u), _wgslsmith_mult_vec2_u32(var_2.c.xy, var_2.c.zz), vec2<u32>(var_2.b.a, 77985u))), vec2<u32>(var_2.c.x, ~(~var_2.c.x))), vec4<bool>(false, var_3.c.a, false, (var_0 << ((69566u << (u_input.a % 32u)) % 32u)) == var_3.d.x), !select(!(!vec3<bool>(var_2.b.c.a, var_2.a, var_2.b.c.a)), !select(vec3<bool>(var_2.a, var_3.c.b.x, false), vec3<bool>(true, var_3.c.a, false), var_3.c.a), select(select(vec3<bool>(var_3.c.a, true, var_3.c.a), vec3<bool>(var_2.a, false, var_3.c.b.x), true), !vec3<bool>(var_3.c.b.x, var_2.a, false), vec3<bool>(var_2.b.c.a, var_3.c.a, true))), !select(select(select(vec4<bool>(true, var_2.b.c.a, var_2.b.c.b.x, var_2.a), vec4<bool>(false, var_2.a, true, var_2.b.c.b.x), true), !vec4<bool>(true, var_3.c.b.x, false, true), false), vec4<bool>(!var_3.c.b.x, var_2.a, !var_3.c.b.x, var_3.c.b.x), !(!var_2.a)), var_0);
    return func_2(Struct_5(vec2<u32>(var_4.a.x, var_3.a), vec4<bool>(false, true, var_4.d.x, var_2.c.x >= var_2.c.x), var_4.c, !(!select(var_4.b, vec4<bool>(var_2.b.c.b.x, true, var_3.c.b.x, true), vec4<bool>(var_3.c.a, true, false, true))), i32(-1i) * -6145i), var_2.c.wzx, Struct_4(false, func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.d.x, var_3.b.x), var_3.d) << (var_2.c.xz % vec2<u32>(32u)), vec2<u32>(0u, min(u_input.a, 107572u)), var_4.d.wwy, Struct_3(2189f, var_2.b.b, reverseBits(14274u))), _wgslsmith_add_vec4_u32(var_2.c, ~max(var_2.c, vec4<u32>(u_input.a, var_2.b.a, u_input.a, var_3.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(609f, 605f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, -324f) - _wgslsmith_f_op_vec2_f32(-var_2.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(997f, 1694f)))), -1320f, -1000f)));
    let var_1 = Struct_5(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(25947u, u_input.a), vec2<u32>(58629u, u_input.a)) | ~vec2<u32>(u_input.a, 0u), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(abs(83684u), countOneBits(0u)))), select(vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(f32(-1f) * -498f), all(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false || (var_0.x > 1552f), true, true || all(vec4<bool>(false, true, true, false)), min(22134i, -1i) != select(-2147483647i, 0i, false))), vec3<bool>(false, func_1(), !(!any(vec4<bool>(true, true, false, true)))), !vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), true || func_2(Struct_5(vec2<u32>(u_input.a, 4000u), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), vec4<bool>(false, false, true, true), 0i), vec3<u32>(4294967295u, u_input.a, u_input.a), Struct_4(true, Struct_2(24995u, vec2<i32>(-40538i, -2147483647i), Struct_1(false, vec2<bool>(false, false)), vec2<i32>(2147483647i, 1i)), vec4<u32>(u_input.a, u_input.a, u_input.a, 17193u), var_0.wz)), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), ~(-20039i));
    let var_2 = max(vec3<u32>(4294967295u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(37665u, 0u, u_input.a, 4743u), vec4<u32>(u_input.a, 15228u, 4294967295u, var_1.a.x))), 22259u), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(0u, 19811u, 1u), vec3<u32>(~1u, 0u, ~0u), true), ~vec3<u32>(~53797u, 0u, 0u)));
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.e, -1i), vec2<i32>(var_1.e, -2147483647i)), vec2<i32>(var_1.e, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e, -43524i, var_1.e), vec3<i32>(var_1.e, 2147483647i, var_1.e) ^ vec3<i32>(43553i, var_1.e, -1i)))), vec2<i32>(_wgslsmith_add_i32(2147483647i, ~var_1.e), _wgslsmith_div_i32(~(-1i), ~var_1.e)));
    var var_4 = func_4(vec2<i32>(var_3.x, max(var_3.x, var_3.x)), vec2<u32>(~_wgslsmith_mult_u32(~var_2.x, ~28959u), 1u), var_1.c, Struct_3(-734f, var_3, 52053u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(abs(1u), ~func_4(var_3, vec2<u32>(56920u, var_2.x), vec3<bool>(var_1.c.x, false, true), Struct_3(var_0.x, var_3, 1u)).a), _wgslsmith_dot_vec3_u32(var_2, _wgslsmith_add_vec3_u32(var_2, vec3<u32>(65313u, var_4.a, 47939u))) | 0u, var_2.x), _wgslsmith_f_op_vec3_f32(-var_0.yxy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xy, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(544f)))), var_0.xw), vec3<u32>(59536u, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(99705u, var_1.a.x, var_2.x, var_4.a), vec4<u32>(var_4.a, var_1.a.x, 1u, var_4.a))), _wgslsmith_mult_u32(~(~u_input.a), ~4294967295u | var_2.x)));
}

