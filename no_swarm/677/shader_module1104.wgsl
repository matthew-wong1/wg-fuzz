struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(38185i, -38782i), vec2<i32>(-24895i, 49022i), vec2<i32>(-9909i, i32(-2147483648)), vec2<i32>(-65128i, 3216i), vec2<i32>(1i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 8749i), vec2<i32>(-44825i, -16441i), vec2<i32>(34009i, -1i), vec2<i32>(44364i, -13017i), vec2<i32>(-21935i, 46260i), vec2<i32>(14771i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -39080i), vec2<i32>(-60135i, -1i), vec2<i32>(1i, 1i), vec2<i32>(47824i, -43605i), vec2<i32>(-6500i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(16764i, 2908i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -19490i), vec2<i32>(-4618i, 39333i), vec2<i32>(13453i, 0i), vec2<i32>(i32(-2147483648), 19671i), vec2<i32>(-34047i, 1i));

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_3(vec2<f32>(1706f, 152f), vec2<bool>(true, false), Struct_1(4294967295u), 4079u, Struct_1(1u))), Struct_4(Struct_3(vec2<f32>(367f, -170f), vec2<bool>(true, false), Struct_1(4294967295u), 1551u, Struct_1(4294967295u))), Struct_4(Struct_3(vec2<f32>(-1008f, -324f), vec2<bool>(false, false), Struct_1(1u), 0u, Struct_1(37002u))), Struct_4(Struct_3(vec2<f32>(-1000f, -270f), vec2<bool>(false, false), Struct_1(0u), 15830u, Struct_1(1u))), Struct_4(Struct_3(vec2<f32>(811f, 363f), vec2<bool>(true, false), Struct_1(0u), 0u, Struct_1(0u))), Struct_4(Struct_3(vec2<f32>(-542f, 1236f), vec2<bool>(true, true), Struct_1(1584u), 0u, Struct_1(4294967295u))), Struct_4(Struct_3(vec2<f32>(221f, 557f), vec2<bool>(false, false), Struct_1(0u), 69565u, Struct_1(29210u))), Struct_4(Struct_3(vec2<f32>(-1381f, -1283f), vec2<bool>(true, true), Struct_1(29352u), 0u, Struct_1(76526u))), Struct_4(Struct_3(vec2<f32>(-1000f, 404f), vec2<bool>(true, true), Struct_1(80145u), 72669u, Struct_1(1u))), Struct_4(Struct_3(vec2<f32>(-1108f, 1275f), vec2<bool>(true, true), Struct_1(65287u), 71285u, Struct_1(1u))), Struct_4(Struct_3(vec2<f32>(596f, -165f), vec2<bool>(false, true), Struct_1(4294967295u), 102618u, Struct_1(1u))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = Struct_2(firstLeadingBit(8877u), global0.b, global0.c, -317f);
    global2 = array<Struct_4, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1889f)) + _wgslsmith_f_op_f32(floor(1721f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f - -180f) - _wgslsmith_f_op_f32(-1751f + arg_0.x))), _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-global0.d)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.b.yy))), _wgslsmith_f_op_vec2_f32(trunc(global0.b.yx))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(614f, -1607f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global0.b.zy)), _wgslsmith_div_f32(global0.b.x, -302f))))), vec2<bool>(true, true), arg_1, firstTrailingBit(19103u), Struct_1(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_mod_u32(u_input.a, 1u), global0.a) & ~firstTrailingBit(82572u)));
    let var_1 = 12333u;
    let var_2 = max(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1394u >> (u_input.c % 32u), global0.a, _wgslsmith_add_u32(46675u, 42324u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_1.a), _wgslsmith_mult_vec3_u32(vec3<u32>(14295u, arg_1.a, 4958u), vec3<u32>(17386u, var_1, 29400u))))), ~firstLeadingBit(vec3<u32>(global0.a, ~4294967295u, _wgslsmith_clamp_u32(1u, 63147u, 11047u))));
    global0 = Struct_2(_wgslsmith_div_u32(var_2.x, 0u), _wgslsmith_f_op_vec3_f32(-global0.b), arg_1, _wgslsmith_f_op_f32(global0.d + global0.b.x));
    global2 = array<Struct_4, 11>();
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.d;
    let var_1 = u_input.d << (~arg_1.a % 32u);
    global1 = array<vec2<i32>, 25>();
    let var_2 = min(vec2<i32>(_wgslsmith_div_i32(u_input.d, 0i), u_input.d), vec2<i32>(-2147483647i, ~(var_1 << (~global0.c.a % 32u))));
    global2 = array<Struct_4, 11>();
    return countOneBits(u_input.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    global2 = array<Struct_4, 11>();
    let var_0 = 1u;
    global1 = array<vec2<i32>, 25>();
    global0 = Struct_2((_wgslsmith_add_u32(var_0, var_0) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 4158u), vec3<u32>(var_0, var_0, u_input.c)) % 32u)) >> (func_4(Struct_1(u_input.a), Struct_1(abs(4294967295u)), Struct_2(13972u, _wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0.x, global0.d), global0.b), func_2(vec2<u32>(26218u, global0.a), Struct_1(var_0)), global0.d)) % 32u), _wgslsmith_f_op_vec3_f32(round(global0.b)), func_2(max(select(vec2<u32>(0u, var_0) >> (vec2<u32>(global0.c.a, 1u) % vec2<u32>(32u)), max(vec2<u32>(u_input.c, var_0), vec2<u32>(global0.a, 1u)), true), vec2<u32>(global0.c.a, countOneBits(u_input.a))), func_2(vec2<u32>(~var_0, _wgslsmith_sub_u32(4294967295u, 26780u)), Struct_1(~70513u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1906f)) * _wgslsmith_f_op_f32(219f * _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = u_input.b.wz;
    return func_2(max(abs(abs(~vec2<u32>(global0.c.a, 0u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, 108202u) & ~vec2<u32>(global0.a, 4294967295u), ~(vec2<u32>(1u, 4294967295u) ^ vec2<u32>(19732u, var_0)))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<f32>(-851f, _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.b.x)), 565f, false)))), !vec2<bool>(all(vec3<bool>(true, true, true)), u_input.c < _wgslsmith_sub_u32(u_input.a, global0.a)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-909f, global0.d), global0.b.x) + _wgslsmith_f_op_vec2_f32(-global0.b.zy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.b.x, 1323f)), _wgslsmith_f_op_f32(-global0.b.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(724f, 508f))))), _wgslsmith_mult_u32(~(global0.c.a & 4294967295u), ~95870u), Struct_1(u_input.a));
    global2 = array<Struct_4, 11>();
    let var_1 = max(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_0.e.a, 4294967295u, global0.c.a, var_0.e.a) & vec4<u32>(4294967295u, 1u, 21104u, var_0.c.a)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, var_0.c.a, 0u), vec4<u32>(110449u, 0u, u_input.c, u_input.a) << (vec4<u32>(global0.c.a, u_input.c, global0.c.a, global0.c.a) % vec4<u32>(32u))) % vec4<u32>(32u)), min(~(~vec4<u32>(4294967295u, 1u, var_0.d, var_0.c.a)), countOneBits(~vec4<u32>(56687u, 13618u, 1u, global0.a)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0.c.a, 0u)), vec2<u32>(~0u, ~var_0.e.a)), 0u, ~1526u, u_input.c));
    var var_2 = Struct_2(func_4(func_1(_wgslsmith_div_vec2_f32(var_0.a, global0.b.xy), _wgslsmith_div_f32(-585f, global0.d)), global0.c, Struct_2(var_0.c.a >> (u_input.a % 32u), vec3<f32>(-410f, var_0.a.x, -199f), func_1(global0.b.zy, 185f), _wgslsmith_f_op_f32(-var_0.a.x))) ^ max(_wgslsmith_add_u32(var_1.x, 7745u), var_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, 222f, -417f), global0.b, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), vec3<f32>(var_0.a.x, -1000f, var_0.a.x))), select(var_1.x, 56101u, all(vec4<bool>(var_0.b.x, true, true, var_0.b.x))) < u_input.c)), var_0.e, 725f);
    global1 = array<vec2<i32>, 25>();
    var var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1221f)))));
    let var_5 = 70258u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(6212i, -2147483647i), 6786i), u_input.b.x), u_input.d));
}

