struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 1i, -1i, countOneBits(u_input.c.x)), ~((vec4<i32>(-19061i, u_input.c.x, u_input.c.x, u_input.b.x) & vec4<i32>(u_input.d.x, -45391i, 22792i, arg_1)) & vec4<i32>(58358i, arg_1, 2147483647i, arg_1))));
    let var_1 = var_0.xyz;
    let var_2 = true;
    var var_3 = Struct_1(var_2 || any(!(!vec3<bool>(true, arg_0.a, var_2))), arg_0.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, 1u, 62179u) | arg_0.b.yyx, _wgslsmith_mod_vec3_u32(arg_0.b.zwy, arg_0.b.wzx) >> (~vec3<u32>(1u, 4294967295u, arg_0.b.x) % vec3<u32>(32u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_0.b.x, arg_0.b.x), arg_0.b) | 1u)));
    var var_4 = 1153f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f + 1146f) * _wgslsmith_f_op_f32(-1693f - 795f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) + _wgslsmith_f_op_f32(round(1087f))))) + -1339f);
    return arg_0;
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(all(vec4<bool>(false, true | any(vec4<bool>(true, false, false, false)), true, true)), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(823f + -284f), _wgslsmith_f_op_f32(f32(-1f) * -1485f))), 505f) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2030f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2634f) + _wgslsmith_f_op_f32(sign(1f))) < 1f);
    var var_1 = func_1(Struct_1(all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, true, false, var_0.x)), !vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, var_0.x, true, true))), ~vec4<u32>(max(1u, 5103u), 46010u, 1u, _wgslsmith_mod_u32(4294967295u, 93087u)), 0u), u_input.c.x);
    var_1 = Struct_1(true, _wgslsmith_sub_vec4_u32(vec4<u32>(max(~var_1.b.x, var_1.c | 5895u), max(1u, var_1.c), _wgslsmith_mod_u32(min(0u, 1025u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_1.b.zy)), func_1(func_1(Struct_1(true, vec4<u32>(var_1.b.x, var_1.b.x, var_1.c, var_1.b.x), 4294967295u), u_input.d.x), ~u_input.c.x).c), var_1.b), _wgslsmith_mult_u32(min(4294967295u, 14714u), 0u));
    var_1 = func_1(func_1(Struct_1(var_0.x, var_1.b, var_1.c), -4577i), u_input.b.x);
    var_1 = Struct_1(any(select(vec3<bool>(true, true, var_0.x), select(select(vec3<bool>(true, var_1.a, var_1.a), var_0.zzx, var_0.yww), !vec3<bool>(var_0.x, false, true), var_0.zzw), !select(var_0.xwz, var_0.wxw, vec3<bool>(var_1.a, var_1.a, var_0.x)))), var_1.b, ~var_1.b.x);
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(func_1(Struct_1(all(var_0.yw), var_1.b | vec4<u32>(88540u, var_1.c, 1u, 1u), _wgslsmith_div_u32(0u, var_1.b.x)), -22441i).b.x, _wgslsmith_mult_u32(abs(~var_1.b.x), _wgslsmith_clamp_u32(24590u, 22215u, var_1.b.x))), _wgslsmith_mod_u32(1u, ~(~4294967295u ^ (1u | var_1.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1(Struct_1(false, countOneBits(arg_2.b), arg_2.b.x), ~(~(-52723i)));
    let var_1 = select(arg_2.b, ~vec4<u32>(9870u, min(30902u, arg_1) ^ (0u >> (arg_1 % 32u)), func_3() | arg_1, var_0.b.x), select(select(vec4<bool>(var_0.a, arg_0.x, true, true), vec4<bool>(arg_2.a | true, true, true, true), select(vec4<bool>(false, false, false, arg_2.a), !vec4<bool>(arg_0.x, false, var_0.a, false), !arg_2.a)), !(!vec4<bool>(var_0.a, true, true, arg_2.a)), true));
    var var_2 = vec4<i32>(u_input.d.x, -_wgslsmith_add_i32(-(5032i >> (arg_1 % 32u)), -_wgslsmith_mod_i32(u_input.c.x, 24645i)), 19226i, 1i);
    var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f * 261f) - _wgslsmith_f_op_f32(1861f - 117f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(295f)))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, var_1.x, var_0.c, 27196u ^ var_1.x), reverseBits(var_1 | var_0.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_0.c, var_0.c, 59475u), arg_2.b)), ~_wgslsmith_div_i32(~(~24896i), var_2.x));
    let var_3 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_1(arg_1.a, ~arg_0.b, _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(arg_2.x, arg_2.x))), ~(arg_2.zx << (vec2<u32>(10974u, arg_2.x) % vec2<u32>(32u)))));
    var_0 = Struct_1(arg_1.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, var_0.b.x, 0u, 1u), arg_1.b), abs(reverseBits(4294967295u)), max(51872u, arg_0.c), _wgslsmith_clamp_u32(~var_0.c, _wgslsmith_add_u32(var_0.b.x, arg_1.b.x), arg_2.x)) & arg_0.b, ~(~4294967295u));
    var var_1 = func_2(!select(!(!vec3<bool>(arg_0.a, true, false)), !vec3<bool>(var_0.a, true, true), vec3<bool>(!arg_0.a, !arg_0.a, any(vec4<bool>(true, false, true, false)))), 10017u, Struct_1(select(var_0.a, var_0.a, all(vec2<bool>(true, arg_0.a))), arg_1.b, ~(~_wgslsmith_div_u32(0u, arg_2.x))));
    var_1 = func_1(func_1(arg_0, -1i), -countOneBits(u_input.c.x >> (88590u % 32u)) ^ 2147483647i);
    var var_2 = arg_1;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_mod_u32(0u, abs(22920u)), func_1(Struct_1(true, vec4<u32>(104u, 0u, 4294967295u, 33864u), 0u), -1i)), Struct_1(true | func_2(vec3<bool>(false, false, false), 62027u, Struct_1(true, vec4<u32>(1u, 1u, 3970u, 0u), 7420u)).a, vec4<u32>(1u, 1u, 1u, 1u), ~57738u & _wgslsmith_clamp_u32(1u, 68928u, 19591u)), vec3<u32>(65416u, 43769u, 4265u)), max(~countOneBits(u_input.d.x) << (1u % 32u), u_input.b.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), false, true), vec4<bool>(true, true, true, true))));
    let var_1 = ~max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~select(vec3<u32>(101437u, 0u, 107383u), vec3<u32>(4294967295u, 39052u, 4294967295u), vec3<bool>(false, true, true))), vec3<u32>(4133u, ~1u, countOneBits(4294967295u)));
    let var_2 = func_2(select(select(vec3<bool>(true, true, u_input.c.x == -773i), vec3<bool>(true, true, true), false), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.x > var_1.x))), ~0u, func_2(vec3<bool>(true, true, true), ~(var_1.x << (24339u % 32u)), Struct_1(true, min(~vec4<u32>(1u, var_1.x, var_1.x, var_1.x), select(vec4<u32>(0u, 22986u, var_1.x, 1u), vec4<u32>(var_1.x, var_1.x, 97273u, var_1.x), vec4<bool>(false, true, false, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 80670u), vec3<u32>(var_1.x, var_1.x, var_1.x)) | 6084u)));
    var var_3 = ~var_1.x;
    var var_4 = countOneBits(-abs(~countOneBits(vec3<i32>(1i, -2147483647i, u_input.a))));
    var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1174f)))), ~(_wgslsmith_div_vec3_u32(var_2.b.zyw, ~vec3<u32>(var_1.x, var_1.x, 33791u)) << (~countOneBits(vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u)) % vec3<u32>(32u))), vec4<i32>(abs(u_input.a) ^ -8598i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, 0i, 1i), firstLeadingBit(vec3<i32>(5639i, 22074i, 41441i))), u_input.a >> (firstTrailingBit(var_2.c) % 32u)), firstTrailingBit(~(-2147483647i)), -(~(~(-46974i)))));
}

