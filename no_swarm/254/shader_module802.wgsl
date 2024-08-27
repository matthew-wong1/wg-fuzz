struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.d.x, u_input.a.x, -7007i, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, u_input.a.x, u_input.c), vec4<bool>(false, global0.x, global0.x, false)), ~vec4<i32>(-5223i, -1i, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c, -64394i, 15916i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-253f, -1084f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(504f * 202f), any(vec3<bool>(false, global0.x, global0.x)))))), Struct_1(-countOneBits(max(vec4<i32>(-1i, -2147483647i, u_input.d.x, u_input.c), vec4<i32>(2147483647i, -2147483647i, 1i, u_input.d.x))), -497f, -884f));
    var_0 = Struct_2(Struct_1(vec4<i32>(~u_input.a.x, -_wgslsmith_mod_i32(u_input.a.x, 0i), ~u_input.a.x, -12555i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b * var_0.b.b) + 1314f)), 1f), Struct_1(-var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, 499f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) + _wgslsmith_f_op_f32(abs(-749f)))), _wgslsmith_f_op_f32(sign(-1527f))));
    global0 = !vec3<bool>(~_wgslsmith_dot_vec4_i32(var_0.a.a, vec4<i32>(-8537i, var_0.a.a.x, var_0.a.a.x, 7644i)) > ~(-10883i), global0.x, true);
    var_0 = Struct_2(var_0.b, var_0.a);
    global0 = select(select(select(vec3<bool>(global0.x != false, true, select(true, global0.x, false)), vec3<bool>(global0.x, global0.x, global0.x), !(!vec3<bool>(false, global0.x, global0.x))), select(vec3<bool>(any(vec3<bool>(false, global0.x, global0.x)), false, true), !select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, true), false), global0.x), vec3<bool>(true, !any(global0.zz), any(vec2<bool>(true, global0.x)))), vec3<bool>(!(_wgslsmith_f_op_f32(sign(-318f)) != -469f), select(global0.x, false, true), !all(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)))), !(any(vec3<bool>(global0.x, global0.x, true)) && !all(vec4<bool>(global0.x, global0.x, global0.x, true))));
    return !(!vec3<bool>(true, true, global0.x));
}

fn func_2() -> Struct_2 {
    global0 = !select(select(!vec3<bool>(global0.x, false, false), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true), global0.x), (u_input.c < u_input.c) != true), vec3<bool>(true, any(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, true, true))), all(vec2<bool>(false, true))), global0.x);
    let var_0 = Struct_2(Struct_1(vec4<i32>(countOneBits(u_input.c), -_wgslsmith_mult_i32(u_input.a.x, -2304i), firstLeadingBit(abs(u_input.c)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, 30400i), 39375i & u_input.d.x)), 1128f, -1059f), Struct_1(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -25237i, u_input.a.x, -18949i), vec4<i32>(u_input.c, -40383i, -2147483647i, 0i)), _wgslsmith_div_i32(u_input.d.x, u_input.a.x), -6014i | _wgslsmith_sub_i32(u_input.c, u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(-59512i, -1i), _wgslsmith_sub_i32(-2147483647i, u_input.d.x))), -459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-896f))) - 190f)));
    global0 = !(!select(select(!vec3<bool>(global0.x, global0.x, global0.x), func_3(), vec3<bool>(global0.x, true, global0.x)), select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, true), !global0.x), !select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, global0.x), global0.x)));
    var var_1 = ~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(29507u, u_input.b.x), ~u_input.b) & _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), firstTrailingBit(u_input.b)));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(select(4294967295u, 11501u, true), _wgslsmith_div_u32(u_input.b.x, var_1.x), 23489u)), 44765u), ~38085u, ~(~var_1.x | ~(~4294967295u)), ~(~_wgslsmith_mod_u32(var_1.x, ~0u)));
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = firstLeadingBit(u_input.b.x);
    global0 = func_3();
    global0 = vec3<bool>(global0.x, (!func_3().x | all(global0.zy)) && !(!any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x);
    var var_1 = ~_wgslsmith_clamp_u32(var_0, ~20881u, reverseBits(var_0 & 180u)) << (u_input.b.x % 32u);
    let var_2 = arg_2.a.a.x;
    return _wgslsmith_dot_vec2_u32(max(vec2<u32>(_wgslsmith_div_u32(0u, u_input.b.x) ^ ~0u, 13333u), ~max(u_input.b, ~vec2<u32>(u_input.b.x, 0u))), ~vec2<u32>(reverseBits(~1u), _wgslsmith_clamp_u32(11864u >> (var_0 % 32u), ~26012u, ~var_0)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    global0 = !(!(!select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(true, global0.x, false), true)));
    global0 = vec3<bool>(true, !global0.x, !(!(5207u <= u_input.b.x) | true));
    var var_0 = -2147483647i;
    let var_1 = vec4<u32>(func_4(vec2<i32>(-41741i, 0i), arg_1, func_2(), arg_0.d), select(u_input.b.x, ~((69396u | arg_0.c) & ~46775u), all(func_3().zz)), ~_wgslsmith_add_u32(55720u, countOneBits(arg_0.c)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u ^ arg_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, arg_0.c), vec3<u32>(arg_0.c, arg_0.c, arg_0.c)))), ~abs(u_input.b.x)));
    var var_2 = Struct_3(arg_0.a, firstLeadingBit(arg_0.b), 0u, 457f);
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -_wgslsmith_mult_i32(u_input.c, -2147483647i);
    var_0 = 23435i;
    var_0 = _wgslsmith_add_i32(abs(max(0i, u_input.d.x)), reverseBits((_wgslsmith_div_i32(u_input.c, 41845i) & 1i) >> ((_wgslsmith_div_u32(u_input.b.x, 16999u) << (u_input.b.x % 32u)) % 32u)));
    let var_1 = ~6344u;
    var_0 = -24611i;
    return vec3<bool>(arg_0.a.x > abs(arg_0.a.x), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(!vec3<bool>(global0.x, true, true), vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, true)), vec3<bool>(true, global0.x, any(global0.zx)), true), !vec3<bool>(any(vec2<bool>(false, global0.x)), any(vec4<bool>(global0.x, false, false, global0.x)), all(global0.xx)), select(func_5(func_1(Struct_3(Struct_1(vec4<i32>(u_input.c, -6375i, 2147483647i, u_input.d.x), -976f, 1081f), vec4<i32>(-41699i, u_input.a.x, u_input.c, -1i), u_input.b.x, -525f), 414f, vec3<i32>(u_input.d.x, u_input.c, 0i))), vec3<bool>(u_input.a.x != 43749i, false, !global0.x), vec3<bool>(true, true, true))), !vec3<bool>(false, !(!global0.x), any(vec4<bool>(global0.x, true, false, global0.x))), func_3());
    var_0 = vec3<bool>(true, !(!any(vec3<bool>(true, false, var_0.x))), var_0.x);
    global0 = !func_5(Struct_1(select(vec4<i32>(2147483647i, u_input.d.x, 1i, -12306i) << (vec4<u32>(7643u, 1u, u_input.b.x, 53379u) % vec4<u32>(32u)), ~vec4<i32>(-1i, 2147483647i, -5033i, -1i), vec4<bool>(true, var_0.x, true, global0.x)), 336f, _wgslsmith_f_op_f32(f32(-1f) * -139f)));
    var var_1 = Struct_3(func_1(Struct_3(Struct_1(max(vec4<i32>(u_input.d.x, u_input.d.x, 55697i, 1i), vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, u_input.a.x)), -837f, -427f), vec4<i32>(1i, 1i, -u_input.d.x, 2147483647i | u_input.a.x), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) + _wgslsmith_f_op_f32(select(-119f, 129f, var_0.x)))), -172f, vec3<i32>(-_wgslsmith_div_i32(-34090i, 23444i), _wgslsmith_add_i32(u_input.d.x, abs(35817i)), u_input.c)), vec4<i32>(select(u_input.c, u_input.d.x, var_0.x), ~min(2147483647i ^ u_input.a.x, abs(u_input.d.x)), u_input.c, 20626i), 77904u ^ countOneBits(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(f32(-1f) * -767f)))));
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)));
    let var_2 = ~(-2147483647i);
    let var_3 = var_1.a;
    var var_4 = i32(-1i) * -33810i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstLeadingBit((var_1.b & var_3.a) | _wgslsmith_sub_vec4_i32(var_1.a.a, vec4<i32>(var_2, 1i, -39241i, -2147483647i))), var_1.a.a), 888f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, -878f, var_3.c, 1367f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_3.b, 432f, var_1.d) + vec4<f32>(var_3.b, var_3.b, var_3.c, -214f))))));
}

