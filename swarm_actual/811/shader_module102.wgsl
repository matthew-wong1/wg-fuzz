struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(667f, -856f), vec2<f32>(-719f, 1213f), vec2<f32>(1575f, 1278f), vec2<f32>(-750f, -1401f), vec2<f32>(-977f, 1291f), vec2<f32>(-475f, -845f), vec2<f32>(-150f, -1887f), vec2<f32>(160f, 961f), vec2<f32>(-1000f, -1000f), vec2<f32>(-1000f, 696f), vec2<f32>(-257f, 277f), vec2<f32>(-448f, 115f), vec2<f32>(-178f, -812f), vec2<f32>(-959f, 1021f), vec2<f32>(630f, -1287f), vec2<f32>(-634f, 728f), vec2<f32>(-1000f, 946f), vec2<f32>(-1000f, 162f), vec2<f32>(672f, -377f), vec2<f32>(467f, -117f), vec2<f32>(1000f, -792f), vec2<f32>(-307f, 2309f), vec2<f32>(-1816f, 1202f), vec2<f32>(654f, -1474f), vec2<f32>(-1600f, -273f), vec2<f32>(208f, 416f), vec2<f32>(-1000f, 281f), vec2<f32>(2092f, 391f), vec2<f32>(-443f, -1000f), vec2<f32>(524f, -1770f), vec2<f32>(-1711f, -2494f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> bool {
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.a, -1500f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), arg_1.e.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0)) * _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1059f, _wgslsmith_f_op_f32(min(2689f, 1000f))) * var_0)));
    return Struct_1(-717f);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)));
    global0 = array<bool, 3>();
    let var_1 = -(vec3<i32>(2147483647i, u_input.b, u_input.b) & ~countOneBits(vec3<i32>(u_input.b, 16217i, u_input.a)));
    let var_2 = Struct_2(-214f, func_3(vec4<bool>(global0[_wgslsmith_index_u32(9018u, 3u)], !func_2(Struct_3(true, global0[_wgslsmith_index_u32(33749u, 3u)], vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(4773u, 3u)], Struct_2(var_0.a, Struct_1(-1000f), var_1.x, var_0.a, Struct_1(1450f))), var_0.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12530u, 4294967295u, 18425u), vec4<u32>(18434u, 24659u, 8219u, 38960u)), 3u)], true), Struct_2(var_0.a, Struct_1(var_0.a), ~abs(6145i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 257f)), Struct_1(_wgslsmith_f_op_f32(max(var_0.a, 260f)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 3392i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), var_1.xy | var_1.yx), _wgslsmith_sub_vec2_i32(var_1.xz | var_1.xx, var_1.zz)), var_0.a, Struct_1(761f));
    var var_3 = Struct_3(true, !global0[_wgslsmith_index_u32(0u, 3u)], select(select(vec3<bool>(select(global0[_wgslsmith_index_u32(30730u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)]), true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), 3u)]), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(13857u, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(10957u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false)), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(10312u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(112216u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(51472u, 3u)], false, false)), select(global0[_wgslsmith_index_u32(12942u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], false)), !vec3<bool>(global0[_wgslsmith_index_u32(13775u, 3u)], false, global0[_wgslsmith_index_u32(19589u, 3u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(29770u, 3u)], global0[_wgslsmith_index_u32(14492u, 3u)])), false), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 17288u), vec2<u32>(4294967295u, 50538u), true), vec2<u32>(67622u, 15352u)), ~vec2<u32>(4294967295u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) == _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~(~vec2<u32>(0u, 7259u))), Struct_2(_wgslsmith_f_op_f32(981f - var_2.a), func_3(vec4<bool>(global0[_wgslsmith_index_u32(~17707u, 3u)], global0[_wgslsmith_index_u32(reverseBits(0u), 3u)], false, global0[_wgslsmith_index_u32(1u, 3u)]), Struct_2(_wgslsmith_f_op_f32(var_2.d + var_2.d), Struct_1(-1000f), abs(-14122i), _wgslsmith_div_f32(var_2.d, var_0.a), Struct_1(var_0.a)), vec2<u32>(1u, ~1u)), var_1.x, _wgslsmith_f_op_f32(var_0.a * var_2.a), var_2.e));
    return _wgslsmith_mod_u32(1u >> ((_wgslsmith_dot_vec3_u32(abs(vec3<u32>(13495u, 0u, 9237u)), vec3<u32>(1u, 1u, 1u)) | ~(~34010u)) % 32u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 31>();
    let var_0 = vec3<bool>(!(select(func_1(), 1u, true) >= firstTrailingBit(firstTrailingBit(0u))), all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 19847u), 3u)], true, !global0[_wgslsmith_index_u32(0u, 3u)] & true)), !(countOneBits(i32(-1i) * -22344i) > firstTrailingBit(2147483647i)));
    global0 = array<bool, 3>();
    var var_1 = select(vec4<bool>(!func_2(Struct_3(false, false, var_0, var_0.x, Struct_2(1175f, Struct_1(223f), 21585i, 1000f, Struct_1(136f))), _wgslsmith_div_f32(561f, -419f)), true, any(select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), false)), global0[_wgslsmith_index_u32(9017u, 3u)]), select(!vec4<bool>(true, all(vec3<bool>(false, var_0.x, true)), !global0[_wgslsmith_index_u32(305u, 3u)], true), select(vec4<bool>(false, any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true, false)), u_input.b == u_input.a, var_0.x), vec4<bool>(var_0.x, !var_0.x, !global0[_wgslsmith_index_u32(51285u, 3u)], var_0.x), true), vec4<bool>(true, var_0.x, all(var_0.yx), false)), !(!(!select(vec4<bool>(false, true, var_0.x, global0[_wgslsmith_index_u32(20060u, 3u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    var var_2 = Struct_3(!all(select(!var_0, select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, true)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f + 1f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1152f)))) + -491f), var_1.xyz, var_0.x, Struct_2(-1172f, func_3(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(1u, 3u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(5503u, 3u)], var_1.x)), Struct_2(_wgslsmith_f_op_f32(1821f * -446f), Struct_1(188f), max(0i, u_input.a), 1000f, func_3(vec4<bool>(false, true, var_1.x, var_0.x), Struct_2(-1092f, Struct_1(-881f), 15224i, -1287f, Struct_1(1386f)), vec2<u32>(1u, 37843u))), ~vec2<u32>(1u, 91474u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13845u, 1716u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1111f)), _wgslsmith_f_op_f32(1492f + -797f))))));
    let var_3 = ~(-select(-vec3<i32>(u_input.a, u_input.a, var_2.e.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.e.c, 24185i, 17681i), vec3<i32>(var_2.e.c, u_input.a, u_input.a)), vec3<bool>(var_1.x, true, var_1.x))) ^ vec3<i32>(_wgslsmith_mult_i32(countOneBits(0i), 3713i) & u_input.a, max(2147483647i, 14906i), -1i);
    var var_4 = 10467u;
    var var_5 = Struct_3(any(var_1.wyx), all(!vec4<bool>(all(vec4<bool>(var_2.d, false, global0[_wgslsmith_index_u32(0u, 3u)], false)), all(var_1.wxy), var_2.e.b.a <= 295f, all(var_0))), vec3<bool>(select(var_2.e.a > var_2.e.a, !global0[_wgslsmith_index_u32(1u, 3u)], true) | true, var_2.a, var_0.x), true, var_2.e);
    let var_6 = vec4<i32>(62482i, _wgslsmith_add_i32(~26426i | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_3, vec3<i32>(var_3.x, var_3.x, var_3.x)), var_2.e.c << (4294967295u % 32u)), _wgslsmith_mod_i32(firstTrailingBit(~var_3.x), -_wgslsmith_mult_i32(var_2.e.c, var_2.e.c))), var_5.e.c, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(var_6, vec4<i32>(var_6.x, 0i, -353i, -73365i))), -2147483647i, select(1i, 16544i, func_2(Struct_3(true, true, vec3<bool>(global0[_wgslsmith_index_u32(222u, 3u)], false, global0[_wgslsmith_index_u32(16382u, 3u)]), var_5.d, Struct_2(var_5.e.b.a, Struct_1(var_2.e.b.a), u_input.a, var_5.e.d, var_2.e.e)), -196f)))), 214f, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_5.e.c, -9993i, var_5.e.c), vec3<i32>(u_input.a, 20285i, 0i)), var_2.e.c ^ -708i) << ((~vec2<u32>(0u, 40847u) ^ select(vec2<u32>(34637u, 0u), vec2<u32>(4294967295u, 0u), false)) % vec2<u32>(32u)), var_6.wy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.e.a - var_5.e.b.a), _wgslsmith_f_op_f32(step(1025f, 593f)), _wgslsmith_f_op_f32(1058f * var_5.e.e.a), -359f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, -790f, var_2.e.a, var_5.e.b.a) - vec4<f32>(-557f, var_5.e.b.a, 3592f, var_2.e.a)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1437f, -959f) - var_5.e.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1181f - var_5.e.d) - var_2.e.b.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5.e.e.a))), 409f)));
}

