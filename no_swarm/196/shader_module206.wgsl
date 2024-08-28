struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: f32 = -135f;

var<private> global3: f32 = 1000f;

var<private> global4: vec4<i32> = vec4<i32>(1i, i32(-2147483648), -25433i, 22997i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = select(reverseBits(u_input.a.x) ^ (u_input.a.x & _wgslsmith_clamp_u32(4294967295u, 58079u, 48906u)), 1u, select(true & (0u > u_input.a.x), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), all(vec3<bool>(true, true, true)))) > ~(u_input.a.x << (max(0u, reverseBits(u_input.a.x)) % 32u));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1((global4.xx << (u_input.a.wx % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(21870u, ~4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(17537u, u_input.a.x), u_input.a.ww & u_input.a.ww)) % vec2<u32>(32u)), u_input.a.yzz, 0u, ~u_input.a.xzy, ~((vec2<u32>(57203u, u_input.a.x) >> (_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.zx) % vec2<u32>(32u))) ^ vec2<u32>(~7790u, 1u)));
    var var_3 = var_2.c <= ~reverseBits(firstLeadingBit(1u));
    global1 = vec2<f32>(-711f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-390f, -212f), 846f))))));
    return vec3<i32>(45528i, -global4.x, _wgslsmith_add_i32(-5177i, -select(45942i << (var_2.d.x % 32u), max(-2147483647i, 18465i), true && var_0)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2069f)) + 429f);
    var var_0 = vec4<i32>(select(-2147483647i, _wgslsmith_dot_vec2_i32(~firstLeadingBit(arg_2.yz), arg_2.yy >> (arg_1.b.xy % vec2<u32>(32u))), true), max(-arg_2.x, 2147483647i) ^ _wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(arg_2.x, arg_0 ^ arg_2.x)), global4.x, firstTrailingBit(_wgslsmith_div_i32(14668i, arg_0)));
    global3 = -1000f;
    var_0 = vec4<i32>(~var_0.x >> (u_input.a.x % 32u), countOneBits((arg_1.a.x << (65005u % 32u)) ^ 0i) & _wgslsmith_div_i32(global4.x, 1i), ~0i, -(~firstTrailingBit(arg_2.x)));
    var_0 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(~arg_0, _wgslsmith_mod_i32(~(-1i), -5187i), _wgslsmith_add_i32(32957i, max(arg_2.x, arg_1.a.x)), global4.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, -56640i, 1i), vec4<i32>(arg_2.x, 1i, -1i, arg_1.a.x)), vec4<i32>(2147483647i, 10807i, var_0.x, 2147483647i | arg_1.a.x))), _wgslsmith_clamp_vec4_i32(-(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -2379i, arg_2.x, 1527i), vec4<i32>(var_0.x, -2147483647i, global4.x, var_0.x)) << (~u_input.a % vec4<u32>(32u))), vec4<i32>(arg_2.x, -19778i, arg_0, _wgslsmith_mult_i32(-var_0.x, _wgslsmith_add_i32(global4.x, var_0.x))), vec4<i32>(~arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(11229i, 2147483647i, arg_2.x, -2147483647i), vec4<i32>(arg_2.x, 1i, -2147483647i, -48819i)), arg_0, arg_2.x & arg_2.x) | vec4<i32>(arg_2.x, 1i, ~var_0.x, -28160i)));
    return arg_1.b.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(global4.xw, u_input.a.wxy, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~1u, 0u), ~u_input.a.x | 20746u, u_input.a.x), vec3<u32>(countOneBits(~(~u_input.a.x)), ~u_input.a.x, firstLeadingBit(1u)), vec2<u32>(func_4(_wgslsmith_sub_i32(global4.x, ~global4.x), Struct_1(_wgslsmith_sub_vec2_i32(global4.xz, vec2<i32>(1i, -9817i)), vec3<u32>(0u, u_input.a.x, 57206u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yxx, ~u_input.a.zy), min(reverseBits(global4.xwz), func_3()), _wgslsmith_div_f32(-1183f, _wgslsmith_f_op_f32(min(-363f, global1.x)))), 0u));
    var var_1 = vec4<bool>(any(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), (any(vec4<bool>(true, true, true, true)) && true) & all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false))), false, false);
    var var_2 = 1u;
    let var_3 = select(!var_1.xxy, !(!var_1.zzx), vec3<bool>(any(!select(var_1.yz, var_1.zw, var_1.x)), global1.x != 873f, !var_1.x));
    global4 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, _wgslsmith_mod_i32(-64658i, 3371i), var_0.a.x, -7642i), countOneBits(~vec4<i32>(var_0.a.x, var_0.a.x, -4716i, 25144i)));
    return vec3<u32>(4294967295u | var_0.b.x, ~1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c, 0u), var_0.e)));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-2243f * _wgslsmith_f_op_f32(global1.x - 443f))) - vec2<f32>(1833f, -1260f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1792f) + vec2<f32>(-452f, 715f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1244f, 743f)), select(vec2<bool>(arg_3, false), vec2<bool>(false, false), vec2<bool>(arg_3, arg_3))))))))));
    let var_0 = false;
    let var_1 = Struct_2(517f, Struct_1(-vec2<i32>(global4.x, -32777i & arg_1), ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2.x, arg_0.x), vec3<u32>(55055u, 4294967295u, 0u))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0.x, arg_2.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yxw | arg_0, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 21551u, 0u), u_input.a.wxz)), ~u_input.a.xxy >> (u_input.a.zwz % vec3<u32>(32u))), ~(~arg_2) & vec2<u32>(15230u, arg_0.x ^ 1u)));
    var var_2 = -523f;
    return _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(var_1.b.b.zz, arg_2 << (_wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(var_1.b.c, arg_2.x)) % vec2<u32>(32u))), vec2<u32>(u_input.a.x | ~(~arg_0.x), var_1.b.c));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1715f)) - 716f)));
    var var_0 = Struct_1(func_3().yz, vec3<u32>(func_2().x, 0u, abs(42095u) & max(~1u, abs(u_input.a.x))), ~select(85666u, u_input.a.x, false), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(u_input.a.xxw, ~u_input.a.ywz, max(vec3<u32>(0u, u_input.a.x, 0u), u_input.a.xxx))), reverseBits(u_input.a.zz));
    global4 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(global4.x, -2147483647i, 1i, arg_0.x)), vec4<i32>(-1i, global4.x, _wgslsmith_dot_vec3_i32(global4.wwy, vec3<i32>(-2147483647i, 8705i, -1i)), max(1i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global4.yx, arg_0.yy), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_0.a.x, var_0.a.x), vec4<i32>(-2147483647i, arg_0.x, -2147483647i, global4.x)), ~var_0.a.x, _wgslsmith_clamp_i32(-11745i, 8920i, -2147483647i)), min(vec4<i32>(global4.x, -11438i, arg_0.x, 0i), ~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i)))), firstTrailingBit(reverseBits(vec4<i32>(~arg_0.x, abs(arg_0.x), var_0.a.x, arg_0.x))));
    var var_1 = select(_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(abs(u_input.a.x), ~u_input.a.x)), 1u), func_2().x, false);
    return Struct_2(1374f, Struct_1(func_3().xz, vec3<u32>(1u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a.x)), ~_wgslsmith_clamp_u32(5482u, arg_1.x, 1u)), _wgslsmith_mod_u32(14227u, _wgslsmith_div_u32(~u_input.a.x, 13140u)), ~_wgslsmith_clamp_vec3_u32(u_input.a.yyx, ~u_input.a.zyx, vec3<u32>(1u, 60900u, var_0.c) | vec3<u32>(1u, var_0.b.x, arg_1.x)), vec2<u32>(var_0.d.x, 4294967295u)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -(vec4<i32>(_wgslsmith_div_i32(global4.x, 14819i), global4.x | global4.x, global4.x, global4.x) >> (u_input.a % vec4<u32>(32u)));
    var var_1 = func_6(_wgslsmith_div_vec3_i32(firstTrailingBit(select(select(vec3<i32>(2147483647i, var_0.x, var_0.x), vec3<i32>(13790i, -78147i, -5809i), vec3<bool>(false, false, false)), countOneBits(vec3<i32>(1i, 0i, 5654i)), vec3<bool>(true, true, true))), ~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.x, var_0.x, global4.x)), vec3<i32>(var_0.x, global4.x, 29193i))), _wgslsmith_div_vec2_u32(~(~(~u_input.a.yy)), func_5(func_2(), ~global4.x, u_input.a.yy, true || (global4.x != var_0.x))));
    let var_2 = _wgslsmith_add_vec3_u32(func_6(abs(abs(var_0.ywy)), vec2<u32>(~13322u, firstTrailingBit(var_1.b.c))).b.d, ~vec3<u32>(2415u, 63921u, func_2().x)) | (vec3<u32>(u_input.a.x, 96003u, reverseBits(~0u)) << (var_1.b.d % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1009f)) - 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, global1.x), vec2<f32>(arg_0, -1999f), vec2<bool>(false, true))) * vec2<f32>(1679f, global1.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, global1.x), vec2<f32>(-723f, 409f))), vec2<f32>(global1.x, -540f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1510f * -298f), 2381f)))), !(var_1.a != _wgslsmith_div_f32(-908f, var_1.a)) & false));
    var var_3 = global4.zyw;
    return Struct_2(arg_0, Struct_1(vec2<i32>(~_wgslsmith_add_i32(var_3.x, var_1.b.a.x), 0i), vec3<u32>(var_2.x >> (func_2().x % 32u), ~var_1.b.e.x, func_5(var_2, 1i, vec2<u32>(var_1.b.d.x, var_2.x), true).x >> (~4294967295u % 32u)), max(~781u, firstTrailingBit(1u)), _wgslsmith_div_vec3_u32(~vec3<u32>(35757u, 1u, 0u), vec3<u32>(1u, _wgslsmith_mult_u32(15025u, 35743u), countOneBits(var_1.b.b.x))), u_input.a.zx));
}

fn func_7(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(vec2<i32>(arg_1, i32(-1i) * -1i)) & abs(min(arg_0.b.a, abs(vec2<i32>(1i, global4.x)))), func_1(-233f).b.b, ~u_input.a.x, arg_0.b.b, ~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.e.x, u_input.a.x, 4294967295u), vec3<u32>(1u, arg_0.b.c, arg_0.b.c))) ^ arg_0.b.d.zz);
    global4 = vec4<i32>(~arg_1, func_1(arg_0.a).b.a.x, var_0.a.x, var_0.a.x);
    let var_1 = Struct_1(max(vec2<i32>(i32(-1i) * -46626i, -20943i), select(_wgslsmith_div_vec2_i32(abs(var_0.a), _wgslsmith_mod_vec2_i32(global4.xw, vec2<i32>(-42944i, arg_1))), -(~global4.yz), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))), _wgslsmith_mult_vec3_u32(var_0.d, vec3<u32>(u_input.a.x, 10966u, u_input.a.x)), func_1(arg_0.a).b.b.x, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, abs(vec4<u32>(u_input.a.x, arg_0.b.d.x, var_0.c, 4294967295u)) | (vec4<u32>(arg_0.b.d.x, arg_0.b.d.x, arg_0.b.e.x, 4294967295u) >> (vec4<u32>(45372u, 24207u, var_0.e.x, 13600u) % vec4<u32>(32u)))), firstTrailingBit(~(~arg_0.b.c)), arg_0.b.e.x), vec2<u32>(~(~4294967295u), var_0.b.x));
    var var_2 = false;
    var var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(vec3<i32>(40318i, var_0.a.x, var_0.a.x), vec2<u32>(4294967295u, var_0.b.x)).a + -2248f), _wgslsmith_f_op_f32(global1.x * 919f)))).b;
    return func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, 395f), _wgslsmith_f_op_f32(func_6(vec3<i32>(4601i, -75119i, var_3.a.x), vec2<u32>(45592u, 17134u)).a - arg_0.a))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(global4.x, -10677i, global4.x, global4.x), vec4<i32>(-6957i, -2147483647i, 2147483647i, global4.x)), vec4<i32>(-2147483647i, select(global4.x, global4.x, false), 18360i, min(48840i, global4.x))), vec4<i32>(select(2147483647i, _wgslsmith_mult_i32(global4.x, global4.x), true), global4.x, _wgslsmith_dot_vec3_i32(global4.ywx, vec3<i32>(global4.x, global4.x, global4.x)), -21583i));
    var var_0 = -12559i;
    var var_1 = func_7(func_1(-800f), _wgslsmith_add_i32(1i, -9603i));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), 210f));
    var var_3 = Struct_2(var_2, func_7(func_1(_wgslsmith_f_op_f32(max(func_6(global4.yxw, vec2<u32>(u_input.a.x, 1u)).a, -321f))), _wgslsmith_dot_vec2_i32(var_1.a, -_wgslsmith_add_vec2_i32(vec2<i32>(0i, global4.x), var_1.a))));
    var var_4 = Struct_2(func_6(-global4.xyx, ~select(~u_input.a.xz, vec2<u32>(92529u, var_1.d.x), -2147483647i <= var_3.b.a.x)).a, Struct_1(max(global4.zy, firstTrailingBit(vec2<i32>(0i, var_1.a.x))), var_1.d, 0u, u_input.a.ywz, firstLeadingBit((var_1.d.zx >> (var_1.b.zz % vec2<u32>(32u))) & vec2<u32>(var_1.e.x, var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~var_3.b.a.x, 0u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_2))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_4.a)))))));
}

