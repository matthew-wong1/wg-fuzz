struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1175f, -873f)));
    let var_1 = Struct_2(var_0, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 56924i, ~arg_1, ~(-14573i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -4039i, 2147483647i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, arg_1, 1i, -2147483647i), vec4<i32>(arg_1, u_input.a, u_input.a, -1i)))), arg_1, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), arg_0 ^ vec2<u32>(38073u, 35880u)), ~(u_input.c | 29584u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, 36626u, arg_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 5036u))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), vec4<u32>(arg_0.x, 30051u, u_input.c, arg_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 40265u, u_input.c, 49946u), vec4<u32>(67548u, 80694u, arg_0.x, 15125u)))), -arg_1), Struct_1(-vec4<i32>(arg_1 << (arg_0.x % 32u), 80226i, 8902i, firstTrailingBit(2147483647i)), -_wgslsmith_clamp_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-82435i, arg_1, u_input.b), vec3<i32>(0i, arg_1, 35388i)), -2147483647i), ~abs(~u_input.c), _wgslsmith_div_vec4_u32(~select(vec4<u32>(3205u, 27073u, 43942u, 53289u), vec4<u32>(arg_0.x, u_input.c, arg_0.x, arg_0.x), false), ~(~vec4<u32>(arg_0.x, 25618u, 4294967295u, arg_0.x))), 0i), !all(vec3<bool>(select(false, false, false), true, true)));
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.a, -1585f, false)), _wgslsmith_f_op_f32(105f - var_0))))), _wgslsmith_f_op_f32(ceil(var_0)), -1314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -614f))))), Struct_2(1000f, var_1.b, Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(-20253i, -2311i, 0i, -1i), vec4<i32>(-2147483647i, -574i, var_1.b.e, u_input.a)), ~(~(-2147483647i)), ~32321u, _wgslsmith_mod_vec4_u32(var_1.b.d, var_1.c.d), 46246i), !(!var_1.d)), Struct_1(var_1.b.a, arg_1, 5266u, vec4<u32>(4294967295u, ~(~46082u), ~4294967295u, 0u), arg_1), vec4<u32>(0u, 0u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(40668u, 4294967295u), var_1.c.d.zx) >> (0u % 32u), ~var_1.c.d.x << ((arg_0.x & 6916u) % 32u), var_1.d), ~var_1.c.c));
    var var_3 = var_1.c;
    let var_4 = vec3<u32>(_wgslsmith_mult_u32(34101u & (1u << (arg_0.x % 32u)), _wgslsmith_sub_u32(~4294967295u, arg_0.x)), var_1.b.c, countOneBits(_wgslsmith_mult_u32(arg_0.x, u_input.c) | ~_wgslsmith_mult_u32(52538u, 52053u)));
    return abs(~var_3.d.wxz);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~80514u, u_input.c), vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(u_input.c), 4294967295u), 1u) << (vec2<u32>(_wgslsmith_mult_u32(6088u, _wgslsmith_add_u32(u_input.c, 45364u)), u_input.c ^ _wgslsmith_mult_u32(7115u, u_input.c)) % vec2<u32>(32u)));
    let var_1 = min(func_3(~(~vec2<u32>(985u, 0u)), arg_0), ~(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 14504u), vec3<u32>(u_input.c, u_input.c, u_input.c)) | ~vec3<u32>(0u, u_input.c, 40058u))) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(0u, var_0.x), u_input.c | var_0.x, _wgslsmith_sub_u32(4294967295u, var_0.x))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(30400u, u_input.c, var_0.x)), vec3<u32>(countOneBits(u_input.c), min(var_0.x, u_input.c), 40240u)), firstTrailingBit(~(~vec3<u32>(u_input.c, 27927u, var_0.x)))) % vec3<u32>(32u));
    var var_2 = vec2<bool>(1f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(900f)) * _wgslsmith_f_op_f32(round(1411f))))), all(vec4<bool>(false, !any(vec2<bool>(false, false)), false, arg_0 >= _wgslsmith_mod_i32(arg_0, 1i))));
    let var_3 = select(vec4<bool>(true & var_2.x, true, all(select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, var_2.x))) || true, ~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(4294967295u, 2671u, 3725u)) != var_1.x), vec4<bool>(!all(select(vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x)), !any(!vec3<bool>(var_2.x, true, true)), false, false), select(!(!vec4<bool>(true, var_2.x, true, false)), !vec4<bool>(var_2.x, true, true, true), true));
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-300f, 285f, -1474f, 341f), vec4<f32>(-976f, 888f, -1480f, -656f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(207f, -1805f, -741f, 936f)) * vec4<f32>(-769f, 1881f, 1150f, 1000f)))), Struct_2(595f, Struct_1(~vec4<i32>(4315i, arg_1, arg_1, u_input.b) << (vec4<u32>(u_input.c, 4294967295u, 1u, 1822u) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(-33534i, arg_0)) >> (0u % 32u), 57477u, vec4<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27065u, var_1.x, 21741u, 1u), vec4<u32>(var_1.x, 73111u, u_input.c, var_1.x)), firstLeadingBit(24494u), 24717u), ~(arg_1 ^ 2147483647i)), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(11460i, -1i, -17492i, arg_1), vec4<i32>(2147483647i, 48142i, arg_0, u_input.b)), select(vec4<i32>(-50836i, 2147483647i, 0i, 723i), vec4<i32>(arg_0, arg_1, -2373i, arg_0), var_3), countOneBits(vec4<i32>(2147483647i, 1i, u_input.a, arg_1))), -_wgslsmith_sub_i32(arg_0, u_input.a), abs(var_1.x), ~vec4<u32>(u_input.c, 9440u, u_input.c, 49545u), _wgslsmith_mult_i32(656i, 4920i)), true), Struct_1(-select(vec4<i32>(arg_1, -6648i, 2147483647i, arg_0), vec4<i32>(arg_1, arg_0, 1i, -18285i), select(var_3, var_3, var_3.x)), _wgslsmith_mod_i32(arg_0, 0i), 0u, abs(reverseBits(vec4<u32>(62570u, var_0.x, 33856u, var_0.x)) ^ ~vec4<u32>(4414u, u_input.c, var_0.x, 4294967295u)), 0i), ~vec4<u32>(6788u, _wgslsmith_mult_u32(1u, var_0.x), ~var_0.x, 1u) | _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 3235u, 34421u, var_0.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c, 45837u, 44338u), vec4<u32>(1u, var_0.x, var_1.x, 0u)), 4294967295u, var_1.x, u_input.c)));
    return var_4.c;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(arg_1, 8942i);
    var var_1 = var_0;
    var var_2 = !(!arg_0);
    var_2 = arg_0;
    var_2 = true;
    return Struct_1((_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_1.e, 1i, 2300i), var_0.a), vec4<i32>(u_input.a, var_0.a.x, -45396i, var_0.e)) | var_0.a) & var_0.a, -33916i, u_input.c, vec4<u32>(u_input.c, ~u_input.c ^ 50231u, ~var_0.d.x ^ var_0.c, arg_2), reverseBits(-2555i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a + 1005f), _wgslsmith_f_op_f32(exp2(arg_0.a)))), arg_0.a, -699f > arg_0.a))), func_2(_wgslsmith_clamp_i32(arg_0.c.e, -arg_0.b.e, i32(-1i) * -1i), ~(~firstTrailingBit(-36060i))), Struct_1(vec4<i32>(2147483647i << (arg_0.c.c % 32u), arg_0.c.b, 20079i, u_input.b), u_input.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, arg_0.c.d.x), vec4<u32>(arg_0.c.d.x, u_input.c, arg_0.b.c, 4294967295u)), ~countOneBits(arg_0.b.c)), select(select(vec4<u32>(1u, 38179u, arg_0.c.d.x, 1u), vec4<u32>(arg_0.b.c, 4294967295u, 1u, 15819u), arg_0.d), vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.c.c), 106731u, _wgslsmith_div_u32(37314u, u_input.c), _wgslsmith_sub_u32(4294967295u, u_input.c)), false), arg_0.b.e), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.c, u_input.c);
    let var_1 = 1644f;
    let var_2 = func_4(Struct_2(1857f, func_1(u_input.a >= -29471i, u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), var_0)), func_2(2147483647i, -2147483647i), all(vec2<bool>(true, true))), vec2<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), false));
    var var_3 = Struct_1(reverseBits((vec4<i32>(1427i, 2147483647i, -17706i, var_2.b.a.x) >> (vec4<u32>(1u, var_2.b.c, 44711u, 4294967295u) % vec4<u32>(32u))) & var_2.c.a), 15414i, ~u_input.c, ~vec4<u32>(u_input.c, 3089u, var_2.b.d.x, ~(41697u ^ var_2.b.d.x)), -5486i);
    var_3 = Struct_1(abs(vec4<i32>(~var_2.c.e, -1i, 1i, -(u_input.a & -22970i))), u_input.b, var_0.x, ~var_2.b.d, 1i);
    var_3 = Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, var_3.e), var_2.b.a.wy), _wgslsmith_clamp_i32(-2147483647i, 60204i, 2147483647i), 0i), -_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, 4206i, var_2.c.e, 1i), var_2.c.a, true), ~vec4<i32>(u_input.b, -19825i, 16209i, 57164i))), var_3.a.x, _wgslsmith_div_u32(~(~var_3.c >> (u_input.c % 32u)), ~reverseBits(var_0.x) >> (~_wgslsmith_div_u32(u_input.c, 123267u) % 32u)), _wgslsmith_mod_vec4_u32(var_3.d, ~vec4<u32>(_wgslsmith_dot_vec4_u32(var_3.d, vec4<u32>(var_3.c, u_input.c, u_input.c, 13080u)), 9017u << (u_input.c % 32u), var_3.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6199u, 4294967295u, var_0.x, var_0.x), var_2.b.d))), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1069f);
}

