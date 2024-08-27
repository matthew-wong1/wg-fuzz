struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = true;
    var var_1 = ~(~(5100u ^ ~u_input.b));
    var var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-442f * 1516f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2009f) * 808f), false)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-677f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_1))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1275f * 1000f), _wgslsmith_f_op_f32(min(var_2.x, -615f)), _wgslsmith_f_op_f32(-var_2.x))))) * vec4<f32>(2051f, arg_1, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.x) + _wgslsmith_f_op_f32(-410f + arg_1))), arg_1));
    let var_3 = vec4<u32>(max(u_input.b, ~max(_wgslsmith_mult_u32(u_input.a.x, 0u), ~u_input.a.x)), u_input.b, ~(~_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(u_input.b))), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 57474u, 4294967295u), vec3<u32>(u_input.b, 58219u, 12999u)), abs(vec3<u32>(u_input.b, 52612u, u_input.a.x)) ^ u_input.a));
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(var_3.zxz, var_3.xxy), ~56121u) > var_3.x;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = Struct_1(true);
    var var_1 = !vec4<bool>(select(var_0.a, func_3(var_0, _wgslsmith_f_op_f32(sign(arg_0))), select(var_0.a, true, true)), false, true, true);
    let var_2 = true;
    let var_3 = Struct_2(select(vec3<i32>(select(~0i, -1i, select(true, var_0.a, var_0.a)), -1i, -_wgslsmith_add_i32(-38306i, -1i)), abs(~vec3<i32>(-2341i, -33149i, -61036i)), true), var_1.yw, vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-700f)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-107f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(-327f)))))), var_0);
    var_1 = !vec4<bool>(!(true && (true | var_1.x)), var_2, false, true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, -1137f, var_3.c.x, 884f) * vec4<f32>(571f, arg_0, arg_0, 719f)) + vec4<f32>(755f, -1837f, var_3.c.x, var_3.c.x)))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 2960f, arg_0.a, arg_0.a), vec4<f32>(arg_0.a, 307f, -593f, -284f)) * _wgslsmith_f_op_vec4_f32(func_2(-486f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2011f)), -811f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1663f, -1145f, 224f, 1006f) - vec4<f32>(-170f, arg_0.a, -124f, arg_0.a)), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -1533f, arg_0.a, -689f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 186f, -463f, 2186f)), !vec4<bool>(false, arg_0.b.a, false, arg_0.b.a))))), vec4<bool>(arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) - -790f) <= 1194f, arg_0.b.a, !(true | arg_0.b.a))));
    var var_1 = vec4<i32>(~abs(_wgslsmith_sub_i32(firstLeadingBit(-37587i), 21939i)), -firstTrailingBit(select(-45518i, 1i, arg_0.b.a) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(45376i, 0i, 1i, 0i), vec4<i32>(-61756i, 2623i, -28243i, 2147483647i))), min(2147483647i, -firstTrailingBit(-6157i)) >> (50656u % 32u), -2147483647i);
    var_1 = -vec4<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(var_1.x) | -var_1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.x, -2147483647i), var_1.yxy), var_1.wwy & var_1.xwy) & 3674i, ~(~var_1.x), ~abs(-var_1.x));
    var_1 = vec4<i32>(_wgslsmith_div_i32(-20758i, var_1.x), ~(1i << (((u_input.a.x << (u_input.a.x % 32u)) >> (_wgslsmith_sub_u32(20608u, u_input.a.x) % 32u)) % 32u)), 109675i, abs(-var_1.x >> (4294967295u % 32u)));
    var var_2 = (_wgslsmith_mod_i32((2147483647i << (u_input.b % 32u)) & var_1.x, _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.x, var_1.x), var_1.x)) & _wgslsmith_mod_i32(9601i, 2147483647i)) & var_1.x;
    return u_input.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~1u, func_1(arg_2));
    var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(28910u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, u_input.a.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), max(u_input.a.zz, vec2<u32>(4294967295u, 74430u)))));
    var var_1 = -_wgslsmith_sub_vec4_i32(max(firstTrailingBit(vec4<i32>(-14704i, arg_1.x, 0i, -56026i)) | (vec4<i32>(-1835i, arg_0.x, arg_1.x, arg_0.x) | vec4<i32>(21526i, arg_1.x, -2147483647i, 0i)), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(arg_0.x, arg_0.x, arg_1.x, 25809i)), vec4<i32>(arg_0.x, -14233i, 2147483647i, 0i) | vec4<i32>(1i, arg_1.x, -2147483647i, -33923i))), vec4<i32>(-_wgslsmith_sub_i32(arg_1.x, arg_0.x), 1i >> (select(u_input.a.x, u_input.b, true) % 32u), (arg_1.x & 2199i) << (4294967295u % 32u), abs(63852i)));
    var var_2 = 541f;
    let var_3 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~(~var_1.yww), _wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_1.x, -27166i, arg_0.x), var_1.zyw, arg_2.b.a), var_1.ywz)), max((var_1.wzy >> (vec3<u32>(u_input.b, u_input.a.x, u_input.b) % vec3<u32>(32u))) | max(var_1.zzx, var_1.xzw), ~vec3<i32>(0i, arg_1.x, arg_0.x) ^ var_1.zwx)), !vec2<bool>(!(-574f != arg_2.a), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -249f, -758f, arg_2.a) * vec4<f32>(arg_2.a, 136f, 492f, arg_2.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, -1130f, -866f, 321f) * vec4<f32>(arg_2.a, 151f, 1139f, 568f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, arg_2.a, -1112f, -806f))) + vec4<f32>(_wgslsmith_div_f32(arg_2.a, arg_2.a), arg_2.a, _wgslsmith_div_f32(-1533f, arg_2.a), -1042f))), arg_2.b);
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<i32>(_wgslsmith_clamp_i32(min(_wgslsmith_div_i32(-15345i, 32273i), -2147483647i), select(i32(-1i) * -59810i, _wgslsmith_div_i32(-1i, -2147483647i), true), -2679i), _wgslsmith_div_i32(-1i, 1i)), vec2<i32>(-38015i, _wgslsmith_sub_i32(2147483647i, 1i) >> (firstTrailingBit(func_1(Struct_3(-1745f, Struct_1(true)))) % 32u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1850f * _wgslsmith_f_op_f32(-482f + -1629f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f - -1000f))), Struct_1(false)));
    let var_1 = Struct_2(~_wgslsmith_add_vec3_i32(vec3<i32>(~851i, 1i, ~0i), ~vec3<i32>(1i, 1i, 1i)), select(select(!select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), vec2<bool>(var_0.a, false)), !(!vec2<bool>(true, var_0.a)), var_0.a), select(select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a)), true), select(vec2<bool>(true, var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), true), !vec2<bool>(var_0.a, false)), !vec2<bool>(var_0.a, true)), select(select(select(vec2<bool>(false, var_0.a), vec2<bool>(true, false), false), vec2<bool>(true, true), !var_0.a), select(select(vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a), var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), vec2<bool>(true, true)), u_input.a.x < 1u), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, -3573f, 134f, -738f)))), var_0);
    var var_2 = vec3<u32>(u_input.b, u_input.a.x, 0u);
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1876f * 825f))))), var_1.c.x), func_4((var_1.a.zx & _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.x, -2147483647i), var_1.a.xz)) ^ countOneBits(select(var_1.a.yz, vec2<i32>(2147483647i, var_1.a.x), var_1.b.x)), (-var_1.a.xy ^ -var_1.a.xz) | vec2<i32>(_wgslsmith_add_i32(var_1.a.x, var_1.a.x), var_1.a.x >> (1u % 32u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f + -233f) - _wgslsmith_f_op_f32(min(var_1.c.x, -1552f))), Struct_1(!var_0.a))));
    var var_4 = true;
    var_4 = var_1.a.x >= _wgslsmith_div_i32(-var_1.a.x << (1u % 32u), 12374i);
    var_2 = u_input.a;
    let var_5 = !vec3<bool>(2247f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_3.a)))), !var_0.a, any(vec4<bool>(false, any(vec4<bool>(var_3.b.a, true, var_1.b.x, true)), var_3.b.a, func_3(Struct_1(var_0.a), 903f))));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(var_2.zy >> (u_input.a.zy % vec2<u32>(32u)), ~(u_input.a.zz << (u_input.a.xx % vec2<u32>(32u))) >> (vec2<u32>(func_1(Struct_3(var_6.a, Struct_1(false))), var_2.x ^ u_input.a.x) % vec2<u32>(32u))));
}

