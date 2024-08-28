struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(336f, 2179f, -259f), vec3<f32>(485f, -1097f, -883f), vec3<f32>(1779f, -1880f, 189f), vec3<f32>(1000f, -294f, -1204f), vec3<f32>(1478f, -852f, 459f), vec3<f32>(-292f, 460f, -972f), vec3<f32>(-223f, -738f, 954f), vec3<f32>(-1733f, 890f, 1164f), vec3<f32>(1203f, -919f, 283f), vec3<f32>(643f, -2027f, -167f), vec3<f32>(425f, -1177f, -286f), vec3<f32>(264f, -1532f, 1248f), vec3<f32>(1649f, 1476f, 999f), vec3<f32>(347f, 584f, 465f), vec3<f32>(-1315f, 1818f, 1394f), vec3<f32>(-750f, 1000f, -1197f), vec3<f32>(2541f, -584f, 964f), vec3<f32>(-1194f, 448f, -511f), vec3<f32>(-2099f, 554f, -333f), vec3<f32>(-1626f, 961f, -535f), vec3<f32>(-778f, -635f, 1329f), vec3<f32>(930f, -1254f, -1701f), vec3<f32>(-1000f, -327f, -1231f), vec3<f32>(907f, 684f, -1894f), vec3<f32>(-393f, -361f, 1000f), vec3<f32>(1558f, -314f, -772f), vec3<f32>(-523f, -875f, 428f), vec3<f32>(1521f, 195f, -1462f), vec3<f32>(-777f, -495f, 1243f));

var<private> global1: i32 = 39808i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> i32 {
    global1 = ~abs(u_input.a);
    global0 = array<vec3<f32>, 29>();
    let var_0 = _wgslsmith_add_u32(reverseBits(u_input.b), 1u);
    global1 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -17296i, u_input.a, 43619i), vec4<i32>(1i, 29105i, 47573i, u_input.a)), _wgslsmith_clamp_i32(u_input.a ^ u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, 73129i)), u_input.a), u_input.a);
    let var_1 = vec2<i32>(u_input.a, -(~(-u_input.a)));
    return 3295i;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_u32(~4294967295u, u_input.b);
    global0 = array<vec3<f32>, 29>();
    return ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(min(u_input.a, ~0i), func_2(true)), abs(~u_input.a) << (~1u % 32u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<i32> {
    let var_0 = Struct_1(max(vec2<i32>(1i ^ arg_2.a.x, firstTrailingBit(arg_2.a.x) << (_wgslsmith_add_u32(0u, arg_3.x) % 32u)), select(-reverseBits(vec2<i32>(u_input.a, -4586i)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-9779i, -2147483647i))), any(!arg_0.yy))), arg_2.b | reverseBits(countOneBits(vec3<u32>(arg_3.x, arg_3.x, arg_2.b.x))), abs(vec3<i32>(2147483647i, -2147483647i, (2321i & u_input.a) ^ -43287i)));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(-u_input.a, -2147483647i, var_0.c.x | -2147483647i, u_input.a), vec4<i32>(0i, 2147483647i, arg_2.a.x, arg_2.a.x) >> (abs(vec4<u32>(var_0.b.x, 55527u, 58916u, 4294967295u)) % vec4<u32>(32u))), select(vec4<i32>(13491i | u_input.a, 1i, _wgslsmith_sub_i32(arg_2.a.x, -34560i), _wgslsmith_div_i32(var_0.a.x, var_0.a.x)), vec4<i32>(66763i, 0i, 0i, _wgslsmith_mult_i32(u_input.a, -31539i)), !(756f != arg_1.x))), min(-(vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, var_0.c.x, 2147483647i, 2147483647i)), firstLeadingBit(-vec4<i32>(var_0.c.x, 2147483647i, 2147483647i, u_input.a)) << (max(arg_3, vec4<u32>(51321u, 1u, u_input.b, arg_2.b.x) << (vec4<u32>(4294967295u, 1u, u_input.b, 73339u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = vec2<bool>(all(vec2<bool>(any(arg_0.wx) || false, true)), true);
    var var_3 = -firstLeadingBit(vec2<i32>(~func_2(false), -var_0.c.x));
    var var_4 = Struct_2(Struct_1(arg_2.c.yz, arg_2.b, vec3<i32>(21029i, 0i, ~(-3930i))), firstLeadingBit(vec3<i32>(abs(u_input.a), u_input.a, -_wgslsmith_mult_i32(arg_2.c.x, var_3.x))), Struct_1(var_0.a, vec3<u32>(u_input.b, arg_2.b.x, _wgslsmith_add_u32(var_0.b.x, 34663u) ^ (arg_3.x & u_input.b)), reverseBits(~(vec3<i32>(-1i, var_3.x, var_3.x) >> (vec3<u32>(4294967295u, u_input.b, 49354u) % vec3<u32>(32u))))));
    return _wgslsmith_div_vec2_i32(vec2<i32>(~(~var_0.c.x), var_0.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(~12110i, -1i), -_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_4.b.x), vec2<i32>(var_0.c.x, var_3.x)))) & (arg_2.a ^ vec2<i32>(-u_input.a, firstTrailingBit(~arg_2.a.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_1(vec2<i32>(-12128i, -select(arg_2.x, _wgslsmith_sub_i32(2147483647i, arg_1.a), false)), ~select(abs(vec3<u32>(19548u, 0u, 30731u)), ~min(vec3<u32>(u_input.b, 18190u, u_input.b), vec3<u32>(2819u, 4294967295u, 0u)), !(!arg_3.x)), vec3<i32>(-1i) * -vec3<i32>(1i, arg_2.x, -1i));
    let var_1 = true;
    var var_2 = var_0.b.x << (1u % 32u);
    let var_3 = !(!vec3<bool>(!var_1, any(vec4<bool>(false, var_1, arg_3.x, true)), arg_3.x));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(-1i, u_input.a, arg_1.a)), vec3<i32>(var_0.c.x, 1i, -1i)), 0i, func_2(false), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1.a) & vec2<i32>(var_0.c.x, arg_0), -var_0.a)), vec4<i32>(func_2((4294967295u & var_0.b.x) <= 1u), -min(_wgslsmith_mod_i32(arg_0, arg_0), 18068i), ~(-firstTrailingBit(u_input.a)), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(var_0.a.x, arg_2.x, arg_2.x, -1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.a, 28356i, 1i), vec4<i32>(u_input.a, 19975i, 41893i, arg_0)), arg_2.x ^ -1i, arg_0, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = var_0;
    global0 = array<vec3<f32>, 29>();
    var var_1 = !(!select(vec3<bool>(false, true, false), vec3<bool>(any(vec3<bool>(true, false, false)), u_input.b == u_input.b, true), true));
    let var_2 = all(select(!(!(!var_1.zx)), var_1.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - 1224f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1180f)), _wgslsmith_f_op_f32(abs(-1692f)))));
    let var_3 = !var_2;
    var var_4 = 31720i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, ~0i, 0i & u_input.a), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-3520i, -2147483647i, -1i)), vec3<i32>(-28945i, 1i, u_input.a))), 10260i), ~_wgslsmith_mod_i32(func_4(-2147483647i, Struct_4(-2147483647i), func_3(vec4<bool>(var_1.x, false, var_2, true), global0[_wgslsmith_index_u32(u_input.b, 29u)], Struct_1(vec2<i32>(-5193i, var_0), vec3<u32>(u_input.b, 14627u, u_input.b), vec3<i32>(2147483647i, var_0, -2147483647i)), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), vec2<bool>(false, var_1.x)), u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(12495i, 1i, u_input.a, u_input.a))), ~vec4<i32>(u_input.a, -9840i, u_input.a, -17876i) & vec4<i32>(-65719i, -1i, -2147483647i, 1i)), (vec4<i32>(-1i) * -vec4<i32>(var_0, u_input.a, 11349i, -2147483647i)) << (select(abs(vec4<u32>(102471u, 4294967295u, u_input.b, u_input.b)), vec4<u32>(u_input.b, 38638u, u_input.b, u_input.b), !var_2) % vec4<u32>(32u))), ~select(1i, 1i, false));
}

