struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: f32 = 528f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-1490f - _wgslsmith_div_f32(arg_0.x, 597f));
    global1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(max(-1000f, 506f)));
    var var_0 = u_input.a;
    global1 = -128f;
    let var_1 = Struct_1(arg_0);
    return !vec2<bool>(false, any(vec3<bool>(4294967295u <= u_input.a, !global0.x, global0.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = vec2<bool>(!global0.x, all(vec4<bool>(global0.x, false, true, ~u_input.b <= 0u)));
    global0 = select(!select(func_3(vec2<f32>(489f, 874f), 1385f), select(vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)), !vec2<bool>(global0.x, global0.x)), !(u_input.d.x < arg_0.x)), !vec2<bool>(!(39598u != u_input.a), any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(false, true, global0.x)))), select(vec2<bool>(true, any(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x))), select(select(vec2<bool>(false, global0.x), !vec2<bool>(true, global0.x), global0.x || false), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-490f, -597f), vec2<f32>(-1132f, -467f), vec2<bool>(global0.x, true))), _wgslsmith_f_op_f32(-1462f + -586f)), func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-323f, 1770f))), -109f)), !(!(!vec2<bool>(global0.x, false)))));
    var var_0 = select(_wgslsmith_add_vec3_i32(arg_0.yzw, ~(-_wgslsmith_add_vec3_i32(u_input.d, arg_0.wzw))), _wgslsmith_sub_vec3_i32(u_input.d, ~_wgslsmith_add_vec3_i32(-u_input.d, ~vec3<i32>(u_input.d.x, -47760i, -1i))), select(vec3<bool>(!any(vec2<bool>(false, global0.x)), true, true), !(!(!vec3<bool>(true, global0.x, true))), select(!(!vec3<bool>(false, false, global0.x)), vec3<bool>(-18103i < u_input.d.x, true, any(vec2<bool>(global0.x, global0.x))), vec3<bool>(global0.x, 4294967295u != u_input.c, func_3(vec2<f32>(-312f, -306f), -957f).x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, 236f)), vec2<f32>(1350f, -126f)))));
    global0 = func_3(_wgslsmith_f_op_vec2_f32(-var_1.a.a), _wgslsmith_f_op_f32(var_1.a.a.x + -1454f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.a * vec2<f32>(var_1.a.a.x, 1222f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.a.x, 1165f), var_1.a.a), vec2<bool>(false, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.a)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2660f, _wgslsmith_f_op_f32(-arg_0.a.x)), func_2(_wgslsmith_div_vec4_i32(arg_3, vec4<i32>(u_input.d.x, 46349i, u_input.d.x, -1i))).a)))));
    var var_1 = arg_2;
    var_1 = func_2(arg_3);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(741f, var_0.a.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a, _wgslsmith_f_op_vec2_f32(var_1.a - var_0.a)))));
    var var_2 = vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d.x, arg_3.x), arg_3.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 0i, 0i), -arg_3.xwz << (~vec3<u32>(4294967295u, u_input.c, 1u) % vec3<u32>(32u)))), -16458i, -2147483647i);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, _wgslsmith_clamp_u32(u_input.c, min(u_input.b, u_input.c) << (12563u % 32u), ~_wgslsmith_mult_u32(4294967295u, u_input.c)), firstTrailingBit(87245u), select(max(_wgslsmith_mult_u32(arg_1.x, u_input.b), u_input.a), u_input.b, false)), _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(17912u, 1u, arg_1.x, 4294967295u), ~vec4<u32>(4294967295u, u_input.a, arg_1.x, 2205u), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.x, 1u, 1u), vec4<u32>(u_input.a, u_input.b, 15704u, 4294967295u)) & (vec4<u32>(u_input.b, arg_1.x, u_input.c, 1u) << (vec4<u32>(31365u, arg_1.x, 30555u, u_input.a) % vec4<u32>(32u))), vec4<bool>(false && global0.x, true, false, true)), abs((vec4<u32>(u_input.c, 4294967295u, 1u, 8007u) << (vec4<u32>(0u, u_input.b, arg_1.x, 4294967295u) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, arg_1.x, 45684u), vec4<u32>(0u, u_input.b, 45076u, u_input.c)))));
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global1 = -1388f;
    var var_0 = -790f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 274f) - func_2(vec4<i32>(u_input.d.x, 14637i, u_input.d.x, u_input.d.x)).a))) + vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1597f, -210f)))));
    var var_2 = firstLeadingBit(u_input.d.yz);
    let var_3 = _wgslsmith_clamp_vec2_i32(reverseBits(-vec2<i32>(~(-2147483647i), 8324i)), -u_input.d.xx, u_input.d.yy);
    return func_2(firstLeadingBit(vec4<i32>(-4692i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 28800i, var_2.x, -2147483647i), vec4<i32>(2147483647i, -13613i, -1i, var_2.x)), var_3.x | 31284i, u_input.d.x << (51196u % 32u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(6401u, 0u, 4294967295u, 70948u), arg_0) % vec4<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(~func_4(Struct_1(vec2<f32>(1f, 1f)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 27449u) << (vec2<u32>(31650u, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.c)), func_2(-vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(u_input.d.x, u_input.d.x | u_input.d.x, _wgslsmith_sub_i32(0i, u_input.d.x), u_input.d.x)));
    var var_1 = func_5(select((vec4<u32>(84857u, 2762u, u_input.a, 1u) >> ((vec4<u32>(u_input.a, u_input.c, u_input.a, 9673u) ^ vec4<u32>(u_input.b, 1u, 0u, u_input.b)) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.c, 50538u, u_input.b, u_input.b), ~(~max(vec4<u32>(u_input.b, u_input.a, 0u, u_input.c), vec4<u32>(0u, 4100u, u_input.a, 16777u))), global0.x));
    global0 = !vec2<bool>(any(vec2<bool>(false || global0.x, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12102u, u_input.a) ^ vec3<u32>(0u, 6032u, u_input.a), vec3<u32>(u_input.b, u_input.c, u_input.a)) < u_input.a);
    var_1 = var_0;
    global0 = select(!(!vec2<bool>(true, select(true, global0.x, global0.x))), vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) - vec2<f32>(var_1.a.x, var_1.a.x)) + var_0.a), var_1.a.x));
    return var_0;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global1 = arg_0.a.x;
    let var_0 = vec2<u32>(4294967295u, ~firstLeadingBit(72803u));
    var var_1 = vec4<i32>(-(~(u_input.d.x << (26708u % 32u))), -18862i, _wgslsmith_clamp_i32(u_input.d.x, -_wgslsmith_div_i32(560i, -49488i), countOneBits(u_input.d.x)), ~u_input.d.x) | _wgslsmith_sub_vec4_i32(select(reverseBits(~vec4<i32>(-13848i, u_input.d.x, -97202i, u_input.d.x)), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x) | firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, u_input.d.x)), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x | true)), -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -4674i) & abs(vec4<i32>(-2147483647i, -31113i, u_input.d.x, u_input.d.x)));
    var var_2 = Struct_2(arg_0);
    var var_3 = func_2(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, -1i, var_1.x), vec4<i32>(var_1.x, 28624i, var_1.x, -6558i)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.d.x, 2147483647i), vec4<i32>(var_1.x, u_input.d.x, u_input.d.x, u_input.d.x)) >> ((vec4<u32>(u_input.a, u_input.b, var_0.x, 4294967295u) | vec4<u32>(1u, var_0.x, var_0.x, u_input.b)) % vec4<u32>(32u)))));
    return Struct_2(func_2(vec4<i32>(countOneBits(-45954i), 14869i, -var_1.x, var_1.x >> (u_input.b % 32u)) << (~vec4<u32>(46950u, u_input.a, 1u, var_0.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1275f)) * _wgslsmith_f_op_f32(max(-676f, -149f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - 1000f) + _wgslsmith_f_op_f32(min(636f, -488f))))));
    var var_0 = func_6(func_1());
    global1 = _wgslsmith_f_op_f32(372f - 2670f);
    var var_1 = func_6(Struct_1(var_0.a.a));
    let var_2 = Struct_1(vec2<f32>(1f, -1643f));
    var var_3 = select(!(!(!vec3<bool>(true, global0.x, false))), !select(!(!vec3<bool>(false, true, global0.x)), !vec3<bool>(false, global0.x, global0.x), !global0.x != false), true);
    global0 = vec2<bool>(any(!func_3(_wgslsmith_f_op_vec2_f32(sign(var_2.a)), var_0.a.a.x)), false);
    var var_4 = _wgslsmith_div_f32(var_1.a.a.x, -1273f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, 1u, ~(~23656u), 22304u) & _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, u_input.b, 880u), ~vec4<u32>(u_input.b, 4294967295u, u_input.a, 0u)), ~vec4<u32>(u_input.c, 70932u, 62545u, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x >> (7424u % 32u), 0i << (u_input.a % 32u), u_input.d.x, u_input.d.x) & vec4<i32>(1i, 10119i, ~u_input.d.x, -23403i), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), firstTrailingBit(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, 1i))), -(~vec4<i32>(u_input.d.x, 1i, -6685i, 0i)), !(!vec4<bool>(global0.x, false, false, false)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.c, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(33713u, u_input.a, u_input.b), vec3<u32>(63322u, u_input.c, 85339u)))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 10359u, 0u), ~vec3<u32>(4294967295u, u_input.b, 53158u)), vec3<u32>(~u_input.c, min(u_input.c, u_input.c), 20869u))));
}

