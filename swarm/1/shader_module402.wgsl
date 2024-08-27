struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -490f))))))), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, false, true, true)))), Struct_1(u_input.c.xy, vec4<bool>(any(vec2<bool>(true, true)) || true, !all(vec3<bool>(false, false, false)), ~4294967295u != ~u_input.c.x, true), _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_div_i32(-27089i, 2147483647i), -25165i), vec3<i32>(~u_input.a, _wgslsmith_div_i32(u_input.a, u_input.b), min(u_input.a, -10773i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-216f, -1342f, 274f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -1285f, 282f)), vec3<f32>(1176f, -299f, -357f), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)))), ~(~(vec4<u32>(u_input.c.x, u_input.c.x, 53216u, u_input.c.x) & vec4<u32>(62993u, 0u, u_input.d, 0u)))));
    let var_1 = var_0.c.d.x;
    let var_2 = 1u;
    let var_3 = 7667u & _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(var_0.c.e.x, 16666u, abs(~1u)));
    var var_4 = var_0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1104f))) + 294f);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = 11104i & _wgslsmith_clamp_i32(i32(-1i) * -(i32(-1i) * -13856i), max(~firstLeadingBit(arg_0), -32492i), 1i);
    var_0 = -46078i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-747f + 1665f) * -1425f)), true)), false, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x | 4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), ~firstTrailingBit(u_input.c.xy)), vec4<bool>((46427u > u_input.d) & all(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true)), all(vec2<bool>(true, false)), ~u_input.c.x == firstLeadingBit(26886u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 2147483647i, u_input.b) ^ vec3<i32>(arg_0, arg_0, arg_0), ~vec3<i32>(0i, -2147483647i, -23076i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), reverseBits(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.d), u_input.d, 0u << (u_input.c.x % 32u)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1708f), true, var_1.c);
    var_0 = -_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_0, _wgslsmith_mod_i32(arg_0, arg_0), max(var_2.c.c.x, var_1.c.c.x)), arg_0));
    return Struct_2(var_1.c);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(u_input.a, arg_0.x);
    var_0 = arg_0.x;
    var_0 = arg_0.x;
    var_0 = _wgslsmith_clamp_i32(-8635i, select(-1975i, _wgslsmith_dot_vec2_i32(select(arg_0.zz, vec2<i32>(10162i, arg_1.a.c.x), vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(arg_0.wx, vec2<i32>(33972i, -1i))), arg_1.a.b.x) | -1i, 1i);
    let var_1 = ~arg_1.a.e;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-612f, arg_1.a.d.x)) - 172f))), arg_1.a.b.x, func_2(select(_wgslsmith_dot_vec2_i32(-arg_1.a.c.xx, ~arg_0.wz), u_input.a, arg_1.a.b.x)).a);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = func_4(_wgslsmith_add_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 1i, 44777i, 0i), vec4<i32>(u_input.a, u_input.b, u_input.a, -82510i)) ^ vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.a << (19292u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 37771i, 1i), vec4<i32>(-1i, -2147483647i, -13377i, 22313i)), u_input.b, ~(-1i))), vec4<i32>(u_input.a, _wgslsmith_mult_i32(15988i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 20019i), vec2<i32>(u_input.a, u_input.b))), u_input.b, -(~10747i))), func_2(-1i));
    let var_1 = 0u;
    var var_2 = min(-(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.c.x, u_input.b, u_input.b, var_0.c.c.x), vec4<i32>(u_input.b, 0i, -1i, var_0.c.c.x)) ^ vec4<i32>(u_input.b, u_input.b, 30498i, var_0.c.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.c.x, -var_0.c.c.x, ~2147483647i, func_4(vec4<i32>(40616i, -12860i, 66714i, u_input.a), Struct_2(var_0.c)).c.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.c.c.x, -2147483647i, -1i), vec4<i32>(u_input.b, var_0.c.c.x, 2147483647i, -66342i)))) & abs(vec4<i32>(firstLeadingBit(24392i & u_input.b), _wgslsmith_sub_i32(2775i, _wgslsmith_clamp_i32(var_0.c.c.x, -49137i, 1i)), 0i, -var_0.c.c.x));
    var var_3 = firstLeadingBit(abs(var_2.xw));
    let var_4 = func_4(~vec4<i32>(_wgslsmith_div_i32(6100i, 22608i) << (u_input.c.x % 32u), var_2.x, var_0.c.c.x, 1i), func_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_0.c.c.x), 8242i & var_2.x) ^ var_2.x)).c.b.zz;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f * arg_0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1796f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-785f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), var_0.c.d.x)), var_0.c.d.x, -560f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.d.x, -729f, -447f, 310f), vec4<f32>(var_0.a, -1650f, -1050f, 143f))))));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> vec4<f32> {
    var var_0 = -arg_1;
    var_0 = -abs(arg_1);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))).x, select(true, any(select(vec4<bool>(true, true, true, true), func_2(u_input.b).a.b, true)), func_2(var_0.x).a.b.x), Struct_1(vec2<u32>(92236u, select(u_input.d, u_input.c.x, false)) & vec2<u32>(~u_input.d, u_input.c.x), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), ~u_input.d == ~u_input.d), _wgslsmith_mult_vec3_i32(arg_1, _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, -17602i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 32544i, 26764i), vec3<i32>(1i, arg_1.x, u_input.a)))), arg_2.xxx, ~vec4<u32>(u_input.c.x, u_input.c.x, func_4(vec4<i32>(-23960i, u_input.b, -2147483647i, arg_0), Struct_2(Struct_1(vec2<u32>(u_input.c.x, 57325u), vec4<bool>(true, false, false, false), arg_1, vec3<f32>(492f, arg_2.x, -1576f), vec4<u32>(32950u, u_input.d, u_input.c.x, 54758u)))).c.e.x, 0u)));
    let var_2 = ~4294967295u;
    let var_3 = var_1.c.b.zy;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 606f;
    var var_1 = ~(countOneBits(abs(0i)) >> (u_input.d % 32u)) ^ 0i;
    var_0 = _wgslsmith_f_op_f32(max(-712f, _wgslsmith_div_f32(414f, 264f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(u_input.b, _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, 29207i, u_input.b), -vec3<i32>(59269i, 1i, u_input.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(-982f)), _wgslsmith_f_op_vec4_f32(func_1(870f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, reverseBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.c.x, 38194u) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.b))), u_input.d, ~(~u_input.c.x), vec4<i32>(func_2(i32(-1i) * -1i).a.c.x, ~u_input.b, -(func_4(vec4<i32>(-1i, u_input.b, u_input.b, -2147483647i), Struct_2(Struct_1(u_input.c.zy, vec4<bool>(true, false, false, false), vec3<i32>(56637i, 1i, u_input.a), vec3<f32>(var_2.x, var_2.x, var_2.x), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)))).c.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -4149i, -2147483647i, u_input.b), vec4<i32>(-13225i, u_input.a, 37144i, u_input.b))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.a)), vec4<i32>(i32(-1i) * -14075i, -13498i, u_input.a & u_input.a, abs(1i)))));
}

