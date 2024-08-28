struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec4<u32>(51035u, 34376u, 0u, 4294967295u), vec4<bool>(true, false, true, true), vec3<f32>(-1996f, 1000f, -548f)), Struct_4(vec4<u32>(94980u, 17166u, 4294967295u, 1u), vec4<bool>(true, false, true, true), vec3<f32>(1012f, 328f, -681f)), Struct_4(vec4<u32>(0u, 0u, 4294967295u, 47635u), vec4<bool>(true, false, false, true), vec3<f32>(1000f, -1451f, 542f)), Struct_4(vec4<u32>(4294967295u, 20885u, 1u, 75196u), vec4<bool>(true, false, true, false), vec3<f32>(-1715f, 447f, -635f)), Struct_4(vec4<u32>(1u, 0u, 43860u, 67561u), vec4<bool>(true, false, false, false), vec3<f32>(-537f, -260f, 609f)), Struct_4(vec4<u32>(0u, 4294967295u, 0u, 8325u), vec4<bool>(true, false, true, true), vec3<f32>(-1142f, -1075f, -1561f)), Struct_4(vec4<u32>(1u, 0u, 69100u, 1u), vec4<bool>(false, true, true, true), vec3<f32>(-1528f, -958f, -419f)), Struct_4(vec4<u32>(38091u, 59596u, 78534u, 107519u), vec4<bool>(false, true, false, true), vec3<f32>(241f, 1042f, 579f)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 6042u, 54165u), vec4<bool>(true, false, true, true), vec3<f32>(927f, 1000f, 932f)), Struct_4(vec4<u32>(64194u, 0u, 4294967295u, 1u), vec4<bool>(false, false, false, false), vec3<f32>(260f, 1000f, 1000f)), Struct_4(vec4<u32>(62032u, 4294967295u, 4294967295u, 28710u), vec4<bool>(false, true, false, false), vec3<f32>(1959f, 218f, 1847f)), Struct_4(vec4<u32>(0u, 8713u, 22179u, 0u), vec4<bool>(false, false, false, true), vec3<f32>(-227f, 1829f, -1218f)), Struct_4(vec4<u32>(0u, 0u, 49141u, 0u), vec4<bool>(false, true, true, false), vec3<f32>(737f, 515f, -1256f)), Struct_4(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<bool>(false, false, false, true), vec3<f32>(793f, 629f, 2206f)), Struct_4(vec4<u32>(1u, 23844u, 0u, 1u), vec4<bool>(false, true, false, true), vec3<f32>(-1774f, -821f, 946f)), Struct_4(vec4<u32>(4294967295u, 41218u, 50268u, 1u), vec4<bool>(false, true, true, false), vec3<f32>(287f, 497f, -228f)), Struct_4(vec4<u32>(4294967295u, 11906u, 80867u, 4294967295u), vec4<bool>(false, true, true, false), vec3<f32>(634f, 1000f, 781f)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 114995u, 1u), vec4<bool>(true, false, false, false), vec3<f32>(-1903f, 580f, -1405f)), Struct_4(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<bool>(false, false, false, false), vec3<f32>(966f, -242f, -421f)), Struct_4(vec4<u32>(4294967295u, 0u, 4294967295u, 77898u), vec4<bool>(true, false, false, false), vec3<f32>(802f, -574f, 252f)), Struct_4(vec4<u32>(1u, 12457u, 85939u, 53304u), vec4<bool>(true, false, true, false), vec3<f32>(928f, 121f, 1197f)), Struct_4(vec4<u32>(0u, 44729u, 0u, 0u), vec4<bool>(true, true, true, true), vec3<f32>(-984f, -1200f, -210f)), Struct_4(vec4<u32>(45106u, 40042u, 27622u, 0u), vec4<bool>(true, true, true, true), vec3<f32>(-257f, 298f, -889f)), Struct_4(vec4<u32>(33011u, 4294967295u, 34588u, 47750u), vec4<bool>(false, true, true, true), vec3<f32>(1138f, 508f, 578f)), Struct_4(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<bool>(true, true, false, true), vec3<f32>(301f, -1399f, -581f)), Struct_4(vec4<u32>(1u, 0u, 0u, 40328u), vec4<bool>(false, true, false, false), vec3<f32>(-930f, 998f, -1114f)), Struct_4(vec4<u32>(28303u, 4294967295u, 26219u, 4294967295u), vec4<bool>(true, false, false, false), vec3<f32>(-970f, 1000f, 1638f)), Struct_4(vec4<u32>(0u, 77549u, 38181u, 1u), vec4<bool>(false, true, true, false), vec3<f32>(698f, 513f, 1629f)), Struct_4(vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<bool>(true, false, false, false), vec3<f32>(-147f, 1357f, -1000f)), Struct_4(vec4<u32>(16807u, 4294967295u, 54806u, 0u), vec4<bool>(true, true, true, false), vec3<f32>(649f, 348f, -874f)), Struct_4(vec4<u32>(1u, 4294967295u, 66311u, 1u), vec4<bool>(false, true, true, true), vec3<f32>(-762f, 180f, 415f)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 62740u, 1u), vec4<bool>(true, true, false, false), vec3<f32>(1000f, 1713f, -290f)));

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, true, false, true, true, false, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = vec2<i32>(-1i, _wgslsmith_div_i32(-1i, ~_wgslsmith_mult_i32(u_input.a.x, u_input.b))) >> (min(_wgslsmith_div_vec2_u32(~vec2<u32>(2220u, 38645u), min(vec2<u32>(4294967295u, 19380u), vec2<u32>(1u, 1u))), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(29525u, 59131u), vec2<u32>(0u, 4294967295u), true), vec2<u32>(40398u, 66241u)))) % vec2<u32>(32u));
    var var_2 = ~(~(~(~vec4<u32>(17227u, 8898u, 4294967295u, 3710u))) >> (vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(16055u, 53600u, 32135u), vec3<u32>(100238u, 1u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(33706u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_div_u32(1u, max(0u, 4294967295u))) % vec4<u32>(32u)));
    var_0 = -(u_input.a.x >> (var_2.x % 32u));
    var var_3 = Struct_3(Struct_1(select(true, global1[_wgslsmith_index_u32(1u, 8u)], true), select(vec4<bool>(true, true, any(vec2<bool>(global1[_wgslsmith_index_u32(90549u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])), true), select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(var_2.x, 8u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(var_2.x, 8u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(26618u, 8u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(27590u, 8u)], global1[_wgslsmith_index_u32(59697u, 8u)], true, global1[_wgslsmith_index_u32(4294967295u, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 8u)])), !(!global1[_wgslsmith_index_u32(1u, 8u)])), u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, 1402f, 1519f)))))), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-473f, 389f))), _wgslsmith_div_vec2_f32(vec2<f32>(1158f, 1349f), vec2<f32>(1000f, 650f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-915f, 342f) + vec2<f32>(-579f, 285f))))), Struct_1(global1[_wgslsmith_index_u32((var_2.x & 1u) >> (4294967295u % 32u), 8u)], select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_2.x, 8u)], global1[_wgslsmith_index_u32(var_2.x, 8u)]), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(38320u, 8u)], true, global1[_wgslsmith_index_u32(30906u, 8u)]), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(var_2.x, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(39310u, 8u)], global1[_wgslsmith_index_u32(5050u, 8u)], global1[_wgslsmith_index_u32(var_2.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(58528u, 8u)])), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(58195u, 8u)], false, global1[_wgslsmith_index_u32(8436u, 8u)]))), -26394i), 53614u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.c.a.x)) + _wgslsmith_f_op_f32(-779f + _wgslsmith_div_f32(432f, var_3.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-250f, -378f, var_3.a.b.x)))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2149f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-429f * -1000f)))), -2395f)));
    global0 = array<Struct_4, 32>();
    global1 = array<bool, 8>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))));
    let var_2 = Struct_1(false, vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], false, global1[_wgslsmith_index_u32(54328u, 8u)]), _wgslsmith_mult_i32(((u_input.a.x >> (4294967295u % 32u)) >> (~1u % 32u)) >> (_wgslsmith_mod_u32(reverseBits(24851u), ~0u) % 32u), ~(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) | ~u_input.b)));
    return countOneBits(_wgslsmith_add_i32(~select(firstTrailingBit(-2147483647i), u_input.b, select(true, global1[_wgslsmith_index_u32(17831u, 8u)], var_2.b.x)), -9483i ^ _wgslsmith_dot_vec2_i32(-u_input.a.yx, -u_input.a.yz)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_4, 32>();
    var var_0 = ~(~firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, arg_0.x), _wgslsmith_mult_i32(-40979i, -18972i))));
    var_0 = ~(~abs(firstLeadingBit(func_2())));
    var_0 = ~(~abs(~_wgslsmith_div_i32(1i, u_input.a.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-480f, -933f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)), _wgslsmith_f_op_f32(trunc(864f)))));
    return ~19881u;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_0.c > ~(-arg_0.c);
    let var_1 = !select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_3.b.x, true), !select(select(arg_0.b.ywy, vec3<bool>(false, true, false), true), arg_3.b.xwx, vec3<bool>(arg_2, false, true)), arg_0.b.xyw);
    let var_2 = firstTrailingBit(vec4<i32>(u_input.a.x, arg_3.c, arg_3.c, _wgslsmith_add_i32(~5609i, max(arg_3.c, -8550i))) << (min(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(33668u, 14981u, 1u, 20222u)), reverseBits(vec4<u32>(1u, 1u, 4294967295u, 1u))), ~(~vec4<u32>(4294967295u, 68731u, 66946u, 77596u))) % vec4<u32>(32u)));
    var var_3 = Struct_3(arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(521f, -1063f, -1866f) * vec3<f32>(-1794f, 956f, 637f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1348f, -1973f, 821f))))), Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(556f, -493f), 601f)))), Struct_1(any(select(arg_3.b, !arg_0.b, select(arg_3.b, arg_3.b, arg_0.b))), vec4<bool>(true, all(select(arg_3.b, vec4<bool>(false, false, global1[_wgslsmith_index_u32(15034u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(var_0, arg_3.b.x, false, var_1.x))), any(select(arg_0.b, arg_0.b, var_1.x)), arg_2), -2147483647i & (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_3.c, var_2.x), var_2.xww) | 5422i)), ~_wgslsmith_mod_u32(99557u, 1u));
    var var_4 = reverseBits(firstLeadingBit(~(~_wgslsmith_add_u32(1u, 1u))));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), -368f) * var_3.c.a.x))), 2147483647i, var_2.wzw & ~(-(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(global1[_wgslsmith_index_u32(1u ^ ~func_1(vec3<i32>(1i, u_input.b, u_input.b)), 8u)], vec4<bool>(global1[_wgslsmith_index_u32(62647u, 8u)], true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 8606u, 36643u)), reverseBits(vec3<u32>(18598u, 1833u, 1u))), 8u)], true), _wgslsmith_sub_i32(2147483647i, reverseBits(-7452i)) & (-2147483647i | ~u_input.b)), true, ~(~(~4294967295u)) < firstTrailingBit(1u), Struct_1(all(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false), vec2<bool>(true, true))), vec4<bool>(true, false, !(global1[_wgslsmith_index_u32(4294967295u, 8u)] || false), true), ~(-u_input.b | u_input.a.x)));
}

