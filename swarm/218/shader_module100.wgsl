struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = all(select(arg_0.zx, select(vec2<bool>(any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), any(arg_0.yx)), !select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), !arg_0.zx), arg_0.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f + -788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(353f)) - 1f)));
    var var_2 = select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.c), i32(-1i) * -2442i), u_input.a), -6474i, u_input.c), -_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(34110i, 1i, u_input.c)) ^ vec3<i32>(-2147483647i, 2147483647i, -14673i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 3754i), vec3<i32>(u_input.c, u_input.a, u_input.a)) ^ vec3<i32>(2147483647i, -1i, 1i)), !select(vec3<bool>(var_0, all(vec4<bool>(false, arg_0.x, arg_0.x, true)), !var_0), arg_0, arg_0));
    let var_3 = _wgslsmith_f_op_f32(floor(-3426f));
    var_2 = vec3<i32>(var_2.x, firstLeadingBit(2147483647i), u_input.c);
    return !(!arg_0.yx);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = !any(vec4<bool>(_wgslsmith_f_op_f32(-arg_3.x) != _wgslsmith_f_op_f32(-arg_3.x), all(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), true, true));
    let var_1 = vec3<u32>(reverseBits(_wgslsmith_clamp_u32(~17714u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 12719u, 4294967295u), ~4294967295u)), firstTrailingBit(u_input.b) & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38449u, 38259u), vec2<u32>(0u, 4294967295u)), u_input.b), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(~947u, 38514u)), u_input.b));
    var_0 = any(select(vec4<bool>(!(!arg_0.a.x), true, 0u > ~var_1.x, true), !vec4<bool>(!arg_0.a.x, false, false, arg_2.a.x), arg_1.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_div_f32(arg_0.d.x, 259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.d.x) * _wgslsmith_f_op_f32(-584f * arg_2.b.x))), _wgslsmith_f_op_f32(abs(arg_3.x)), 230f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, arg_0.b.x, 193f, arg_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d.x, arg_2.d.x, -726f, -1550f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.x, 343f, arg_0.d.x, arg_0.d.x), vec4<f32>(637f, arg_0.b.x, arg_0.d.x, arg_2.d.x)))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2.x)), -412f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, arg_3.x, arg_3.x, arg_2.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2652f, -1574f, 3283f, 1166f))), arg_0.a.x || false))))));
    return select(vec4<bool>(any(select(!vec4<bool>(arg_0.a.x, true, false, true), select(vec4<bool>(arg_0.a.x, arg_2.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, arg_1.x), vec4<bool>(true, arg_2.a.x, arg_2.a.x, false)), true)), arg_0.a.x, u_input.c < 1i, all(vec4<bool>(true, arg_2.a.x, false, true)) | (any(vec3<bool>(arg_2.a.x, true, arg_2.a.x)) & (685f >= arg_3.x))), select(vec4<bool>(arg_2.a.x, false, !arg_1.x, true), vec4<bool>(!any(vec3<bool>(true, arg_1.x, true)), true, !(!arg_2.a.x), all(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.x, true, false, arg_2.a.x), false))), any(!select(vec3<bool>(true, true, false), vec3<bool>(arg_2.a.x, true, arg_0.a.x), false))), vec4<bool>(arg_1.x, false, arg_1.x, false));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = ~2320u;
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(select(~vec2<u32>(4294967295u, 41335u), vec2<u32>(var_1, firstLeadingBit(u_input.b)), select(arg_3.a, arg_0.a, any(arg_2.xyx))), min(vec2<u32>(var_1, ~var_1), vec2<u32>(~1u, u_input.b))), vec2<u32>(var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.b), abs(vec2<u32>(64126u, u_input.b))), max(vec2<u32>(u_input.b, var_1), vec2<u32>(var_1, 1u)) | select(vec2<u32>(0u, 4294967295u), vec2<u32>(var_1, u_input.b), vec2<bool>(false, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_3.d.x, arg_3.b.x))))), _wgslsmith_f_op_f32(-arg_3.d.x)));
    var var_4 = vec2<i32>(~1i, -2147483647i);
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = abs(vec3<i32>(17925i, _wgslsmith_mult_i32(~_wgslsmith_div_i32(18535i, -1i), arg_1.c), ~arg_1.c));
    let var_1 = Struct_2(arg_1.a);
    let var_2 = var_0 & vec3<i32>(arg_1.c, 74457i, var_0.x);
    var var_3 = var_1;
    var var_4 = var_1;
    return func_5(Struct_2(arg_1.a), -(vec4<i32>(~0i, 51444i, u_input.a, countOneBits(var_2.x)) << (vec4<u32>(~1u, u_input.b, 1u, firstTrailingBit(82137u)) % vec4<u32>(32u))), func_4(arg_1, !func_3(!vec3<bool>(var_3.a.x, var_1.a.x, arg_1.a.x)), Struct_1(var_4.a, _wgslsmith_f_op_vec2_f32(-arg_2.zz), -12800i, vec2<f32>(_wgslsmith_f_op_f32(select(-883f, arg_0.x, true)), 791f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_2.x)), 894f, -1000f)), arg_1);
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, -345f))))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), (-2147483647i & u_input.a) > (u_input.a >> (u_input.b % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(116f, -265f), vec2<f32>(1130f, 449f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1493f, 350f))))), 1i | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-6089i, u_input.a, u_input.c, u_input.c)), vec4<i32>(-8465i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1422f, -874f)) - vec2<f32>(2368f, -355f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), 1f, -1684f));
    var var_2 = Struct_2(!(!vec2<bool>(var_1, all(vec2<bool>(false, true)))));
    var var_3 = Struct_1(func_3(vec3<bool>(1i <= u_input.c, false, var_1)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1403f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1328f, 1112f)), select(var_2.a, var_2.a, var_2.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1331f, 334f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, -788f)))))), -8797i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-797f, -1163f)) + -430f) + _wgslsmith_f_op_f32(select(-633f, 416f, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-217f)), _wgslsmith_f_op_f32(-629f + 836f)))))));
    var var_4 = var_3.a;
    return Struct_1(var_3.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(-var_3.b.x)), var_3.b, var_2.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1583f, 2168f) * _wgslsmith_f_op_vec2_f32(round(var_3.b))), vec2<f32>(_wgslsmith_f_op_f32(1000f - var_3.b.x), _wgslsmith_f_op_f32(exp2(var_3.d.x))))), ~u_input.a, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))), !(select(false, 55472i != u_input.c, true) && any(vec3<bool>(true, true, true))));
    var var_1 = func_1();
    var var_2 = !(all(var_1.a) && var_1.a.x);
    var_0 = !var_1.a;
    var var_3 = func_1();
    var var_4 = vec2<bool>(true, func_5(Struct_2(func_3(vec3<bool>(true, var_1.a.x, true))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c, var_1.c), vec2<i32>(7838i, -21177i)), _wgslsmith_mod_i32(-2147483647i, 1i)), -20513i, 0i, firstLeadingBit(27125i)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, func_1().a.x, var_3.a.x, all(var_1.a)), vec4<bool>(all(vec2<bool>(var_1.a.x, true)), true, func_5(Struct_2(vec2<bool>(var_3.a.x, false)), vec4<i32>(-31745i, 1i, -74323i, 29536i), vec4<bool>(true, var_1.a.x, false, var_3.a.x), Struct_1(vec2<bool>(true, var_3.a.x), var_3.d, -62839i, vec2<f32>(var_1.d.x, var_3.b.x))), all(var_3.a))), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1861f)), var_1.d.x)));
}

