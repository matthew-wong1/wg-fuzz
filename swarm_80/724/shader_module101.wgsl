struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-25936i, 26356i);

var<private> global1: vec3<f32> = vec3<f32>(1000f, -1000f, -1000f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(689f, global1.x, global1.x)))))))))));
    var var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, global0.x, 50458i)), arg_0.x, _wgslsmith_add_i32(25510i, u_input.c.x << (u_input.a % 32u))), vec3<i32>(6046i, arg_0.x, ~_wgslsmith_clamp_i32(global0.x, u_input.c.x, 51409i)));
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(1044f * 1401f));
    let var_1 = Struct_1(-1491f, vec4<bool>(any(vec2<bool>(true, u_input.c.x <= -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > 956f, 182f < var_0.x, any(vec4<bool>(true, false, false, false)) | (abs(arg_0) > _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 0u, u_input.b), vec4<u32>(4294967295u, 0u, arg_0, 3724u)))), !vec3<bool>(!any(vec2<bool>(true, true)), true, !(u_input.c.x != global0.x)), arg_0, countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 39741i), u_input.c.ww)));
    var var_2 = -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.www, vec3<i32>(var_1.e.x, global0.x, 10386i)) ^ -vec3<i32>(var_1.e.x, global0.x, u_input.c.x), -u_input.c.zwy) | vec3<i32>(~var_1.e.x, ~global0.x, 0i);
    var_2 = vec3<i32>(1i, ~u_input.c.x, reverseBits(firstLeadingBit(15488i)));
    var var_3 = var_1;
    return true;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_i32(-u_input.c.yw, u_input.c.zx), 21225u)));
    global0 = ~(~select(-_wgslsmith_clamp_vec2_i32(u_input.c.xw, vec2<i32>(arg_2.x, -16123i), vec2<i32>(global0.x, u_input.c.x)), -vec2<i32>(-1i, arg_2.x), all(arg_1)));
    let var_1 = !select(select(!(!vec3<bool>(arg_1.x, arg_3, arg_3)), !vec3<bool>(false, arg_3, true), vec3<bool>(!arg_3, global0.x >= u_input.c.x, arg_1.x)), vec3<bool>(true, false, false), func_3(0u));
    global0 = _wgslsmith_sub_vec2_i32(select(~reverseBits(vec2<i32>(u_input.c.x, -15185i)), _wgslsmith_div_vec2_i32(arg_2 << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 33127u), vec2<u32>(arg_0, u_input.a)) % vec2<u32>(32u)), arg_2), !(!var_1.yx)), vec2<i32>(-1i) * -u_input.c.xx);
    var var_2 = Struct_1(global1.x, !(!select(vec4<bool>(arg_3, arg_1.x, arg_1.x, false), !vec4<bool>(arg_3, arg_3, false, false), !vec4<bool>(arg_3, true, false, var_1.x))), !select(var_1, select(vec3<bool>(arg_1.x, false, false), !var_1, select(var_1, vec3<bool>(true, false, var_1.x), true)), select(!var_1, var_1, true)), ~_wgslsmith_clamp_u32(~u_input.b, 1u, 0u), vec2<i32>(u_input.c.x, abs(u_input.c.x)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(countOneBits(select(u_input.a, u_input.b, true)), func_1(u_input.b, vec2<bool>(u_input.b != 4294967295u, true), _wgslsmith_clamp_vec2_i32(u_input.c.yy, vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.wz) >> (abs(vec2<u32>(21481u, 57534u)) % vec2<u32>(32u)), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(910f)), global1.x)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-311f, global1.x) + _wgslsmith_f_op_f32(floor(-191f)))));
    let var_1 = select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), global1.x < global1.x)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, false), func_3(0u)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_clamp_i32(-u_input.c.x, u_input.c.x, -global0.x) < select(~(-1i), ~u_input.c.x, true)), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), true)), !func_3(countOneBits(u_input.a & var_0)));
    global0 = u_input.c.xw;
    global0 = vec2<i32>(u_input.c.x, global0.x);
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-select(u_input.c, u_input.c, var_1), u_input.c), 2147483647i), (vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), u_input.c), u_input.c.x) | min(vec2<i32>(u_input.c.x, global0.x), u_input.c.zy)) ^ countOneBits(u_input.c.yx), ~u_input.c.wy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0, 76429u), ~52718u), true), _wgslsmith_mult_u32(4294967295u, ~var_0), countOneBits(var_0) | _wgslsmith_div_u32(~u_input.a, select(u_input.a, 11264u, var_1.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(1u, 36718u, var_0)), vec3<u32>(u_input.a, 0u, select(var_0, u_input.b, true))), ~firstTrailingBit(~vec3<u32>(var_0, 3804u, var_0)), vec3<u32>(27043u, var_0, 88881u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4046u, ~u_input.b, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 69159u, u_input.b), vec3<u32>(var_0, 4294967295u, 1u))), vec4<u32>(1u, u_input.b, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 19822u, u_input.a, u_input.b) << (vec4<u32>(var_0, 0u, 4294967295u, u_input.b) % vec4<u32>(32u)), abs(vec4<u32>(75411u, u_input.b, var_0, u_input.a))))), vec3<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(var_0, 1u), vec2<u32>(u_input.b, 1u)), vec2<u32>(u_input.b, var_0) << (vec2<u32>(50424u, var_0) % vec2<u32>(32u))), var_0, var_0));
}

