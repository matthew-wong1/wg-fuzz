struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-762f, -1000f, 672f, -1203f);

var<private> global1: array<f32, 26> = array<f32, 26>(334f, -1290f, 1948f, 521f, 836f, -1760f, 484f, -583f, -1377f, 434f, -632f, 151f, -813f, 643f, 709f, -174f, -2373f, -1000f, 811f, -620f, 735f, 390f, -1000f, -2409f, 1228f, 600f);

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(2719u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 24099u, 18333u, 0u), vec4<u32>(1u, 4748u, 27850u, 4294967295u), vec4<u32>(1u, 4247u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 41340u, 4294967295u), vec4<u32>(72438u, 4294967295u, 29590u, 4294967295u), vec4<u32>(1u, 0u, 13158u, 0u), vec4<u32>(38228u, 23937u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 9261u, 21782u), vec4<u32>(1u, 45461u, 31862u, 0u), vec4<u32>(0u, 20617u, 18539u, 15122u), vec4<u32>(2055u, 4294967295u, 1178u, 71305u), vec4<u32>(58160u, 1u, 4294967295u, 0u), vec4<u32>(1u, 29958u, 0u, 1u), vec4<u32>(89867u, 0u, 85601u, 1u), vec4<u32>(1u, 56101u, 37189u, 4294967295u), vec4<u32>(0u, 62252u, 0u, 10164u), vec4<u32>(1488u, 74745u, 4294967295u, 4294967295u), vec4<u32>(55659u, 22586u, 1u, 17855u), vec4<u32>(48001u, 62158u, 0u, 86539u), vec4<u32>(52102u, 18472u, 1u, 36380u), vec4<u32>(0u, 0u, 21310u, 1u), vec4<u32>(7343u, 9931u, 0u, 7227u), vec4<u32>(66831u, 1655u, 76413u, 20596u), vec4<u32>(26198u, 4294967295u, 1u, 0u), vec4<u32>(58159u, 4294967295u, 4294967295u, 22878u), vec4<u32>(19072u, 1u, 26043u, 1u), vec4<u32>(4294967295u, 14065u, 0u, 0u), vec4<u32>(64286u, 8000u, 3049u, 73438u), vec4<u32>(4294967295u, 52468u, 28682u, 1u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(51209u, 4294967295u, 7070u, 45189u));

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: Struct_5;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_1;
    let var_1 = !(!(!(1u > global4.a.x))) & ((_wgslsmith_f_op_f32(-190f + global1[_wgslsmith_index_u32(~14084u, 26u)]) >= global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) & arg_1.a);
    var var_2 = true;
    let var_3 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 32436i), vec2<i32>(reverseBits(-1i), firstTrailingBit(-1i))));
    let var_4 = select(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c, arg_2.x), _wgslsmith_mod_i32(1i, 53992i), _wgslsmith_mod_i32(arg_0, -25712i)) | ((vec3<i32>(u_input.c, 1i, u_input.c) | vec3<i32>(-1i, arg_0, 41973i)) >> ((vec3<u32>(4294967295u, 7584u, 81340u) ^ vec3<u32>(global4.a.x, 4039u, global4.a.x)) % vec3<u32>(32u))), ~vec3<i32>(-u_input.c, 0i, arg_2.x)), countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(19963i, 6813i, arg_0), ~vec3<i32>(2147483647i, -2147483647i, var_3))) << (vec3<u32>(u_input.b, 0u, _wgslsmith_div_u32(4294967295u & u_input.a.x, u_input.b)) % vec3<u32>(32u)), global3.wxw);
    return ~1u < u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<f32> {
    global1 = array<f32, 26>();
    let var_0 = _wgslsmith_mod_i32(i32(-1i) * -max(_wgslsmith_div_i32(u_input.c, u_input.c), ~u_input.c), -20135i);
    global1 = array<f32, 26>();
    let var_1 = global3.yzx;
    global2 = array<vec4<u32>, 32>();
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(834f + 326f))) + -247f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(998f + 882f))) * 347f))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -42922i, ~u_input.c, 1i), firstTrailingBit(-vec3<i32>(u_input.c, 1136i, u_input.c))), (-1i & -u_input.c) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(2147483647i, -10085i, u_input.c) << (vec3<u32>(global4.a.x, 14060u, u_input.a.x) % vec3<u32>(32u))), u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -u_input.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, 44005i, -2147483647i)), firstTrailingBit(select(u_input.c, u_input.c, false))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c, -2147483647i) & firstTrailingBit(vec3<i32>(29607i, -55025i, -2147483647i)), vec3<i32>(u_input.c, u_input.c, -12373i))));
    var_0 = -(~(~(~(-vec3<i32>(2147483647i, -1i, var_0.x)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f * -1229f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)))), _wgslsmith_f_op_f32(max(832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(arg_1 - global1[_wgslsmith_index_u32(arg_0, 26u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(951f, _wgslsmith_f_op_f32(abs(global0.x)))) * _wgslsmith_f_op_f32(select(1297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 29035u > (u_input.a.x ^ 63754u)))), arg_1);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<bool>(any(select(vec4<bool>(false, true, true, global3.x), arg_2, arg_3.x)), func_3(-4913i, Struct_4(arg_3.x), ~var_0.xx), !global3.x, all(arg_2.zwx)), global3.x, Struct_1(arg_2)), ~vec2<u32>(1u, 0u)));
    var var_2 = global4.a.wz;
    return _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, _wgslsmith_mod_u32(~(~1u), max(var_2.x, ~var_2.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, var_2.x, arg_0, 1u) & vec4<u32>(107509u, 4294967295u, 4294967295u, 4294967295u)), ~countOneBits(vec4<u32>(19191u, global4.a.x, 4294967295u, var_2.x))), reverseBits(~0u)), vec4<u32>(0u, 4294967295u & firstTrailingBit(~4294967295u), 52160u, 4294967295u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = vec4<f32>(global1[_wgslsmith_index_u32(arg_1.x, 26u)], global0.x, 1888f, -456f);
    global4 = Struct_5(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(~global2[_wgslsmith_index_u32(global4.a.x, 32u)], func_2(u_input.a.x, 488f, vec4<bool>(global3.x, global3.x, global3.x, true), vec3<bool>(global3.x, global3.x, true)))), ~abs(abs(vec4<u32>(46561u, global4.a.x, 51503u, 0u)))));
    global1 = array<f32, 26>();
    let var_0 = abs(_wgslsmith_sub_u32(15298u, _wgslsmith_dot_vec3_u32(~(arg_1 >> (vec3<u32>(32268u, 56352u, u_input.b) % vec3<u32>(32u))), global4.a.zwx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-231f + _wgslsmith_f_op_f32(abs(-659f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1314f)) - _wgslsmith_f_op_f32(f32(-1f) * -1202f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<bool>(global3.x, false, false, false), false, Struct_1(vec4<bool>(global3.x, global3.x, global3.x, global3.x))), ~arg_0)).x + -757f), global1[_wgslsmith_index_u32(1u & (1u ^ (u_input.b | arg_0.x)), 26u)])));
    return vec2<bool>(false, select(all(!select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, true), true)), select(countOneBits(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.c, -2147483647i), vec4<i32>(u_input.c, 2147483647i, u_input.c, -13912i)), global3.x && true) >= ~u_input.c, any(vec2<bool>(false, global3.x)) | global3.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool) -> vec4<bool> {
    global3 = select(vec4<bool>(true, arg_1.x, true, !arg_2), select(!select(vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(false, global3.x, true, arg_2), true), !(!vec4<bool>(true, false, false, arg_0.x)), vec4<bool>(!all(vec4<bool>(false, true, true, false)), all(select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_1.x, true, true), vec4<bool>(arg_2, arg_0.x, true, false))), any(global3.zyz), false)), true);
    let var_0 = false;
    global2 = array<vec4<u32>, 32>();
    var var_1 = vec2<i32>(u_input.c, _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-54630i, u_input.c, u_input.c, u_input.c), abs(vec4<i32>(-47980i, 40470i, 47624i, u_input.c))), u_input.c)));
    let var_2 = Struct_4(global3.x);
    return vec4<bool>(arg_2, all(select(select(!vec4<bool>(var_2.a, false, global3.x, true), vec4<bool>(var_2.a, false, var_2.a, true), !vec4<bool>(true, arg_0.x, false, arg_0.x)), select(!vec4<bool>(true, global3.x, false, true), vec4<bool>(false, var_0, var_0, true), !vec4<bool>(false, arg_0.x, true, var_0)), !vec4<bool>(true, false, false, arg_0.x))), arg_1.x, false);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    let var_0 = u_input.a;
    let var_1 = Struct_3(~u_input.a.x);
    var var_2 = Struct_3(min(u_input.b, min(4294967295u, 22932u)));
    global3 = select(arg_0.c.a, !select(vec4<bool>(all(global3.yxy), arg_0.c.a.x, func_5(global3.yx, arg_1.a.zx, arg_0.c.a.x).x, arg_0.c.a.x), arg_0.a, !(!vec4<bool>(false, true, arg_1.a.x, global3.x))), select(!func_5(arg_0.c.a.yw, vec2<bool>(arg_0.a.x, arg_1.a.x), any(vec3<bool>(global3.x, global3.x, global3.x))), arg_0.c.a, vec4<bool>(true, func_1(var_0, global4.a.zxz).x, true, false)));
    var var_3 = vec3<i32>(-45333i, u_input.c, max(u_input.c, 0i));
    return StorageBuffer(1u, abs(vec4<i32>(~37094i, 0i, -2147483647i, -u_input.c)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, -17627i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, 5141i, u_input.c), vec4<i32>(-2147483647i, 1i, u_input.c, 2147483647i) & vec4<i32>(var_3.x, -39884i, -5328i, u_input.c))), 40455u, u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_sub_i32(-1i, -47536i), u_input.c >> (var_2.a % 32u), _wgslsmith_div_i32(u_input.c, -24805i)), ~vec4<i32>(var_3.x, var_3.x, u_input.c, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(select(func_5(func_1(global4.a.ww, vec3<u32>(global4.a.x, 6636u, 38437u)), func_1(global4.a.zy, global4.a.zzw), false), select(!vec4<bool>(true, true, global3.x, global3.x), !vec4<bool>(global3.x, global3.x, true, false), true), true), !func_5(!global3.wy, select(vec2<bool>(false, false), global3.zw, global3.x), global3.x).x, Struct_1(vec4<bool>(true, false, global3.x || false, false))), Struct_1(select(vec4<bool>(!global3.x, true, !global3.x, global3.x), select(func_5(vec2<bool>(false, global3.x), global3.wy, false), select(vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, false, true, global3.x)), func_5(vec2<bool>(global3.x, false), global3.ww, global3.x)), !(!vec4<bool>(false, false, false, global3.x)))), 1129f);
}

