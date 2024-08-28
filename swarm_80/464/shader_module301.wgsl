struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1811f, -164f, 848f, -531f), Struct_1(4294967295u, vec3<bool>(true, true, true), -1188f), Struct_1(17105u, vec3<bool>(true, true, true), 627f), Struct_1(74951u, vec3<bool>(true, true, true), 1060f), 0u);

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-1085f, -326f, -420f, -507f), vec4<f32>(-779f, -470f, 220f, 774f), vec4<f32>(720f, -1086f, 362f, -400f), vec4<f32>(-860f, 1056f, -1673f, -1697f), vec4<f32>(-104f, 2075f, 587f, 1815f), vec4<f32>(-2166f, -2136f, -1606f, 621f), vec4<f32>(181f, -1000f, 148f, -813f), vec4<f32>(-1000f, 541f, 1000f, -623f), vec4<f32>(-386f, -1000f, -1534f, -1938f), vec4<f32>(437f, -142f, 280f, -1000f), vec4<f32>(-1055f, 1143f, -1094f, 1938f), vec4<f32>(186f, -212f, 1000f, 651f), vec4<f32>(-170f, 1504f, -387f, 534f), vec4<f32>(-481f, 1149f, 826f, -832f), vec4<f32>(726f, 1000f, 1038f, 1218f));

var<private> global4: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 16619i, -6072i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    let var_0 = abs(select(reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(756u, global1.e, arg_0.x), vec3<u32>(arg_1.c, 35767u, arg_0.x))), abs(~(~vec3<u32>(35649u, 4294967295u, 35546u))), vec3<bool>(true, arg_1.b.d.b.x && true, all(arg_1.b.c.b.zz))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.a.wzy));
    var var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, ~(-u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, global4.x, global4.x), vec4<i32>(16830i, global4.x, u_input.a.x, global4.x) | u_input.a), 2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(u_input.a.x, u_input.a.x, global4.x, global4.x), vec4<i32>(2147483647i, 0i, u_input.a.x, 67540i)), vec4<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(-69286i, global4.x), -global4.x)), -60691i ^ global4.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global4.x, global4.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, global4.x), i32(-1i) * -6348i)), -29736i));
    var_2 = abs(firstTrailingBit(~0i));
    let var_3 = all(vec2<bool>(any(!vec2<bool>(global1.c.b.x, global1.c.b.x)) & !all(vec3<bool>(arg_1.a.b.x, true, arg_1.a.b.x)), _wgslsmith_f_op_f32(-arg_1.b.a.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1523f))));
    return ~vec2<u32>(_wgslsmith_div_u32(~0u, _wgslsmith_mod_u32(firstLeadingBit(arg_1.b.d.a), 1u)), _wgslsmith_div_u32(abs(abs(arg_1.c)), arg_0.x));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_3((arg_1.xx >> (_wgslsmith_sub_vec2_u32(arg_1.wx, arg_1.yx) % vec2<u32>(32u))) >> (abs(arg_1.xz) % vec2<u32>(32u)), Struct_4(Struct_1(25320u >> (1u % 32u), arg_2.c.b, 1521f), arg_2.a, firstTrailingBit(0u | global1.b.a)), arg_2.b.c) | vec2<u32>(7433u, _wgslsmith_add_u32(arg_2.b.a, _wgslsmith_mult_u32(arg_0.a.a ^ 38551u, arg_2.a.d.a)));
    global3 = array<vec4<f32>, 15>();
    let var_1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c + 1392f)), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.x * -1111f) + _wgslsmith_f_op_f32(-549f - -319f))), Struct_1(~(~global1.b.a), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c - 705f))), global1.d, arg_2.c, _wgslsmith_div_u32(arg_0.a.a, arg_1.x)), global1.d, arg_2.a.b);
    var var_2 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(~global4.x, global4.x, i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, i32(-1i) * -61839i) & countOneBits(-u_input.a.x)));
    global0 = array<Struct_4, 6>();
    return Struct_2(vec4<f32>(arg_2.b.c, -950f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1284f + -429f), 829f)), -1425f), global1.d, arg_0.a, Struct_1(_wgslsmith_mod_u32(arg_0.b.b.a, ~(arg_2.a.d.a | var_0.x)), select(vec3<bool>(all(vec2<bool>(true, false)), arg_0.b.d.b.x, true), arg_0.a.b, true), _wgslsmith_f_op_f32(-arg_0.a.c)), 64648u);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    global1 = func_2(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(28621u, 0u), vec2<u32>(0u, 1u)) ^ ~global1.e, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.a, 35345u, arg_0.a.b.a), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.a, 1u, arg_0.c.a), vec3<u32>(0u, arg_0.b.a, 53750u))) << (~global1.d.a % 32u)), 6u)], _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(~77772u, global1.d.a, arg_0.a.c.a ^ global1.e, ~98998u)), ~vec4<u32>(~arg_0.c.a, global1.e, global1.e ^ 13196u, global1.e)), arg_0);
    var var_0 = arg_0;
    let var_1 = 33072u;
    var var_2 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(4294967295u << (arg_0.b.a % 32u)), var_1), 6u)], vec4<u32>(var_1, 1u, var_1, arg_0.a.d.a), Struct_3(func_2(Struct_4(Struct_1(global1.d.a, arg_0.b.b, -140f), var_0.a, _wgslsmith_clamp_u32(var_0.b.a, 25444u, 1u)), max(~vec4<u32>(var_0.b.a, var_1, 1u, 34643u), ~vec4<u32>(48300u, 0u, 30037u, var_1)), Struct_3(arg_0.a, global1.d, Struct_1(arg_0.a.b.a, vec3<bool>(false, true, var_0.c.b.x), global1.d.c))), func_2(Struct_4(global1.d, var_0.a, countOneBits(arg_0.a.d.a)), vec4<u32>(var_1, global1.d.a, 100307u, select(742u, 0u, var_0.b.b.x)), Struct_3(Struct_2(vec4<f32>(770f, global1.d.c, arg_0.a.d.c, -1374f), global1.c, global1.d, arg_0.a.c, global1.d.a), func_2(Struct_4(var_0.c, arg_0.a, var_1), vec4<u32>(arg_0.b.a, 1u, var_0.c.a, arg_0.a.e), arg_0).c, global1.d)).d, func_2(Struct_4(func_2(global0[_wgslsmith_index_u32(0u, 6u)], vec4<u32>(1u, arg_0.a.c.a, var_0.b.a, 0u), Struct_3(var_0.a, var_0.b, Struct_1(3813u, vec3<bool>(arg_0.c.b.x, arg_1.x, arg_0.b.b.x), 1735f))).d, arg_0.a, func_2(Struct_4(Struct_1(4294967295u, vec3<bool>(var_0.b.b.x, var_0.b.b.x, false), var_0.a.a.x), Struct_2(arg_0.a.a, var_0.a.c, Struct_1(38063u, global1.c.b, arg_0.a.a.x), Struct_1(var_1, arg_0.b.b, arg_0.a.d.c), 46267u), var_0.c.a), vec4<u32>(global1.d.a, global1.c.a, arg_0.a.b.a, var_1), Struct_3(Struct_2(arg_0.a.a, var_0.c, Struct_1(28813u, vec3<bool>(arg_0.a.c.b.x, true, true), arg_0.a.c.c), arg_0.b, 0u), global1.d, Struct_1(3725u, var_0.a.c.b, 652f))).b.a), ~_wgslsmith_div_vec4_u32(vec4<u32>(31794u, global1.b.a, global1.c.a, var_1), vec4<u32>(var_1, 1u, 61289u, 1u)), Struct_3(var_0.a, Struct_1(var_1, global1.c.b, arg_0.a.a.x), func_2(global0[_wgslsmith_index_u32(global1.d.a, 6u)], vec4<u32>(var_0.b.a, 4294967295u, 99986u, var_0.b.a), Struct_3(Struct_2(global1.a, arg_0.b, Struct_1(1u, arg_1, -1000f), Struct_1(1u, global1.c.b, var_0.c.c), 4294967295u), global1.d, global1.b)).c)).c)).d;
    var var_3 = Struct_3(func_2(Struct_4(Struct_1(var_2.a, vec3<bool>(var_2.b.x, arg_1.x, true), _wgslsmith_f_op_f32(f32(-1f) * -2039f)), Struct_2(vec4<f32>(-740f, arg_0.c.c, 207f, -492f), Struct_1(var_0.a.e, vec3<bool>(var_0.c.b.x, var_2.b.x, var_0.b.b.x), 1000f), func_2(global0[_wgslsmith_index_u32(var_0.a.d.a, 6u)], vec4<u32>(48869u, 4294967295u, var_0.c.a, 7993u), Struct_3(var_0.a, Struct_1(25187u, var_0.a.c.b, var_0.a.b.c), global1.d)).b, Struct_1(var_0.a.e, global1.d.b, arg_0.a.b.c), select(arg_0.c.a, 76070u, var_0.c.b.x)), 4294967295u), ~(~vec4<u32>(1u, 39594u, 4294967295u, 4294967295u)), arg_0), func_2(global0[_wgslsmith_index_u32(global1.c.a, 6u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.a, var_0.a.d.a, arg_0.b.a, 15328u), vec4<u32>(1u, 3423u, global1.b.a, var_0.c.a)) & vec4<u32>(4294967295u, var_1 ^ 61648u, reverseBits(var_2.a), firstTrailingBit(global1.d.a)), Struct_3(func_2(global0[_wgslsmith_index_u32(var_2.a << (40035u % 32u), 6u)], _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 1u, global1.c.a, var_1), vec4<u32>(1u, arg_0.a.c.a, 34213u, 7391u)), arg_0), func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(28017u, var_0.b.a), 6u)], vec4<u32>(global1.e, var_2.a, 64317u, 4294967295u) ^ vec4<u32>(var_2.a, 1u, 1u, var_2.a), arg_0).b, Struct_1(4294967295u, vec3<bool>(arg_1.x, false, true), _wgslsmith_f_op_f32(-global1.b.c)))).b, Struct_1(_wgslsmith_mod_u32(~min(32553u, 56470u), var_2.a), !select(func_2(Struct_4(Struct_1(var_1, arg_1, -524f), var_0.a, 44532u), vec4<u32>(0u, global1.b.a, 4294967295u, var_2.a), arg_0).b.b, !vec3<bool>(true, global1.c.b.x, arg_0.a.d.b.x), false), _wgslsmith_f_op_f32(global1.b.c * var_0.b.c)));
    return 197f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = -67988i;
    global1 = Struct_2(vec4<f32>(global1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.c + -845f), _wgslsmith_f_op_f32(ceil(-289f)))), _wgslsmith_f_op_f32(func_4(Struct_3(func_2(Struct_4(global1.c, Struct_2(vec4<f32>(-1316f, -545f, -682f, global1.c.c), global1.b, Struct_1(global1.e, vec3<bool>(true, global1.b.b.x, global1.b.b.x), global1.d.c), global1.b, 0u), 0u), vec4<u32>(1887u, 69897u, 42398u, 1u), Struct_3(Struct_2(vec4<f32>(-144f, global1.b.c, global1.a.x, 1072f), global1.c, global1.c, Struct_1(41041u, global1.b.b, global1.c.c), 55272u), Struct_1(global1.b.a, global1.b.b, global1.c.c), global1.b)), func_2(global0[_wgslsmith_index_u32(global1.d.a, 6u)], vec4<u32>(global1.b.a, global1.d.a, 1u, 4294967295u), Struct_3(Struct_2(vec4<f32>(global1.b.c, global1.b.c, global1.a.x, 1095f), Struct_1(1u, global1.b.b, global1.c.c), Struct_1(arg_0, vec3<bool>(false, false, true), -1565f), Struct_1(arg_0, global1.d.b, -1246f), arg_0), Struct_1(global1.d.a, global1.b.b, -514f), global1.c)).b, global1.d), global1.d.b)), _wgslsmith_f_op_f32(sign(-986f))), global1.d, Struct_1(global1.d.a, !global1.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(-global1.b.c))))), func_2(Struct_4(global1.d, Struct_2(vec4<f32>(2878f, global1.b.c, global1.b.c, global1.c.c), Struct_1(299u, global1.c.b, global1.c.c), global1.b, Struct_1(global1.d.a, vec3<bool>(global1.b.b.x, true, global1.b.b.x), -1000f), 18732u), global1.e), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.b.a, 55765u, 4294967295u, arg_0), vec4<u32>(0u, global1.d.a, arg_0, arg_0) ^ vec4<u32>(32067u, 71046u, 19064u, 1u)), ~(vec4<u32>(0u, global1.c.a, 4294967295u, 1u) & vec4<u32>(arg_0, 96381u, 28445u, arg_0)), !(global1.d.b.x | false)), Struct_3(func_2(global0[_wgslsmith_index_u32(~25462u, 6u)], abs(vec4<u32>(global1.e, 0u, arg_0, arg_0)), Struct_3(Struct_2(global1.a, Struct_1(arg_0, global1.b.b, -1181f), global1.c, global1.c, 4294967295u), global1.c, Struct_1(10705u, global1.d.b, 1584f))), Struct_1(global1.e, select(vec3<bool>(false, global1.d.b.x, global1.d.b.x), vec3<bool>(global1.d.b.x, global1.d.b.x, global1.d.b.x), global1.c.b), _wgslsmith_f_op_f32(global1.a.x + global1.c.c)), global1.c)).c, 6104u);
    let var_1 = vec2<bool>(all(vec4<bool>(!all(global1.c.b.xx), select(true, true, any(global1.c.b.yy)), !(!global1.b.b.x), ~9422u == ~global1.e)), any(!global1.b.b.xx));
    let var_2 = vec4<bool>(false, any(global1.d.b) | (~func_2(global0[_wgslsmith_index_u32(0u, 6u)], vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), Struct_3(Struct_2(vec4<f32>(835f, 290f, -444f, global1.d.c), Struct_1(1u, vec3<bool>(var_1.x, true, var_1.x), 2445f), global1.b, global1.c, 1u), Struct_1(arg_0, global1.d.b, global1.a.x), Struct_1(global1.e, vec3<bool>(false, false, true), 2058f))).d.a < ~3703u), !(_wgslsmith_mod_u32(~4294967295u, global1.e) < global1.e), any(vec3<bool>(all(vec4<bool>(global1.c.b.x, false, var_1.x, true)), _wgslsmith_f_op_f32(trunc(global1.b.c)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.b.x)));
    global4 = vec4<i32>(_wgslsmith_div_i32(global4.x, -1i), -u_input.a.x, var_0, _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), u_input.a));
    return func_2(Struct_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4285u, _wgslsmith_add_u32(0u, 35250u)), 6u)], firstTrailingBit(firstTrailingBit(vec4<u32>(65756u, 1u, 1u, 6771u))), Struct_3(Struct_2(global3[_wgslsmith_index_u32(1u, 15u)], global1.b, global1.c, global1.b, arg_0), global1.b, func_2(Struct_4(global1.d, Struct_2(vec4<f32>(global1.a.x, 1422f, global1.d.c, global1.d.c), Struct_1(33674u, vec3<bool>(var_2.x, var_2.x, var_2.x), global1.c.c), global1.c, Struct_1(global1.c.a, var_2.xxx, -1391f), arg_0), global1.b.a), vec4<u32>(893u, arg_0, global1.b.a, arg_0), Struct_3(Struct_2(vec4<f32>(-373f, global1.a.x, -993f, global1.a.x), Struct_1(global1.d.a, global1.c.b, global1.a.x), global1.c, Struct_1(arg_0, global1.b.b, global1.a.x), global1.b.a), Struct_1(35654u, global1.d.b, global1.b.c), global1.d)).d)).c, Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(4294967295u, 15u)]))), global1.d, func_2(Struct_4(global1.c, Struct_2(vec4<f32>(1379f, 190f, 141f, global1.a.x), global1.b, global1.d, global1.d, 20676u), global1.b.a), ~vec4<u32>(global1.e, 16798u, 4294967295u, 0u), Struct_3(Struct_2(global1.a, Struct_1(arg_0, var_2.wwy, global1.c.c), Struct_1(13324u, var_2.xzw, global1.d.c), Struct_1(38198u, global1.c.b, -980f), global1.e), global1.d, global1.c)).b, Struct_1(~11892u, vec3<bool>(true, var_1.x, true), _wgslsmith_f_op_f32(944f * global1.c.c)), ~(global1.c.a >> (38851u % 32u))), 0u), vec4<u32>(92959u, _wgslsmith_mult_u32(18890u, _wgslsmith_mult_u32(arg_0, ~43956u)), arg_0, countOneBits(global1.c.a)), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(349f, global1.a.x, 698f, global1.a.x)), Struct_1(arg_0, !global1.c.b, _wgslsmith_f_op_f32(1000f * -1101f)), global1.b, Struct_1(~global1.e, global1.b.b, _wgslsmith_f_op_f32(abs(global1.c.c))), ~(arg_0 | 5127u)), global1.d, func_2(global0[_wgslsmith_index_u32(arg_0 | arg_0, 6u)], _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global1.d.a, 14401u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.a, global1.e, global1.b.a, 20042u), vec4<u32>(global1.d.a, 1u, global1.e, arg_0), vec4<u32>(1602u, arg_0, 26863u, arg_0))), Struct_3(Struct_2(global1.a, Struct_1(global1.d.a, var_2.xyw, global1.b.c), Struct_1(global1.c.a, var_2.xyy, global1.b.c), Struct_1(arg_0, vec3<bool>(var_2.x, var_2.x, var_1.x), 833f), arg_0), Struct_1(0u, vec3<bool>(false, var_1.x, global1.b.b.x), -1000f), global1.d)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.wy;
    var var_1 = reverseBits(vec2<i32>(2147483647i, 1i));
    var var_2 = vec4<u32>(global1.c.a, ~_wgslsmith_mult_u32(112739u, global1.e), ~global1.d.a, 4294967295u);
    var_1 = abs(vec2<i32>(reverseBits(var_1.x), u_input.a.x));
    let var_3 = func_1(min(~12118u, ~(~global1.d.a)));
    let var_4 = !vec2<bool>(var_3.b.b.x, true | var_3.c.b.x);
    let var_5 = _wgslsmith_sub_i32(-24983i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(u_input.a.x, var_1.x)) << (~var_2.xz % vec2<u32>(32u)), global4.xw), firstTrailingBit(vec2<i32>(u_input.a.x, 0i) | vec2<i32>(var_5, -2147483647i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-27659i, 0i), reverseBits(global4.yw), global4.zz)), global4.zyy, _wgslsmith_dot_vec2_u32(~(~var_2.wx), var_2.ww), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(var_3.e, 15u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + -796f) - _wgslsmith_f_op_f32(abs(-846f))) - global1.d.c));
}

