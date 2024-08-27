struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    return -1403f;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, arg_1.x, arg_1.x, 892f))) - vec4<f32>(arg_1.x, -135f, 581f, _wgslsmith_f_op_f32(max(-1000f, 826f)))), arg_2, (abs(vec2<i32>(arg_0, arg_0)) & vec2<i32>(u_input.a.x, -79953i)) >> (abs(u_input.b.wy) % vec2<u32>(32u)), min(80631u, 0u), arg_0), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -781f, -283f, arg_1.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 2508f, -353f, 1697f), vec4<f32>(arg_1.x, -1142f, arg_1.x, -1480f)))), abs(select(vec4<i32>(arg_0, 1i, -1i, u_input.a.x), vec4<i32>(-90378i, arg_0, 23522i, u_input.a.x), vec4<bool>(false, true, false, true))) >> (arg_2 % vec4<u32>(32u))), u_input.a.x);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.b.a.x))));
    var var_3 = var_1.a.b.x;
    let var_4 = var_1.a;
    return select(vec2<i32>(-1i, 61159i), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.c, 2147483647i), vec2<i32>(-1i, -6591i))) & var_1.a.c, !(false & !any(vec4<bool>(false, false, true, false))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 952f, 808f, -1037f)))), firstLeadingBit(vec4<u32>(abs(abs(8664u)), 10626u, ~countOneBits(74747u), u_input.b.x)), ~u_input.a.xy, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.wz, vec2<u32>(24059u, 4294967295u)) & min(u_input.b.wz, u_input.b.xx), max(vec2<u32>(1u, u_input.c), ~u_input.b.wz)), min(~(~58699u), u_input.b.x)), _wgslsmith_div_i32(abs(-_wgslsmith_sub_i32(u_input.a.x, 1i)), u_input.a.x));
    var var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_add_vec2_i32(func_3(1i, vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(var_0.a.x, -1504f, 560f, var_0.a.x), vec4<i32>(-11891i, -3171i, var_0.c.x, 0i))))), ~firstLeadingBit(u_input.b)), vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(-26641i, var_0.e) | _wgslsmith_clamp_i32(var_0.c.x, var_0.e, 0i))), ~(1u >> ((_wgslsmith_mult_u32(var_0.b.x, u_input.c) ^ (u_input.b.x | 46852u)) % 32u)), min(22246i, -1i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1951f, 1617f, -1051f, var_1.a.x) + var_1.a) + vec4<f32>(var_0.a.x, var_1.a.x, var_1.a.x, var_0.a.x))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-43053i, -1i, 1i), _wgslsmith_mod_i32(reverseBits(u_input.a.x), -2147483647i), min(i32(-1i) * -58370i, -46399i & u_input.a.x), -firstLeadingBit(1i)), ~vec4<i32>(-2147483647i, -57150i, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-43393i, var_0.c.x)), _wgslsmith_add_i32(1i, var_0.c.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, var_1.e, u_input.a.x), vec4<i32>(32970i, var_0.c.x, u_input.a.x, 1i) >> (vec4<u32>(42679u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), select(vec4<i32>(-49594i, u_input.a.x, u_input.a.x, 8372i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -75623i, u_input.a.x, -10849i), vec4<i32>(var_0.e, 2147483647i, -12164i, var_1.c.x)), arg_0))));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1377f, var_2.a.x, var_0.a.x, var_1.a.x)))), var_1.a)), var_2.b);
    var var_3 = u_input.b.zz;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - _wgslsmith_div_f32(var_0.a.x, -1439f))), 1673f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-459f + arg_0.x))), 1577f)), vec4<u32>(u_input.c, ~reverseBits(u_input.b.x) >> (u_input.c % 32u), select(66405u, _wgslsmith_add_u32(28702u ^ u_input.c, u_input.b.x), true & all(vec2<bool>(false, true))), u_input.b.x), vec2<i32>(u_input.a.x, reverseBits(~2147483647i) << (~(u_input.b.x & 4294967295u) % 32u)), 1u, u_input.a.x & firstLeadingBit(~firstTrailingBit(u_input.a.x)));
    let var_1 = u_input.a & reverseBits(_wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(35232i, -1i, 0i)), u_input.a));
    var var_2 = var_0.a;
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2175f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -3005f) + arg_0.x))), -1481f, _wgslsmith_f_op_f32(min(-790f, _wgslsmith_f_op_f32(func_1(true))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-arg_1), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(1533f))), 355f, 886f));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, _wgslsmith_f_op_f32(1613f + -1236f), var_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(441f, arg_0.x)))))) - _wgslsmith_f_op_vec4_f32(-var_0.a));
    return Struct_3(Struct_1(var_0.a, abs(min(~u_input.b, abs(vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, 4294967295u)))), var_1.yy, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.b.yzw ^ u_input.b.zwz, vec3<u32>(var_0.d, 0u, 61217u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, var_0.d), ~var_0.b.zyx)), firstTrailingBit(-(var_0.e & var_1.x))), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1011f, -1253f, -546f, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -147f, 230f))), _wgslsmith_f_op_vec4_f32(abs(var_0.a)))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, var_0.e, 0i, 3599i), vec4<i32>(u_input.a.x, u_input.a.x, var_0.c.x, 0i), vec4<bool>(true, true, true, true)), countOneBits(vec4<i32>(-2147483647i, -2147483647i, -34074i, u_input.a.x))), -vec4<i32>(0i, -1i, 0i, u_input.a.x))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(2522f, 1126f, 456f), _wgslsmith_f_op_f32(func_1(abs(2147483647i) > _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x), vec4<i32>(81969i, u_input.a.x, u_input.a.x, u_input.a.x))))));
    var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) - _wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(f32(-1f) * -713f))), _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a.a), func_4(var_0.a.a.xzy, var_0.a.a.x).b.b)))), 986f);
    var var_1 = -452f;
    var var_2 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a.ywy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, var_0.a.a.x, 243f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.a.x)) - _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.a.x)))).a, func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a.a.yyz), vec3<f32>(-654f, _wgslsmith_f_op_f32(var_0.a.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), 530f).b, abs(-firstLeadingBit(-u_input.a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-708f, 409f, var_2.b.a.x, var_0.a.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.b.a.x * var_0.a.a.x), _wgslsmith_div_f32(1000f, 1156f), -196f, 2146f))), min(var_2.a.b, vec4<u32>(var_0.a.b.x, func_4(vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_2.b.a.x), var_0.b.a.x).a.d, ~0u, u_input.c)) & u_input.b, vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(39952i, var_2.b.b.x), vec2<i32>(0i, -1i), select(u_input.a.xz, var_2.b.b.xw, vec2<bool>(false, false))), _wgslsmith_clamp_u32(var_0.a.b.x, var_2.a.d, ~(~16326u)), 2147483647i);
    var_1 = var_0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(exp2(var_2.b.a.x)))), _wgslsmith_div_vec2_f32(var_3.a.xw, var_0.b.a.xw))), ~2147483647i);
}

