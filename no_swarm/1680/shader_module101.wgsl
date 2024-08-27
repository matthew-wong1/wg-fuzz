struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 20>;

var<private> global2: Struct_1 = Struct_1(2018f);

var<private> global3: array<vec3<i32>, 7>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    global2 = arg_0.b;
    let var_0 = arg_0.d;
    global3 = array<vec3<i32>, 7>();
    var var_1 = 0u;
    let var_2 = Struct_2(!vec4<bool>(_wgslsmith_f_op_f32(max(arg_1.a, 611f)) < _wgslsmith_f_op_f32(select(arg_1.a, -535f, false)), (arg_0.d.a.a == 1147f) == global0.x, true, !(global0.x == global0.x)), ~(vec4<u32>(0u, _wgslsmith_clamp_u32(1u, arg_0.e.c.x, arg_0.a), arg_0.e.c.x, ~arg_0.e.c.x) ^ ~(~vec4<u32>(arg_0.e.c.x, 52503u, arg_0.a, arg_0.a))), Struct_1(arg_1.a), select(!vec4<bool>(true, !global0.x, true, global0.x), vec4<bool>(global0.x || true, !global0.x, true, global0.x), vec4<bool>(true, global0.x, true, select(!global0.x, true, global2.a != var_0.a.a))), arg_0.e.c);
    return ~var_2.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> bool {
    global2 = arg_2.a;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.a.a)), _wgslsmith_f_op_f32(abs(1159f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1042f)) + _wgslsmith_f_op_f32(min(-796f, global2.a)))))) + _wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(f32(-1f) * -878f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(591f * _wgslsmith_f_op_f32(f32(-1f) * -396f)), arg_2.a.a, 449f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, global2.a, -1000f) * vec3<f32>(846f, arg_0.a.a, 1079f))), vec3<f32>(arg_0.a.a, global2.a, _wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(-1028f - -889f)))));
    let var_2 = arg_0;
    var var_3 = max(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_1), select(vec2<u32>(19083u, arg_1), vec2<u32>(0u, 0u), global0.ww)) | firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(0u, 4294967295u))), _wgslsmith_sub_vec2_u32(~min(vec2<u32>(1u, arg_1), vec2<u32>(0u, 4294967295u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(11489u, arg_1), vec2<u32>(arg_1, arg_1))))), select(vec2<u32>(arg_1, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1328u, 62364u), _wgslsmith_sub_u32(arg_1, 22765u))), vec2<u32>(1u << (arg_1 % 32u), arg_1) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(true, true), !(!vec2<bool>(global0.x, global0.x)), select(global0.xw, global0.zy, global0.zy))));
    return true;
}

fn func_2() -> vec3<f32> {
    var var_0 = select(vec4<bool>(func_4(Struct_3(Struct_1(-354f)), func_3(Struct_5(42118u, Struct_1(361f), vec3<f32>(global2.a, 196f, -2410f), Struct_3(Struct_1(global2.a)), Struct_4(vec3<f32>(-390f, global2.a, global2.a), global2.a, vec2<u32>(1u, 24300u))), Struct_1(global2.a)), Struct_3(Struct_1(global2.a))), !global0.x, true && global0.x, true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, global0.x, false, false), global0.x)), select(!(!vec4<bool>(true, global0.x, false, false)), vec4<bool>(true, true, true, true), !(global0.x | true)), !select(vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), false), true)), select(vec4<bool>(global0.x, global0.x, select(global0.x, false, 25920i > u_input.a), false), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, true), global0.x), any(vec2<bool>(true, true))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(-1239f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2.a, global2.a)), -707f, true || var_0.x)))));
    let var_2 = u_input.a;
    var var_3 = select(select(!(!vec4<bool>(true, true, var_0.x, true)), vec4<bool>(false, global0.x, false, any(global0.yyz) & (var_1.a.a <= -1736f)), true), !(!vec4<bool>(global0.x, false, true, -828f >= global2.a)), !(-22244i > _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 20u)], -1i, 25875i) >> (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(75246u, 20u)], u_input.a, u_input.a))));
    var_0 = !(!vec4<bool>(true, all(vec2<bool>(global0.x, false)) && global0.x, all(!vec4<bool>(var_3.x, true, var_3.x, var_3.x)), var_3.x & func_4(Struct_3(Struct_1(var_1.a.a)), 0u, Struct_3(var_1.a))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1833f, global2.a, global2.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, global2.a) * vec3<f32>(1339f, -1000f, 902f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1611f, global2.a, var_1.a.a))))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a, arg_0.a, arg_0.a) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(896f, arg_3.a.a, arg_0.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_3.a.a, -1000f), vec3<f32>(-653f, arg_3.a.a, global2.a), global0.wwx))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(389f, global2.a, -1742f), vec3<f32>(230f, arg_0.a, 478f))) + _wgslsmith_f_op_vec3_f32(func_2())))), arg_3.a.a, vec2<u32>(select(_wgslsmith_mult_u32(46147u, reverseBits(0u)), ~(~4294967295u), global0.x), _wgslsmith_clamp_u32(~1u, ~0u, ~(~31517u))));
    global0 = !(!select(!select(vec4<bool>(true, true, true, arg_1), vec4<bool>(false, true, true, arg_1), global0.x), select(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(arg_1, global0.x, true, arg_1), true), vec4<bool>(true, true, true, true), vec4<bool>(arg_1, arg_1, true, false)), all(vec3<bool>(false, false, false))));
    let var_1 = select(!select(vec4<bool>(true, arg_1, 0i <= u_input.a, arg_1 & arg_1), !vec4<bool>(arg_1, global0.x, arg_1, true), vec4<bool>(global0.x | false, true, true, arg_1)), select(vec4<bool>(arg_1, false, any(select(global0.xz, global0.yy, global0.xw)), -340f <= _wgslsmith_f_op_f32(global2.a - -384f)), vec4<bool>(74529u > (var_0.c.x ^ 1u), !(!arg_1), !arg_1 | any(global0.wyw), false), var_0.c.x == (~var_0.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 1011u), vec2<u32>(4880u, 43268u)))), all(vec2<bool>(all(!vec4<bool>(true, true, global0.x, arg_1)), false)));
    let var_2 = var_0.c;
    global0 = vec4<bool>(false, !var_1.x & true, select(global0.x, arg_1, all(!vec3<bool>(true, false, arg_1))), arg_1);
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    return func_1(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-205f, 366f)))), false, 0i, Struct_3(arg_1.c));
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-707f, global2.a) * vec2<f32>(390f, global2.a))), Struct_2(select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), max(vec4<u32>(arg_0, 33698u, arg_0, arg_0), vec4<u32>(1u, 4294967295u, 4294967295u, arg_0)), func_5(vec2<f32>(1500f, global2.a), Struct_2(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<u32>(1u, 11693u, 63632u, 1u), Struct_1(1415f), vec4<bool>(global0.x, global0.x, global0.x, false), vec2<u32>(arg_0, 3917u)), global2.a, vec4<f32>(global2.a, -1150f, global2.a, global2.a)), select(vec4<bool>(false, true, false, true), vec4<bool>(global0.x, global0.x, true, true), global0.x), ~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(sign(255f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -735f, global2.a, global2.a)))).a));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-270f, -530f) + vec2<f32>(var_0.a.a, arg_1.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1369f, var_0.a.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, var_0.a.a) - vec2<f32>(1918f, global2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1900f, -1486f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1467f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, global2.a) - vec2<f32>(arg_1.a, global2.a)))))), Struct_2(vec4<bool>(any(!vec3<bool>(global0.x, true, global0.x)), !(global0.x && false), !global0.x || all(global0.zxz), all(!global0.wx)), vec4<u32>(arg_0, arg_0, 1u, 0u) | ~(~vec4<u32>(26656u, 50498u, 0u, arg_0)), Struct_1(523f), !(!vec4<bool>(global0.x, global0.x, global0.x, false)), countOneBits(reverseBits(vec2<u32>(arg_0, 1u) ^ vec2<u32>(1u, 4294967295u)))), _wgslsmith_f_op_f32(max(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -964f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, global2.a, arg_1.a, 189f) - vec4<f32>(-1745f, arg_1.a, global2.a, 591f)) * vec4<f32>(global2.a, 1238f, global2.a, 548f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1179f, -971f, global2.a, -262f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, var_0.a.a, arg_1.a, arg_1.a)))))));
    var var_2 = abs(-firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 20u)], u_input.a, 1i, global1[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(u_input.a, -72i, global1[_wgslsmith_index_u32(42694u, 20u)], 57337i))));
    global3 = array<vec3<i32>, 7>();
    let var_3 = Struct_5(4294967295u, var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.a.a)), var_1.a))), -710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2461f)))), Struct_3(var_0.a), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, global2.a, 387f), vec3<f32>(1392f, -526f, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, global2.a, -207f)), vec3<bool>(true, global0.x, global0.x)))), var_1.a, _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0, arg_0), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, arg_0), max(vec2<u32>(74656u, 8120u), vec2<u32>(arg_0, arg_0))))));
    return vec3<bool>(global0.x, true, global0.x || !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global1[_wgslsmith_index_u32(55834u, 20u)], ~u_input.a);
    let var_1 = select(func_6(0u, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(131f, 1266f) + vec2<f32>(365f, 706f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, -925f), vec2<f32>(global2.a, 490f), global0.x))), Struct_2(!vec4<bool>(false, true, true, global0.x), vec4<u32>(1u, 1u, 1u, 1u), func_1(Struct_1(global2.a), global0.x, global1[_wgslsmith_index_u32(111199u, 20u)], Struct_3(Struct_1(global2.a))), !vec4<bool>(false, true, true, global0.x), min(vec2<u32>(29932u, 1u), vec2<u32>(0u, 1u))), global2.a, vec4<f32>(796f, _wgslsmith_f_op_f32(-global2.a), -485f, _wgslsmith_f_op_f32(global2.a + global2.a)))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(997f, global2.a) * global2.a) <= global2.a, true, _wgslsmith_f_op_f32(-func_1(Struct_1(832f), global0.x, global1[_wgslsmith_index_u32(1u, 20u)], Struct_3(Struct_1(1623f))).a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(select(760f, global2.a, true)))), (false | !global0.x) == global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(338f)), -1470f)), global2.a, _wgslsmith_f_op_f32(-global2.a)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2023f)), global2.a)))), global2.a, global2.a)));
    global3 = array<vec3<i32>, 7>();
    let var_3 = 0u;
    global0 = select(vec4<bool>(any(select(!var_1, select(vec3<bool>(false, false, false), var_1, vec3<bool>(var_1.x, true, global0.x)), any(vec4<bool>(false, global0.x, global0.x, var_1.x)))), var_1.x, !any(vec4<bool>(false, global0.x, global0.x, false)), true), vec4<bool>(!(!(u_input.a > u_input.a)), false, false, _wgslsmith_f_op_f32(ceil(-1213f)) == 110f), select(vec4<bool>(global0.x, any(!global0.wx), true, _wgslsmith_f_op_f32(var_2.x - 1206f) <= global2.a), vec4<bool>(true, var_1.x, all(vec3<bool>(false, false, var_1.x)), global0.x == false), !select(!vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, -1604f, -132f), var_2)))), -588f, vec2<u32>(9348u, min(var_3, ~var_3) & 1u), ~(~(~30550u)));
}

