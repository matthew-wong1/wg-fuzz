struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(0i, 0i), vec2<i32>(24693i, -53043i), vec2<i32>(-91417i, i32(-2147483648)), vec2<i32>(84980i, 0i), vec2<i32>(2147483647i, -23282i), vec2<i32>(7022i, i32(-2147483648)), vec2<i32>(-40527i, 27167i), vec2<i32>(i32(-2147483648), 29683i));

var<private> global1: array<vec3<bool>, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    var var_0 = arg_0;
    global0 = array<vec2<i32>, 8>();
    var var_1 = vec2<bool>(true && arg_3.a.d.x, all(arg_3.a.d.zx));
    global0 = array<vec2<i32>, 8>();
    let var_2 = arg_1.xyz;
    return 1168f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-989f, 1667f, -1469f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-823f, 949f, -719f))) - vec3<f32>(_wgslsmith_f_op_f32(190f - 1000f), 1f, -119f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-270f, -468f, 941f) - vec3<f32>(405f, 909f, -497f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-609f, 698f, 409f)))))));
    var var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx + var_0.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(var_0.zx), vec4<f32>(var_0.x, -659f, var_0.x, 1000f), Struct_3(Struct_1(vec4<i32>(2147483647i, 715i, 5553i, u_input.b), var_0.x, vec3<u32>(0u, 15092u, 4294967295u), vec3<bool>(arg_0, false, true), u_input.b)), Struct_3(Struct_1(u_input.a, var_0.x, vec3<u32>(7926u, 13758u, 31317u), vec3<bool>(true, arg_0, true), 11233i)))) + var_0.x), -2399f)));
    let var_2 = _wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(27032u, 1u, 1u, 39207u), vec4<u32>(1u, 1u, 1u, 4294967295u)))), select(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(20899u, 19823u, 39602u), vec3<u32>(1u, 1u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 5941u, 24398u), abs(vec3<u32>(4294967295u, 104612u, 1u))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 82843u, 4294967295u), vec3<u32>(1u, 1u, 1u))), 32u)]));
    let var_3 = Struct_1(_wgslsmith_sub_vec4_i32(max(u_input.a ^ -u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), -u_input.a)), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.a, u_input.a), ~min(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_1.a.x)) + -1246f), firstLeadingBit(firstLeadingBit(var_2)), select(global1[_wgslsmith_index_u32(~(var_2.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(36077u, 51046u, 69696u)) % 32u)), 32u)], global1[_wgslsmith_index_u32(var_2.x, 32u)], !global1[_wgslsmith_index_u32(var_2.x, 32u)]), ((firstTrailingBit(-2147483647i) ^ -u_input.b) >> (1u % 32u)) << (~(~abs(var_2.x)) % 32u));
    let var_4 = Struct_3(Struct_1(vec4<i32>(min(-1i, 8853i), ~(-2147483647i), var_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -5047i, -31315i), -var_3.a.zwx)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)), 249f)), var_3.c, vec3<bool>(arg_0 | true, false, false), ~_wgslsmith_mult_i32(0i, u_input.a.x)));
    return Struct_1(vec4<i32>(var_3.e << (~min(1u, 9116u) % 32u), 3134i, abs(-7840i), -_wgslsmith_dot_vec2_i32(countOneBits(var_4.a.a.xy), ~vec2<i32>(u_input.b, var_4.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -1501f, var_4.a.d.x)))), countOneBits(var_4.a.c | var_2), select(select(vec3<bool>(any(vec4<bool>(false, var_4.a.d.x, var_4.a.d.x, false)), all(vec4<bool>(var_4.a.d.x, false, arg_0, true)), !arg_0), vec3<bool>(arg_0 && var_4.a.d.x, var_3.d.x || arg_0, arg_0), _wgslsmith_f_op_f32(var_3.b + var_3.b) == _wgslsmith_f_op_f32(-var_0.x)), vec3<bool>(var_4.a.d.x, !(var_4.a.d.x || arg_0), var_3.d.x), select(vec3<bool>(var_2.x < var_3.c.x, !var_4.a.d.x, var_2.x <= 0u), var_3.d, all(global1[_wgslsmith_index_u32(0u, 32u)]))), -1i & select(-39759i, u_input.b, any(select(vec2<bool>(true, false), vec2<bool>(var_3.d.x, false), false))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = !vec2<bool>(any(!global1[_wgslsmith_index_u32(~arg_0.c.x, 32u)]), false | !(true | arg_1.x));
    let var_1 = global1[_wgslsmith_index_u32(1u, 32u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b, -2079f), vec2<f32>(arg_0.b, arg_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 224f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1778f, 702f), vec2<f32>(1627f, -579f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, -871f)))))), arg_0.d.zy))));
    let var_3 = ~func_2((arg_0.c.x << (4294967295u % 32u)) > 0u).c.x;
    let var_4 = arg_0.a & func_2(!all(vec3<bool>(arg_0.d.x, var_1.x, true))).a;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3, arg_0.c.x ^ func_2(var_1.x).c.x, ~min(20049u, arg_0.c.x)), ~vec3<u32>(abs(var_3), func_2(true).c.x, var_3)), func_2(all(!func_2(var_1.x).d.yx)).c);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - 303f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * arg_1.b) * _wgslsmith_f_op_f32(f32(-1f) * -317f))), abs(~(~_wgslsmith_add_vec3_u32(arg_1.c, vec3<u32>(arg_1.c.x, arg_1.c.x, 45394u)))), arg_1.d, u_input.a.x);
    global0 = array<vec2<i32>, 8>();
    var var_1 = ~var_0.c;
    let var_2 = func_4(func_2(true), arg_1.d.xy);
    var_1 = var_0.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.a.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-971f)) + _wgslsmith_f_op_f32(-2475f - 406f)))), _wgslsmith_f_op_f32(select(1608f, _wgslsmith_f_op_f32(f32(-1f) * -332f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1082f, -1109f)))) * _wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(-1380f - -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(ceil(-520f)))))));
    var var_2 = ~max(countOneBits(_wgslsmith_mod_vec3_i32(u_input.a.yzy, u_input.a.zyx) >> (countOneBits(vec3<u32>(21747u, 44441u, 89746u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(u_input.a.x | 2147483647i, 46038i & u_input.b), 41753i, ~(-1i)));
    let var_3 = !vec4<bool>(true, any(vec3<bool>(select(false, true, false), true, all(vec4<bool>(false, true, false, false)))), true, !func_1(i32(-1i) * -2147483647i, Struct_1(vec4<i32>(var_2.x, var_2.x, 1i, -13121i), 1000f, vec3<u32>(73466u, 16793u, 0u), vec3<bool>(true, true, true), 9238i)));
    var var_4 = ~4294967295u;
    let var_5 = !var_3.wx;
    global0 = array<vec2<i32>, 8>();
    let var_6 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(11079i, -var_6));
}

