struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true));

var<private> global2: array<vec2<i32>, 27>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(!(u_input.a.x >= u_input.b), select(false, true, global3.x | !any(global3.zwy)), firstLeadingBit(func_3(Struct_3(vec4<u32>(33468u, 18845u, 4294967295u, 0u), Struct_2(-62505i, u_input.a, Struct_1(u_input.b, vec3<u32>(1u, 7626u, 1u), 1330f), 0u, u_input.b), Struct_1(u_input.b, vec3<u32>(27958u, 66695u, 0u), -1133f), vec2<bool>(false, global3.x)), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), global2[_wgslsmith_index_u32(countOneBits(5041u), 27u)], _wgslsmith_f_op_f32(-1431f + 676f))) > 1u, global3.x);
    var var_1 = Struct_3(select(vec4<u32>(~52250u, 50371u, _wgslsmith_mod_u32(1u, 30381u), 1u), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<bool>(global3.x, true, var_0.x, global3.x), select(vec4<bool>(global3.x, var_0.x, var_0.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, var_0.x), vec4<bool>(var_0.x, global3.x, global3.x, false)), !var_0)) << (vec4<u32>(_wgslsmith_mod_u32(1u, ~1u), min(~11850u, ~1u), abs(_wgslsmith_mod_u32(10423u, 4294967295u)), _wgslsmith_mod_u32(1u, firstTrailingBit(0u))) % vec4<u32>(32u)), Struct_2(-11344i, -vec2<i32>(firstLeadingBit(u_input.b), 0i), Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.b, 1i, u_input.a.x, 2147483647i)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1009f)) - _wgslsmith_f_op_f32(f32(-1f) * -1523f))), ~63978u, reverseBits(u_input.a.x)), Struct_1(firstTrailingBit(-19246i), ~(~vec3<u32>(1u, 42994u, 4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1074f))))))), !vec2<bool>(any(vec3<bool>(false, false, true)), false));
    var var_2 = firstTrailingBit(~(~(~(~var_1.c.b.xz))));
    var var_3 = -653f;
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(-25091i, u_input.b), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12474u, 63363u, ~var_1.a.x), 27u)]);
    return Struct_2(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(44051i, 32346i, 0i), vec3<i32>(u_input.a.x, -2147483647i, -8695i)) | ~u_input.a.x, -1i)), max(vec2<i32>(var_1.b.a, -2147483647i), u_input.a), Struct_1(reverseBits(~u_input.b | min(0i, 10547i)), firstLeadingBit(var_1.b.c.b) & _wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.b.x, var_2.x, var_2.x), var_1.b.c.b), _wgslsmith_f_op_f32(round(652f))), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(4294967295u | var_2.x), var_2.x, 2488u), var_1.b.c.b), var_1.c.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global1 = array<vec4<bool>, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, -322f), vec2<f32>(762f, 688f)) + vec2<f32>(arg_1.c.c, arg_1.c.c)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1350f, 396f)))))));
    global3 = select(vec4<bool>(u_input.a.x >= 0i, !global3.x, true, true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(11532u, arg_1.c.b.x, arg_1.d, 63973u)), ~min(~vec4<u32>(10683u, 69786u, arg_1.d, 1u), vec4<u32>(arg_2.b.x, 4294967295u, arg_1.c.b.x, arg_2.b.x))), 32u)], all(select(select(!global1[_wgslsmith_index_u32(0u, 32u)], vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false)), vec4<bool>(true, true, any(global3.yyx), true), !global1[_wgslsmith_index_u32(~4294967295u, 32u)])));
    let var_1 = !(!global3.x);
    var var_2 = ~(~vec3<u32>(arg_2.b.x, ~(~0u), arg_2.b.x));
    return 1480f;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(-abs(_wgslsmith_mod_i32(62299i, _wgslsmith_div_i32(u_input.a.x, 2147483647i))), -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a), select(min(global2[_wgslsmith_index_u32(arg_0.c.b.x, 27u)], u_input.a), firstLeadingBit(arg_0.b), !global3.zx)), Struct_1(u_input.a.x, vec3<u32>(_wgslsmith_div_u32(arg_0.c.b.x, arg_0.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31506u, arg_0.c.b.x, arg_0.d), vec3<u32>(35852u, arg_0.c.b.x, arg_0.d)), ~1u), 339u << (_wgslsmith_clamp_u32(arg_0.d, arg_0.d, 0u) % 32u)), _wgslsmith_f_op_f32(func_4(vec3<i32>(-2147483647i, 2147483647i, -73412i) & ~vec3<i32>(4675i, arg_0.e, u_input.a.x), func_2(), func_2().c))), 54638u, select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, select(-2147483647i, u_input.a.x, true), -arg_0.c.a), u_input.a.x), i32(-1i) * -(~0i), true));
    global3 = !(!(!(!select(vec4<bool>(global3.x, global3.x, true, global3.x), global1[_wgslsmith_index_u32(var_0.c.b.x, 32u)], global1[_wgslsmith_index_u32(50589u, 32u)]))));
    var var_1 = ~countOneBits(vec4<u32>(_wgslsmith_clamp_u32(arg_0.d, 4593u, 100175u), _wgslsmith_add_u32(var_0.c.b.x, 9107u), _wgslsmith_mult_u32(arg_0.d, 52570u), ~4294967295u)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.b.x, ~1u, ~4294967295u, arg_0.d >> (arg_0.d % 32u)), vec4<u32>(_wgslsmith_mod_u32(56833u, var_0.c.b.x), 1u, _wgslsmith_mult_u32(arg_0.c.b.x, 4294967295u), select(arg_0.c.b.x, var_0.c.b.x, false))) | (vec4<u32>(arg_0.d & 1u, firstLeadingBit(0u), abs(1u), ~4294967295u) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d, 4294967295u, 0u, var_0.d), vec4<u32>(10394u, arg_0.c.b.x, 39880u, 1u)))) % vec4<u32>(32u));
    global2 = array<vec2<i32>, 27>();
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.c, _wgslsmith_f_op_f32(arg_3 + -244f)))) - vec2<f32>(-1087f, _wgslsmith_f_op_f32(func_2().c.c + _wgslsmith_f_op_f32(1176f * _wgslsmith_f_op_f32(round(arg_1.c.c))))));
    global1 = array<vec4<bool>, 32>();
    var var_1 = all(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, global3.x, global3.x), false));
    var var_2 = arg_2.x;
    let var_3 = Struct_3(reverseBits(select(vec4<u32>(0u, arg_1.c.b.x, arg_0, 19365u) ^ vec4<u32>(arg_2.x, arg_0, arg_2.x, arg_2.x), ~vec4<u32>(8133u, 0u, 26586u, 1u), global3.x || global3.x) >> (countOneBits(firstLeadingBit(vec4<u32>(31447u, arg_1.c.b.x, arg_1.d, arg_2.x))) % vec4<u32>(32u))), Struct_2(2147483647i, u_input.a, func_2().c, ~(~(~arg_2.x)), _wgslsmith_div_i32(min(arg_1.c.a >> (44189u % 32u), ~(-1i)), -11093i)), Struct_1(~u_input.b, vec3<u32>(49135u, arg_0, (20260u << (0u % 32u)) ^ arg_1.c.b.x), -272f), select(vec2<bool>(true, true), vec2<bool>(any(global3.yxw) || any(vec2<bool>(true, global3.x)), global3.x), global3.x));
    return Struct_2(select(-(i32(-1i) * -12029i), arg_1.e, true), min(u_input.a, ~u_input.a), Struct_1(-1167i, _wgslsmith_mult_vec3_u32(abs(var_3.c.b), vec3<u32>(~arg_2.x, var_3.a.x, 47227u)), arg_1.c.c), _wgslsmith_clamp_u32(arg_1.d, ~(~1u), ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, arg_1.c.b.x, var_3.a.x)), ~var_3.a.zzz)), ~(-52271i));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(0i, arg_3.a), -firstTrailingBit(arg_3.b.x), -(i32(-1i) * -1i)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 59365u, 10255u), vec3<u32>(41710u, arg_3.d, 3745u), ~vec3<u32>(arg_2.c.b.x, 51507u, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(((vec3<i32>(24312i, u_input.a.x, arg_3.c.a) ^ vec3<i32>(arg_2.e, 0i, 0i)) << (arg_3.c.b % vec3<u32>(32u))) >> (vec3<u32>(select(arg_2.c.b.x, 8935u, true), 1u, _wgslsmith_sub_u32(arg_3.c.b.x, arg_3.d)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 1i), _wgslsmith_add_i32(u_input.b, -43063i), _wgslsmith_add_i32(-42099i, 45564i)), ~(-vec3<i32>(-2084i, 23069i, 2147483647i)))));
    let var_1 = _wgslsmith_mod_vec3_u32(~(~arg_3.c.b), _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_2.d, _wgslsmith_add_u32(arg_3.c.b.x << (arg_3.c.b.x % 32u), countOneBits(arg_2.c.b.x)), func_1(Struct_2(u_input.b, vec2<i32>(arg_2.b.x, 2147483647i), arg_3.c, arg_3.c.b.x, arg_2.b.x)).d), ~arg_2.c.b));
    var var_2 = 0i;
    var var_3 = Struct_3(vec4<u32>(arg_3.c.b.x, arg_3.c.b.x, arg_2.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(26281u, var_1.x, 0u), arg_3.c.b) | ~_wgslsmith_div_u32(1u, 26331u)), Struct_2(-2147483647i, arg_3.b, func_1(func_2()).c, ~0u, -2147483647i), Struct_1(func_2().e, var_1, _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.c)))), !vec2<bool>(true, arg_1));
    global2 = array<vec2<i32>, 27>();
    return _wgslsmith_dot_vec3_u32(min(vec3<u32>(~(~arg_2.d), (var_3.b.c.b.x | var_3.b.c.b.x) << (~arg_2.c.b.x % 32u), 1u), firstLeadingBit(func_2().c.b)), ~(vec3<u32>(_wgslsmith_sub_u32(0u, var_3.a.x), _wgslsmith_mod_u32(var_1.x, 1u), ~75985u) & (~vec3<u32>(4294967295u, var_1.x, var_3.c.b.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 7935u), vec3<u32>(arg_2.d, arg_2.c.b.x, arg_3.d)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(!all(select(vec4<bool>(true, global3.x, true, true), !vec4<bool>(false, false, global3.x, global3.x), true)), !(false | global3.x), !global3.x, all(select(!(!vec4<bool>(true, global3.x, false, true)), vec4<bool>(true, global3.x, false, true), global3.x)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-249f, 131f)), _wgslsmith_f_op_f32(227f * -1103f), global3.x)), -966f)));
    let var_1 = -1i;
    var var_2 = var_1;
    var var_3 = Struct_1(~(-939i), vec3<u32>(1u, func_6(var_0, all(global3.yy), func_5(46907u, func_1(Struct_2(-1i, global2[_wgslsmith_index_u32(1u, 27u)], Struct_1(u_input.b, vec3<u32>(4294967295u, 4294967295u, 4294967295u), -1015f), 4294967295u, u_input.b)), ~vec3<u32>(3802u, 0u, 0u), _wgslsmith_div_f32(var_0, -1585f)), Struct_2(~var_1, countOneBits(vec2<i32>(u_input.a.x, var_1)), Struct_1(-1i, vec3<u32>(7766u, 71617u, 61036u), var_0), _wgslsmith_add_u32(1u, 13037u), var_1)), _wgslsmith_add_u32(func_1(Struct_2(var_1, vec2<i32>(40288i, u_input.b), Struct_1(2488i, vec3<u32>(4294967295u, 0u, 1u), 1874f), 1u, -54684i)).c.b.x, firstLeadingBit(~0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2341f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec3<i32>(-8926i, -2856i, 2147483647i), Struct_2(-1i, vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(-12832i, vec3<u32>(51289u, 4294967295u, 26348u), var_0), 60057u, var_1), Struct_1(-25239i, vec3<u32>(48725u, 64100u, 1u), var_0))), _wgslsmith_f_op_f32(func_4(vec3<i32>(-37963i, u_input.a.x, u_input.a.x), Struct_2(u_input.b, vec2<i32>(u_input.a.x, u_input.b), Struct_1(u_input.a.x, vec3<u32>(1u, 0u, 16880u), 1400f), 0u, var_1), Struct_1(u_input.b, vec3<u32>(4294967295u, 0u, 37846u), var_0))), !global3.x))))));
    let var_4 = func_2().d;
    let x = u_input.a;
    s_output = StorageBuffer(0i, select(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(29319i, -2147483647i, var_3.a), vec3<i32>(var_3.a, var_1, -1i)), _wgslsmith_div_i32(var_1, 35521i), _wgslsmith_mod_i32(29474i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, var_3.a), vec3<i32>(var_1, 0i, 19294i)))), var_1, any(!vec3<bool>(global3.x, true, true)) || any(global1[_wgslsmith_index_u32(var_3.b.x, 32u)])));
}

