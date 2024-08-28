struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<u32>(12068u, 42583u, 4294967295u, 64469u), 4294967295u, vec2<bool>(true, false), -1000f, -853f), Struct_1(vec4<u32>(23189u, 38384u, 0u, 80432u), 4294967295u, vec2<bool>(false, true), -572f, -1399f), 838f, 5988i));

var<private> global1: array<Struct_3, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = ~vec2<i32>(~1i, -41688i);
    var var_1 = ~(_wgslsmith_div_vec2_i32(abs(abs(var_0)), var_0) >> ((u_input.a.xx >> (u_input.a.wy % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = abs(abs(-(var_0 ^ firstLeadingBit(vec2<i32>(1i, 26330i)))));
    var var_2 = !(!(u_input.a.x == 24337u)) && !arg_0.a;
    let var_3 = vec4<bool>(select(arg_0.a, arg_0.a, true), arg_0.a, true, !all(select(select(vec4<bool>(true, true, arg_0.a, true), vec4<bool>(false, arg_0.a, false, false), false), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))));
    return 745f;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(select(all(vec3<bool>(false, false, true)), true, all(vec4<bool>(false, true, false, true))), -1508f))), _wgslsmith_f_op_f32(sign(1336f)));
    global1 = array<Struct_3, 27>();
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(30519u), ~0u, u_input.a.x, var_1), select(vec4<u32>(31322u, u_input.a.x, 5822u, 4294967295u), u_input.a, vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(12237u | u_input.a.x, var_1) ^ 704u, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - var_0))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + var_0)))), 955f), Struct_1(~u_input.a, 4294967295u << ((var_1 ^ _wgslsmith_mod_u32(var_1, u_input.a.x)) % 32u), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 19048i, -3516i), vec3<i32>(5680i, -1i, -18189i)) <= 0i, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(-var_0))), 126f, 1i);
    global1 = array<Struct_3, 27>();
    return _wgslsmith_f_op_f32(exp2(1f));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_4(arg_0.xz, Struct_1(u_input.a, 31707u, vec2<bool>(false, true), -971f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(848f, -1214f) - arg_1)), Struct_1(~vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a.x, 1u), ~0u, u_input.a.x), 1u, select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, false, false)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -928f)), Struct_3(any(vec3<bool>(false, true, true)) & (u_input.a.x != ~u_input.a.x), -667f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(551f, 525f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) * _wgslsmith_f_op_f32(f32(-1f) * -678f)))));
    global0 = array<Struct_2, 1>();
    let var_1 = _wgslsmith_f_op_f32(1683f + var_0.e.x);
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    return Struct_1(~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.b.b, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), vec4<u32>(var_0.c.b, 1u, 1u, 4294967295u)), vec4<u32>(u_input.a.x, var_0.c.a.x, u_input.a.x, 1u), all(vec3<bool>(var_0.c.c.x, var_0.c.c.x, var_0.b.c.x)))), u_input.a.x, select(var_0.c.c, var_0.b.c, vec2<bool>(all(var_0.b.c) & !var_0.b.c.x, !all(vec3<bool>(false, true, var_0.d.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1735f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -103f) - 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - var_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1422f * var_1), -1550f))), _wgslsmith_f_op_f32(trunc(-471f)), var_0.c.c.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(169f)), _wgslsmith_f_op_f32(-179f * -1974f), _wgslsmith_f_op_f32(func_2())) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, -540f, -1000f) + vec3<f32>(-933f, 706f, -207f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(727f)) + _wgslsmith_f_op_f32(max(-1213f, -1486f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-300f)) - 1006f), arg_2)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(473f, -216f)))))));
    var var_1 = arg_1.x || true;
    global0 = array<Struct_2, 1>();
    var var_2 = firstLeadingBit(firstLeadingBit(u_input.a.zzz));
    global0 = array<Struct_2, 1>();
    return global1[_wgslsmith_index_u32(1u, 27u)];
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    global0 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_mult_i32(-reverseBits(~(~(-2147483647i))), min(1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 1i), reverseBits(-57662i))));
    global1 = array<Struct_3, 27>();
    let var_1 = Struct_4(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * 724f))) - -239f)), Struct_1(vec4<u32>(u_input.a.x, 4294967295u ^ ~u_input.a.x, ~(~u_input.a.x), 0u), (u_input.a.x | (35168u >> (u_input.a.x % 32u))) << ((firstTrailingBit(u_input.a.x) ^ ~74061u) % 32u), vec2<bool>(true, arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1950f * arg_2.b) - func_4(vec3<f32>(-523f, arg_2.b, -1000f), -543f).e) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1159f, arg_2.b)))), Struct_1(u_input.a, 23716u, select(select(vec2<bool>(arg_2.a, arg_1), !vec2<bool>(arg_1, false), arg_1), !vec2<bool>(false, arg_2.a), arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f * _wgslsmith_f_op_f32(round(303f)))), _wgslsmith_f_op_f32(f32(-1f) * -789f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xxx, vec3<u32>(8442u, u_input.a.x, u_input.a.x)), ~u_input.a.zyz), 0u), 27u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-343f + -515f), _wgslsmith_f_op_f32(-arg_0)), arg_2.b))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e.zz)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-414f, var_1.e.x))))))))), var_1.c, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(func_3(Struct_3(arg_1, -274f))), arg_0), var_1.e), var_1.a.x), Struct_3(_wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b * arg_0))), arg_0), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(var_1.e)))));
    return var_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    let var_0 = vec3<u32>(u_input.a.x, 0u, firstLeadingBit(1u));
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), -1410f), Struct_1(u_input.a, _wgslsmith_mult_u32(4294967295u, firstTrailingBit(u_input.a.x) << (4294967295u % 32u)), vec2<bool>(any(vec3<bool>(true, true, true)), false), -1649f, _wgslsmith_f_op_f32(ceil(1267f))), Struct_1(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~1u, 47548u, 11002u), firstLeadingBit(~_wgslsmith_mod_u32(u_input.a.x, var_0.x)), select(func_5(_wgslsmith_div_f32(-1172f, 1381f), 0u >= u_input.a.x, func_1(u_input.a.x, vec2<bool>(false, true), false)), !func_4(vec3<f32>(-213f, 875f, 1176f), 1105f).c, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2602f, 1000f, -407f)), _wgslsmith_f_op_f32(f32(-1f) * -944f)).c.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-231f, -480f) + -2140f))), func_1(_wgslsmith_clamp_u32(~(~41270u), _wgslsmith_sub_u32(82607u, var_0.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 109136u, 56442u, u_input.a.x)), var_0.x)), !vec2<bool>(false, func_5(-2710f, true, global1[_wgslsmith_index_u32(1u, 27u)]).x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(12998u, u_input.a.x, 84902u)), var_0) >= ~33061u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(157f, 912f, 546f) * vec3<f32>(926f, -661f, 553f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(293f, -822f, -1000f), vec3<f32>(1000f, -1022f, -1000f), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(122f, -759f, 1125f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -477f, -1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, -718f, 572f)), _wgslsmith_div_vec3_f32(vec3<f32>(191f, -1865f, -528f), vec3<f32>(-385f, -595f, 1000f))))));
    global1 = array<Struct_3, 27>();
    let var_2 = 637f;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.yxx, _wgslsmith_mult_vec3_u32(var_1.b.a.zyx, u_input.a.zzw)), vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(func_3(var_1.d)))), _wgslsmith_f_op_f32(trunc(-2030f)), -833f), -(~vec2<i32>(1i, 1i)), var_1.c.b, 1i);
}

