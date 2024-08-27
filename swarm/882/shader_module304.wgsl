struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 42119u), vec2<u32>(1u, u_input.b)), u_input.b, vec4<i32>(~_wgslsmith_mod_i32(-10115i & u_input.a, u_input.a >> (u_input.b % 32u)), 0i, -u_input.a, u_input.a), 14362u, abs(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i)), max(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(15257i, u_input.a, -2147483647i, 82157i), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-arg_0))));
    let var_2 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true)), vec2<bool>(true, u_input.b == (var_0.a ^ u_input.b)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), false), any(vec4<bool>(true, true, false, true)))), select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true)), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), _wgslsmith_f_op_f32(sign(arg_0)) != arg_0), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var_0 = Struct_1(~var_0.b, 1u, firstTrailingBit(vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(1i, var_0.e.x, u_input.a)), 2147483647i, _wgslsmith_add_i32(-2147483647i, reverseBits(-18372i)), u_input.a & -1i)), ~var_0.b, ~vec4<i32>(u_input.a & ~var_0.c.x, countOneBits(countOneBits(-17794i)), -2147483647i, -976i));
    var var_3 = -1i << (var_0.d % 32u);
    return 31085i;
}

fn func_2() -> bool {
    let var_0 = u_input.a & _wgslsmith_clamp_i32(select(u_input.a, func_3(_wgslsmith_f_op_f32(floor(1091f))), false), u_input.a << (4294967295u % 32u), 42932i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-268f, -295f), vec2<f32>(1608f, -1675f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-293f, -395f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1408f, -1428f), vec2<f32>(484f, 262f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1564f, -1594f) * vec2<f32>(-438f, 1631f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-542f, -766f), vec2<f32>(2734f, 2411f)))))));
    var var_2 = vec4<i32>(~(~(40851i >> (u_input.b % 32u))), _wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(0i, var_0)), abs(reverseBits(i32(-1i) * -19052i)), -2961i) << ((~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 89592u, 1u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b))) >> (vec4<u32>(0u, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_2 = vec4<i32>(~countOneBits(_wgslsmith_mod_i32(var_2.x, u_input.a) ^ var_2.x), -2849i, countOneBits(-3124i), ~(~var_0));
    var_2 = ~vec4<i32>(~1i, ~func_3(-614f), ~func_3(_wgslsmith_f_op_f32(max(var_1.x, var_1.x))), firstTrailingBit(abs(~var_0)));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = -101i;
    let var_1 = arg_3.zy;
    let var_2 = ~select(min(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 1877u)), ~abs(vec2<u32>(u_input.b, 58861u)), u_input.b > 29487u) << (vec2<u32>(firstTrailingBit(~(~u_input.b)), ~4294967295u) % vec2<u32>(32u));
    var var_3 = !select(vec3<bool>(!all(vec2<bool>(arg_1, arg_1)), true, 1f >= _wgslsmith_f_op_f32(-409f - arg_0.x)), !(!(!vec3<bool>(false, arg_1, false))), select(vec3<bool>(!arg_1, func_2(), false || arg_1), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, true), false), select(!vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, true, true), arg_1)));
    var_3 = !vec3<bool>(var_3.x || !var_3.x, arg_1, true | ((27111i << (u_input.b % 32u)) == -arg_3.x));
    return Struct_1(abs(~36553u), min(var_2.x, ~u_input.b), firstLeadingBit(vec4<i32>((u_input.a >> (var_2.x % 32u)) ^ -u_input.a, var_1.x, reverseBits(_wgslsmith_add_i32(-7874i, arg_2.x)), arg_2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.b, 5456u), vec3<u32>(u_input.b, u_input.b, 40715u)), _wgslsmith_dot_vec4_u32(vec4<u32>(45839u, u_input.b, var_2.x, u_input.b), vec4<u32>(var_2.x, var_2.x, 23361u, 4294967295u)), reverseBits(var_2.x)) << (select(~vec3<u32>(57997u, 4294967295u, u_input.b), countOneBits(vec3<u32>(u_input.b, var_2.x, 1u)), select(vec3<bool>(var_3.x, false, true), vec3<bool>(arg_1, false, false), vec3<bool>(false, true, var_3.x))) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.b, 0u, u_input.b) << (~vec3<u32>(var_2.x, 4294967295u, u_input.b) % vec3<u32>(32u)))), ~_wgslsmith_div_vec4_i32(arg_3, arg_3) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_3.x, -35173i, arg_2.x << (var_2.x % 32u)), ~min(vec4<i32>(31405i, arg_3.x, u_input.a, 40298i), vec4<i32>(-1i, arg_2.x, u_input.a, arg_3.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1008f), 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1051f)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(532f + 382f)))))), func_2(), vec2<i32>(1i >> (1u % 32u), u_input.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, -42223i, 1i, 0i), ~(vec4<i32>(20459i, u_input.a, 55083i, u_input.a) << (vec4<u32>(0u, 22572u, u_input.b, 0u) % vec4<u32>(32u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -529f)))))), -1000f);
    return Struct_1(_wgslsmith_add_u32(var_0.a, u_input.b), 49750u ^ ~firstLeadingBit(u_input.b & 0u), _wgslsmith_clamp_vec4_i32(~vec4<i32>(8636i, var_0.c.x, _wgslsmith_div_i32(u_input.a, -1i), u_input.a), vec4<i32>(~_wgslsmith_dot_vec4_i32(var_0.c, var_0.c), u_input.a, u_input.a, (-50541i ^ u_input.a) ^ u_input.a), abs(-var_0.c)), var_0.b, vec4<i32>(-_wgslsmith_mod_i32(-2147483647i, var_0.e.x), u_input.a, var_0.e.x | ~firstLeadingBit(-1i), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, all(vec3<bool>(true, true, false)));
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -507f), 1826f))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 1000f)), 1613f), -1000f)), !(!var_0.x), vec2<i32>(u_input.a, countOneBits(var_1.e.x)), select(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.a, var_1.c.x, 0i, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.c.x, 3371i, u_input.a, u_input.a), vec4<i32>(-1i, 58806i, u_input.a, -71802i))), vec4<i32>(~(3517i >> (u_input.b % 32u)), i32(-1i) * -var_1.c.x, abs(~u_input.a), firstLeadingBit(~u_input.a)), true));
    var var_3 = vec2<i32>(0i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1560f, -1116f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1723f)))))), 51343i, _wgslsmith_dot_vec3_i32(vec3<i32>(~(~(-2147483647i)), -(~u_input.a), var_1.e.x), -vec3<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.e.wz, var_1.c.yw), _wgslsmith_mod_i32(var_1.e.x, var_2.e.x))));
}

