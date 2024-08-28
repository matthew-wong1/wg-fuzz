struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 46284u;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_2(vec4<bool>(true, true, false, false)), 456f, Struct_1(true, vec4<bool>(false, true, true, true)), vec4<u32>(0u, 0u, 39344u, 15063u), 38717u), Struct_4(Struct_2(vec4<bool>(true, false, false, true)), 249f, Struct_1(false, vec4<bool>(true, true, false, false)), vec4<u32>(0u, 4294967295u, 1u, 56770u), 1u), Struct_4(Struct_2(vec4<bool>(false, true, false, true)), -1780f, Struct_1(true, vec4<bool>(false, true, true, true)), vec4<u32>(1u, 12450u, 4294967295u, 94200u), 4294967295u), Struct_4(Struct_2(vec4<bool>(true, false, true, false)), 1000f, Struct_1(true, vec4<bool>(true, false, false, false)), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 4371u), Struct_4(Struct_2(vec4<bool>(false, false, true, true)), -1000f, Struct_1(false, vec4<bool>(true, true, false, true)), vec4<u32>(0u, 0u, 0u, 21841u), 0u), Struct_4(Struct_2(vec4<bool>(true, false, false, false)), 1550f, Struct_1(false, vec4<bool>(true, true, false, false)), vec4<u32>(63492u, 12198u, 0u, 1u), 5903u), Struct_4(Struct_2(vec4<bool>(true, false, false, false)), -245f, Struct_1(true, vec4<bool>(true, true, false, false)), vec4<u32>(31084u, 86093u, 7767u, 0u), 0u), Struct_4(Struct_2(vec4<bool>(false, true, true, false)), 215f, Struct_1(false, vec4<bool>(true, true, true, true)), vec4<u32>(0u, 4294967295u, 48107u, 1u), 1u), Struct_4(Struct_2(vec4<bool>(true, true, true, false)), 156f, Struct_1(false, vec4<bool>(false, true, false, false)), vec4<u32>(524u, 24340u, 27821u, 0u), 14679u), Struct_4(Struct_2(vec4<bool>(true, true, false, false)), 1156f, Struct_1(true, vec4<bool>(true, false, true, false)), vec4<u32>(61213u, 20033u, 4294967295u, 13476u), 25914u), Struct_4(Struct_2(vec4<bool>(true, false, false, false)), -168f, Struct_1(false, vec4<bool>(true, true, true, false)), vec4<u32>(4294967295u, 0u, 4294967295u, 57452u), 44798u), Struct_4(Struct_2(vec4<bool>(false, false, false, true)), -430f, Struct_1(true, vec4<bool>(false, true, true, false)), vec4<u32>(110285u, 58540u, 1u, 4294967295u), 25257u), Struct_4(Struct_2(vec4<bool>(true, false, true, false)), -365f, Struct_1(true, vec4<bool>(false, false, false, true)), vec4<u32>(8411u, 15806u, 108366u, 108869u), 0u), Struct_4(Struct_2(vec4<bool>(false, false, false, true)), -195f, Struct_1(false, vec4<bool>(false, false, true, false)), vec4<u32>(0u, 5657u, 4294967295u, 1u), 68221u), Struct_4(Struct_2(vec4<bool>(true, false, true, true)), 1389f, Struct_1(true, vec4<bool>(true, true, true, true)), vec4<u32>(53810u, 77312u, 5703u, 1u), 1242u), Struct_4(Struct_2(vec4<bool>(true, false, false, true)), 238f, Struct_1(false, vec4<bool>(false, true, true, true)), vec4<u32>(1u, 60349u, 10135u, 4294967295u), 1u), Struct_4(Struct_2(vec4<bool>(false, false, false, false)), 1008f, Struct_1(false, vec4<bool>(false, false, true, false)), vec4<u32>(0u, 80115u, 41889u, 58757u), 42212u), Struct_4(Struct_2(vec4<bool>(false, true, true, true)), -457f, Struct_1(true, vec4<bool>(true, false, false, false)), vec4<u32>(4294967295u, 1u, 1u, 9861u), 20141u), Struct_4(Struct_2(vec4<bool>(true, false, true, false)), -1437f, Struct_1(false, vec4<bool>(true, true, false, false)), vec4<u32>(18930u, 4294967295u, 4294967295u, 28086u), 4779u), Struct_4(Struct_2(vec4<bool>(true, true, false, true)), -1012f, Struct_1(false, vec4<bool>(false, false, false, true)), vec4<u32>(0u, 39461u, 4294967295u, 33378u), 59248u), Struct_4(Struct_2(vec4<bool>(false, true, true, true)), 550f, Struct_1(true, vec4<bool>(false, false, false, true)), vec4<u32>(27240u, 27681u, 0u, 193u), 4294967295u), Struct_4(Struct_2(vec4<bool>(false, false, false, false)), 1015f, Struct_1(true, vec4<bool>(true, true, false, true)), vec4<u32>(16460u, 6249u, 0u, 0u), 0u), Struct_4(Struct_2(vec4<bool>(true, true, false, false)), 979f, Struct_1(false, vec4<bool>(true, true, true, false)), vec4<u32>(56372u, 1u, 4294967295u, 1u), 4294967295u), Struct_4(Struct_2(vec4<bool>(true, false, true, false)), 489f, Struct_1(true, vec4<bool>(false, false, false, false)), vec4<u32>(68786u, 0u, 12267u, 0u), 0u), Struct_4(Struct_2(vec4<bool>(false, false, false, false)), -1109f, Struct_1(true, vec4<bool>(false, true, false, true)), vec4<u32>(0u, 4294967295u, 39107u, 17644u), 4294967295u), Struct_4(Struct_2(vec4<bool>(true, false, false, false)), 1929f, Struct_1(true, vec4<bool>(true, true, false, true)), vec4<u32>(0u, 22341u, 1u, 28348u), 1u), Struct_4(Struct_2(vec4<bool>(true, false, true, false)), 1000f, Struct_1(false, vec4<bool>(true, true, false, false)), vec4<u32>(0u, 1u, 11324u, 1u), 4294967295u), Struct_4(Struct_2(vec4<bool>(true, true, false, false)), -1530f, Struct_1(true, vec4<bool>(false, false, false, true)), vec4<u32>(4294967295u, 18901u, 27716u, 23352u), 4294967295u), Struct_4(Struct_2(vec4<bool>(true, true, true, true)), -1129f, Struct_1(false, vec4<bool>(false, true, true, false)), vec4<u32>(19543u, 61001u, 4294967295u, 4294967295u), 269u), Struct_4(Struct_2(vec4<bool>(false, false, true, true)), -1660f, Struct_1(false, vec4<bool>(false, true, false, false)), vec4<u32>(4294967295u, 4294967295u, 5395u, 40950u), 4920u));

var<private> global2: array<bool, 27>;

var<private> global3: array<vec3<bool>, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    global2 = array<bool, 27>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global3 = array<vec3<bool>, 14>();
    global3 = array<vec3<bool>, 14>();
    let var_1 = Struct_5(reverseBits(reverseBits(~vec2<i32>(u_input.b.x, 3832i))), var_0.a.a.yyz, select(~1u, 51640u, true), Struct_2(var_0.c.b));
    return select(var_1.b.xy, vec2<bool>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(round(-1324f))) > var_0.b, all(select(!var_0.c.b, !var_0.c.b, true))), var_1.b.yz);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(any(!select(func_3(), !vec2<bool>(global2[_wgslsmith_index_u32(11230u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), !vec2<bool>(global2[_wgslsmith_index_u32(33759u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)]))), !(!select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false, true), !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(10349u, 27u)]), !vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(14333u, 27u)]))));
    var var_1 = Struct_3(vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_div_u32(29978u, _wgslsmith_add_u32(u_input.a.x, 0u)) >> (u_input.a.x % 32u), 52934u), Struct_2(select(vec4<bool>(func_3().x, false, false, true && global2[_wgslsmith_index_u32(64713u, 27u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.b.x, global2[_wgslsmith_index_u32(22017u, 27u)], var_0.b.x), select(vec4<bool>(global2[_wgslsmith_index_u32(21928u, 27u)], true, var_0.a, var_0.a), var_0.b, var_0.b.x), var_0.b), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false, var_0.b.x, global2[_wgslsmith_index_u32(21465u, 27u)]), var_0.b, !var_0.b))), Struct_2(vec4<bool>(var_0.b.x, false, any(!vec3<bool>(var_0.a, global2[_wgslsmith_index_u32(1u, 27u)], var_0.b.x)), true)), Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(_wgslsmith_add_u32(0u, u_input.a.x))), 27u)], select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), select(select(var_0.b, var_0.b, true), var_0.b, false), var_0.b)), select(vec3<bool>(!var_0.a, !(!var_0.a), true), vec3<bool>(global2[_wgslsmith_index_u32(~4294967295u, 27u)], var_0.a, true), var_0.b.xzz));
    var var_2 = all(!vec3<bool>(!var_0.b.x, all(vec3<bool>(var_0.b.x, false, true)), !var_1.c.a.x));
    let var_3 = var_0.b.yz;
    var var_4 = var_1.a.x;
    return Struct_3(~(~vec3<u32>(14427u, u_input.a.x, var_1.a.x)), Struct_2(vec4<bool>(!global2[_wgslsmith_index_u32(111833u, 27u)], true, true, ~136768u < var_1.a.x)), var_1.c, Struct_1(false, vec4<bool>(false, true, any(var_1.c.a), any(select(vec4<bool>(var_3.x, var_3.x, false, true), var_1.d.b, true)))), var_0.b.wzy);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = func_3().x;
    var var_1 = select(~min(arg_0.a.xx, vec2<u32>(0u, arg_0.a.x)), vec2<u32>(arg_0.a.x << (0u % 32u), countOneBits(1u)), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_0, false)), func_3(), var_0)));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(arg_1.ywx));
    let var_4 = global1[_wgslsmith_index_u32(~max(1u >> (arg_0.a.x % 32u), _wgslsmith_dot_vec2_u32(~arg_0.a.xy << (firstLeadingBit(vec2<u32>(var_1.x, 4294967295u)) % vec2<u32>(32u)), (vec2<u32>(1u, var_1.x) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) << (vec2<u32>(62886u, 4294967295u) % vec2<u32>(32u)))), 30u)];
    return Struct_5(u_input.b.yy, !select(var_4.a.a.xwx, func_2().d.b.xzy, vec3<bool>(global2[_wgslsmith_index_u32(1u << (var_1.x % 32u), 27u)], false, any(vec3<bool>(false, true, var_4.c.b.x)))), _wgslsmith_mod_u32(~1u, var_1.x), var_4.a);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-620f * 528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1609f - 436f)), _wgslsmith_f_op_f32(step(-842f, _wgslsmith_f_op_f32(abs(-923f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-202f)), _wgslsmith_f_op_f32(684f + -2097f), global2[_wgslsmith_index_u32(~u_input.a.x, 27u)]))))), vec2<bool>(global2[_wgslsmith_index_u32(~(~(~18413u)), 27u)], func_2().c.a.x));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), ~71523u), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 1u >> (max(1u, var_0.c) % 32u)), 4294967295u));
    var var_2 = Struct_3(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(1u, var_0.c), ~(~_wgslsmith_div_u32(0u, 1u))), func_4(func_2(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1562f, 1270f, -1082f, -1346f) + vec4<f32>(641f, -1046f, 811f, -347f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1711f, 134f, 121f, 599f))), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, -956f)), 554f, _wgslsmith_f_op_f32(step(2314f, -294f)), _wgslsmith_f_op_f32(select(2255f, -839f, var_0.d.a.x)))), !vec2<bool>(var_0.b.x, func_2().e.x)).d, Struct_2(vec4<bool>(func_4(Struct_3(vec3<u32>(0u, u_input.a.x, 1u), Struct_2(vec4<bool>(var_0.d.a.x, false, false, true)), var_0.d, Struct_1(true, var_0.d.a), vec3<bool>(var_0.b.x, false, false)), vec4<f32>(-194f, -1191f, -2090f, 930f), func_4(Struct_3(vec3<u32>(0u, 148149u, u_input.a.x), Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(9263u, 27u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false)), Struct_2(var_0.d.a), Struct_1(true, var_0.d.a), var_0.d.a.wzw), vec4<f32>(-1383f, -272f, 1292f, 484f), var_0.b.yx).d.a.yy).d.a.x, true, true, !all(var_0.b.yx))), Struct_1(false, var_0.d.a), vec3<bool>(true, !var_0.d.a.x, all(vec2<bool>(func_4(Struct_3(u_input.a, Struct_2(var_0.d.a), var_0.d, Struct_1(false, var_0.d.a), global3[_wgslsmith_index_u32(56769u, 14u)]), vec4<f32>(371f, -508f, -762f, -758f), var_0.d.a.xw).b.x, any(var_0.d.a.yz)))));
    global0 = 4294967295u;
    var var_3 = var_2.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1461f * 275f) + -1673f))), 343f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1(-vec3<i32>(-18285i, -2147483647i, -15264i))))));
    var var_2 = global1[_wgslsmith_index_u32(var_0, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(~_wgslsmith_sub_vec2_u32(var_2.d.yx, u_input.a.zz))), u_input.b.x);
}

