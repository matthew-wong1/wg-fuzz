struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_3(true);
    var var_1 = vec3<bool>(var_0.a, true, any(!select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a)), any(vec4<bool>(var_0.a, var_0.a, false, var_0.a)))));
    var var_2 = u_input.a.x;
    var var_3 = !var_0.a;
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -330f), 475f, !var_0.a))), _wgslsmith_f_op_f32(622f - _wgslsmith_f_op_f32(1f * -1086f))), 23743i, 0u << (_wgslsmith_add_u32(u_input.a.x | 57041u, u_input.a.x) % 32u));
    return vec4<bool>(true, all(!vec3<bool>(var_1.x, true, var_1.x)), var_0.a, var_0.a);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1877f)) + 1000f), 682f);
    let var_1 = vec4<u32>(~_wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(38913u, 98119u, u_input.a.x)), u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~46757u), u_input.a.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.a.x, 4294967295u) ^ vec3<u32>(0u, arg_1, arg_1), ~vec3<u32>(u_input.a.x, u_input.a.x, arg_1))), vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 41456u, 9272u), vec3<u32>(u_input.a.x, 0u, arg_1)) % 32u), abs(arg_1) >> (abs(89923u) % 32u), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(41942u, 1u, u_input.a.x), vec3<u32>(23136u, arg_1, u_input.a.x)))), _wgslsmith_sub_u32(arg_1, ~_wgslsmith_mult_u32(31791u, _wgslsmith_sub_u32(u_input.a.x, 74049u))), ~u_input.a.x & (_wgslsmith_clamp_u32(arg_1, abs(4294967295u), firstTrailingBit(arg_1)) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1, u_input.a.x), ~vec3<u32>(u_input.a.x, 21800u, 49842u))));
    var var_2 = _wgslsmith_f_op_f32(max(-2766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, var_0.x)), _wgslsmith_f_op_f32(step(-1496f, 874f))))))));
    var var_3 = vec4<bool>(false, any(vec2<bool>(!all(vec4<bool>(true, false, false, true)), false)), true, select(any(vec2<bool>(func_1().x, true)), -6409i < u_input.e, false));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-arg_0));
    return var_0.zz;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))));
    var var_1 = Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, 1435f, -912f, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_3.a.x, arg_0.a.x, arg_3.a.x))))), func_1().xwy, ~vec4<u32>(arg_1 ^ 1u, 65122u, _wgslsmith_div_u32(53934u, arg_0.c), ~90367u) | vec4<u32>(~abs(u_input.a.x), ~43376u, abs(1u), ~arg_0.c), arg_0);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + arg_2.x), _wgslsmith_f_op_f32(sign(-434f)))), arg_3.b >> ((15231u & _wgslsmith_dot_vec3_u32(countOneBits(var_1.d.zww), var_1.d.zxx)) % 32u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_1.d.yw, select(vec2<u32>(1u, var_1.e.c), vec2<u32>(62249u, arg_1), vec2<bool>(true, false))), ~_wgslsmith_dot_vec2_u32(~var_1.d.yw, _wgslsmith_add_vec2_u32(vec2<u32>(20878u, arg_1), var_1.d.wz))));
    var_1 = Struct_2(arg_3, vec4<f32>(-1331f, _wgslsmith_f_op_f32(round(var_2.a.x)), var_2.a.x, arg_2.x), vec3<bool>(!(false & all(var_1.c.zy)), true, !var_1.c.x), var_1.d, arg_0);
    let var_3 = true;
    return -(~arg_3.b);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, countOneBits(-9518i)), vec2<i32>(1i, countOneBits(arg_0)) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(countOneBits(-(vec2<i32>(-11793i, 2147483647i) & u_input.d)), u_input.d));
    var var_1 = 28570u;
    var_1 = firstLeadingBit(firstLeadingBit(countOneBits(_wgslsmith_sub_u32(select(101722u, u_input.a.x, true), ~arg_3))));
    return ~_wgslsmith_mult_i32(var_0.x ^ firstTrailingBit(arg_1), arg_1);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_i32(u_input.b, 24608i) <= func_5(-2147483647i, _wgslsmith_add_i32(u_input.e, func_4(Struct_1(vec2<f32>(arg_1.b.x, arg_1.e.a.x), 1i, arg_1.d.x), 1u, _wgslsmith_f_op_vec2_f32(func_3(1006f, arg_1.a.c)), Struct_1(vec2<f32>(arg_1.e.a.x, -1846f), arg_1.a.b, 4294967295u))), all(select(arg_1.c.xy, arg_1.c.yy, arg_3.a)) && arg_1.c.x, 1u);
    let var_1 = vec2<bool>(true, !any(!(!vec4<bool>(false, arg_2.a, false, true))));
    var var_2 = select(u_input.a, vec2<u32>((42664u ^ ~arg_1.e.c) ^ abs(10466u), arg_1.d.x), any(!vec4<bool>(true, true, var_0, arg_1.e.c == 55637u)));
    let var_3 = u_input.e;
    let var_4 = -1000f;
    return func_1().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(select(vec4<bool>(true, u_input.e <= u_input.d.x, any(vec3<bool>(false, false, true)), true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), false), select(vec4<bool>(true, true, true, true), func_1(), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)))), false);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2091f, -516f)), -143f, select(u_input.e >= u_input.d.x, true, func_2(Struct_3(var_0.x), Struct_2(Struct_1(vec2<f32>(350f, 190f), -20575i, 27704u), vec4<f32>(1136f, 284f, -1000f, -936f), vec3<bool>(var_0.x, var_0.x, false), vec4<u32>(u_input.a.x, u_input.a.x, 5018u, 26563u), Struct_1(vec2<f32>(975f, 1267f), -15245i, u_input.a.x)), Struct_3(true), Struct_3(var_0.x))))))) * _wgslsmith_f_op_f32(min(1000f, 1000f)));
    let var_2 = _wgslsmith_f_op_f32(select(278f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(442f, 1108f))))))), !var_0.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_1, u_input.a.x)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_1)))))))));
    let var_4 = vec4<bool>(var_0.x, true, !any(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !vec2<bool>(var_0.x, false))), var_0.x);
    var_0 = func_1().xy;
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(var_1 - -1882f))), -u_input.e, firstLeadingBit(1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-289f)) + _wgslsmith_div_f32(var_1, var_2)))), !var_4.zzx, ~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, 79552u, 10454u), vec4<u32>(0u, u_input.a.x, 0u, 44014u)) ^ firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, ~25471u, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(var_3.x, 37190u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 8239i, -2147483647i, 0i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, 0i, u_input.d.x, -2147483647i), vec4<i32>(-9468i, -17519i, u_input.c.x, -2147483647i), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), abs(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 22351i)))), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 36996u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | u_input.a.x) & ~(u_input.a.x << (u_input.a.x % 32u))));
    let var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(select(793f, var_2, true)), 69474u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1298f)))), 720f))));
    var_5 = Struct_2(var_5.e, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), -437f, 969f, _wgslsmith_f_op_f32(266f - 262f))))), func_1().xxy, _wgslsmith_sub_vec4_u32(var_5.d & (vec4<u32>(20945u, 114844u, var_5.a.c, 20871u) & vec4<u32>(var_5.a.c, u_input.a.x, var_5.a.c, var_5.a.c)), _wgslsmith_clamp_vec4_u32(~select(var_5.d, vec4<u32>(var_5.a.c, 23343u, u_input.a.x, 73975u), var_4), var_5.d, _wgslsmith_sub_vec4_u32(select(var_5.d, var_5.d, var_4), abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, var_1))), var_5.e.a.x), min(0i, ~var_5.a.b), var_5.e.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1949f)))));
}

