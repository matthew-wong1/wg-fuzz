struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -10279i;

var<private> global1: array<Struct_1, 4>;

var<private> global2: vec3<f32> = vec3<f32>(-484f, 1322f, -691f);

var<private> global3: i32 = 2147483647i;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(27173u, -1261f, true, vec4<f32>(1000f, -456f, 824f, 343f)), Struct_1(4294967295u, 1238f, true, vec4<f32>(-450f, -335f, 326f, -270f)), Struct_1(23536u, -844f, false, vec4<f32>(-1075f, 218f, -716f, -619f)), Struct_1(2600u, -133f, false, vec4<f32>(-1290f, 1042f, 849f, -477f)), Struct_1(0u, -946f, false, vec4<f32>(1270f, 2397f, -1000f, -473f)), Struct_1(47901u, -731f, false, vec4<f32>(-454f, 378f, -853f, -1000f)), Struct_1(0u, 904f, false, vec4<f32>(958f, 1000f, -282f, 457f)), Struct_1(120783u, 662f, false, vec4<f32>(745f, 562f, 587f, -351f)), Struct_1(1964u, 680f, false, vec4<f32>(1187f, -388f, -542f, -129f)), Struct_1(24078u, 1000f, true, vec4<f32>(-789f, 3289f, 898f, 159f)), Struct_1(1u, -1960f, true, vec4<f32>(-523f, -345f, 1147f, 730f)), Struct_1(0u, -826f, true, vec4<f32>(949f, 1535f, 304f, 1976f)), Struct_1(1u, -1000f, true, vec4<f32>(-1441f, -1000f, -934f, 541f)), Struct_1(4294967295u, 576f, false, vec4<f32>(358f, -671f, -952f, 275f)), Struct_1(0u, -924f, false, vec4<f32>(-907f, -764f, -1177f, 189f)), Struct_1(1u, -382f, false, vec4<f32>(-1314f, 1234f, 812f, 504f)), Struct_1(52643u, -422f, true, vec4<f32>(-145f, 1503f, -504f, -826f)), Struct_1(0u, 1622f, true, vec4<f32>(-208f, 374f, 1000f, 484f)), Struct_1(0u, -433f, false, vec4<f32>(-1026f, -613f, 1456f, -696f)), Struct_1(97872u, 1717f, true, vec4<f32>(1852f, 121f, -1000f, -1730f)), Struct_1(36273u, -545f, true, vec4<f32>(-488f, 1012f, -343f, -1327f)), Struct_1(34327u, -756f, false, vec4<f32>(1511f, 1453f, -315f, -398f)), Struct_1(4294967295u, 208f, false, vec4<f32>(-432f, -2132f, -108f, -879f)), Struct_1(47756u, -1493f, true, vec4<f32>(-123f, 202f, 179f, -704f)), Struct_1(1u, 913f, false, vec4<f32>(846f, -1068f, 504f, -1000f)), Struct_1(39616u, 800f, true, vec4<f32>(1385f, -2154f, 307f, -2243f)), Struct_1(40750u, -1403f, false, vec4<f32>(813f, 494f, 655f, -1785f)), Struct_1(4294967295u, -1000f, false, vec4<f32>(1949f, 1000f, -1370f, 261f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    let var_0 = arg_0.c;
    let var_1 = !arg_0.c;
    let var_2 = Struct_2(arg_1.x, global1[_wgslsmith_index_u32(~arg_1.x, 4u)], vec3<i32>(36376i, reverseBits(0i), i32(-1i) * -1i));
    global3 = 0i;
    global0 = -1190i;
    return _wgslsmith_mod_i32(var_2.c.x, countOneBits(-10252i));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global4 = array<Struct_1, 28>();
    let var_0 = arg_0;
    global1 = array<Struct_1, 4>();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)), _wgslsmith_f_op_f32(global2.x - 258f));
    var var_1 = _wgslsmith_mult_vec4_i32(-max(~vec4<i32>(-17854i, arg_0.x, 1i, arg_0.x), vec4<i32>(30533i, i32(-1i) * -1i, func_3(Struct_1(59943u, global2.x, true, vec4<f32>(-1000f, -386f, 1104f, 1464f)), vec2<u32>(32273u, 4294967295u), 439f, u_input.c.zy), -15613i)), abs(firstTrailingBit(countOneBits(firstTrailingBit(vec4<i32>(58778i, var_0.x, -18084i, 2147483647i))))));
    return -var_0.x;
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = max(~u_input.c, ~arg_0);
    let var_1 = 1f;
    let var_2 = _wgslsmith_f_op_f32(-global2.x);
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~func_2(-vec2<i32>(-2147483647i, 31503i)), 24878i), select(-reverseBits(firstLeadingBit(vec2<i32>(1i, 0i))), ((vec2<i32>(-2147483647i, -1i) << (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))) << (countOneBits(u_input.c.zx) % vec2<u32>(32u))) >> (select(u_input.c.zy, var_0.xy, vec2<bool>(true, true)) % vec2<u32>(32u)), all(vec2<bool>(true, true)) & false), vec2<i32>(-1i, func_2(vec2<i32>(1i, 1i))));
    return vec3<i32>(var_3.x, 11766i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(32524i, -31206i, -7023i, 2147483647i), vec4<i32>(var_3.x, 2147483647i, var_3.x, -11891i)))) << (~vec3<u32>(u_input.c.x, _wgslsmith_add_u32(1u, arg_0.x) | _wgslsmith_mult_u32(u_input.a, var_0.x), u_input.a & ~4294967295u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_mult_vec3_i32(-reverseBits(min(vec3<i32>(10997i, -58545i, 0i), vec3<i32>(-1i, 0i, -2147483647i)) | func_1(u_input.c)), func_1(~vec4<u32>(~4294967295u, 7572u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 428u, u_input.b), vec3<u32>(u_input.b, 74484u, u_input.b)), u_input.c.x & 1u)));
    global4 = array<Struct_1, 28>();
    var var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u) << ((u_input.c.zy | u_input.c.wx) % vec2<u32>(32u)), u_input.c.wz), global1[_wgslsmith_index_u32(~(~11230u), 4u)], var_1);
    var var_3 = _wgslsmith_clamp_i32(~firstTrailingBit(-1i), -var_1.x, i32(-1i) * -2147483647i);
    let var_4 = Struct_1(38722u, 2556f, !var_2.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(244f, 176f, var_2.b.c)), 554f, var_2.b.b, _wgslsmith_f_op_f32(-1774f + 357f))))));
    let var_5 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.c.wzw), u_input.c.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_1.zy, var_2.c.yx), -var_1.yx)), vec4<u32>(4294967295u, var_2.b.a, _wgslsmith_add_u32(countOneBits(max(4294967295u, 0u)), ~4294967295u), var_4.a), var_1.x);
}

