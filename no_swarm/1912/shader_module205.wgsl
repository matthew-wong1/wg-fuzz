struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(732f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), 1192f), arg_1.b.x))) - arg_1.c);
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, -987f, 136f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)))), vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(exp2(arg_1.c)), 1087f), select(true, !arg_0.x, arg_1.a.a > 106390u))))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(537f)) - _wgslsmith_f_op_f32(step(-437f, var_2.x))))), _wgslsmith_div_f32(-1597f, 516f), arg_1.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-774f, _wgslsmith_f_op_f32(182f * arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 150f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1913f + _wgslsmith_f_op_f32(-529f * 626f)), _wgslsmith_f_op_f32(-var_2.x)))) * vec4<f32>(1222f, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-464f * arg_1.c), var_2.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_div_f32(373f, arg_1.c))), -657f));
    return ~(~_wgslsmith_add_vec4_u32(max(vec4<u32>(arg_1.a.a, 1u, 0u, 34571u), vec4<u32>(arg_1.a.a, 1u, var_1.a, 4294967295u)) >> (firstLeadingBit(vec4<u32>(var_1.a, var_1.a, 4294967295u, 29707u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, 1u, arg_1.a.a, var_1.a)), firstTrailingBit(vec4<u32>(var_1.a, var_1.a, 38542u, 42334u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = ~(reverseBits(_wgslsmith_sub_u32(arg_2.d.a, 23683u)) | abs(arg_0.x));
    var var_1 = Struct_2(Struct_1(~select(countOneBits(arg_2.a.a), 14280u, all(vec3<bool>(true, false, true))), ~arg_2.d.b), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(-arg_2.c)), arg_2.c, arg_2.d);
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 22046u), _wgslsmith_clamp_vec2_u32(arg_0.ww, arg_0.xy, vec2<u32>(var_0, var_1.a.a))), var_1.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(max(-467f, -554f)))), -163f, arg_2.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(117f, arg_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))));
    let var_4 = vec3<bool>(false, true, all(vec2<bool>(any(vec4<bool>(true, false, false, false)), !select(true, false, false))));
    return select(!select(vec3<bool>(true, !var_4.x, var_4.x || false), vec3<bool>(false, !var_4.x, false), false), var_4, !select(!select(var_4, vec3<bool>(var_4.x, false, false), vec3<bool>(var_4.x, false, var_4.x)), select(vec3<bool>(true, var_4.x, true), !vec3<bool>(true, false, var_4.x), vec3<bool>(var_4.x, var_4.x, var_4.x)), any(!vec4<bool>(false, true, var_4.x, true))));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~(~95563u), 38832u)) >> (~(~(~_wgslsmith_mod_u32(35980u, 23236u))) % 32u);
    let var_1 = !func_4((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, var_0, 0u), vec4<u32>(var_0, 48264u, var_0, 42733u)) & countOneBits(vec4<u32>(48498u, var_0, var_0, var_0))) >> (_wgslsmith_add_vec4_u32(func_3(vec4<bool>(false, true, arg_0, arg_0), Struct_2(Struct_1(9446u, vec3<i32>(u_input.a, -13838i, 0i)), vec2<f32>(-672f, 1000f), -2127f, Struct_1(4294967295u, vec3<i32>(u_input.a, 2147483647i, 33994i))), u_input.a), ~vec4<u32>(4294967295u, 35553u, var_0, 1u)) % vec4<u32>(32u)), -_wgslsmith_mult_i32(u_input.a, i32(-1i) * -15213i), Struct_2(Struct_1(4294967295u, ~vec3<i32>(u_input.a, 27867i, 0i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1255f, 1000f), vec2<f32>(1236f, 1232f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), Struct_1(var_0, abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var var_2 = func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0 >> (var_0 % 32u), _wgslsmith_add_u32(var_0, var_0), ~var_0, 4294967295u | var_0), ~vec4<u32>(4294967295u, 1169u, 0u, 12576u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~0u, var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 9996u))), ~vec4<u32>(12918u, 4294967295u, var_0, var_0) << (vec4<u32>(var_0, var_0, 0u, var_0) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_i32(-1i, select(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a), u_input.a, ~u_input.a), ~u_input.a, false)), Struct_2(Struct_1((15444u ^ var_0) | (var_0 << (50977u % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-21275i, -3556i, -1i) >> (vec3<u32>(4294967295u, var_0, var_0) % vec3<u32>(32u)), vec3<i32>(-34938i, u_input.a, u_input.a) << (vec3<u32>(21985u, var_0, var_0) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(262f, -123f), vec2<f32>(362f, -860f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1730f)))), Struct_1(abs(15158u), ~vec3<i32>(u_input.a, u_input.a, u_input.a) & ~vec3<i32>(u_input.a, 1i, u_input.a))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(11997i, -2147483647i, 32724i), vec3<i32>(2147483647i, u_input.a, u_input.a))) ^ -u_input.a, _wgslsmith_mult_i32(993i, u_input.a | _wgslsmith_add_i32(_wgslsmith_mod_i32(-42336i, u_input.a), u_input.a)));
    var_2 = vec3<bool>(true, true, true);
    return true;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(vec4<bool>(u_input.a >= -21167i, arg_0, !func_2(arg_0), !any(vec3<bool>(true, arg_0, true))), !(!vec4<bool>(true, func_2(arg_0), func_2(arg_0), arg_0)), false);
    let var_1 = abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, any(vec4<bool>(arg_0, var_0.x, true, false)), true, any(vec4<bool>(false, true, var_0.x, arg_0))))));
    let var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 8287i, u_input.a), vec4<i32>(1i, 46414i, 0i, u_input.a)), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 64720i, u_input.a, u_input.a), vec4<i32>(u_input.a, -11661i, 0i, u_input.a)), -36271i, abs(20342i)))));
    var_0 = select(vec4<bool>(!(!(false & var_0.x)), !func_2(var_1.x < var_1.x), true, arg_0), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0), !vec4<bool>(var_0.x, false, true, arg_0), var_0.x)), select(!select(!vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), false), vec4<bool>(func_2(true), true, arg_0, !any(vec4<bool>(var_0.x, false, false, false))), !(~var_1.x <= 31939u)));
    let var_3 = select(select(!(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, var_0.x), vec4<bool>(true, var_0.x, false, arg_0))), select(select(vec4<bool>(arg_0, var_0.x, true, var_0.x), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, var_0.x, true, arg_0), false), var_0.x), !vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, any(var_0.zxw), true, false)), !(!(!var_0.x))), vec4<bool>(!arg_0, func_4(vec4<u32>(0u, var_1.x, 4294967295u, ~var_1.x), i32(-1i) * -15003i, Struct_2(Struct_1(0u, vec3<i32>(-2147483647i, var_2.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, -741f)), _wgslsmith_div_f32(1142f, -2092f), Struct_1(1u, vec3<i32>(var_2.x, u_input.a, 1i)))).x, _wgslsmith_clamp_i32(-45076i, select(27081i, u_input.a, false), _wgslsmith_dot_vec2_i32(var_2.yz, vec2<i32>(var_2.x, 59847i))) == ~(-2071i), !(!all(vec4<bool>(false, true, arg_0, true)))), !(!vec4<bool>(func_4(var_1, -1i, Struct_2(Struct_1(4294967295u, vec3<i32>(u_input.a, var_2.x, u_input.a)), vec2<f32>(-1000f, -749f), -329f, Struct_1(var_1.x, vec3<i32>(var_2.x, var_2.x, 2147483647i)))).x, true && arg_0, var_0.x, true)));
    return Struct_1(var_1.x, var_2.zyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(26211u, ~(~10622u)), abs(vec2<u32>(1u, 1u)));
    let var_1 = max(1i, _wgslsmith_div_i32(~u_input.a, (0i & u_input.a) >> (var_0.x % 32u)) << (var_0.x % 32u));
    let var_2 = func_1(false);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1700f, -1536f, 343f, 2243f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1382f, -113f, 180f, 159f) + vec4<f32>(168f, 1773f, -2375f, -1055f))), _wgslsmith_div_vec4_f32(vec4<f32>(616f, -203f, -556f, -206f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, 159f, -340f, -750f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1618f), -580f, _wgslsmith_f_op_f32(-442f * -559f), -714f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1285f, -984f, -1723f, -625f), vec4<f32>(-215f, -1042f, -509f, 555f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(946f, -405f, -177f, 859f), vec4<f32>(-747f, -656f, -1533f, 1000f)))))));
    let var_4 = vec2<u32>(reverseBits(max(~(var_2.a ^ var_0.x), var_0.x)), abs(func_3(vec4<bool>(func_2(true), true, true, true), Struct_2(var_2, vec2<f32>(var_3.x, -1385f), _wgslsmith_f_op_f32(-var_3.x), Struct_1(4294967295u, vec3<i32>(-14250i, 1i, u_input.a))), -_wgslsmith_dot_vec3_i32(var_2.b, var_2.b)).x));
    var var_5 = ~31541i;
    let var_6 = vec4<u32>(var_0.x, var_4.x, ~max(func_1(all(vec4<bool>(false, false, false, false))).a, 17162u), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_i32(~vec2<i32>(68745i, u_input.a), var_2.b.xz), abs(firstLeadingBit(var_2.b.x)), var_4.x < 9740u), firstLeadingBit(~_wgslsmith_sub_u32(var_6.x >> (var_6.x % 32u), var_2.a)), vec2<u32>(18314u, _wgslsmith_mod_u32(~var_6.x, ~(~var_4.x))));
}

