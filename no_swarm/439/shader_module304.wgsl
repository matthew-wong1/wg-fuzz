struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(0u, true, true, vec4<f32>(1542f, -851f, 2522f, 557f)), vec3<i32>(i32(-2147483648), 0i, 0i), 2798f, Struct_1(4294967295u, false, true, vec4<f32>(596f, 889f, -774f, -1925f))), Struct_2(Struct_1(4294967295u, true, false, vec4<f32>(1235f, -853f, 577f, 922f)), vec3<i32>(2147483647i, 1i, -13736i), 534f, Struct_1(1u, true, false, vec4<f32>(1250f, 1235f, -1696f, -204f))), Struct_2(Struct_1(68671u, false, false, vec4<f32>(948f, -540f, 307f, -1190f)), vec3<i32>(-28404i, 864i, -32233i), 665f, Struct_1(36537u, false, false, vec4<f32>(-195f, -196f, -216f, -554f))), Struct_2(Struct_1(10150u, false, true, vec4<f32>(-733f, 1288f, 655f, 285f)), vec3<i32>(1i, 16390i, -1i), -1511f, Struct_1(8416u, true, true, vec4<f32>(337f, -1918f, -1697f, 1600f))), Struct_2(Struct_1(0u, false, true, vec4<f32>(-1020f, -520f, -160f, 816f)), vec3<i32>(-13156i, -17597i, -1i), -586f, Struct_1(4294967295u, true, false, vec4<f32>(531f, 945f, -294f, 413f))), Struct_2(Struct_1(14702u, false, true, vec4<f32>(-321f, 140f, 1087f, 311f)), vec3<i32>(-1i, 17829i, 45189i), 138f, Struct_1(10982u, true, true, vec4<f32>(-195f, -1672f, -280f, -208f))), Struct_2(Struct_1(29935u, false, true, vec4<f32>(-141f, -1125f, -794f, 1783f)), vec3<i32>(i32(-2147483648), -21676i, i32(-2147483648)), 146f, Struct_1(660u, true, true, vec4<f32>(-1000f, -1071f, -737f, -767f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(-1208f, -989f, -1600f, 368f)), vec3<i32>(-29144i, -11045i, -1i), -2137f, Struct_1(1u, true, false, vec4<f32>(-637f, 1319f, 642f, -1000f))), Struct_2(Struct_1(0u, false, false, vec4<f32>(-1766f, -1000f, 458f, 859f)), vec3<i32>(i32(-2147483648), 2147483647i, 31885i), -1684f, Struct_1(27379u, false, false, vec4<f32>(999f, 538f, 1213f, -121f))), Struct_2(Struct_1(69953u, false, false, vec4<f32>(-1250f, 1000f, -585f, -1092f)), vec3<i32>(0i, -1i, 0i), 491f, Struct_1(26393u, true, true, vec4<f32>(417f, -976f, -1083f, 1440f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(1116f, 1585f, -772f, 795f)), vec3<i32>(i32(-2147483648), 12307i, -1i), 1358f, Struct_1(4294967295u, true, true, vec4<f32>(513f, 425f, 251f, 312f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(211f, -1835f, -554f, -1501f)), vec3<i32>(-40144i, -22905i, i32(-2147483648)), -146f, Struct_1(1u, true, true, vec4<f32>(-540f, 501f, -241f, 1622f))), Struct_2(Struct_1(4294967295u, true, true, vec4<f32>(136f, 433f, 390f, 516f)), vec3<i32>(-1215i, i32(-2147483648), 6252i), 536f, Struct_1(0u, false, false, vec4<f32>(1063f, -1032f, 156f, 672f))), Struct_2(Struct_1(34504u, false, true, vec4<f32>(-1079f, -401f, 587f, -1091f)), vec3<i32>(-1i, -1i, 1i), 704f, Struct_1(4294967295u, true, false, vec4<f32>(-1000f, -2431f, -1357f, 1301f))), Struct_2(Struct_1(398u, false, true, vec4<f32>(229f, 341f, -1016f, -144f)), vec3<i32>(53337i, 1i, -20596i), 108f, Struct_1(0u, false, true, vec4<f32>(-1558f, 344f, -1000f, -1000f))), Struct_2(Struct_1(1u, false, true, vec4<f32>(-437f, -911f, 421f, 1654f)), vec3<i32>(i32(-2147483648), 17051i, 23798i), -347f, Struct_1(21778u, false, false, vec4<f32>(805f, 185f, 297f, -832f))), Struct_2(Struct_1(3656u, false, false, vec4<f32>(-470f, -1154f, -397f, 888f)), vec3<i32>(2147483647i, 10760i, 1i), -1000f, Struct_1(30552u, false, false, vec4<f32>(793f, -283f, -962f, -1000f))));

var<private> global1: array<f32, 19> = array<f32, 19>(1760f, 654f, 1211f, 611f, 263f, 717f, 811f, 892f, -260f, 1000f, 541f, 1000f, 779f, -194f, -1718f, -1322f, -101f, 1790f, -319f);

var<private> global2: vec4<u32> = vec4<u32>(34219u, 82471u, 0u, 58208u);

var<private> global3: Struct_3;

var<private> global4: vec3<f32> = vec3<f32>(-1000f, -107f, 174f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<u32> {
    global4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global1[_wgslsmith_index_u32(global3.b.x, 19u)]) + vec3<f32>(406f, 469f, -1295f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, global4.x, 583f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-435f, global4.x, global4.x), vec3<f32>(global4.x, 1000f, global1[_wgslsmith_index_u32(global3.b.x, 19u)]))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(889f, global4.x, -153f), vec3<f32>(global1[_wgslsmith_index_u32(1920u, 19u)], global1[_wgslsmith_index_u32(u_input.d, 19u)], -1901f), true)) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -681f, global4.x)), vec3<f32>(_wgslsmith_f_op_f32(574f + -1000f), global1[_wgslsmith_index_u32(u_input.b, 19u)], _wgslsmith_f_op_f32(select(global4.x, -1342f, false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, -1000f, global1[_wgslsmith_index_u32(5127u, 19u)])), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1662f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(6470u, 19u)], global1[_wgslsmith_index_u32(global2.x, 19u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 19u)]))))));
    let var_0 = vec3<i32>(-1i) * -(~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 47857i), vec3<i32>(u_input.a, -1i, u_input.a)), abs(vec3<i32>(u_input.a, 11310i, u_input.a))));
    let var_1 = firstTrailingBit(firstLeadingBit(~vec4<i32>(-71324i, -1i, 11232i, 47378i)));
    var var_2 = _wgslsmith_add_vec2_i32(select(~(countOneBits(var_1.wy) << (global3.b % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(~0i, 0i), -(~u_input.a)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<i32>(~_wgslsmith_dot_vec2_i32(-var_0.xz, var_0.yz), abs(var_1.x)));
    global3 = Struct_3(~global2.x, _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(62811u), 1u), ~global2.wy));
    return min(firstTrailingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(40012u, global2.x, 117139u, u_input.b), vec4<u32>(u_input.d, u_input.b, global2.x, u_input.d), vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.d)), (vec4<u32>(0u, 4294967295u, global3.a, 1u) & vec4<u32>(51913u, 9403u, 37386u, 44154u)) << (firstTrailingBit(vec4<u32>(4663u, global2.x, global3.a, u_input.d)) % vec4<u32>(32u)))), firstLeadingBit(vec4<u32>(~reverseBits(30480u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global3.b.x, global3.b.x, global2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, 1u, global3.b.x, global2.x), vec4<u32>(global3.a, global3.b.x, u_input.d, 41437u))), min(global2.x >> (u_input.b % 32u), 33012u), reverseBits(global2.x) | 4294967295u)));
}

fn func_2(arg_0: u32) -> i32 {
    global2 = func_3();
    var var_0 = u_input.a << (33866u % 32u);
    global2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(121287u, u_input.b, 4294967295u, 2054u)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global2.x, u_input.d, 1u), vec4<u32>(u_input.b, arg_0, arg_0, 55370u)), reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global3.b.x, 17458u, global3.a), vec4<u32>(4294967295u, global3.b.x, u_input.b, 17205u)))), abs(min(abs(u_input.b), ~8643u) >> (~(~0u) % 32u)), ~(~global2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(global2.x), 37305u), vec2<u32>(~arg_0, _wgslsmith_add_u32(arg_0, u_input.b) >> (~arg_0 % 32u))));
    var var_1 = global0[_wgslsmith_index_u32(~(~(~global2.x)), 17u)];
    var var_2 = select(select(vec4<bool>(!var_1.a.c, true, true, var_1.a.b), !(!select(vec4<bool>(var_1.a.c, var_1.d.c, false, true), vec4<bool>(false, var_1.a.b, var_1.a.c, true), vec4<bool>(false, var_1.d.b, true, var_1.d.c))), select(!(!vec4<bool>(false, var_1.a.c, var_1.d.c, true)), !select(vec4<bool>(false, true, var_1.a.c, false), vec4<bool>(var_1.d.b, false, false, var_1.a.c), vec4<bool>(var_1.a.b, false, var_1.a.b, false)), vec4<bool>(all(vec2<bool>(var_1.a.c, false)), true, var_1.d.b, var_1.a.c))), select(select(vec4<bool>(true, any(vec2<bool>(var_1.a.c, false)), var_1.a.b, select(var_1.d.b, var_1.d.c, var_1.a.c)), vec4<bool>(!var_1.a.b, true, var_1.d.a != 29965u, !var_1.a.b), !select(vec4<bool>(var_1.a.b, false, false, var_1.d.c), vec4<bool>(true, true, var_1.a.c, false), vec4<bool>(false, false, var_1.a.b, var_1.a.b))), select(select(!vec4<bool>(true, var_1.d.c, var_1.a.b, true), select(vec4<bool>(var_1.d.c, var_1.d.c, false, true), vec4<bool>(var_1.d.b, true, true, var_1.a.c), vec4<bool>(var_1.a.b, var_1.d.c, var_1.d.c, true)), vec4<bool>(true, false, true, false)), vec4<bool>(true, u_input.a != 2147483647i, var_1.a.b, var_1.d.c), true), true), select(select(!vec4<bool>(var_1.d.c, true, var_1.a.c, var_1.d.b), select(select(vec4<bool>(false, var_1.d.b, var_1.a.b, true), vec4<bool>(var_1.d.b, false, var_1.d.b, true), vec4<bool>(false, var_1.d.c, true, false)), select(vec4<bool>(var_1.d.b, var_1.a.b, false, var_1.a.c), vec4<bool>(var_1.d.b, false, var_1.a.c, true), vec4<bool>(true, false, true, false)), !vec4<bool>(var_1.a.b, var_1.a.c, var_1.a.b, var_1.d.b)), !(!var_1.d.c)), select(select(select(vec4<bool>(true, true, false, var_1.a.b), vec4<bool>(var_1.d.b, var_1.d.b, var_1.a.b, var_1.a.c), vec4<bool>(false, true, var_1.d.c, var_1.d.b)), vec4<bool>(false, true, false, false), vec4<bool>(var_1.a.c, var_1.d.c, true, true)), vec4<bool>(true, var_1.d.b, var_1.a.c, true), vec4<bool>(false, var_1.d.b, all(vec4<bool>(false, var_1.a.c, var_1.a.c, var_1.d.b)), false)), false));
    return _wgslsmith_mult_i32(-var_1.b.x, firstLeadingBit(31398i));
}

fn func_1() -> vec4<bool> {
    var var_0 = max(u_input.a, -u_input.c);
    var var_1 = global3.b.x;
    var var_2 = ~vec2<i32>(func_2(reverseBits(u_input.d)), i32(-1i) * -_wgslsmith_sub_i32(10992i, 8875i));
    global3 = Struct_3(~func_3().x, global2.zw);
    let var_3 = vec4<bool>(all(select(vec4<bool>(var_2.x > u_input.a, true, true, all(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))), !select(global4.x >= _wgslsmith_f_op_f32(f32(-1f) * -999f), ~global2.x >= _wgslsmith_dot_vec3_u32(global2.wzx, vec3<u32>(4294967295u, 0u, 5153u)), false), !(global3.b.x <= 7143u) & all(vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), false)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(global4.x != global1[_wgslsmith_index_u32(global2.x, 19u)], true, true), true)));
    return select(var_3, vec4<bool>(true, u_input.b > max(1u, global2.x), true, var_3.x), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = arg_3.a.zww;
    var var_1 = vec4<u32>(1u, 4294967295u, 1u, ~(~global3.b.x));
    var var_2 = !arg_1.yxx;
    global4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(11198u, 19u)], -1030f)), -111f) + _wgslsmith_f_op_f32(f32(-1f) * -1416f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f))))), -1649f, var_0.x);
    var var_3 = any(!select(arg_1, !vec4<bool>(arg_1.x, true, arg_1.x, false), true));
    return -(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_3.b), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_3.d.d.b.x, arg_3.d.d.b.x), var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = func_4(Struct_3(23944u, vec2<u32>(~u_input.d, ~_wgslsmith_mult_u32(0u, 22247u))), !select(!func_1(), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))), any(vec4<bool>(false, false, true, true)), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1344f, global4.x, global1[_wgslsmith_index_u32(global3.a, 19u)], global4.x), vec4<f32>(809f, 279f, global1[_wgslsmith_index_u32(global3.a, 19u)], 1048f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global3.b.x, 19u)], global4.x, global1[_wgslsmith_index_u32(42355u, 19u)], global1[_wgslsmith_index_u32(51923u, 19u)])) + vec4<f32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(global2.x, 19u)], 2069f, global4.x))), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, -2147483647i), 1i, -10003i)), _wgslsmith_f_op_vec2_f32(-global4.xy), Struct_4(Struct_1(global3.a, all(vec4<bool>(true, true, false, false)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 19u)], -2617f, -1706f, -1758f) - vec4<f32>(global4.x, -1073f, -1000f, -1411f))), Struct_3(53758u, func_3().xz), Struct_1(52497u, global3.a != 17084u, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 453f, -245f, 1000f) * vec4<f32>(379f, global4.x, 1000f, global1[_wgslsmith_index_u32(global3.b.x, 19u)]))), global0[_wgslsmith_index_u32(~(~73825u), 17u)])));
    let var_2 = Struct_4(Struct_1(~u_input.b, true && any(vec2<bool>(true, true)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(global3.a, 19u)], -107f, -724f, 1214f), vec4<f32>(global1[_wgslsmith_index_u32(global3.a, 19u)], 1000f, -1236f, global4.x), vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(341f, 1000f, 939f, global1[_wgslsmith_index_u32(u_input.d, 19u)]))))), Struct_3(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, global3.b.x)) | (select(4294967295u, 4294967295u, false) >> (u_input.b % 32u)), ~vec2<u32>(_wgslsmith_clamp_u32(0u, global2.x, 0u), _wgslsmith_mod_u32(global2.x, 9469u))), Struct_1(~global2.x << (~reverseBits(4294967295u) % 32u), true, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(5376u, 19u)], -396f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-393f, global1[_wgslsmith_index_u32(1u, 19u)], 609f, 857f))))))), global0[_wgslsmith_index_u32(~global2.x ^ ~(u_input.b << (~1u % 32u)), 17u)]);
    global0 = array<Struct_2, 17>();
    global1 = array<f32, 19>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(472f, var_2.d.d.d.x)) - -1359f), -139f, var_2.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.x, global1[_wgslsmith_index_u32(global2.x, 19u)]), var_3.xy, false)))));
}

