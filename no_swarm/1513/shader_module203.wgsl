struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: vec2<u32>;

var<private> global2: u32 = 0u;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(2227f, -174f), vec2<i32>(29117i, -33590i), vec4<f32>(-1000f, -1000f, -1000f, -465f), -89450i, vec3<u32>(15273u, 63271u, 4294967295u)), Struct_1(vec2<f32>(-619f, 1000f), vec2<i32>(41073i, 1i), vec4<f32>(-499f, -485f, -663f, 1110f), -1i, vec3<u32>(1u, 0u, 24149u)), Struct_1(vec2<f32>(-958f, -289f), vec2<i32>(0i, 15599i), vec4<f32>(693f, 516f, 227f, -2029f), 20862i, vec3<u32>(29169u, 7813u, 63648u)), Struct_1(vec2<f32>(-292f, 463f), vec2<i32>(2147483647i, 1i), vec4<f32>(-167f, 3049f, 2235f, 1000f), 6153i, vec3<u32>(1u, 12837u, 4294967295u)), Struct_1(vec2<f32>(-1926f, 411f), vec2<i32>(i32(-2147483648), 2086i), vec4<f32>(-451f, 1000f, 126f, -786f), 0i, vec3<u32>(0u, 1u, 18407u)), Struct_1(vec2<f32>(771f, 825f), vec2<i32>(46110i, 48982i), vec4<f32>(108f, -462f, -625f, 536f), 55388i, vec3<u32>(47014u, 4294967295u, 1u)), Struct_1(vec2<f32>(1000f, 1395f), vec2<i32>(16573i, i32(-2147483648)), vec4<f32>(205f, -1000f, 1000f, 947f), 0i, vec3<u32>(0u, 93567u, 35871u)), Struct_1(vec2<f32>(1000f, 423f), vec2<i32>(-1i, 54407i), vec4<f32>(-1188f, 1234f, 209f, -1653f), 2147483647i, vec3<u32>(9918u, 2107u, 1u)), Struct_1(vec2<f32>(-371f, -1041f), vec2<i32>(-25300i, 14770i), vec4<f32>(-568f, -1000f, 2612f, 525f), 51415i, vec3<u32>(14215u, 1u, 26452u)), Struct_1(vec2<f32>(-824f, -342f), vec2<i32>(13045i, 47260i), vec4<f32>(169f, 432f, 110f, -637f), i32(-2147483648), vec3<u32>(1u, 0u, 0u)), Struct_1(vec2<f32>(-2092f, 1000f), vec2<i32>(-30627i, -15714i), vec4<f32>(-392f, -458f, 1751f, -767f), -3314i, vec3<u32>(12351u, 2484u, 0u)), Struct_1(vec2<f32>(151f, -651f), vec2<i32>(-1330i, -65573i), vec4<f32>(358f, 1000f, 1504f, 1222f), 0i, vec3<u32>(27512u, 3473u, 95u)), Struct_1(vec2<f32>(-1000f, 898f), vec2<i32>(25336i, 430i), vec4<f32>(-1355f, 353f, -1779f, -1281f), -23990i, vec3<u32>(4294967295u, 41568u, 13322u)), Struct_1(vec2<f32>(-887f, 800f), vec2<i32>(-1i, 2147483647i), vec4<f32>(314f, 1394f, -665f, 1074f), 17831i, vec3<u32>(1u, 4294967295u, 35649u)), Struct_1(vec2<f32>(-217f, -670f), vec2<i32>(-57015i, -30061i), vec4<f32>(-1128f, 1908f, 1232f, 137f), -5252i, vec3<u32>(55348u, 4294967295u, 13509u)), Struct_1(vec2<f32>(-1038f, 120f), vec2<i32>(14337i, 15294i), vec4<f32>(-693f, 282f, -611f, 1000f), -1i, vec3<u32>(0u, 52297u, 1u)), Struct_1(vec2<f32>(546f, -1414f), vec2<i32>(18766i, -10177i), vec4<f32>(-140f, -960f, -235f, 1174f), i32(-2147483648), vec3<u32>(13154u, 57328u, 0u)), Struct_1(vec2<f32>(379f, 486f), vec2<i32>(20569i, 1i), vec4<f32>(1064f, 376f, -349f, 1127f), -1i, vec3<u32>(0u, 13583u, 7390u)), Struct_1(vec2<f32>(683f, -122f), vec2<i32>(-11121i, 9720i), vec4<f32>(1565f, -961f, 1204f, -1000f), 22194i, vec3<u32>(0u, 42444u, 0u)));

var<private> global4: array<f32, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(20293u, 4294967295u))), vec2<u32>(_wgslsmith_sub_u32(global1.x | 71924u, _wgslsmith_div_u32(u_input.a, global1.x)), ~u_input.a))), 19u)];
    global3 = array<Struct_1, 19>();
    global1 = ~(vec2<u32>(~45556u, ~32200u) & var_0.e.xz);
    var var_1 = global4[_wgslsmith_index_u32(~var_0.e.x, 6u)];
    let var_2 = select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), (1i < ~_wgslsmith_clamp_i32(u_input.c, u_input.b.x, var_0.d)) && select(select(false, false, false) || (var_0.b.x == u_input.c), all(vec3<bool>(true, true, true)), _wgslsmith_add_i32(-33928i, var_0.d) < -u_input.b.x));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(trunc(var_0.c.ww)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(710f, 257f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(var_0.e.x, 6u)], 749f), var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1321f, var_0.a.x))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(33315u, 19u)];
    global1 = ~_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 1881u), abs(var_0.e.zx)), var_0.e.xx);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 6u)] - arg_1.c.x))), 1291f)), u_input.b, arg_1.c, countOneBits(15615i << (arg_1.e.x % 32u)), select(vec3<u32>(abs(~global1.x), ~(6331u >> (1u % 32u)), 20411u >> (_wgslsmith_dot_vec3_u32(arg_1.e, var_0.e) % 32u)), ~vec3<u32>(4294967295u, arg_1.e.x, 95195u), true));
    var var_2 = var_1;
    var var_3 = arg_1;
    return select(vec2<bool>(any(vec2<bool>(true, true)), true), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), select(true, any(vec3<bool>(true, true, true)) && all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_div_i32(2147483647i, countOneBits(8475i)) > _wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.d, 2147483647i), i32(-1i) * -28049i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, 2117f), arg_3.a, !(!func_2(_wgslsmith_sub_u32(global1.x, u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(70603u, 46907u), 19u)]))));
    global0 = array<vec4<u32>, 4>();
    global0 = array<vec4<u32>, 4>();
    let var_1 = all(!(!(!(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)))));
    let var_2 = global3[_wgslsmith_index_u32(~firstTrailingBit(~72069u), 19u)];
    return select(var_2.e.x, 1048u << (firstLeadingBit(select(~arg_3.e.x, ~4294967295u, true)) % 32u), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -reverseBits(u_input.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], 214f, -2043f) + vec4<f32>(global4[_wgslsmith_index_u32(68599u, 6u)], -963f, 518f, 413f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1306f, global4[_wgslsmith_index_u32(43642u, 6u)], global4[_wgslsmith_index_u32(global1.x, 6u)], 903f) + vec4<f32>(-1324f, -119f, -237f, 886f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-951f, -235f)), global4[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1347f, -1505f, global4[_wgslsmith_index_u32(65766u, 6u)]))), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(u_input.a, 19u)]), 6u)], _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_vec2_f32(func_3()).x))));
    global1 = vec2<u32>(~(~u_input.a) | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 1u), firstTrailingBit(vec3<u32>(39272u, global1.x, u_input.a))), _wgslsmith_clamp_u32(~12446u << (_wgslsmith_sub_u32(global1.x, u_input.a) % 32u), select(global1.x & global1.x, 51900u << (global1.x % 32u), true), select(0u | global1.x, ~0u, any(vec4<bool>(true, false, false, true))))) << (~vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), global1.x) % vec2<u32>(32u));
    global2 = u_input.a >> (global1.x % 32u);
    var var_2 = vec4<bool>(any(vec2<bool>(false, !all(vec3<bool>(true, false, false)))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), u_input.b.x <= u_input.b.x))), -2147483647i < _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c, u_input.c, -19409i) ^ vec3<i32>(var_0, u_input.b.x, 2147483647i)), vec3<i32>(46881i, abs(-9053i), -11361i)), (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x + global4[_wgslsmith_index_u32(global1.x, 6u)]))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x)) != false);
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u & ~u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(~(u_input.a >> (global1.x % 32u)), 4294967295u), vec2<u32>(_wgslsmith_clamp_u32(~u_input.a, u_input.a, ~36994u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50896u, 5913u), vec3<u32>(24997u, 4294967295u, 31300u)))));
    let var_4 = (~(-(vec3<i32>(u_input.c, -1120i, u_input.b.x) >> (vec3<u32>(global1.x, 74628u, global1.x) % vec3<u32>(32u)))) >> (select(select(firstTrailingBit(vec3<u32>(u_input.a, 18069u, global1.x)), ~vec3<u32>(28420u, 39346u, var_3.x), var_2.x), firstLeadingBit(vec3<u32>(38588u, var_3.x, var_3.x)), ~var_3.x == 0u) % vec3<u32>(32u))) << ((vec3<u32>(max(_wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_mult_u32(global1.x, global1.x)), firstLeadingBit(global1.x), _wgslsmith_add_u32(~var_3.x, firstTrailingBit(115331u))) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 63582u, 0u), vec3<u32>(44671u, 1u, var_3.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0[_wgslsmith_index_u32(firstTrailingBit(10478u), 4u)], -293f);
}

