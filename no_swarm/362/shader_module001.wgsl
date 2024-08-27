struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(~(~_wgslsmith_mod_u32(13862u, 16210u) & ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1068f, 822f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1504f, 615f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, 357f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2190f), _wgslsmith_f_op_f32(-673f - 1023f))))), !all(vec3<bool>(false, true, true)));
    var_0 = Struct_2(_wgslsmith_mod_u32(u_input.e.x, 1u), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2140f * var_0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-119f))))), ~(1i >> (_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(4294967295u, u_input.c.x)) % 32u)) != -12122i);
    var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(~293u, 52030u, 19408u, var_0.a >> (4294967295u % 32u)), vec4<u32>(_wgslsmith_mod_u32(var_0.a, 45893u), countOneBits(74874u), _wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(57794u, 4294967295u)), ~82163u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(trunc(var_0.b)))), true);
    let var_1 = 1887f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * _wgslsmith_f_op_f32(round(var_0.b.x)))), _wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), false)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x + -262f), true)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(283f - 183f), var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 139f)))), var_1));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = arg_2.c;
    var var_2 = vec4<u32>(arg_2.a, _wgslsmith_div_u32(~_wgslsmith_mod_u32(countOneBits(11292u), 7666u), ~70449u), 1u, ~(~(var_0.a & ~var_0.a)));
    var_2 = abs(select(~(vec4<u32>(66061u, var_2.x, arg_2.a, 1u) << (vec4<u32>(4294967295u, 4294967295u, var_0.a, 0u) % vec4<u32>(32u))), max(vec4<u32>(15810u, var_2.x, 4294967295u, var_2.x) | vec4<u32>(var_0.a, var_0.a, var_2.x, 9520u), vec4<u32>(u_input.a, 0u, 34467u, arg_2.a)), true & !arg_2.c)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 51826u, u_input.b, firstTrailingBit(4294967295u)), abs(~vec4<u32>(0u, 29196u, 4294967295u, u_input.a)) ^ ~(~vec4<u32>(46570u, var_0.a, 92806u, var_0.a)));
    return abs(0u);
}

fn func_2() -> i32 {
    let var_0 = !vec3<bool>(all(vec2<bool>(true, true)), false, true);
    let var_1 = vec4<u32>(firstTrailingBit(u_input.b), func_4(vec3<i32>(0i, u_input.d, select(1i, max(-13179i, u_input.d), !var_0.x)), _wgslsmith_f_op_vec3_f32(func_3()), Struct_2(0u, _wgslsmith_f_op_vec3_f32(func_3()).yz, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, 1000f, -1000f, -370f)))), 78406u, func_4(~reverseBits(-vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<f32>(-162f, -1387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f))), Struct_2(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1034f, 938f) - vec2<f32>(456f, -1000f))), select(any(var_0), any(var_0.xy), var_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1203f, -1240f, 672f, 775f)))));
    let var_2 = !select(vec4<bool>(true, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), false, all(!vec4<bool>(true, var_0.x, true, true))), vec4<bool>(any(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), true)), false, var_0.x, all(vec3<bool>(true, true, false))), !vec4<bool>(true, -44472i <= u_input.d, true, var_0.x & false));
    let var_3 = firstLeadingBit(_wgslsmith_sub_i32(u_input.d, u_input.d));
    var var_4 = Struct_3(!var_0.x, _wgslsmith_add_i32(-1i, var_3));
    return var_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) * _wgslsmith_f_op_vec2_f32(min(arg_1.b, vec2<f32>(arg_2, arg_1.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, 118f))))), u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b)), abs(i32(-1i) * -func_2()));
    var var_1 = Struct_1(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-683f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f - arg_1.b.x), _wgslsmith_f_op_f32(trunc(arg_2))))), _wgslsmith_dot_vec2_i32(arg_0.wx, abs(vec2<i32>(u_input.d, u_input.d))));
    var_0 = Struct_1(arg_1.b, -arg_0.x);
    var var_2 = arg_1;
    return Struct_3(true, select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, 1311i), vec2<i32>(var_1.b, var_1.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, -8651i), vec2<i32>(arg_0.x, 35i), vec2<i32>(arg_0.x, var_1.b)) | arg_0.zy), 52179i << (_wgslsmith_div_u32(arg_1.a, select(u_input.c.x, 31817u, arg_1.c)) % 32u), arg_1.c));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    return func_5(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(9630i, arg_0.x, arg_0.x, 0i), vec4<i32>(u_input.d, arg_0.x, 38297i, -1i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, 8459i, -1i), vec4<i32>(-2147483647i, 21831i, arg_0.x, u_input.d)), -vec4<i32>(15977i, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true))), vec4<i32>(-25357i, func_2(), u_input.d, -2147483647i)), Struct_2(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1374f, 410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1206f)))), select(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1551f * -474f)) + _wgslsmith_f_op_f32(f32(-1f) * -590f))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.b - vec2<f32>(401f, arg_2.b.x)))) + _wgslsmith_f_op_vec2_f32(-arg_2.b))), arg_0.x);
    var var_1 = abs(~abs(vec2<u32>(reverseBits(4294967295u), ~u_input.c.x)));
    var_1 = u_input.e.xx;
    var_1 = u_input.e.xx;
    var var_2 = var_0;
    return _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-20840i, -1i, arg_1.b, -1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-6293i, -41227i, 1i, var_2.b), vec4<i32>(arg_0.x, u_input.d, arg_0.x, 6536i)) & -(~vec4<i32>(34816i, arg_1.b, var_0.b, -14350i)), -vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_1.b, -1i)), ~var_0.b, arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(arg_1.b, var_0.b)))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.x, -2147483647i), vec3<i32>(arg_0.x, 0i, var_2.b)), -7236i ^ arg_0.x), _wgslsmith_clamp_i32(arg_1.b, 0i, 35096i) | 1i, var_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -1i), vec3<i32>(arg_0.x, var_2.b, 2147483647i))), ~firstTrailingBit(vec4<i32>(-1i, 2147483647i, u_input.d, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(112f, 898f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(413f, -1890f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2922f, 104f) * vec2<f32>(-522f, -2051f)))))), -2147483647i);
    var var_1 = func_6(select(vec2<i32>(max(~76979i, u_input.d), ~firstLeadingBit(-18188i)), vec2<i32>(2147483647i, -1i), vec2<bool>(true, true)), func_1(~vec2<i32>(_wgslsmith_add_i32(var_0.b, -34000i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1137i, 0i, 19548i, u_input.d), vec4<i32>(u_input.d, 2147483647i, -31253i, 3101i)))), Struct_2(1272u, vec2<f32>(-803f, var_0.a.x), true & any(vec3<bool>(false, true, false))));
    let var_2 = true;
    let var_3 = u_input.a;
    let var_4 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), var_2)), vec2<bool>(var_2, countOneBits(47624u) <= ~var_3), !(!select(vec2<bool>(false, false), vec2<bool>(var_2, var_2), var_2)));
    let var_5 = Struct_3(var_0.a.x != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), _wgslsmith_f_op_f32(abs(-446f)))), var_0.b);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a))), _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a)))))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(2116f * var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -127f), var_0.a.x), ~u_input.c, 1240f, _wgslsmith_f_op_vec3_f32(func_3()), vec3<i32>(-21090i, ~(~var_0.b), var_5.b >> (firstLeadingBit(0u) % 32u)));
}

