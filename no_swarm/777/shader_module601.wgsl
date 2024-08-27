struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<f32> = vec2<f32>(1046f, -238f);

var<private> global2: array<vec4<f32>, 18>;

var<private> global3: vec4<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    global3 = ~(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), ~(~vec4<u32>(u_input.b, global3.x, u_input.c.x, global3.x))) >> (vec4<u32>(0u, select(~u_input.c.x, global3.x, true), max(39708u, global3.x) >> (global3.x % 32u), global3.x) % vec4<u32>(32u)));
    var var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), !(global0.x >= -18772i), select(true, any(vec3<bool>(false, true, true)), true)));
    var_0 = select(vec3<bool>(!(!any(vec4<bool>(true, true, true, var_0.x))), true, true), select(select(vec3<bool>(var_0.x || var_0.x, var_0.x, var_0.x), vec3<bool>(!var_0.x, false, !var_0.x), true), select(vec3<bool>(any(var_0.zy), var_0.x, global1.x == 166f), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, false)), !vec3<bool>(var_0.x, true, false), var_0.x), !(!vec3<bool>(var_0.x, true, var_0.x))), var_0.x), any(var_0.xx));
    global2 = array<vec4<f32>, 18>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(303f, global1.x) - vec2<f32>(global1.x, 1213f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1269f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), _wgslsmith_dot_vec3_u32(abs(~global3.yzz), _wgslsmith_mult_vec3_u32(vec3<u32>(57490u, 1u, 93434u), _wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 77247u, 4294967295u), u_input.c.xxy))), vec4<u32>(~u_input.c.x, ~10444u, 52713u, abs(global3.x << (global3.x % 32u))), select(select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, var_0.x, true, false), true), !vec4<bool>(false, var_0.x, true, false), var_0.x), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, false, false, true)), true), !(!vec4<bool>(var_0.x, false, true, true))), firstLeadingBit(~4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2075f), _wgslsmith_f_op_f32(global1.x + global1.x)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(744f, global1.x) * vec2<f32>(1031f, -721f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-752f, -824f)))))), abs(global3.x), max(firstLeadingBit(~u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, 4294967295u, 0u, 0u), ~vec4<u32>(8642u, 0u, global3.x, u_input.c.x))), select(vec4<bool>(var_0.x, true, any(vec4<bool>(var_0.x, var_0.x, true, true)), -1i == global0.x), vec4<bool>(select(false, var_0.x, false), true, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !var_0.x), all(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)))), 65930u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a.a, _wgslsmith_f_op_vec2_f32(-var_1.b.a), all(vec2<bool>(var_0.x, false)))), vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * var_1.b.a.x), _wgslsmith_f_op_f32(-global1.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1022f, 2991f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(func_3()))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(129f, -877f)))))), _wgslsmith_mod_u32(~20955u, ~99583u), vec4<u32>(global3.x, ~u_input.b, 82869u, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d))) | u_input.c, !select(vec4<bool>(any(vec3<bool>(true, false, true)), true, 50724u < u_input.d.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, true, true)), 22769u);
    global0 = vec2<i32>(~(~(u_input.a.x >> (select(1u, global3.x, false) % 32u))), -max(global0.x, global0.x));
    global3 = countOneBits(var_0.c);
    global1 = _wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-660f, 349f, all(vec3<bool>(true, false, var_0.d.x)))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1533f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(935f + global1.x), 1327f))));
    let var_1 = vec4<bool>(true != ((~65033u ^ var_0.c.x) < 1u), true, var_0.d.x | !select(true, !var_0.d.x, all(var_0.d.xxw)), true);
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, -1000f)), _wgslsmith_f_op_f32(var_0.a.x + global1.x))), _wgslsmith_mod_u32(53367u, 1598u), vec4<u32>(var_0.e, ~var_0.c.x << (4294967295u % 32u), abs(_wgslsmith_sub_u32(0u, global3.x)), reverseBits(70269u >> (global3.x % 32u))), !vec4<bool>(var_1.x & var_1.x, any(var_1.wz), any(vec2<bool>(var_1.x, false)), any(vec2<bool>(var_1.x, var_0.d.x))), firstTrailingBit(var_0.b)), var_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    return arg_0.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    return 1748f;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_div_f32(574f, global1.x))), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f + _wgslsmith_f_op_f32(floor(-240f)))))), _wgslsmith_f_op_f32(ceil(-1508f)), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -504f) + vec2<f32>(903f, global1.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, 674f), vec2<f32>(global1.x, global1.x)))))), vec2<f32>(-586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + global1.x)), global3.x, Struct_2(func_4(func_2(), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1396f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, -1000f)), 1u, func_2().a.c, vec4<bool>(false, true, false, false), 60027u)))));
    var var_1 = all(vec2<bool>(true, true));
    global2 = array<vec4<f32>, 18>();
    var var_2 = ~_wgslsmith_add_u32(u_input.b, 27572u ^ select(4294967295u, global3.x, false)) >= (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.b), ~vec4<u32>(global3.x, 1u, 0u, 56812u))) >> ((countOneBits(global3.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(27127u, 1u, 4294967295u, 35987u), select(u_input.c, vec4<u32>(37843u, 19286u, global3.x, global3.x), vec4<bool>(false, false, false, true)))) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -467f) * global1.x)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1599f * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 207f)))))), 84638u, vec4<u32>(u_input.d.x, ~(~firstTrailingBit(4294967295u)), firstLeadingBit(min(global3.x, _wgslsmith_mod_u32(7642u, global3.x))), ~u_input.d.x), vec4<bool>(firstTrailingBit(1i) < ~(i32(-1i) * -3363i), !((16138i != global0.x) || all(vec3<bool>(true, true, false))), any(vec4<bool>(true, true, true, true)), true), 39203u);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    global3 = arg_1.c;
    global0 = abs(u_input.a.xz);
    global0 = -min(max(vec2<i32>(global0.x, global0.x) >> (arg_0.zy % vec2<u32>(32u)), vec2<i32>(-26041i, u_input.a.x)), max(vec2<i32>(-24735i, -32565i), _wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(1i, -53413i)))) >> (~arg_0.yx % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + _wgslsmith_f_op_f32(select(1244f, global1.x, true))), 783f))));
    global2 = array<vec4<f32>, 18>();
    return Struct_2(func_4(func_2(), select(vec4<bool>(arg_1.d.x, select(arg_1.d.x, arg_1.d.x, arg_1.d.x), true, !arg_1.d.x), arg_1.d, func_1().d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -1377f)))), func_2().b);
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = ~(4294967295u | _wgslsmith_dot_vec2_u32(global3.wy, u_input.d.xz));
    global0 = max(u_input.a.yx, ~(u_input.a.xz << (vec2<u32>(~arg_0.a.b, u_input.b << (global3.x % 32u)) % vec2<u32>(32u))));
    let var_1 = func_2().a;
    var var_2 = func_4(func_6(~vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), global3.x, 60618u), arg_0.a, Struct_3(vec4<f32>(arg_0.b.a.x, func_2().b.a.x, func_4(arg_0, var_1.d, arg_2.a.yw).a.x, -581f)), global2[_wgslsmith_index_u32(var_0, 18u)]), !arg_0.b.d, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-arg_0.b.a), ~31252u, Struct_2(Struct_1(var_1.a, var_0, vec4<u32>(arg_0.b.e, global3.x, 0u, 1u), vec4<bool>(var_1.d.x, true, var_1.d.x, arg_0.a.d.x), u_input.b), Struct_1(var_1.a, arg_0.a.e, vec4<u32>(var_1.b, var_0, var_1.b, 4294967295u), vec4<bool>(false, var_1.d.x, true, var_1.d.x), global3.x)))))));
    var var_3 = func_6(arg_0.a.c.wwy, Struct_1(vec2<f32>(var_1.a.x, arg_2.a.x), countOneBits(func_6(vec3<u32>(4294967295u, arg_0.b.c.x, 26852u), var_1, arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 1000f, var_2.a.x, var_1.a.x) - vec4<f32>(-444f, arg_0.a.a.x, -286f, 1000f))).b.b), ~var_2.c, vec4<bool>(any(select(var_1.d.yzx, vec3<bool>(false, false, true), true)), var_2.d.x, true, global1.x >= arg_0.b.a.x), ~func_4(func_2(), func_6(var_2.c.xyz, arg_0.b, Struct_3(vec4<f32>(arg_0.a.a.x, global1.x, global1.x, -971f)), vec4<f32>(-1212f, arg_0.a.a.x, global1.x, arg_2.a.x)).a.d, _wgslsmith_f_op_vec2_f32(-var_1.a)).b), arg_2, global2[_wgslsmith_index_u32(global3.x, 18u)]).b;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(func_7(func_6(select(reverseBits(vec3<u32>(u_input.b, 4294967295u, global3.x)), ~vec3<u32>(u_input.c.x, 18993u, 2040u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), func_1(), Struct_3(vec4<f32>(global1.x, 207f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 18u)]))), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.a.x, -23015i) << (u_input.c % vec4<u32>(32u)), vec4<i32>(global0.x, 2147483647i, -33817i, global0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(max(global3.x, 0u), 18u)], _wgslsmith_div_vec4_f32(vec4<f32>(2188f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))), ~u_input.c.x, ~u_input.c.x, ~95518u);
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2808f, 494f, -516f, -743f)))))));
    var var_1 = func_2().b;
    var var_2 = global1.x;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(global1.x, 1119f, var_0.a.x, -190f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(var_1.e, 18u)], vec4<f32>(1000f, -1884f, -1067f, -1174f)))))));
    let var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.e << (u_input.b % 32u)), -(-u_input.a >> (max(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e, u_input.d.x, 1u), vec3<u32>(4294967295u, global3.x, 1u)), vec3<u32>(0u, 72387u, 0u)) % vec3<u32>(32u))), var_1.c.yxw, vec2<f32>(global1.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)));
}

