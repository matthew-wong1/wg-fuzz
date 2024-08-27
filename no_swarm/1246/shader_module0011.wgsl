struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-528f, -343f, -687f, -542f, 2080f, 2377f, -1425f, -362f, -153f, 2751f, 446f, 378f, -760f, -1011f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    global0 = array<f32, 14>();
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_1.a) | ~arg_0.ww, abs(vec2<i32>(u_input.c, 38231i) ^ vec2<i32>(-40098i, 1i))), ~u_input.c), u_input.c, 1i);
    var var_1 = Struct_4(arg_1, Struct_3(abs(arg_0.x), vec2<f32>(arg_1.c.b.x, global0[_wgslsmith_index_u32(~(~arg_2.x), 14u)]), arg_1.c), -(_wgslsmith_add_i32(~39445i, _wgslsmith_mult_i32(var_0.x, 3256i)) & u_input.c), Struct_2(!(-305f < arg_1.c.b.x) && true, arg_1.c.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 21846u), u_input.a.x), 14u)], -471f)))));
    global0 = array<f32, 14>();
    return var_1.a.c.a;
}

fn func_2() -> Struct_3 {
    global0 = array<f32, 14>();
    let var_0 = vec2<bool>(false || func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, -2147483647i), vec4<i32>(u_input.c, u_input.c, -32292i, u_input.c), vec4<i32>(-1i, -2147483647i, u_input.c, u_input.c)) ^ ~vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c), Struct_3(u_input.c & u_input.c, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1064f))), Struct_2(true, vec4<f32>(1735f, 463f, global0[_wgslsmith_index_u32(22098u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]))), firstLeadingBit(firstTrailingBit(vec3<u32>(44018u, u_input.a.x, u_input.b)))), all(select(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)] > -522f, all(vec3<bool>(true, false, true)), u_input.a.x > 59960u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false))))));
    let var_1 = vec2<bool>(func_3(vec4<i32>(max(u_input.c, 41336i), -1i, ~u_input.c, 1i) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(14719i, u_input.c, u_input.c), vec3<i32>(-4277i, u_input.c, -25799i)), u_input.c ^ u_input.c, abs(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 40082i), vec3<i32>(u_input.c, -1i, u_input.c))), Struct_3(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))), Struct_2(any(vec3<bool>(var_0.x, true, false)), vec4<f32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(29790u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24191u, 1579u, 0u, 1u), vec4<u32>(u_input.a.x, 1u, 15868u, 1u)), 0u, ~u_input.b) & (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.a.x, 0u, 1u)) | _wgslsmith_add_vec3_u32(vec3<u32>(27896u, 34224u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u)))), all(var_0));
    var var_2 = vec2<u32>(countOneBits(u_input.a.x), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(4294967295u, u_input.b), ~(~u_input.b)));
    global0 = array<f32, 14>();
    return Struct_3(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(9029i, -2147483647i, 18493i, u_input.c)), ~vec4<i32>(abs(u_input.c), _wgslsmith_mod_i32(-17607i, 36360i), u_input.c, 1i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 14u)], -1845f))) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(818f, _wgslsmith_f_op_f32(step(328f, global0[_wgslsmith_index_u32(1u, 14u)])))))), Struct_2(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 14u)], 756f, 1658f, global0[_wgslsmith_index_u32(19298u, 14u)]))))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec2<f32> {
    global0 = array<f32, 14>();
    var var_0 = Struct_4(func_2(), Struct_3(u_input.c >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(5266u, arg_1.x, arg_1.x), vec3<u32>(u_input.b, arg_1.x, arg_1.x)), _wgslsmith_sub_vec3_u32(arg_1.wyy, vec3<u32>(1u, arg_1.x, u_input.b))) % 32u), vec2<f32>(_wgslsmith_f_op_f32(min(1319f, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(-723f))), Struct_2(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 279f, -649f, -1098f)))), ~0i, func_2().c);
    var_0 = Struct_4(func_2(), Struct_3(~(2147483647i & func_2().a), vec2<f32>(_wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(-arg_0)), 1172f), Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2394f, -739f, -1000f, var_0.a.c.b.x)))), _wgslsmith_div_i32(-28406i, -36990i), Struct_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b.c.b, vec4<f32>(arg_0, 1000f, arg_0, 1000f), vec4<bool>(false, true, var_0.d.a, true)))))));
    var var_1 = Struct_2(false, vec4<f32>(720f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 14u)])) + 1646f), var_0.d.b.x)));
    var_0 = Struct_4(Struct_3(countOneBits(reverseBits(var_0.c)) >> (arg_1.x % 32u), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51189u, 14u)] * arg_0), -1314f), Struct_2(true, _wgslsmith_f_op_vec4_f32(-var_1.b))), Struct_3(i32(-1i) * -8358i, _wgslsmith_f_op_vec2_f32(vec2<f32>(2403f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 14u)])) * _wgslsmith_f_op_vec2_f32(var_0.d.b.yy * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(516f, var_1.b.x))))), Struct_2(~(-26830i) >= _wgslsmith_sub_i32(var_0.a.a, var_0.c), _wgslsmith_div_vec4_f32(vec4<f32>(1810f, var_0.a.b.x, -684f, -2857f), var_1.b))), -15852i, Struct_2(true && var_0.d.a, _wgslsmith_f_op_vec4_f32(-var_1.b)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.yw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mod_i32(reverseBits(u_input.c), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(189f, vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))), vec2<f32>(-449f, 1465f))))), Struct_2(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-911f, -460f, -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<f32>(420f, global0[_wgslsmith_index_u32(u_input.b, 14u)], -231f, -325f), vec4<bool>(false, false, false, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(39895u, 14u)], -301f) - vec4<f32>(-682f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1521f, global0[_wgslsmith_index_u32(1u, 14u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(~27036u, 14u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 14u)])), 151f, _wgslsmith_f_op_f32(sign(1169f))))));
    var var_1 = vec4<bool>(true, var_0.c.a | (-var_0.a <= u_input.c), true, var_0.c.a);
    var var_2 = vec4<i32>(14879i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -32405i, u_input.c) & vec3<i32>(var_0.a, var_0.a, u_input.c), ~vec3<i32>(u_input.c, 1i, u_input.c)), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.c, 18520i), u_input.c ^ var_0.a)), -23516i, _wgslsmith_mod_i32(1i, -2147483647i)) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 14338u, u_input.b) | vec4<u32>(u_input.b, 20786u, 21737u, 0u), ~vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b)), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x), reverseBits(~u_input.a.x), ~min(u_input.b, u_input.b))) % vec4<u32>(32u));
    var_2 = vec4<i32>(54282i, ~firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(~(-27069i), var_0.a), 0i);
    let var_3 = func_2();
    var_2 = -(-vec4<i32>(2147483647i, 14434i, 0i, -17099i) | vec4<i32>(reverseBits(-13812i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 39688i, -1i), vec3<i32>(var_0.a, u_input.c, 1i)), ~0i, var_0.a)) ^ firstLeadingBit(~abs(~vec4<i32>(var_3.a, 43008i, var_0.a, -2147483647i)));
    var_0 = Struct_3(-var_2.x, var_0.c.b.xy, func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(1724f, countOneBits(vec3<i32>(1i << ((u_input.b ^ 79884u) % 32u), -14634i, var_0.a)), _wgslsmith_f_op_f32(-var_0.b.x), var_2.x);
}

