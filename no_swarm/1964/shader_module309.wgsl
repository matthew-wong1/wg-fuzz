struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(0i, -11801i, 74373i), 0i));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec3<u32>, 10>;

var<private> global3: array<vec3<i32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = ~u_input.c.x;
    return global3[_wgslsmith_index_u32(0u, 6u)];
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: u32) -> vec4<u32> {
    global2 = array<vec3<u32>, 10>();
    global1 = ~(max(arg_0.x, firstTrailingBit(-2147483647i)) << (34875u % 32u));
    let var_0 = Struct_1(countOneBits(_wgslsmith_sub_vec3_i32(func_3(Struct_1(arg_0, global0.a.a.x)), global0.a.a & vec3<i32>(-2147483647i, arg_0.x, -20821i)) << (firstTrailingBit(vec3<u32>(46433u, u_input.b, 56104u)) % vec3<u32>(32u))), u_input.a);
    var var_1 = var_0;
    var var_2 = reverseBits(global2[_wgslsmith_index_u32(25336u, 10u)]);
    return _wgslsmith_clamp_vec4_u32(reverseBits(~(vec4<u32>(0u, u_input.d.x, 34179u, u_input.e.x) & vec4<u32>(var_2.x, u_input.e.x, 1u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(~(u_input.b & var_2.x), _wgslsmith_clamp_u32(~57235u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 24599u, arg_2), vec4<u32>(var_2.x, u_input.d.x, var_2.x, arg_2)), 1u), ~16828u << (~u_input.d.x % 32u), abs(_wgslsmith_sub_u32(u_input.d.x, u_input.b))), vec4<u32>(arg_2, _wgslsmith_clamp_u32(var_2.x, var_2.x, 1u), ~0u, arg_2) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(30101u, arg_2, 0u, arg_2), vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, u_input.d.x, u_input.e.x, arg_2), vec4<u32>(10754u, 31616u, var_2.x, 0u))) % vec4<u32>(32u))), vec4<u32>(59897u, ~0u, 1u, 14111u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_2 {
    global2 = array<vec3<u32>, 10>();
    let var_0 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, ~(arg_1.x & u_input.e.x)), 6u)], -(~(~global0.a.a.x))), global0.a, arg_0, Struct_1(~(~global3[_wgslsmith_index_u32(min(arg_2.x, arg_2.x), 6u)]), firstLeadingBit(u_input.c.x)));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mult_vec2_u32(~(~select(countOneBits(vec2<u32>(arg_1.x, 25368u)), vec2<u32>(arg_1.x, 10010u), all(vec2<bool>(true, false)))), vec2<u32>(u_input.b, _wgslsmith_add_u32(arg_1.x, 36602u)));
    var var_3 = var_0.b;
    return var_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = global0.a;
    let var_1 = vec3<u32>(abs(~_wgslsmith_add_u32(46765u, 1u)), arg_2, 37695u) ^ ~(abs(~global2[_wgslsmith_index_u32(42239u, 10u)]) & (_wgslsmith_mult_vec3_u32(vec3<u32>(9833u, arg_0.x, 0u), global2[_wgslsmith_index_u32(arg_0.x, 10u)]) << (~vec3<u32>(arg_0.x, arg_2, arg_2) % vec3<u32>(32u))));
    var var_2 = global0.a;
    let var_3 = ((_wgslsmith_div_u32(u_input.e.x, _wgslsmith_sub_u32(arg_2, 4294967295u)) << (var_1.x % 32u)) < _wgslsmith_add_u32(arg_2 & _wgslsmith_mult_u32(var_1.x, 1u), 0u)) && any(vec2<bool>(true, !select(false, true, true)));
    var var_4 = func_4(global0.a, firstTrailingBit(abs(firstLeadingBit(func_2(u_input.c.xyw, vec3<f32>(arg_3.x, arg_1.x, arg_1.x), arg_2)))), ~(~(vec2<u32>(9914u, u_input.b) & min(vec2<u32>(arg_0.x, 1u), u_input.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-100f - arg_1.x), arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, -719f, var_3)))));
    return Struct_3(Struct_1(countOneBits(vec3<i32>(_wgslsmith_mult_i32(1i, var_0.a.x), select(u_input.a, var_4.d.b, false), 1i)), ~firstTrailingBit(~var_0.b)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(func_4(func_1(vec3<u32>(u_input.d.x, u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, 446f, 368f) * vec3<f32>(-289f, -881f, -119f)), abs(1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, -558f, -293f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, 1106f, -1842f)))).a, firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 77101u, 51364u, u_input.b))), vec2<u32>(~21725u, ~u_input.b << (u_input.d.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1542f, -702f, 182f, 1659f))))))).b);
    let var_1 = !vec4<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))), true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    let var_2 = Struct_3(Struct_1(-vec3<i32>(_wgslsmith_mult_i32(0i, global0.a.b), -var_0.a.b, ~(-2147483647i)), 38112i));
    let var_3 = Struct_3(Struct_1(vec3<i32>(arg_2.d.b, _wgslsmith_sub_i32(countOneBits(u_input.c.x), u_input.c.x), _wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_mod_i32(var_2.a.b, arg_1.a.b))), -19521i));
    let var_4 = _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~(vec4<u32>(9525u, u_input.e.x, 42722u, u_input.d.x) | vec4<u32>(u_input.e.x, 9384u, u_input.e.x, 0u)), vec4<u32>(~u_input.d.x, ~4294967295u, firstLeadingBit(25383u), 4294967295u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4543u, u_input.e.x, 0u, 1u) << (vec4<u32>(26332u, u_input.d.x, 4294967295u, u_input.e.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, 1u, u_input.e.x, u_input.b))) & ~_wgslsmith_mod_vec4_u32(~vec4<u32>(50557u, u_input.b, 4294967295u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.e.x, 1u), vec4<u32>(1u, 55181u, u_input.b, u_input.e.x))));
    return u_input.d.x;
}

fn func_6(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    global1 = global0.a.b;
    let var_1 = Struct_2(var_0.b, Struct_1(vec3<i32>(-36319i, abs(_wgslsmith_div_i32(global0.a.b, 18710i)), _wgslsmith_mult_i32(0i, 0i)), global0.a.a.x), func_4(Struct_1(~vec3<i32>(-2525i, 2147483647i, var_0.b.a.x), var_0.b.a.x), abs(vec4<u32>(firstTrailingBit(arg_1.x), arg_0, ~0u, 1u)), vec2<u32>(~0u, 38290u) & ~(~arg_1.zy), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1277f + 823f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1007f * 897f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1723f * 561f)))).c, func_1(vec3<u32>(1u, 27386u, ~(~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2164f, -1847f, 1320f), vec3<f32>(525f, 401f, -931f)))), firstTrailingBit(arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(871f, -187f, 375f))))).a);
    let var_2 = countOneBits(~(-3909i));
    var_0 = func_4(func_4(func_4(func_4(arg_3.a, ~vec4<u32>(4294967295u, 1u, arg_0, arg_1.x), vec2<u32>(4294967295u, 4294967295u) | u_input.d, vec4<f32>(705f, -1389f, -214f, 2879f)).b, vec4<u32>(22476u, 13629u, 3871u, 0u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, u_input.b, 0u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u)), ~vec2<u32>(arg_2, arg_1.x), vec4<f32>(-464f, _wgslsmith_div_f32(504f, -366f), -197f, _wgslsmith_f_op_f32(f32(-1f) * -742f))).a, max(vec4<u32>(~4294967295u, arg_0, ~u_input.e.x, 1u), vec4<u32>(4294967295u, 32959u, arg_2, arg_0) ^ vec4<u32>(1u, u_input.b, 14712u, 4294967295u)), reverseBits(~vec2<u32>(u_input.b, 29476u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, 645f, 212f, -642f))))).a, ~(select(vec4<u32>(0u, 4294967295u, arg_1.x, 0u), vec4<u32>(u_input.d.x, 54695u, 23762u, arg_1.x), vec4<bool>(false, true, false, false)) << (~vec4<u32>(58529u, arg_0, arg_0, arg_2) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, arg_1.x, arg_1.x, u_input.e.x)), firstLeadingBit(reverseBits(vec4<u32>(17586u, u_input.d.x, 1u, 27778u)))), vec2<u32>(~arg_2 << (~78141u % 32u), ~45239u << ((u_input.e.x << (arg_1.x % 32u)) % 32u)), vec4<f32>(1f, 1f, 1f, 1f));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_3.c.b, 0i, var_0.a.b), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -749f;
    global1 = func_6(~(~1u), vec3<u32>(0u, ~89977u, u_input.e.x), ~func_5(~(u_input.c.zzy & global3[_wgslsmith_index_u32(68550u, 6u)]), func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, 4294967295u), global2[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(593f, var_0, var_0))), u_input.e.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 2550f)))), func_4(func_4(Struct_1(vec3<i32>(global0.a.b, 655i, global0.a.a.x), global0.a.a.x), vec4<u32>(0u, 15394u, u_input.d.x, 0u), u_input.d, vec4<f32>(-1253f, -356f, var_0, var_0)).c, ~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.b), u_input.e, vec4<f32>(-1242f, var_0, var_0, var_0))), func_4(func_4(Struct_1(-global3[_wgslsmith_index_u32(11753u, 6u)], ~(-1i)), vec4<u32>(~u_input.e.x, u_input.e.x, u_input.d.x, ~1u), max(select(vec2<u32>(u_input.e.x, 1u), u_input.e, vec2<bool>(false, false)), vec2<u32>(1u, u_input.e.x) << (u_input.e % vec2<u32>(32u))), vec4<f32>(var_0, _wgslsmith_f_op_f32(max(-851f, var_0)), _wgslsmith_f_op_f32(min(var_0, var_0)), 548f)).b, vec4<u32>(u_input.b, firstLeadingBit(~10920u), 4294967295u, u_input.e.x), abs(~vec2<u32>(0u, u_input.e.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1382f, 561f, var_0, var_0), vec4<f32>(var_0, var_0, 1810f, var_0), vec4<bool>(true, true, false, false))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(-1000f)), 1099f, _wgslsmith_f_op_f32(f32(-1f) * -1305f)))));
    let var_1 = global0.a;
    global3 = array<vec3<i32>, 6>();
    var var_2 = Struct_3(Struct_1(vec3<i32>(6512i, _wgslsmith_sub_i32(min(-1i, global0.a.a.x), ~global0.a.b), reverseBits(global0.a.a.x ^ 51911i)), u_input.c.x));
    global3 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

