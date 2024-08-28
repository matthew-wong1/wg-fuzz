struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: array<i32, 32> = array<i32, 32>(-1i, 2147483647i, 4097i, 28684i, 1i, -1i, 19749i, i32(-2147483648), -27533i, -1i, -33237i, 1i, -59474i, i32(-2147483648), 0i, -73450i, i32(-2147483648), i32(-2147483648), 1i, 1i, -37133i, 4963i, 21424i, 0i, -3606i, 0i, 0i, 12931i, 31962i, 2147483647i, 8843i, 26208i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = -1257f;
    global0 = array<vec3<u32>, 31>();
    var var_1 = ~abs(82885u);
    var_1 = ~u_input.d & _wgslsmith_mod_u32(~1u & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)), u_input.a.yz), ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 0u), u_input.a.yw), u_input.a.x));
    global0 = array<vec3<u32>, 31>();
    return arg_0.a;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = array<i32, 32>();
    global1 = array<i32, 32>();
    global1 = array<i32, 32>();
    let var_0 = Struct_1(select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(all(vec3<bool>(false, true, false)), _wgslsmith_sub_u32(1u, u_input.d) <= 0u, false, all(vec4<bool>(true, true, true, true))), func_3(Struct_1(vec4<bool>(true, true, true, true), select(u_input.d, 85727u, false), -1i != arg_0, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), u_input.b.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1828f, 1190f))))), max(_wgslsmith_dot_vec3_u32(~countOneBits(u_input.a.zww), ~u_input.a.ywy), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u), countOneBits(u_input.a.yzw))), all(func_3(Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), u_input.d, true, ~u_input.b.xz, _wgslsmith_div_vec2_f32(vec2<f32>(-717f, 204f), vec2<f32>(548f, -1419f)))).zy), -_wgslsmith_sub_vec2_i32(firstLeadingBit(~u_input.b.yx), vec2<i32>(21207i, ~global1[_wgslsmith_index_u32(10943u, 32u)])), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1170f, -195f))) - _wgslsmith_div_f32(-1273f, -684f))));
    var var_1 = u_input.a.zy;
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec3<u32>, 31>();
    let var_0 = arg_2;
    var var_1 = countOneBits(vec4<u32>(~arg_2, 14064u, arg_2, _wgslsmith_add_u32(0u ^ arg_2, arg_0.b >> (arg_2 % 32u))) | vec4<u32>(~(~arg_0.b), _wgslsmith_mult_u32(1u | var_0, 1u), arg_0.b, func_2(u_input.c) << (37957u % 32u)));
    global0 = array<vec3<u32>, 31>();
    let var_2 = arg_0;
    return Struct_1(vec4<bool>(!(arg_2 >= ~var_0), _wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(select(-513f, 1240f, var_2.a.x))) < 1425f, !any(arg_1.a.yzz), arg_1.a.x), _wgslsmith_sub_u32(~(~abs(u_input.a.x)), ((arg_1.b & var_2.b) << ((u_input.d ^ 4294967295u) % 32u)) << (4535u % 32u)), arg_1.a.x, var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-954f, var_2.e.x)), _wgslsmith_f_op_f32(floor(-1000f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_mult_u32(arg_2.b & _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.b, 0u, 0u), u_input.a >> (vec4<u32>(arg_2.b, 1u, 0u, 1u) % vec4<u32>(32u))), max(45648u, 4453u)), u_input.a.x);
    global1 = array<i32, 32>();
    return var_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32) -> StorageBuffer {
    let var_0 = func_1(Struct_1(!(!func_1(Struct_1(vec4<bool>(true, true, false, false), arg_0.x, false, u_input.b.xy, arg_1.xz), Struct_1(vec4<bool>(false, false, false, true), arg_0.x, false, vec2<i32>(78392i, global1[_wgslsmith_index_u32(0u, 32u)]), arg_1.yw), u_input.d).a), _wgslsmith_add_u32(1u, 10267u), true, ~select(u_input.b.xx & vec2<i32>(u_input.b.x, 30315i), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], 1i), arg_1.x < arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-467f, -1168f), arg_1.zw)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1072f, arg_1.x))))), func_1(func_1(func_1(Struct_1(vec4<bool>(false, false, true, true), 4294967295u, false, vec2<i32>(global1[_wgslsmith_index_u32(8040u, 32u)], u_input.c), arg_1.ww), func_1(Struct_1(vec4<bool>(true, true, false, true), arg_0.x, true, u_input.b.xx, vec2<f32>(arg_1.x, -747f)), Struct_1(vec4<bool>(false, true, true, true), 0u, false, u_input.b.xy, vec2<f32>(arg_1.x, -998f)), 1u), 4294967295u), Struct_1(vec4<bool>(true, true, true, true), abs(u_input.d), true, u_input.b.zy, vec2<f32>(-821f, 1091f)), u_input.a.x), func_1(Struct_1(vec4<bool>(true, true, true, true), 90133u, func_1(Struct_1(vec4<bool>(true, true, true, false), 0u, false, vec2<i32>(-1i, -4403i), arg_1.yy), Struct_1(vec4<bool>(false, true, false, false), 27093u, false, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i), vec2<f32>(arg_1.x, 2220f)), 0u).a.x, _wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.zy), arg_1.ww), Struct_1(vec4<bool>(true, true, false, false), ~u_input.d, all(vec2<bool>(true, false)), ~u_input.b.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 84269u), ~arg_2)), u_input.d), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~(arg_2 | ~27050u)));
    let var_1 = func_1(Struct_1(var_0.a, abs(~arg_0.x), var_0.c, ~select(vec2<i32>(u_input.b.x, 4144i) >> (u_input.a.zz % vec2<u32>(32u)), var_0.d, any(vec4<bool>(var_0.c, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(406f, arg_1.x), -114f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e.x - arg_1.x), var_0.e.x, true)))), Struct_1(!select(select(vec4<bool>(var_0.c, false, false, true), vec4<bool>(var_0.c, false, false, var_0.a.x), true), select(vec4<bool>(var_0.a.x, true, var_0.c, var_0.a.x), vec4<bool>(var_0.a.x, true, false, true), false), true), 10624u, true, ~(_wgslsmith_div_vec2_i32(var_0.d, u_input.b.yx) | u_input.b.xx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-327f, var_0.e.x), _wgslsmith_f_op_vec2_f32(-arg_1.xx)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-470f, arg_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1003f, arg_1.x) - var_0.e), true)), false))), ~2697u);
    var var_2 = arg_1.xyw;
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-349f - 799f)))));
    let var_3 = Struct_1(select(var_1.a, !vec4<bool>(var_1.e.x != -457f, false, any(vec2<bool>(true, var_1.a.x)), var_0.a.x && true), (func_4(vec3<f32>(-1154f, var_0.e.x, -432f), vec3<f32>(1000f, -712f, 1122f), var_1, var_2.x) | 84084u) > 0u), min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(10609u, 18128u, var_1.b), ~global0[_wgslsmith_index_u32(arg_2, 31u)]), ~1u), true, _wgslsmith_mult_vec2_i32(u_input.b.xz | -vec2<i32>(0i, global1[_wgslsmith_index_u32(24321u, 32u)]), vec2<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), firstTrailingBit(_wgslsmith_sub_i32(var_0.d.x, -37761i)))), func_1(Struct_1(func_3(Struct_1(var_0.a, u_input.d, var_1.a.x, vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(var_0.b, 32u)]), vec2<f32>(-626f, -2652f))), ~select(0u, 4294967295u, false), all(vec3<bool>(true, false, var_1.c)) & true, ~(~var_0.d), _wgslsmith_f_op_vec2_f32(-arg_1.yy)), func_1(Struct_1(select(vec4<bool>(var_0.a.x, false, true, var_0.c), vec4<bool>(true, var_0.c, true, false), var_0.a), ~63201u, arg_1.x > -1095f, -vec2<i32>(35231i, global1[_wgslsmith_index_u32(44674u, 32u)]), vec2<f32>(-836f, var_1.e.x)), var_1, select(firstTrailingBit(var_0.b), ~26131u, 4294967295u >= var_0.b)), firstLeadingBit(5365u)).e);
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - -374f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 32>();
    global0 = array<vec3<u32>, 31>();
    let x = u_input.a;
    s_output = func_5(~vec3<u32>(~u_input.a.x, 51528u, 29324u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(1760f + _wgslsmith_f_op_f32(min(158f, 1454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-391f)) * _wgslsmith_div_f32(-686f, 209f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)))), _wgslsmith_sub_u32(~(~(~u_input.d)), func_4(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1442f, 605f, -1000f) + vec3<f32>(2385f, 1662f, 127f))), func_1(Struct_1(vec4<bool>(false, false, true, true), 0u, false, u_input.b.yy, vec2<f32>(-318f, 1149f)), Struct_1(vec4<bool>(true, true, true, false), u_input.d, true, vec2<i32>(-1i, 58788i), vec2<f32>(-1000f, 1337f)), abs(17277u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1493f * 215f)))));
}

