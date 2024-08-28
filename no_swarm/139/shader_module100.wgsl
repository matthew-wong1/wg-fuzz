struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = array<bool, 12>();
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 15823u, u_input.b), vec3<u32>(0u, select(u_input.d, 1u, true), ~(u_input.b << (1u % 32u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, 294f, -137f, -873f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, 1093f, 1920f, -2106f) - vec4<f32>(-1383f, -373f, -1000f, 1444f)))))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, var_0.b.x, 1893f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -291f, 574f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 748f, var_0.b.x) + var_0.b.xyx))))), _wgslsmith_f_op_vec3_f32(-var_0.b.ywz), vec3<bool>(!(var_0.a < _wgslsmith_clamp_u32(var_0.a, 1u, 1u)), all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(70227u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], false, true), vec4<bool>(var_0.c, false, false, var_0.c), vec4<bool>(var_0.c, false, false, global0[_wgslsmith_index_u32(var_0.a, 12u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 12u)], var_0.c, false), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)], var_0.c, var_0.c), true), true)), true)));
    var var_2 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(-var_0.b), var_0.c);
    var_2 = var_0;
    return firstTrailingBit(vec4<u32>(u_input.d, 0u, 52479u, var_0.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = abs(select(vec4<i32>(-47532i, 59467i, u_input.c.x, select(reverseBits(u_input.a.x), -7227i, var_0.c)), -arg_0, !select(vec4<bool>(true, false, arg_1.c, false), !vec4<bool>(arg_1.c, false, true, var_0.c), var_0.c)));
    var_1 = arg_0;
    let var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), true);
    let var_3 = _wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, var_2.a, u_input.b, 1u) & ~func_3()), ~vec4<u32>(var_0.a, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, arg_1.a, u_input.d, 23866u), vec4<u32>(var_2.a, 6005u, 37521u, var_2.a)), u_input.d), countOneBits(var_2.a), 0u));
    return Struct_1(~41182u, vec4<f32>(-586f, 516f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-979f, _wgslsmith_div_f32(var_2.b.x, 333f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x)) - _wgslsmith_f_op_f32(-var_2.b.x)) * 198f)), false);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 12>();
    var var_0 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, ~(~4424u))), ~(~9390u));
    global0 = array<bool, 12>();
    var_0 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(u_input.d, u_input.d, arg_2.a), vec3<u32>(u_input.d, arg_2.a, arg_2.a) >> (vec3<u32>(u_input.b, u_input.b, arg_2.a) % vec3<u32>(32u)), !vec3<bool>(arg_2.c, true, false)), ~(~vec3<u32>(u_input.d, 18819u, 1u)))), ~vec3<u32>(_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_sub_u32(arg_2.a, u_input.d), 1u), ~_wgslsmith_add_u32(1u, 0u), arg_2.a));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(min(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_2.a, 4294967295u), func_3().wy), ~(~vec2<u32>(32246u, u_input.b))), min(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(53100u, u_input.b), vec2<u32>(25065u, arg_2.a))), vec2<u32>(arg_2.a, 55878u))), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(46659u, 4294967295u)), countOneBits(~vec2<u32>(39914u, 101875u)), ~vec2<u32>(u_input.d, 4294967295u)) | ~(~vec2<u32>(1u, u_input.b)));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) + -1000f);
    var_0 = _wgslsmith_f_op_f32(abs(arg_0.b.x));
    let var_1 = arg_0;
    var var_2 = (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(40844u, var_1.a, 30569u, 15405u)), _wgslsmith_add_vec4_u32(vec4<u32>(33560u, 9025u, arg_0.a, 62334u), vec4<u32>(0u, 0u, u_input.d, 42877u)) | (vec4<u32>(57572u, var_1.a, u_input.d, u_input.b) << (vec4<u32>(arg_0.a, 1u, u_input.b, u_input.d) % vec4<u32>(32u)))) << (_wgslsmith_div_u32(var_1.a, ~74580u) % 32u)) <= reverseBits(min(~firstTrailingBit(85025u), func_2(u_input.c, func_4(false, vec3<f32>(var_1.b.x, var_1.b.x, arg_0.b.x), var_1)).a));
    var var_3 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(arg_0.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(step(arg_0.b.x, var_1.b.x)), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), -1126f))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a, ~var_1.a), 1u), 12u)]);
    return Struct_1(~_wgslsmith_dot_vec3_u32(min(firstTrailingBit(vec3<u32>(arg_0.a, arg_0.a, 1u)), select(vec3<u32>(u_input.b, var_1.a, 95271u), vec3<u32>(var_3.a, 1u, var_1.a), var_1.c)), ~vec3<u32>(0u, 0u, 37762u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(277f)))), -609f), !(!(!var_1.c)));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = func_5(func_4(all(vec2<bool>(arg_0.x != u_input.a.x, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1352f, 270f, -183f)), func_2(u_input.c, Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2050f, 806f, -1000f, 877f)), global0[_wgslsmith_index_u32(0u, 12u)]))));
    var_0 = func_4(global0[_wgslsmith_index_u32(~func_2(u_input.c, Struct_1(u_input.b, var_0.b, false)).a ^ ~var_0.a, 12u)] | true, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x * 1404f), _wgslsmith_f_op_f32(f32(-1f) * -596f)))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f * -1453f)))), func_5(func_5(func_4(false, vec3<f32>(var_0.b.x, var_0.b.x, -635f), func_2(vec4<i32>(arg_0.x, u_input.c.x, arg_0.x, -22403i), Struct_1(36592u, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 367f), true))))));
    let var_1 = min(select(abs(~vec3<u32>(u_input.b, var_0.a, u_input.d)), abs(~vec3<u32>(u_input.d, var_0.a, var_0.a)), select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, true, true), false)) | (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.b, 64903u), ~vec3<u32>(var_0.a, 87627u, var_0.a)) ^ func_3().yyw), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14004u, u_input.d, var_0.a), vec3<u32>(var_0.a, u_input.b, u_input.b)) >> (~vec3<u32>(var_0.a, var_0.a, var_0.a) % vec3<u32>(32u)), vec3<u32>(~var_0.a, ~u_input.b, ~u_input.d)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b.x, 125f, func_4(!(var_0.c | true), _wgslsmith_div_vec3_f32(vec3<f32>(1090f, var_0.b.x, 1281f), vec3<f32>(var_0.b.x, -378f, -1004f)), Struct_1(countOneBits(15376u), var_0.b, var_0.c)).c)), func_2(reverseBits(u_input.c), func_5(func_5(func_2(vec4<i32>(arg_0.x, arg_0.x, 57327i, 7878i), Struct_1(14304u, vec4<f32>(var_0.b.x, var_0.b.x, 397f, var_0.b.x), true))))).b.x);
    let var_3 = func_4(all(select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 12u)], true, global0[_wgslsmith_index_u32(var_1.x, 12u)], var_0.c)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 12u)], false, false), false == var_0.c), select(vec4<bool>(true, true, true, var_0.c), vec4<bool>(true, var_0.c, var_0.c, var_0.c), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 12u)], var_0.c, var_0.c))))), var_0.b.ywy, func_5(func_2(firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(0i, arg_0.x, -13835i, 1i))), func_5(func_4(global0[_wgslsmith_index_u32(u_input.b, 12u)], vec3<f32>(-566f, -759f, var_0.b.x), Struct_1(var_0.a, vec4<f32>(548f, -1013f, -578f, 306f), global0[_wgslsmith_index_u32(u_input.d, 12u)]))))));
    return u_input.a.x | -arg_0.x;
}

fn func_6(arg_0: i32) -> Struct_1 {
    var var_0 = 864f;
    let var_1 = func_5(func_5(Struct_1(~_wgslsmith_add_u32(u_input.b, 38825u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2918f, 479f, 680f, -1814f), vec4<f32>(176f, 1000f, 316f, -1245f))), true)));
    let var_2 = false;
    var var_3 = var_1;
    global0 = array<bool, 12>();
    return func_5(func_5(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(-u_input.c.wy));
    var var_1 = -36082i;
    var var_2 = _wgslsmith_dot_vec2_u32(~max(vec2<u32>(5386u, 4294967295u), firstTrailingBit(vec2<u32>(1u, u_input.d))), countOneBits(~select(vec2<u32>(4294967295u, 1u), vec2<u32>(11070u, 0u), vec2<bool>(true, true)))) & ~_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 29483u), vec2<u32>(var_0.a, 0u)), vec2<u32>(1u, 65877u), 503f == var_0.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(u_input.b, var_0.a) | vec2<u32>(u_input.d, 1663u)));
    var var_3 = _wgslsmith_dot_vec2_i32(-u_input.a.zz, vec2<i32>(~2147483647i, 0i));
    var var_4 = ~_wgslsmith_sub_u32(u_input.b, ~(~u_input.b >> (~15476u % 32u)));
    var var_5 = vec2<f32>(-979f, -242f);
    let var_6 = func_4(!var_0.c, var_0.b.zww, func_5(func_5(Struct_1(func_3().x, var_0.b, var_0.c & false))));
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_6.b.x), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(39349i, -64259i, ~(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(min(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.c.x), ~u_input.c.x), u_input.a.x)), ~func_3(), vec2<i32>(~(~19099i), -_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, 0i), u_input.c.wwy))), var_6.b.zyy, _wgslsmith_mod_vec2_u32(abs(~vec2<u32>(4294967295u, 59266u)) & reverseBits(vec2<u32>(u_input.d, var_0.a)), countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(22032u, var_6.a), func_3().yw))));
}

