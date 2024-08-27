struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 61248i;

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-726f, -440f, -188f), vec3<f32>(-420f, 717f, -1940f), vec3<f32>(-195f, 663f, -1159f), vec3<f32>(-506f, -1000f, 182f), vec3<f32>(-694f, -1957f, -509f), vec3<f32>(736f, 1776f, 406f), vec3<f32>(248f, -248f, -1627f), vec3<f32>(-1024f, -1999f, -153f), vec3<f32>(-1000f, -407f, 929f), vec3<f32>(-504f, 797f, -245f), vec3<f32>(-1663f, -1770f, -1189f), vec3<f32>(836f, -1000f, -1088f), vec3<f32>(-838f, 1000f, -1252f), vec3<f32>(1152f, 1021f, 1000f), vec3<f32>(808f, 976f, -772f), vec3<f32>(-406f, 928f, 883f), vec3<f32>(-1227f, -2373f, 397f), vec3<f32>(454f, 1805f, -294f), vec3<f32>(376f, -899f, 1603f));

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    var var_0 = select(!(!(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_1, true, arg_2.x, arg_2.x), true))), !vec4<bool>(false & any(vec4<bool>(true, arg_1, arg_1, false)), true, true, true), false);
    global1 = array<vec3<f32>, 19>();
    var var_1 = -u_input.a;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_1(!vec3<bool>(true, true, any(vec2<bool>(arg_1.e.a.x, true))), 101784i, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.d.x * 2011f), _wgslsmith_f_op_f32(arg_1.e.d.x * -2094f), arg_1.c), vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.d.x - arg_1.e.d.x), _wgslsmith_f_op_f32(max(arg_1.d.d.x, 1000f)), _wgslsmith_f_op_f32(min(494f, -1317f))))));
    global1 = array<vec3<f32>, 19>();
    global1 = array<vec3<f32>, 19>();
    let var_1 = select(abs(arg_2.x) < max(abs(_wgslsmith_sub_u32(arg_2.x, u_input.c)), _wgslsmith_dot_vec4_u32(~arg_2, reverseBits(arg_2))), true, false);
    global2 = max(vec3<u32>(reverseBits(84623u), ~(~(~u_input.c)), ~(~func_2(global2.x, var_1, vec2<bool>(arg_0.a.a.x, false)))), select(arg_2.wxw, ~(~arg_2.zzx), !any(!vec4<bool>(var_0.a.x, var_1, arg_1.a.c, false))));
    return select(any(!select(!vec4<bool>(arg_1.d.c, var_1, false, arg_0.d.a.x), vec4<bool>(var_1, var_1, true, arg_1.a.a.x), vec4<bool>(true, true, true, true))), any(arg_0.e.a), var_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_1.e.d.yy))));
    global2 = ~select(arg_0.xxz, arg_0.wwy, func_3(Struct_2(Struct_1(vec3<bool>(var_0.e.c, false, false), 2147483647i, var_0.a.a.x, vec3<f32>(var_1.x, 801f, -999f)), -u_input.b.xww, _wgslsmith_f_op_f32(round(var_1.x)), var_0.d, Struct_1(vec3<bool>(false, false, arg_1.d.c), -1i, false, var_0.e.d)), Struct_2(arg_1.d, max(var_0.b, vec3<i32>(var_0.e.b, -21906i, arg_1.a.b)), var_0.a.d.x, Struct_1(arg_1.a.a, -30796i, arg_1.e.c, vec3<f32>(-559f, var_1.x, -2092f)), arg_1.a), vec4<u32>(min(global2.x, global2.x), arg_0.x, 0u ^ arg_0.x, firstLeadingBit(global2.x))));
    var var_2 = ~vec4<i32>(-u_input.a, ~29999i, arg_1.a.b, abs(~44093i ^ max(arg_1.b.x, u_input.b.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.e.d.yy * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.x, -117f)), _wgslsmith_f_op_f32(f32(-1f) * -121f), true)), _wgslsmith_div_f32(-1095f, _wgslsmith_f_op_f32(select(var_0.e.d.x, var_1.x, arg_1.e.c)))), var_0.d.d.zz)));
    return Struct_2(arg_1.d, vec3<i32>(-2147483647i, max(var_0.e.b, -var_2.x ^ ~var_0.e.b), _wgslsmith_mult_i32(var_0.e.b, -812i)), 2805f, Struct_1(select(!arg_1.e.a, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(round(193f)) >= arg_1.d.d.x), u_input.b.x, var_0.e.a.x, var_0.a.d), var_0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(vec4<u32>(59215u, 1u, func_2(_wgslsmith_add_u32(global2.x, countOneBits(u_input.c)), false, vec2<bool>(true, true)), ~abs(global2.x)), Struct_2(Struct_1(vec3<bool>(false, func_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 0i, true, vec3<f32>(1804f, 692f, -373f)), vec3<i32>(-1i, 8773i, -19857i), -957f, Struct_1(vec3<bool>(true, false, true), 30273i, false, global1[_wgslsmith_index_u32(global2.x, 19u)]), Struct_1(vec3<bool>(true, false, false), 1i, false, vec3<f32>(-1660f, -1702f, 1421f))), Struct_2(Struct_1(vec3<bool>(true, true, false), u_input.a, false, global1[_wgslsmith_index_u32(global2.x, 19u)]), u_input.b.yzz, -955f, Struct_1(vec3<bool>(false, true, true), 1i, true, global1[_wgslsmith_index_u32(global2.x, 19u)]), Struct_1(vec3<bool>(true, false, true), -2147483647i, true, global1[_wgslsmith_index_u32(global2.x, 19u)])), vec4<u32>(u_input.c, u_input.c, global2.x, u_input.c)), false), -1i, true, vec3<f32>(-897f, _wgslsmith_f_op_f32(-548f - 722f), 1000f)), ~(~(~vec3<i32>(-1i, u_input.b.x, -31024i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) + 1f), Struct_1(vec3<bool>(true, true, true), u_input.b.x, all(vec2<bool>(true, true)) & true, vec3<f32>(-1985f, _wgslsmith_f_op_f32(f32(-1f) * -245f), 330f)), Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), u_input.b.x, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 356f, -389f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(934f, 983f, 1206f), vec3<f32>(-468f, 1000f, -772f)))))));
    var_0 = func_4(vec4<u32>(_wgslsmith_div_u32(1u ^ global2.x, 0u), 1u, u_input.c, ~_wgslsmith_sub_u32(128342u, global2.x)) << (abs(~(~vec4<u32>(u_input.c, global2.x, 4294967295u, global2.x))) % vec4<u32>(32u)), func_4(firstTrailingBit(~vec4<u32>(u_input.c, 4294967295u, u_input.c, 31670u)) & ~(~vec4<u32>(1u, u_input.c, u_input.c, 19523u)), func_4(vec4<u32>(_wgslsmith_mod_u32(u_input.c, global2.x), 1u, u_input.c, 41974u), Struct_2(func_4(vec4<u32>(40231u, 36569u, global2.x, u_input.c), Struct_2(Struct_1(var_0.d.a, -2147483647i, true, var_0.d.d), u_input.b.xxw, var_0.e.d.x, var_0.d, var_0.d)).a, u_input.b.zwz, -608f, Struct_1(var_0.e.a, u_input.a, var_0.e.a.x, global1[_wgslsmith_index_u32(11402u, 19u)]), func_4(vec4<u32>(u_input.c, global2.x, u_input.c, global2.x), Struct_2(var_0.d, u_input.b.xww, 1000f, Struct_1(var_0.e.a, u_input.b.x, var_0.a.a.x, vec3<f32>(-948f, 384f, var_0.a.d.x)), Struct_1(vec3<bool>(var_0.a.c, var_0.d.c, var_0.e.a.x), var_0.b.x, false, global1[_wgslsmith_index_u32(u_input.c, 19u)]))).d))));
    var var_1 = (~79984u << (u_input.c % 32u)) >> (~(~(~1u)) % 32u);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 59776u), vec3<u32>(1u, u_input.c, 51677u))), _wgslsmith_add_u32(global2.x, 4294967295u)), 42472u);
    global2 = vec3<u32>(~0u, u_input.c, 1u);
    return func_4(select(vec4<u32>(1u, reverseBits(_wgslsmith_mod_u32(115674u, u_input.c)), global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, global2.x) | vec4<u32>(global2.x, global2.x, 36419u, global2.x), _wgslsmith_div_vec4_u32(vec4<u32>(30625u, 17816u, 40249u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)))), vec4<u32>(countOneBits(global2.x), _wgslsmith_sub_u32(u_input.c | 1u, abs(global2.x)), ~global2.x >> (~0u % 32u), 4294967295u), var_0.d.c), func_4(~vec4<u32>(17632u, countOneBits(0u), abs(global2.x), ~0u), func_4(vec4<u32>(func_2(0u, var_0.d.a.x, vec2<bool>(false, true)), 27310u, global2.x << (0u % 32u), global2.x), Struct_2(var_0.d, vec3<i32>(var_0.d.b, u_input.b.x, 2147483647i), var_0.a.d.x, func_4(vec4<u32>(45066u, u_input.c, 4294967295u, 43962u), Struct_2(var_0.e, vec3<i32>(var_0.e.b, -1i, u_input.a), 494f, Struct_1(vec3<bool>(var_0.a.a.x, true, var_0.e.a.x), -2049i, true, vec3<f32>(-1128f, 1000f, var_0.c)), var_0.a)).d, func_4(vec4<u32>(1u, 1u, 54157u, 1u), Struct_2(var_0.a, var_0.b, 500f, Struct_1(var_0.d.a, -398i, false, global1[_wgslsmith_index_u32(0u, 19u)]), var_0.e)).e))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = func_3(arg_2, arg_3, vec4<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u << (u_input.c % 32u)), 85122u), _wgslsmith_mult_u32(global2.x, 0u), _wgslsmith_sub_u32(1u, max(global2.x, 76007u) >> (abs(26277u) % 32u)), 40326u));
    let var_1 = arg_3;
    var var_2 = func_1();
    var var_3 = ~u_input.b.yz;
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(26507u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 103800u, 14845u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global2.x, 65560u, 36552u), vec4<u32>(global2.x, 97417u, global2.x, 0u))))), global2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = -_wgslsmith_div_i32(-11761i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(u_input.a, -7695i)), u_input.b.zy));
    global0 = ~(-6296i);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_5(~(i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2498f + 690f)), Struct_2(Struct_1(vec3<bool>(true, false, true), 1i, false, vec3<f32>(523f, -2704f, 605f)), select(u_input.b.yww, u_input.b.ywz, true), _wgslsmith_f_op_f32(round(2163f)), Struct_1(vec3<bool>(false, false, true), -2383i, false, vec3<f32>(-511f, -751f, -850f)), Struct_1(vec3<bool>(false, false, false), var_0, true, vec3<f32>(-952f, 871f, 335f))), func_1()), 17103u), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c, reverseBits(25446u)) & vec2<u32>(abs(u_input.c), abs(0u)), abs(vec2<u32>(firstTrailingBit(global2.x), u_input.c))));
    var var_2 = ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_sub_u32(global2.x, 61641u)), 1u, 9430u));
    let var_3 = vec2<i32>(-_wgslsmith_mod_i32(-firstLeadingBit(var_0), var_0), ~(~1i));
    var_1 = ~u_input.c;
    global1 = array<vec3<f32>, 19>();
    let var_4 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(1i ^ _wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(u_input.a, 1i)))), u_input.b.yyw);
}

