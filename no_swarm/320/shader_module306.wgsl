struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> vec4<i32> {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(972f - arg_2) + -428f) - -849f)), vec2<f32>(_wgslsmith_f_op_f32(sign(-766f)), _wgslsmith_f_op_f32(1527f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2027f * -408f) * _wgslsmith_f_op_f32(arg_2 - -1510f)))));
    let var_0 = 466f;
    let var_1 = min(~vec2<u32>(~u_input.c.x >> (_wgslsmith_mod_u32(1u, 1u) % 32u), ~(25147u >> (u_input.d % 32u))), firstLeadingBit(vec2<u32>(firstLeadingBit(u_input.c.x >> (u_input.b % 32u)), ~u_input.a >> (4294967295u % 32u))));
    global1 = Struct_2(any(vec3<bool>(false, !(global2.x || true), all(vec4<bool>(false, true, false, global2.x)))), arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1318f, -1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, global1.c.x)))));
    let var_2 = ~(~vec3<u32>(max(34565u, _wgslsmith_sub_u32(u_input.b, var_1.x)), ~1u, _wgslsmith_mod_u32(u_input.b, min(47166u, var_1.x))));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.xy | vec2<i32>(arg_1, _wgslsmith_add_i32(4365i, -47098i)), vec2<i32>(arg_1, 1173i)), _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -41133i, arg_1)), -arg_0), _wgslsmith_add_i32(_wgslsmith_mod_i32(min(arg_1, arg_0.x), arg_1), 2147483647i)), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.x, _wgslsmith_mult_i32(arg_1, arg_1), 1i), arg_0));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_2 {
    global0 = arg_2;
    var var_0 = vec2<bool>(all(arg_2), all(arg_2));
    global1 = Struct_2(global1.a != (((u_input.b | 50134u) < (4294967295u & u_input.d)) & (_wgslsmith_add_u32(27765u, 37190u) == ~arg_0)), -1881f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c.x, 728f))), global1.c))));
    var var_1 = all(!vec3<bool>(global2.x, false, global2.x));
    let var_2 = ~vec3<i32>(~arg_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3.x, arg_1, -2147483647i), func_3(vec3<i32>(-23779i, -20251i, arg_1), 1i, global1.c.x)) << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, arg_0, arg_0)), vec3<u32>(arg_0, arg_0, 0u)) % 32u), -arg_3.x);
    return Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), -403f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1288f)) * 394f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1352f, global1.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) * global1.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    global1 = func_2(u_input.c.x, select(abs(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.a, -19947i), _wgslsmith_add_i32(-11467i, arg_0.a))), 1i, all(vec4<bool>(global0.x, -1069f > arg_2.c.x, arg_0.a < arg_0.a, true))), select(vec3<bool>(global2.x, any(select(vec2<bool>(arg_2.a, true), global0.zy, false)), any(vec4<bool>(false, global0.x, arg_1.a, true))), !(!(!vec3<bool>(global1.a, true, arg_2.a))), select(select(!vec3<bool>(true, true, global1.a), vec3<bool>(true, false, false), vec3<bool>(true, global0.x, global1.a)), !select(vec3<bool>(arg_1.a, false, arg_2.a), vec3<bool>(false, global2.x, arg_3), global0.x), true)), -abs(-vec3<i32>(arg_0.a, -1i, arg_0.a)));
    let var_0 = vec4<bool>(!(!(!arg_2.a)), true, global2.x, func_2(abs(max(0u, u_input.c.x ^ u_input.d)), min(firstLeadingBit(arg_0.a) & _wgslsmith_clamp_i32(-2147483647i, -14150i, -2147483647i), arg_0.a << (min(u_input.b, u_input.a) % 32u)), select(select(!vec3<bool>(global1.a, global1.a, global2.x), !vec3<bool>(arg_1.a, global2.x, global1.a), !arg_3), vec3<bool>(true, global1.a, all(vec4<bool>(global0.x, false, false, global1.a))), all(vec3<bool>(global1.a, global1.a, true))), vec3<i32>(_wgslsmith_clamp_i32(arg_0.a, 16933i, arg_0.a), _wgslsmith_sub_i32(arg_0.a, 25237i), min(-1i, -1i)) ^ vec3<i32>(arg_0.a >> (u_input.a % 32u), arg_0.a, arg_0.a)).a);
    var var_1 = ~countOneBits(arg_0.a) & -1i;
    let var_2 = arg_0;
    let var_3 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(11069u, u_input.d, u_input.b, u_input.a) ^ vec4<u32>(46335u, 19153u, u_input.d, u_input.c.x), ~vec4<u32>(1u, 20884u, u_input.c.x, 4294967295u)), vec4<u32>(4294967295u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(29005u, u_input.d), u_input.c), 42302u)));
    return vec2<f32>(arg_2.c.x, 280f);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = min(30123i, abs(~(_wgslsmith_add_i32(-2711i, -53377i) | firstTrailingBit(-11538i))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, global1.c.x))) != -109f, -862f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_mult_i32(32800i, 0i)), Struct_2(arg_0, _wgslsmith_f_op_f32(-1019f + global1.b), global1.c), func_2(1u, 45547i, vec3<bool>(arg_0, global0.x, true), vec3<i32>(0i, 2147483647i, var_0)), !(!arg_0))))));
    let var_2 = Struct_1(_wgslsmith_div_i32(var_0, firstLeadingBit(min(var_0, -27894i)) & var_0));
    global0 = vec3<bool>(!(var_2.a >= 1i), true, true);
    var var_3 = (u_input.c | _wgslsmith_mod_vec2_u32(vec2<u32>(534u, 68285u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(26796u, 1u) % vec2<u32>(32u)), ~u_input.c))) ^ u_input.c;
    return vec4<i32>(i32(-1i) * -25974i, -2147483647i, var_0, -_wgslsmith_mult_i32(~1i, -50443i));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    global2 = select(select(vec3<bool>(false, global0.x, !any(vec4<bool>(false, true, global2.x, global2.x))), select(vec3<bool>(!global1.a, all(vec3<bool>(true, true, global2.x)), global2.x), vec3<bool>(global1.a & false, false, false), select(vec3<bool>(global2.x, true, global1.a), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, true, global2.x), true), true)), global1.a), select(select(vec3<bool>(global2.x | global1.a, all(global0.xy), global1.a), select(select(vec3<bool>(global2.x, global1.a, false), vec3<bool>(global0.x, true, global0.x), global2.x), select(vec3<bool>(true, false, true), vec3<bool>(false, global2.x, false), true), global0.x), vec3<bool>(any(vec3<bool>(true, global0.x, false)), global0.x, true)), vec3<bool>(24460u != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), vec2<u32>(16636u, u_input.d)), global0.x & all(vec3<bool>(global1.a, global1.a, false)), !global2.x), select(!(!vec3<bool>(global1.a, true, global1.a)), vec3<bool>(all(vec4<bool>(global0.x, true, global2.x, false)), true, !global2.x), !global2.x)), vec3<bool>(global2.x, any(select(global0.yy, vec2<bool>(global0.x, global0.x), global0.x)) == true, global1.a));
    let var_0 = ~5065u;
    global2 = vec3<bool>(global1.a, any(vec4<bool>(global0.x, false, global2.x, global2.x)), !all(!select(vec4<bool>(global1.a, true, true, global0.x), vec4<bool>(global2.x, global2.x, global2.x, global0.x), vec4<bool>(true, false, global1.a, false))));
    var var_1 = func_2((24405u | var_0) << (reverseBits(~var_0) % 32u), ~reverseBits(1i), select(select(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, false)), vec3<bool>(global0.x, true, true), true), select(select(vec3<bool>(global1.a, false, true), vec3<bool>(global0.x, global0.x, global2.x), vec3<bool>(global1.a, true, true)), vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, true)), global2.x), !vec3<bool>(u_input.d >= 4294967295u, true && global2.x, true), !select(select(vec3<bool>(false, true, global2.x), vec3<bool>(true, true, global0.x), global0.x), vec3<bool>(false, global1.a, true), select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, false, global1.a), vec3<bool>(true, global2.x, global2.x)))), func_3(-firstTrailingBit(arg_1.wzy), _wgslsmith_mult_i32(-arg_1.x, -_wgslsmith_sub_i32(0i, arg_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2)))))).zwx);
    let var_2 = Struct_1(1i);
    return -2254f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<bool>(true, _wgslsmith_f_op_f32(func_5(global1.b, ~func_1(global1.a), global1.c.x)) > _wgslsmith_f_op_f32(-global1.b), false && global1.a);
    global0 = vec3<bool>(global0.x, true, false);
    global0 = select(vec3<bool>(global2.x, ((1i >> (u_input.c.x % 32u)) < _wgslsmith_add_i32(-1i, 14620i)) & true, all(global0.xz)), vec3<bool>(global0.x || true, false, any(select(vec4<bool>(false, global0.x, false, global1.a), vec4<bool>(true, true, true, false), false)) & true), false);
    let var_0 = _wgslsmith_f_op_f32(-1165f + global1.b) <= -460f;
    var var_1 = func_2(~u_input.a, -12915i, !select(!select(vec3<bool>(global0.x, global2.x, global1.a), vec3<bool>(var_0, global2.x, true), vec3<bool>(false, global1.a, false)), select(select(vec3<bool>(global1.a, true, global0.x), vec3<bool>(global2.x, true, false), true), !vec3<bool>(global2.x, global0.x, true), select(vec3<bool>(global0.x, var_0, false), vec3<bool>(global2.x, global0.x, false), true)), select(select(vec3<bool>(false, global1.a, global2.x), vec3<bool>(true, true, global0.x), vec3<bool>(false, var_0, false)), vec3<bool>(global2.x, global1.a, var_0), !vec3<bool>(false, true, var_0))), _wgslsmith_sub_vec3_i32((vec3<i32>(-2147483647i, -2147483647i, 1i) | func_3(vec3<i32>(-12632i, -2147483647i, 4285i), 11396i, global1.c.x).zzz) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-9569i, -10384i, -2147483647i), firstTrailingBit(vec3<i32>(-41225i, 47601i, 2147483647i))), -vec3<i32>(-1760i, firstLeadingBit(18805i), 1i)));
    var var_2 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(reverseBits(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.d)), ~vec4<u32>(1u, 69861u, 57656u, 0u)) & (~vec4<u32>(u_input.d, 1u, 4294967295u, u_input.a) | (vec4<u32>(1u, u_input.b, u_input.d, u_input.d) & vec4<u32>(u_input.d, u_input.c.x, 0u, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1839f, _wgslsmith_f_op_f32(f32(-1f) * -470f)))) * _wgslsmith_div_f32(-857f, -422f)), ~(~max(vec4<u32>(99325u, u_input.d, 4294967295u, 48844u), reverseBits(vec4<u32>(57556u, 26503u, 0u, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.c + vec2<f32>(-663f, -1000f)))))), -select(func_3(func_1(global1.a).zyw, 1i, _wgslsmith_f_op_f32(global1.c.x - -591f)).yw, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(3769i, -2147483647i)), var_1.a));
}

