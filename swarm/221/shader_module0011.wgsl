struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f + 782f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-736f))))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(false, true, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, false, true)))), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec3<bool>(false, false, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), all(vec3<bool>(true, true, true))), true && (u_input.e.x > firstLeadingBit(0i)));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(u_input.e.zy, 267f, _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.b, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(4701i, 12562i, u_input.e.x), u_input.b, u_input.d)), select(abs(vec2<i32>(u_input.e.x, u_input.e.x)), u_input.e.xy, true) & vec2<i32>(_wgslsmith_sub_i32(u_input.e.x, u_input.e.x), -40980i)), _wgslsmith_add_i32(_wgslsmith_div_i32(1i, 19925i), u_input.b));
    var_2 = Struct_1(_wgslsmith_div_vec2_i32(firstLeadingBit(-u_input.e.yx), -(~vec2<i32>(u_input.b, u_input.b))), var_2.b, _wgslsmith_clamp_vec2_i32(u_input.e.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 77964i), vec2<i32>(u_input.b, var_2.a.x), _wgslsmith_mult_vec2_i32(u_input.e.yy, vec2<i32>(2147483647i, -23642i))), max(_wgslsmith_div_vec2_i32(var_2.a, vec2<i32>(0i, -56541i)), u_input.e.zy | var_2.a)) << (_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1), u_input.a), _wgslsmith_add_vec2_u32(min(vec2<u32>(116222u, 51067u), vec2<u32>(var_1, var_1)), u_input.a)) % vec2<u32>(32u)), max(i32(-1i) * -var_2.a.x, _wgslsmith_sub_i32(var_2.c.x, ~var_2.a.x & -1i)));
    var_2 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(1i, u_input.e.x)), var_2.a) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, var_1), max(max(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.a.x, var_1)), u_input.a << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))) % vec2<u32>(32u)), var_2.b, _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.e.x, -max(0i, u_input.e.x)), u_input.e.yy), -1i);
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(76079u, 0u, 0u), var_1);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a.x))) & ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c, 4294967295u, 31982u, u_input.c)), vec4<u32>(59898u, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(func_3(), firstTrailingBit(u_input.c), 0u, abs(~u_input.a.x)), ~abs(vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.a.x))));
    let var_1 = Struct_1(~(~vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1346f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(797f)))))), _wgslsmith_div_vec2_i32(-u_input.e.yy, ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), u_input.e.xz)), max(2147483647i, 1i));
    let var_2 = Struct_1(reverseBits(firstLeadingBit(var_1.a)), var_1.b, reverseBits(var_1.a), abs(firstTrailingBit(min(-21922i | var_1.a.x, max(u_input.e.x, 4267i)))));
    var var_3 = var_1;
    let var_4 = true;
    return _wgslsmith_f_op_f32(step(var_3.b, _wgslsmith_f_op_f32(min(-1439f, _wgslsmith_f_op_f32(select(-1043f, _wgslsmith_f_op_f32(-1186f + -249f), true))))));
}

fn func_1() -> i32 {
    let var_0 = vec4<f32>(500f, -1432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1610f, 626f)) + _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2288f);
    var var_1 = vec4<f32>(367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-698f)))))), _wgslsmith_f_op_f32(1526f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))), 1306f);
    var var_2 = var_0.x;
    var_2 = var_0.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(262f, var_1.x, -909f, -1185f), _wgslsmith_f_op_vec4_f32(sign(var_0)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -992f, 354f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, var_0.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(false, true, true, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - var_0))))));
    return countOneBits(u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(355f * _wgslsmith_div_f32(-513f, 520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-886f - -203f), -2240f)))));
    let var_1 = Struct_1(vec2<i32>(reverseBits(_wgslsmith_mod_i32(2072i, -2147483647i) << (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, -u_input.b, 23293i))), 740f, vec2<i32>(u_input.d, -_wgslsmith_div_i32(u_input.d << (u_input.c % 32u), u_input.b)), -1i);
    var var_2 = -_wgslsmith_mult_i32((max(var_1.d, 56241i) ^ ~var_1.c.x) ^ ~(-2147483647i), _wgslsmith_div_i32(0i, var_1.c.x));
    let var_3 = Struct_1(vec2<i32>(~abs(2147483647i), var_1.c.x), var_1.b, _wgslsmith_mult_vec2_i32(~u_input.e.xy, var_1.a), 0i);
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1057f, var_1.b) * vec2<f32>(-1932f, 697f)), vec2<f32>(-732f, var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 864f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_3.b) - vec2<f32>(-571f, var_3.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_0.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b, -776f), vec2<f32>(var_3.b, var_1.b)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 725f), vec2<f32>(var_3.b, -1389f)))))))));
    var var_4 = !(select(~(~u_input.c), _wgslsmith_sub_u32(1u, abs(u_input.c)), true) < 0u);
    var var_5 = vec3<bool>(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), true, true);
    var var_6 = Struct_1(countOneBits(~_wgslsmith_add_vec2_i32(u_input.e.xy, u_input.e.zz << (u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, var_1.b) * _wgslsmith_f_op_f32(-var_1.b))), ~var_1.a, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_6.d << (0u % 32u)) << ((~_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), countOneBits(u_input.c)) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(924f, 243f, -400f, -1089f) + vec4<f32>(var_3.b, 1546f, -443f, var_3.b)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(104f, 205f, 2152f, -787f), vec4<f32>(var_0.x, 865f, var_3.b, var_1.b)))))), vec4<f32>(-544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(trunc(var_6.b))), _wgslsmith_f_op_f32(var_6.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-955f)))), _wgslsmith_add_u32(~u_input.a.x, 108989u >> (_wgslsmith_add_u32(1u, u_input.c) % 32u)) & ~abs(~4247u));
}

