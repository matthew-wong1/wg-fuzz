struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<i32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1428f - -659f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1246f - 663f), _wgslsmith_f_op_f32(ceil(-1120f))))))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-891f + -1425f) - _wgslsmith_f_op_f32(round(-671f))))));
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(func_3(vec4<u32>(reverseBits(_wgslsmith_add_u32(1u, 1u)), 10773u, 1u << (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(33860u, 29673u, 54545u), vec3<u32>(8428u, 0u, 41986u)))), vec4<u32>((~1u >> (select(0u, 31365u, false) % 32u)) ^ 4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(4294967295u, 1495u, 13054u)), ~1u, reverseBits(4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 994f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.b * -573f), _wgslsmith_f_op_f32(step(1241f, 123f)))) - vec2<f32>(-1423f, var_1.x)), abs(var_0), 1062f, global1[_wgslsmith_index_u32(var_0, 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = ~abs(~_wgslsmith_sub_i32(u_input.b & -1i, abs(21104i)));
    var var_4 = 1u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.a))), -1164f, firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(16972i, global4[_wgslsmith_index_u32(~var_2.b, 25u)]), var_2.d.b.c.x, min(~arg_0.d.x, countOneBits(2147483647i)), ~(~(-2147483647i)))), vec3<i32>(-(~(-14182i ^ arg_0.c.x)), -(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.a, arg_0.d.x), arg_0.c) >> (abs(var_2.d.a.x) % 32u)), -21767i));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    global4 = array<i32, 25>();
    global2 = max(arg_3.c.xzz & max(_wgslsmith_sub_vec3_i32(arg_3.d, ~arg_3.c.xxw), _wgslsmith_div_vec3_i32(arg_3.d, vec3<i32>(arg_2.x, -6005i, 29167i))), firstLeadingBit(vec3<i32>(arg_2.x | -global2.x, global2.x, arg_3.c.x)));
    var var_0 = !(true == arg_1);
    var var_1 = ~vec3<u32>(1u, 1u, 1u);
    return func_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(-854f, _wgslsmith_f_op_f32(trunc(arg_3.a.x))), arg_3.b, 1510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(-965f + 1033f)) + _wgslsmith_f_op_f32(exp2(arg_3.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, global2.x), _wgslsmith_dot_vec3_i32(arg_3.c.xzw, vec3<i32>(5225i, u_input.b, -17348i)), ~0i, 10168i), vec4<i32>(arg_3.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global4[_wgslsmith_index_u32(0u, 25u)], -27002i, 4497i), arg_3.c), firstTrailingBit(global4[_wgslsmith_index_u32(30368u, 25u)]), _wgslsmith_div_i32(global2.x, 1i))), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(arg_3.d, arg_3.c.zwy), firstLeadingBit(arg_3.d), arg_1), min(countOneBits(arg_3.d), -vec3<i32>(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(var_1.x, 25u)])))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<f32> {
    global0 = false;
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~(~arg_1.zzz | firstTrailingBit(arg_1.zwy)), firstLeadingBit(abs(~vec3<u32>(18789u, arg_1.x, 0u))))), 1u)];
    var var_1 = var_0.b.c >> (~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a.x, 0u), ~var_0.a.x), min(arg_1.x, 56636u) << (4294967295u % 32u), countOneBits(1u), select(0u, var_0.a.x, true) & ~315u) % vec4<u32>(32u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(343f + -424f), _wgslsmith_f_op_f32(-1272f + var_0.b.b), _wgslsmith_f_op_f32(var_0.b.b - 105f)))))), func_1(~(~(-1i)) << (~select(var_0.a.x, 29136u, false) % 32u), arg_1.x > (_wgslsmith_clamp_u32(arg_1.x, var_0.a.x, 1u) << (1u % 32u)), var_1.ww, var_0.b), select(vec4<bool>(true, true, countOneBits(4294967295u) <= (var_0.a.x & 37740u), select(1000f >= arg_0.x, false, true)), vec4<bool>(any(vec2<bool>(true, true)), true, true, !all(vec2<bool>(false, true))), true), countOneBits(arg_1.x));
    global3 = array<Struct_3, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.zx)))) + vec2<f32>(var_2.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b), 561f)))) - arg_0);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(vec4<f32>(arg_1.c, arg_0, -104f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-198f, arg_1.a.x)) + _wgslsmith_f_op_f32(exp2(arg_1.e))), 1f))), func_1(arg_1.d.b.c.x, all(vec2<bool>(true, true)), ~(vec2<i32>(u_input.b, -24590i) | arg_1.d.b.d.xy), Struct_1(arg_1.d.b.a, _wgslsmith_f_op_f32(f32(-1f) * -766f), abs(vec4<i32>(u_input.a, 60468i, 2314i, global4[_wgslsmith_index_u32(20634u, 25u)]) >> (vec4<u32>(1u, arg_1.d.a.x, arg_1.b, arg_1.b) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(arg_1.d.b.c.xwx, arg_1.d.b.c.xwy, arg_1.d.b.d))), vec4<bool>(!all(vec3<bool>(true, true, true)), true, true, u_input.a < 3659i), ~(~arg_1.d.a.x));
    global2 = ~(-vec3<i32>(-6738i, 1i ^ global4[_wgslsmith_index_u32(firstLeadingBit(36508u), 25u)], ~arg_1.d.b.c.x));
    var var_1 = !vec3<bool>(false, false, var_0.c.x);
    var var_2 = !vec2<bool>(var_1.x, all(vec2<bool>(true, true)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a.xx), ~(~abs(abs(4294967295u))), var_0.b.b, arg_1.d, arg_0);
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 25u)];
    global0 = select(false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false))) & any(vec3<bool>(true, true, true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, _wgslsmith_f_op_f32(max(845f, -2083f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1879f, -985f, true)) + _wgslsmith_f_op_f32(floor(-1808f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-454f, 1397f)))), ~4294967295u, -216f, func_5(_wgslsmith_f_op_f32(647f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - -1845f) * -1234f)), Struct_3(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, 442f)), vec4<u32>(1u, 1u, 1u, 1u), func_1(-72524i, false, global2.yy, Struct_1(vec3<f32>(-1126f, -508f, 416f), -362f, vec4<i32>(-50562i, 1i, 0i, 1i), vec3<i32>(-2147483647i, 8833i, 2147483647i))))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 2845u, 0u), vec4<u32>(0u, 1u, 1u, 57278u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(56619u, 38927u), vec2<u32>(46648u, 0u)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -300f), global1[_wgslsmith_index_u32(abs(15075u) << (1u % 32u), 1u)], _wgslsmith_f_op_f32(trunc(-1482f)))), _wgslsmith_f_op_f32(floor(-1702f)));
    var var_2 = -u_input.a;
    let var_3 = !vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-152f * -814f) - 1426f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) - _wgslsmith_f_op_f32(floor(var_1.e))), func_1(_wgslsmith_sub_i32(1i, global2.x), true, -var_1.d.b.d.yz, func_5(-2403f, Struct_3(vec2<f32>(var_1.a.x, var_1.d.b.b), 1u, var_1.a.x, global1[_wgslsmith_index_u32(var_1.b, 1u)], var_1.e)).b).d.x == var_1.d.b.c.x);
    let var_4 = var_1.a.x;
    global1 = array<Struct_2, 1>();
    let var_5 = _wgslsmith_f_op_f32(-1148f - 1017f);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -2844i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(func_4(var_1.d.b.a.xz, vec4<u32>(1u, var_1.d.a.x, 1u, 1u), var_1.d.b)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * var_5))), 580f, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-637f, _wgslsmith_f_op_f32(max(var_4, var_5)))))));
}

