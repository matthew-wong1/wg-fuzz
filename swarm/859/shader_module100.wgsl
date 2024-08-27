struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_4, 17>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec4<f32>(668f, 1160f, -212f, -206f)), Struct_3(vec4<f32>(-1016f, -737f, 218f, -833f)), Struct_3(vec4<f32>(-857f, 721f, -116f, -122f)), Struct_3(vec4<f32>(118f, -463f, 508f, 1027f)), Struct_3(vec4<f32>(-624f, -406f, 779f, 591f)), Struct_3(vec4<f32>(-316f, -394f, 672f, 2749f)), Struct_3(vec4<f32>(-1000f, -1558f, -1369f, -1177f)), Struct_3(vec4<f32>(899f, 790f, -215f, -887f)), Struct_3(vec4<f32>(1335f, 684f, 203f, -1381f)), Struct_3(vec4<f32>(988f, 602f, 670f, 930f)), Struct_3(vec4<f32>(-841f, -803f, 1000f, 653f)), Struct_3(vec4<f32>(-994f, 1000f, -2100f, -1361f)), Struct_3(vec4<f32>(2837f, 405f, -237f, 862f)), Struct_3(vec4<f32>(-1622f, 211f, 686f, -888f)), Struct_3(vec4<f32>(-155f, -1435f, 699f, 214f)), Struct_3(vec4<f32>(-1537f, -1095f, 352f, -1535f)), Struct_3(vec4<f32>(908f, -325f, -258f, -411f)), Struct_3(vec4<f32>(-400f, -861f, 1665f, -1070f)), Struct_3(vec4<f32>(131f, 942f, -900f, -510f)), Struct_3(vec4<f32>(388f, -553f, 404f, 276f)), Struct_3(vec4<f32>(-127f, -1000f, 1183f, -375f)), Struct_3(vec4<f32>(-809f, -125f, -1000f, 1190f)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)];
    global0 = array<i32, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1838f))), _wgslsmith_f_op_f32(-var_0.b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = (13377i < firstTrailingBit(_wgslsmith_mult_i32(arg_2.b.x, global0[_wgslsmith_index_u32(arg_2.e, 22u)]) & u_input.b)) != true;
    let var_1 = arg_0.x;
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(16050u), 17u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * 248f) + var_2.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1623f + arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(arg_1.a.x, arg_2.a.x, var_2.b, arg_2.a.x)), vec4<bool>(false, true, true, false))) + _wgslsmith_f_op_f32(round(280f))))));
    var_2 = Struct_4(abs(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(10699u, 22u)]) ^ arg_2.c) | abs(~_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.x, 54778i, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, var_3.x)) * _wgslsmith_f_op_f32(794f - -947f))) * 912f));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    let var_0 = 592f;
    global2 = array<Struct_3, 22>();
    var var_1 = vec3<u32>(abs(38513u), ~max(firstTrailingBit(0u), _wgslsmith_add_u32(select(4294967295u, 43452u, true), ~0u)), 4294967295u | ~func_2(vec2<u32>(4294967295u, 13033u), Struct_3(vec4<f32>(arg_0.b.x, 536f, arg_0.a, arg_0.a)), Struct_2(arg_0.b, vec3<i32>(arg_0.c, -1i, arg_0.c), u_input.a, 0u, 8132u)));
    let var_2 = max(vec2<u32>(reverseBits(var_1.x >> (4294967295u % 32u)), min(22528u, var_1.x)) | ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 113813u), vec2<u32>(14208u, var_1.x))), var_1.zx);
    global0 = array<i32, 22>();
    return vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -14237i, 0i, ~26025i, ~(-1i)), select(vec4<i32>(arg_1, -23957i, 9030i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_1, -1i), vec4<i32>(-77543i, arg_0.c, u_input.c.x, -38444i), vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 22u)], arg_1, global0[_wgslsmith_index_u32(0u, 22u)], arg_0.c)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(0i, -29479i, -50948i, global0[_wgslsmith_index_u32(var_2.x, 22u)]) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 32653u, var_2.x, var_1.x), vec4<u32>(var_2.x, 0u, var_2.x, 1u)) % vec4<u32>(32u))), ~(-vec4<i32>(arg_0.c, -75078i, arg_1, global0[_wgslsmith_index_u32(29256u, 22u)]))), 34484i >> (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -364f, -333f, -1258f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-154f, 262f, 1226f, 1349f) + vec4<f32>(-926f, 168f, -596f, -926f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1043f), 652f, -582f, -743f))), _wgslsmith_div_vec3_i32(abs(-u_input.a), vec3<i32>(~(~u_input.a.x), u_input.a.x, ~0i)), vec3<i32>(-87049i, global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(4294967295u, 0u)), 22u)], _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_mult_i32(u_input.c.x, -1i))) ^ _wgslsmith_add_vec3_i32(func_1(Struct_1(-941f, vec4<f32>(-2003f, -908f, -381f, -413f), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(24920u, 22u)], u_input.b), u_input.c)), vec3<i32>(5459i, u_input.b, -38009i) << (vec3<u32>(18649u, 4294967295u, 77254u) % vec3<u32>(32u))), ~(4294967295u >> (1u % 32u)), firstTrailingBit(1u) >> (min(~(~13055u), 4961u) % 32u));
    var var_1 = global2[_wgslsmith_index_u32(~(var_0.d << (firstLeadingBit(abs(countOneBits(var_0.d))) % 32u)), 22u)];
    global1 = array<Struct_4, 17>();
    var var_2 = 36829u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.a.zy), _wgslsmith_div_vec3_i32(max(var_0.c, max(max(u_input.c, u_input.c), ~vec3<i32>(global0[_wgslsmith_index_u32(var_0.e, 22u)], 1i, var_0.b.x))), ~min(firstTrailingBit(u_input.c), vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(var_0.d, 22u)]))), ~(~firstTrailingBit(vec3<u32>(0u, var_0.d, 29079u)) << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, var_0.e, 0u), vec3<u32>(var_0.d, var_0.e, var_0.e)), select(vec3<u32>(var_0.d, var_0.e, 0u), vec3<u32>(0u, 0u, var_0.d), false)) % vec3<u32>(32u))));
}

