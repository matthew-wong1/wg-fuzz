struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = select(_wgslsmith_add_vec3_u32(~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 14477u, 4294967295u), vec3<u32>(0u, u_input.e.x, arg_0))), select(~vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(~u_input.b.x, ~0u, arg_0), arg_1.a.a)), ~(~(abs(vec3<u32>(4294967295u, 0u, 4294967295u)) ^ (vec3<u32>(1u, 1u, 0u) << (vec3<u32>(arg_0, 27343u, u_input.e.x) % vec3<u32>(32u))))), vec3<bool>(true, false, false));
    return -2147483647i;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1.a.b.x, func_3(arg_1.d.x, Struct_2(arg_1.b, vec4<f32>(488f, 1339f, 1211f, -327f)))), _wgslsmith_mult_i32(-(~21797i), func_3(_wgslsmith_mult_u32(1u, arg_0), Struct_2(Struct_1(false, arg_1.b.b, -2147483647i), vec4<f32>(1326f, 969f, 1000f, 305f)))), -u_input.c, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(arg_1.b.c, 0i) | func_3(4294967295u, Struct_2(arg_1.b, vec4<f32>(295f, 1010f, 926f, -1123f))), _wgslsmith_sub_i32(-u_input.c, 4774i), ~u_input.c & _wgslsmith_div_i32(-1482i, u_input.c)), (vec4<i32>(u_input.c, arg_1.a.b.x, u_input.c, arg_1.b.c) | vec4<i32>(0i, 0i, 2157i, arg_1.a.c)) << (max(~vec4<u32>(1u, 4294967295u, 27218u, 1u), arg_1.d) % vec4<u32>(32u))));
    let var_1 = arg_1.b;
    let var_2 = Struct_3(Struct_1(true, (vec3<i32>(-1i) * -vec3<i32>(35217i, var_1.c, arg_1.e.x)) | vec3<i32>(-16886i, ~var_0.x, u_input.c), -2147483647i), Struct_1(true, arg_1.a.b, abs(_wgslsmith_sub_i32(u_input.d.x, ~4805i))), ~vec2<u32>(~_wgslsmith_dot_vec4_u32(arg_1.d, arg_1.d), countOneBits(4294967295u)), firstLeadingBit(arg_1.d), _wgslsmith_clamp_vec3_i32(max(abs(vec3<i32>(u_input.d.x, var_1.b.x, 18356i)) | vec3<i32>(-2147483647i, -2147483647i, 1i), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_1.a.c, -39590i, 1i), _wgslsmith_div_vec3_i32(arg_1.a.b, arg_1.a.b))), ~vec3<i32>(u_input.d.x, var_0.x, 23382i) | var_0.wyx, abs(-arg_1.a.b) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_1.d.x), vec3<u32>(0u, u_input.a, arg_1.c.x), arg_1.d.zww), vec3<u32>(3797u, arg_0, 1u), arg_1.d.yyx) % vec3<u32>(32u))));
    let var_3 = vec2<u32>(~firstTrailingBit(63745u), u_input.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1150f, 842f) * vec2<f32>(196f, 1098f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2529f), _wgslsmith_f_op_f32(f32(-1f) * -579f)))) + vec2<f32>(-505f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f - 931f) - -252f)))));
    return select(!select(!(!vec4<bool>(arg_1.a.a, false, false, var_1.a)), vec4<bool>(any(vec3<bool>(var_2.b.a, true, true)), true, !arg_1.b.a, arg_0 >= var_3.x), true), select(select(select(!vec4<bool>(var_2.a.a, true, var_2.a.a, arg_1.b.a), !vec4<bool>(arg_1.b.a, arg_1.a.a, arg_1.b.a, var_2.a.a), true), !vec4<bool>(false, true, false, var_2.b.a), true), vec4<bool>(false, any(select(vec4<bool>(var_1.a, var_2.a.a, var_1.a, var_2.b.a), vec4<bool>(false, false, true, var_2.a.a), vec4<bool>(arg_1.b.a, true, true, false))), !select(var_2.a.a, true, true), true), vec4<bool>(!any(vec3<bool>(arg_1.a.a, false, arg_1.b.a)), var_1.a, arg_1.b.a, any(!vec2<bool>(arg_1.b.a, false)))), select(vec4<bool>(var_2.a.a, var_1.a, true, true & any(vec2<bool>(false, true))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, arg_1.a.a, var_2.b.a, var_2.b.a), !vec4<bool>(var_1.a, false, var_2.b.a, false), var_2.a.a | false), !(!vec4<bool>(arg_1.b.a, false, var_2.b.a, arg_1.a.a))), false));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    return Struct_1(all(func_2(1u, Struct_3(Struct_1(true, vec3<i32>(2147483647i, arg_1, arg_1), 40236i), Struct_1(false, vec3<i32>(u_input.c, arg_1, 63472i), -2147483647i), u_input.e, vec4<u32>(u_input.e.x, 14817u, u_input.e.x, 1u) >> (vec4<u32>(u_input.a, u_input.e.x, 0u, 1u) % vec4<u32>(32u)), -vec3<i32>(arg_1, 15545i, -1i)))), vec3<i32>(-65542i, 0i, _wgslsmith_add_i32(31538i, -2147483647i)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41594u;
    var var_1 = func_1(vec3<f32>(440f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2236f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(560f, 931f, true)), _wgslsmith_f_op_f32(306f + -863f)) * -367f)), -24159i << (~var_0 % 32u));
    let var_2 = !select(vec2<bool>(!var_1.a, true), vec2<bool>(true, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1042f, -756f, -843f), vec3<f32>(-829f, 706f, -1381f)), max(u_input.d.x, 50674i)).a), vec2<bool>(true, false));
    var var_3 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-2774f)), _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(425f - 1535f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(351f, -1423f, 144f) + vec3<f32>(969f, 492f, -246f)))), 36625i), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-154f, _wgslsmith_f_op_f32(-719f * -638f), _wgslsmith_f_op_f32(max(-1585f, -772f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -635f, -836f))))), -20752i), reverseBits(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 7688u), u_input.b), ~(~u_input.e), true)), ~abs(vec4<u32>(u_input.a, 64311u, 885u, u_input.b.x) >> (vec4<u32>(30609u, 28004u, 29731u, 17664u) % vec4<u32>(32u))) << (vec4<u32>(~_wgslsmith_add_u32(4294967295u, u_input.a), abs(_wgslsmith_div_u32(var_0, 40777u)), select(min(u_input.e.x, 41575u), u_input.a, false), var_0) % vec4<u32>(32u)), vec3<i32>(5708i, _wgslsmith_add_i32(-var_1.b.x, _wgslsmith_div_i32(u_input.c, -11981i)), abs(-2147483647i)) >> (_wgslsmith_div_vec3_u32((vec3<u32>(var_0, 36256u, 4294967295u) >> (vec3<u32>(var_0, 0u, var_0) % vec3<u32>(32u))) & ~vec3<u32>(var_0, u_input.a, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 0u), vec3<u32>(24364u, 35271u, var_0) ^ vec3<u32>(21046u, 24095u, u_input.e.x))) % vec3<u32>(32u)));
    var var_4 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0, 53744u), var_0, abs(39148u)), ~countOneBits(~(~4294967295u)), _wgslsmith_sub_u32(27160u, var_3.d.x));
    var var_5 = Struct_2(func_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(528f + -143f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) * _wgslsmith_f_op_f32(sign(-593f)))), _wgslsmith_mod_i32(-u_input.c, 1084i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 340f, -887f, -1068f) + vec4<f32>(-232f, -445f, 1058f, 1569f))), vec4<f32>(_wgslsmith_f_op_f32(step(-241f, 257f)), _wgslsmith_f_op_f32(f32(-1f) * -2075f), _wgslsmith_f_op_f32(max(1983f, -1105f)), 2156f)))));
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_5.b.x)), var_5.b.x, _wgslsmith_div_f32(var_5.b.x, var_5.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>((i32(-1i) * -2147483647i) & var_5.a.b.x, firstLeadingBit(_wgslsmith_add_i32(var_1.c, -2147483647i >> (1u % 32u)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-745f, var_5.b.x)), var_6.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-561f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.x))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_6.x)), var_5.b.x)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(420f, var_5.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1977f))))), var_1.c, vec3<u32>(abs(4294967295u), u_input.e.x, _wgslsmith_mod_u32(0u, var_0)), vec4<i32>(reverseBits(var_1.b.x), var_5.a.c, 0i, ~max(i32(-1i) * -1i, 0i)));
}

