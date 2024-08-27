struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = ~(1u & (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.b.zy), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yx)) << (u_input.b.x % 32u)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(935f, 2395f) + vec2<f32>(-425f, -131f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), vec2<f32>(588f, -1144f), false)) - vec2<f32>(1f, 1f)), true)), Struct_1(false), u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, -546f)), Struct_1(false), _wgslsmith_mult_i32(arg_0, abs(2147483647i))));
    var_1 = Struct_3(var_1.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.a.x, 339f))))), Struct_1(var_1.a.b.a), ~(u_input.a ^ arg_0) & -arg_0));
    var_0 = _wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(0u | ~(0u & u_input.b.x)));
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.b.a), var_1.a.b, 0i), Struct_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(741f, 667f))), Struct_1(false), var_1.b.c));
    return 1i;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    var var_0 = func_3(19714i);
    return Struct_4(firstLeadingBit(29784u), vec2<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.b, Struct_1(true), reverseBits(u_input.a));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(arg_0.b.x * func_2(var_0.a.x, Struct_1(arg_1), arg_0, Struct_2(vec2<f32>(arg_0.b.x, var_0.a.x), var_0.b, 8546i)).b.x)), Struct_1(select(true, false, all(!vec4<bool>(var_0.b.a, var_0.b.a, arg_1, true)))), -12303i);
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-455f)) + _wgslsmith_f_op_f32(f32(-1f) * -330f)), arg_0.b.x), Struct_1(any(!vec3<bool>(var_0.b.a, arg_1, false))), _wgslsmith_mult_i32(firstLeadingBit(~1i), 1i));
    var var_1 = ~vec4<u32>(~u_input.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c), select(u_input.b, vec3<u32>(arg_2, arg_0.a, arg_2), vec3<bool>(arg_1, var_0.b.a, false))), 4294967295u), abs(75095u), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), u_input.b)));
    var_0 = Struct_2(var_0.a, var_0.b, var_0.c);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))) + var_0.a), var_0.b, -var_0.c);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = 1782f;
    var var_1 = Struct_3(func_4(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-437f + var_0), _wgslsmith_f_op_f32(floor(var_0)))), Struct_1(u_input.a <= u_input.a), Struct_4(u_input.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1034f, -696f)))), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))), Struct_1(true), reverseBits(u_input.a))), !(arg_1 && arg_1) & true, _wgslsmith_sub_u32(arg_0, 71810u), ~func_2(-367f, Struct_1(true), Struct_4(42903u, vec2<f32>(var_0, 965f)), Struct_2(vec2<f32>(var_0, -696f), Struct_1(true), u_input.a)).a), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -624f))), Struct_1(true), 28534i));
    var var_2 = vec4<u32>(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1619f), Struct_1(var_1.a.b.a), func_2(321f, func_4(func_2(var_0, var_1.a.b, Struct_4(0u, var_1.b.a), var_1.a), true, u_input.b.x, u_input.b.x).b, Struct_4(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, var_1.a.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-326f, var_1.b.a.x) + var_1.b.a), var_1.a.b, 2147483647i)), func_4(Struct_4(arg_0, var_1.b.a), false, min(~104485u, u_input.c << (1u % 32u)), _wgslsmith_clamp_u32(~arg_2, arg_0 ^ 4661u, 32834u))).a, arg_0, 143221u, ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(106965u, 17491u, 0u, 29261u), vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 26244u, 62051u, 0u), countOneBits(vec4<u32>(arg_0, arg_0, arg_0, 88844u)))));
    let var_3 = true;
    var_2 = select(vec4<u32>(max(var_2.x, max(4294967295u, u_input.b.x)), abs(~var_2.x), ~func_2(-1588f, var_1.b.b, Struct_4(u_input.b.x, vec2<f32>(var_1.a.a.x, var_0)), var_1.b).a, u_input.c) >> (((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 0u, u_input.c, var_2.x), vec4<u32>(u_input.c, arg_2, 0u, arg_0)) | select(vec4<u32>(var_2.x, 1u, arg_2, arg_2), vec4<u32>(97705u, u_input.b.x, arg_0, var_2.x), vec4<bool>(var_3, arg_1, false, var_1.b.b.a))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(43476u, 30734u, arg_2, u_input.c), vec4<u32>(4294967295u, 10117u, 9757u, 27475u))) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_2, 128075u, arg_2, u_input.b.x) << (vec4<u32>(52154u, arg_0, 4294967295u, var_2.x) % vec4<u32>(32u))), vec4<u32>(arg_0, 1u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 46508u << (u_input.c % 32u))), vec4<bool>(true, any(vec3<bool>(all(vec2<bool>(var_3, false)), true, func_4(Struct_4(arg_2, var_1.b.a), arg_1, arg_2, arg_2).b.a)), all(vec3<bool>(var_1.b.b.a, arg_1 || true, !arg_1)), false));
    return Struct_1(false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = firstLeadingBit(u_input.b.xx);
    var_0 = u_input.b.yy;
    var_0 = u_input.b.zy;
    var var_1 = Struct_4(min(1u, ~0u), arg_1.a);
    var_1 = Struct_4(_wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(u_input.c, ~_wgslsmith_mult_u32(64449u, 0u))), arg_1.a);
    return vec4<i32>(-24138i, func_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a << (568u % 32u), countOneBits(u_input.a)), func_4(Struct_4(var_0.x, arg_1.a), true, var_0.x, u_input.c >> (4294967295u % 32u)).c)), -23798i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, select(u_input.b.xx, vec2<u32>(u_input.b.x, 4294967295u), true)), _wgslsmith_mult_u32(u_input.b.x, u_input.c), ~4294967295u), ~(~(u_input.c << (u_input.c % 32u))));
    let var_1 = ~(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, -2147483647i, u_input.a, 11423i), func_5(func_1(16587u, false, u_input.b.x), Struct_2(vec2<f32>(166f, -1218f), Struct_1(false), u_input.a))) & vec4<i32>(~1i, ~(~0i), max(u_input.a, 1i), abs(countOneBits(u_input.a))));
    var var_2 = !select(!vec3<bool>(false, true, all(vec2<bool>(true, true))), vec3<bool>(!(u_input.c >= 47783u), true, true), vec3<bool>(false, select(-1i > u_input.a, true, any(vec4<bool>(true, false, false, false))), all(vec3<bool>(true, true, true))));
    var_2 = !vec3<bool>(true, !all(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, false, false), vec3<bool>(false, false, var_2.x))), false);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(315f)), 1000f))), Struct_1(!func_1(u_input.c, var_2.x, u_input.b.x).a), ~u_input.a ^ u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1682f, -606f) - vec2<f32>(_wgslsmith_f_op_f32(step(510f, -371f)), 1f)), Struct_1((true & var_2.x) && true), var_1.x));
    var var_4 = any(select(!(!vec4<bool>(var_2.x, var_3.a.b.a, false, var_3.a.b.a)), vec4<bool>(_wgslsmith_f_op_f32(619f + var_3.a.a.x) >= _wgslsmith_div_f32(-997f, var_3.b.a.x), func_4(Struct_4(u_input.c, vec2<f32>(var_3.a.a.x, 430f)), var_2.x && var_3.a.b.a, 4294967295u ^ u_input.b.x, min(u_input.c, 1u)).b.a, false, select(true, var_2.x, false)), !select(vec4<bool>(false, var_3.a.b.a, true, true), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), !vec4<bool>(var_3.b.b.a, var_3.a.b.a, var_3.b.b.a, var_3.a.b.a))));
    let var_5 = 71185u;
    let var_6 = Struct_4(82995u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-990f, var_3.a.a.x), _wgslsmith_f_op_vec2_f32(round(var_3.b.a)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.a.x, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~12726u, _wgslsmith_add_u32(4294967295u, u_input.c), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24804u, var_6.a), vec3<u32>(2706u, var_6.a, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(39874u, u_input.c, var_5, var_6.a), vec4<u32>(u_input.c, var_5, var_6.a, 0u) >> (vec4<u32>(44965u, 1u, 4294967295u, 2345u) % vec4<u32>(32u))), vec4<u32>(4294967295u, var_6.a, ~60884u, _wgslsmith_mod_u32(0u, var_5))), max(select(min(vec4<u32>(var_5, 4294967295u, 1u, u_input.b.x), vec4<u32>(8352u, 4294967295u, var_6.a, var_6.a)), vec4<u32>(34827u, var_5, 42704u, 62424u), var_3.b.b.a), reverseBits(vec4<u32>(var_5, 0u, var_6.a, 41680u)) >> (~vec4<u32>(var_6.a, 84903u, u_input.c, var_5) % vec4<u32>(32u)))), var_3.b.c, -28643i, _wgslsmith_add_vec2_i32(firstLeadingBit(var_1.zx), -(~select(vec2<i32>(2147483647i, 62459i), vec2<i32>(var_3.b.c, -1i), true))), ~6055u);
}

