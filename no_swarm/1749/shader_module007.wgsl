struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(1i, vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(false, false, false), vec4<u32>(4294967295u, 4294967295u, 0u, 45116u), vec4<f32>(386f, 322f, -639f, 426f)), Struct_2(-25689i, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 1u, 46860u), vec4<f32>(-836f, 1653f, -1000f, -1000f)), Struct_2(-32189i, vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(false, true, false), vec4<u32>(1u, 5039u, 9684u, 27328u), vec4<f32>(455f, -589f, -138f, -137f)), Struct_2(50130i, vec3<u32>(58831u, 4249u, 127157u), vec3<bool>(false, false, true), vec4<u32>(1u, 52783u, 24397u, 18822u), vec4<f32>(393f, 898f, 401f, -308f)), Struct_2(-27171i, vec3<u32>(37154u, 4294967295u, 5490u), vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 0u, 74055u), vec4<f32>(997f, -1241f, -911f, -1014f)), Struct_2(13378i, vec3<u32>(4294967295u, 71915u, 0u), vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 1u, 45359u), vec4<f32>(1000f, 2040f, 1019f, -1478f)), Struct_2(2147483647i, vec3<u32>(6113u, 20773u, 64830u), vec3<bool>(false, true, true), vec4<u32>(44622u, 32929u, 13516u, 9545u), vec4<f32>(-2217f, -1441f, 562f, -701f)), Struct_2(2147483647i, vec3<u32>(0u, 32618u, 28570u), vec3<bool>(false, false, true), vec4<u32>(6537u, 4294967295u, 41095u, 5958u), vec4<f32>(-827f, 759f, -1000f, 119f)), Struct_2(1i, vec3<u32>(27406u, 4294967295u, 2066u), vec3<bool>(true, true, true), vec4<u32>(68258u, 4294967295u, 0u, 25724u), vec4<f32>(-747f, -228f, 922f, -429f)));

var<private> global1: u32;

var<private> global2: array<i32, 24> = array<i32, 24>(21504i, 2147483647i, 2147483647i, 0i, 0i, 9665i, -27340i, -5529i, 3259i, 31420i, 2147483647i, 0i, 19406i, -1i, 33785i, -15365i, 1i, i32(-2147483648), 2147483647i, 2147483647i, 2960i, 2147483647i, -1i, -1i);

var<private> global3: array<f32, 26> = array<f32, 26>(1626f, -845f, 230f, -211f, 170f, -292f, 397f, -552f, -768f, -103f, -714f, -2291f, -463f, -389f, -882f, -596f, 1000f, -180f, -623f, 2367f, -832f, -201f, 174f, -188f, 1237f, 214f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    return -min(~(~(~vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 24u)], global2[_wgslsmith_index_u32(arg_0, 24u)]))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(43106u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<i32>(-63593i, 1i)) ^ reverseBits(vec2<i32>(-1i, 0i)), vec2<i32>(~global2[_wgslsmith_index_u32(u_input.b, 24u)], -2147483647i), ~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(1u, 24u)])));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, ~arg_3), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, global2[_wgslsmith_index_u32(0u, 24u)]) | vec2<i32>(1i, -1i), vec2<i32>(global2[_wgslsmith_index_u32(arg_1, 24u)], 30325i) & vec2<i32>(1i, -1i))) | ~_wgslsmith_add_vec2_i32(max(vec2<i32>(-7438i, arg_3), vec2<i32>(-12313i, -1i)), ~vec2<i32>(arg_3, -5802i)), abs(func_3(select(~1u, 49060u, true))));
    global1 = _wgslsmith_clamp_u32(3203u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.d.x, ~47863u), reverseBits(_wgslsmith_clamp_vec3_u32(u_input.a.yzy, u_input.a.yxy, vec3<u32>(4294967295u, u_input.d.x, 55640u)))), max(~_wgslsmith_div_u32(u_input.b, 1u), arg_0) | arg_1);
    global0 = array<Struct_2, 9>();
    let var_1 = Struct_3(Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_div_u32(select(~arg_0, u_input.a.x, false), ~(~1u)), 1u), global3[_wgslsmith_index_u32(~56988u, 26u)] >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1, 26u)] * 1441f) + -1301f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(358f - arg_2) * _wgslsmith_f_op_f32(arg_2 - global3[_wgslsmith_index_u32(u_input.d.x, 26u)]))), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_1, arg_0), vec3<u32>(u_input.a.x, arg_0, arg_0))) & vec3<u32>(~1u, ~4294967295u, arg_0 & 18848u), vec3<u32>(~1u, _wgslsmith_add_u32(abs(arg_1), 0u), 0u)), any(vec2<bool>(false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false)))), Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), ~_wgslsmith_mod_u32(1u, 89398u), ~1u));
    var_0 = select(vec2<i32>(~global2[_wgslsmith_index_u32(4294967295u, 24u)] << (max(arg_0, max(111518u, arg_1)) % 32u), var_0.x), max(vec2<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 24u)], 51375i), countOneBits(arg_3)) >> (u_input.a.ww % vec2<u32>(32u)), ~(~vec2<i32>(arg_3, 24412i) << (vec2<u32>(arg_0, 63971u) % vec2<u32>(32u)))), vec2<bool>(var_1.b != var_1.a.a.x, !var_1.d));
    return Struct_2(~_wgslsmith_sub_i32(-(var_0.x >> (var_1.c % 32u)), 1i), abs(vec3<u32>(~countOneBits(4294967295u), ~_wgslsmith_sub_u32(arg_1, var_1.e.c), max(100164u, var_1.a.b) >> (4294967295u % 32u))), !vec3<bool>(!(!var_1.a.a.x), ~2147483647i < firstLeadingBit(arg_3), !all(vec2<bool>(var_1.a.a.x, false))), (u_input.d << (~u_input.d % vec4<u32>(32u))) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1256f, arg_2, global3[_wgslsmith_index_u32(4294967295u, 26u)], arg_2), vec4<f32>(-1000f, -387f, -1000f, 1319f))), vec4<f32>(-540f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(67106u, 26u)]), _wgslsmith_f_op_f32(1417f - -103f), -324f)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = arg_1.c;
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    let var_1 = arg_1.e.zz;
    var var_2 = Struct_1(!(!arg_1.c.yz), arg_2, 31626u);
    return !func_2(arg_0.x, 44605u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))), 1736i).c;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<Struct_2, 9>();
    let var_0 = Struct_2(~(-1i), (_wgslsmith_sub_vec3_u32(u_input.a.xzz, vec3<u32>(arg_0.e.c, 14742u, 24057u)) >> (vec3<u32>(~arg_0.e.c, arg_0.c, select(u_input.b, arg_0.a.c, arg_1.x)) % vec3<u32>(32u))) << (u_input.a.yxy % vec3<u32>(32u)), select(select(select(vec3<bool>(arg_2.a.x, false, false), select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(arg_0.a.a.x, arg_0.d, arg_0.d), vec3<bool>(arg_2.a.x, arg_0.a.a.x, arg_1.x)), !vec3<bool>(arg_1.x, false, false)), select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, arg_2.a.x, true), !arg_1.x), arg_2.a.x), select(func_4(u_input.a, func_2(u_input.d.x, 1u, 1000f, global2[_wgslsmith_index_u32(0u, 24u)]), 0u), vec3<bool>(true, true, true), !(arg_0.e.a.x == false)), !vec3<bool>(func_4(vec4<u32>(40776u, u_input.c, arg_2.b, 21751u), Struct_2(8781i, u_input.d.yzz, vec3<bool>(true, arg_2.a.x, false), vec4<u32>(4294967295u, arg_2.b, 72593u, arg_2.c), vec4<f32>(-1000f, 382f, -1157f, global3[_wgslsmith_index_u32(arg_0.a.c, 26u)])), 47694u).x, true, any(vec4<bool>(arg_0.b, arg_1.x, arg_2.a.x, false)))), min(u_input.a, u_input.a), vec4<f32>(global3[_wgslsmith_index_u32(~38023u, 26u)], -1075f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f)))), 1949f));
    global0 = array<Struct_2, 9>();
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~(~(~(~160u))), 24u)], var_0.b, !func_4(_wgslsmith_add_vec4_u32(~u_input.a, abs(var_0.d)), Struct_2(i32(-1i) * -2147483647i, vec3<u32>(u_input.b, 59932u, 34475u) ^ var_0.b, vec3<bool>(true, true, true), u_input.d, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, global3[_wgslsmith_index_u32(0u, 26u)], -137f, -687f), vec4<f32>(-909f, 1210f, -149f, global3[_wgslsmith_index_u32(arg_2.c, 26u)]))), arg_2.b), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(71071u, 0u, 1u, 4294967295u) ^ abs(var_0.d), vec4<u32>(var_0.b.x, max(arg_2.b, 1u), u_input.a.x, u_input.d.x << (arg_0.c % 32u)), ~u_input.d & ~u_input.d), _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(u_input.a)), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), func_2(27116u, firstTrailingBit(1u), var_0.e.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(70137u, 24u)], 26744i) | -14537i).e.x, _wgslsmith_f_op_f32(f32(-1f) * -417f), 643f));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_1.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(arg_2.c, 24u)], 0i, 1318i), vec4<i32>(var_1.a, global2[_wgslsmith_index_u32(arg_2.b, 24u)], -17500i, var_0.a)), ~vec4<i32>(47497i, 2940i, 2147483647i, var_1.a)), var_1.a), 1i), func_3(~abs(_wgslsmith_add_u32(var_0.d.x, 1u))));
    return vec4<bool>(true, true, !arg_1.x, false);
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = ~u_input.d.yw;
    let var_1 = func_2(~abs(u_input.c), ~_wgslsmith_mult_u32(~arg_0.x, arg_0.x), -413f, func_2(~(~(~var_0.x)), func_2(1u, 1u, global3[_wgslsmith_index_u32(max(~arg_0.x, firstLeadingBit(u_input.a.x)), 26u)], _wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(arg_0.x, 24u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 24u)], -6844i))).b.x, global3[_wgslsmith_index_u32(var_0.x, 26u)], countOneBits(global2[_wgslsmith_index_u32(1u, 24u)])).a).c.x;
    var var_2 = Struct_1(vec2<bool>(arg_1, arg_2), max(_wgslsmith_clamp_u32(var_0.x, ~u_input.d.x, 4294967295u), _wgslsmith_add_u32(12071u, 23159u)), arg_0.x);
    var var_3 = -33678i;
    var var_4 = arg_0;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_0.x, 24u)], -16132i) ^ global2[_wgslsmith_index_u32(31793u, 24u)], _wgslsmith_clamp_i32(51513i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(13777u, 1u), 24u)], global2[_wgslsmith_index_u32(35821u, 24u)] | global2[_wgslsmith_index_u32(u_input.c, 24u)]), abs(global2[_wgslsmith_index_u32(~12765u, 24u)]), ~(~global2[_wgslsmith_index_u32(arg_0.x, 24u)])), vec4<i32>(-2147483647i, -global2[_wgslsmith_index_u32(var_4.x, 24u)] | -7835i, global2[_wgslsmith_index_u32(var_4.x, 24u)], ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))) & ~(-16905i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_5(select(vec3<u32>(1u, min(u_input.d.x, u_input.c), ~u_input.c), u_input.a.zwz, true && (global2[_wgslsmith_index_u32(4294967295u, 24u)] >= global2[_wgslsmith_index_u32(0u, 24u)])), true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), func_1(Struct_3(Struct_1(vec2<bool>(false, false), u_input.b, 1u), false, u_input.c, true, Struct_1(vec2<bool>(false, false), u_input.a.x, 213u)), vec2<bool>(false, false), Struct_1(vec2<bool>(true, true), 11675u, u_input.d.x))))), -1i, 50474i, abs(firstTrailingBit(global2[_wgslsmith_index_u32(51321u, 24u)]) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(0u, u_input.a.x)) % 32u)) | ~global2[_wgslsmith_index_u32(65725u, 24u)]);
    global0 = array<Struct_2, 9>();
    var var_1 = Struct_4(!all(func_1(Struct_3(Struct_1(vec2<bool>(true, false), 70809u, u_input.b), true, 0u, true, Struct_1(vec2<bool>(false, false), u_input.a.x, u_input.c)), vec2<bool>(false, false), Struct_1(vec2<bool>(true, false), 0u, u_input.d.x)).yz), 1i, Struct_3(Struct_1(func_1(Struct_3(Struct_1(vec2<bool>(false, false), 1u, 70591u), true, u_input.d.x, false, Struct_1(vec2<bool>(false, true), u_input.d.x, u_input.c)), vec2<bool>(false, true), Struct_1(vec2<bool>(false, true), 4294967295u, u_input.b)).ww, ~7452u, firstLeadingBit(1u)), true, 1u, any(!func_4(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 9u)], 0u)), Struct_1(func_4(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 7u, 46313u), vec4<u32>(12770u, u_input.d.x, 4294967295u, 18375u)), global0[_wgslsmith_index_u32(~4294967295u, 9u)], ~u_input.b).yy, _wgslsmith_mult_u32(19739u, _wgslsmith_mod_u32(u_input.d.x, 1u)), u_input.b)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(33185u, 26u)]))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(func_2(~u_input.a.x, var_1.c.a.b, 1000f, _wgslsmith_mod_i32(-8884i, global2[_wgslsmith_index_u32(4294967295u, 24u)])).e.x, global3[_wgslsmith_index_u32(u_input.b, 26u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_1.c.c, 26u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(max(-187f, global3[_wgslsmith_index_u32(1u, 26u)])))))));
    let var_3 = var_2.x;
    var_1 = Struct_4((true && var_1.a) | !var_1.c.d, var_0.x, var_1.c);
    global1 = var_1.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -569f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4803u, 26u)], 648f))))), vec2<i32>(-43932i & global2[_wgslsmith_index_u32(firstTrailingBit(~21159u), 24u)], (_wgslsmith_add_i32(var_1.b, 12966i) & global2[_wgslsmith_index_u32(~35615u, 24u)]) | ((var_0.x ^ 12264i) >> (~u_input.c % 32u))), ~func_2(~abs(0u), _wgslsmith_clamp_u32(u_input.d.x, ~4294967295u, ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1023f))), 1i).d.yx, vec3<i32>(var_0.x, 27837i, func_5(vec3<u32>(4294967295u, ~u_input.d.x, _wgslsmith_add_u32(u_input.a.x, 0u)), !var_1.c.a.a.x, !(u_input.b <= 1u))), var_0.ywy);
}

