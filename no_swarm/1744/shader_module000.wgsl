struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = abs(-(i32(-1i) * -(arg_0.a.c | -1i)));
    let var_1 = Struct_5(_wgslsmith_div_u32(u_input.d, _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_clamp_u32(1u, u_input.d, ~u_input.d))), ~1i, ~select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 0u, 1u, 25548u), ~vec4<u32>(u_input.d, 9128u, u_input.d, u_input.d)), abs(~vec4<u32>(4294967295u, 8157u, 1u, u_input.d)), select(select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_1), vec4<bool>(arg_1, false, true, true)), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 25u)], arg_0.a.b), true)), ~vec4<u32>(u_input.d, u_input.d, _wgslsmith_sub_u32(u_input.d, abs(23506u)), u_input.d));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(arg_2.x, arg_0.d.x, var_1.b)), -(~arg_0.d)), select(vec3<i32>(countOneBits(42283i), var_0 << (4294967295u % 32u), abs(-24616i)), arg_2.xxy, true)), arg_0.d);
    var_2 = var_1.c.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, -205f, 2656f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-116f, 422f, 1836f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), -1893f, 103f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), _wgslsmith_f_op_f32(max(-191f, -337f)), _wgslsmith_f_op_f32(f32(-1f) * -244f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, 781f, -608f)), vec3<f32>(2055f, -1310f, -950f)), vec3<f32>(653f, _wgslsmith_f_op_f32(min(1247f, -1324f)), _wgslsmith_f_op_f32(step(615f, 161f))))));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(u_input.c, arg_0, u_input.a.x), false, -2147483647i, u_input.a.xwx), true, u_input.a))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(938f, 742f, -1607f), vec3<f32>(1000f, 378f, 1477f), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], false, arg_0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(u_input.b, false, 2147483647i), arg_0, u_input.a.x, u_input.a.wzw), true, u_input.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1704f, -141f, 1000f), vec3<f32>(-1613f, 545f, 1029f), vec3<bool>(arg_0, arg_0, false))), vec3<bool>(true, true, true)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 962f, 687f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1280f, -1239f, 193f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-243f, -552f, 2684f) * vec3<f32>(542f, -904f, -777f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(355f, 1000f, -720f), vec3<f32>(1123f, -208f, 298f)))))));
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_div_f32(-841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f - -655f))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(699f, 1000f))), !arg_0))));
    let var_2 = Struct_3(Struct_1(u_input.a.x, true, -2163i));
    var var_3 = var_2.a.c;
    let var_4 = select(~vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.d, u_input.d, arg_1)), 70005u, countOneBits(~arg_1)), ~countOneBits(select(vec3<u32>(15756u, arg_1, 4294967295u), vec3<u32>(arg_1, 4294967295u, 19725u), vec3<bool>(true, false, arg_0)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, arg_1, 46233u), vec3<u32>(arg_1, 31795u, arg_1))), !select(select(!vec3<bool>(false, false, arg_0), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, false)), !vec3<bool>(var_2.a.b, global0[_wgslsmith_index_u32(35883u, 25u)], arg_0)), vec3<bool>(true, true, true), true));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_4 {
    let var_0 = func_2(arg_1, reverseBits(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(arg_0, u_input.d), arg_0, ~arg_0)));
    global0 = array<bool, 25>();
    var var_1 = vec3<bool>(select(!(false || global0[_wgslsmith_index_u32(u_input.d, 25u)]), arg_1, !(74126u != u_input.d)) || global0[_wgslsmith_index_u32(~arg_0, 25u)], true, ((~u_input.d | 0u) == (~arg_0 ^ u_input.d)) & !all(!vec2<bool>(var_0.a.b, true)));
    global0 = array<bool, 25>();
    var_1 = !select(vec3<bool>(true, true, !global0[_wgslsmith_index_u32(u_input.d, 25u)] | (arg_0 >= arg_0)), select(select(vec3<bool>(false, var_0.a.b, var_1.x), select(vec3<bool>(var_1.x, arg_1, global0[_wgslsmith_index_u32(1370u, 25u)]), vec3<bool>(false, arg_1, arg_1), true), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(global0[_wgslsmith_index_u32(14682u, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)], false), false)), select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 25u)]), !vec3<bool>(var_0.a.b, true, false), vec3<bool>(var_0.a.b, var_0.a.b, false)), true), !vec3<bool>(global0[_wgslsmith_index_u32(~36195u, 25u)], !arg_1, true));
    return Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1920f, 2374f, 132f)) * _wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_0.a, var_0.a.b, -18582i, vec3<i32>(38622i, var_0.a.c, 2147483647i)), false, vec4<i32>(var_0.a.a, 1i, u_input.a.x, 1i)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-494f, 1000f, 1040f))))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(~22029i, false, ~(-2619i)), select(any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])) && true, true, any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(18323u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], arg_1.a.b), !vec4<bool>(global0[_wgslsmith_index_u32(48205u, 25u)], false, true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 25u)], false, arg_1.a.b, false), vec4<bool>(arg_1.a.b, true, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(34863u, 25u)]), global0[_wgslsmith_index_u32(12436u, 25u)])))), i32(-1i) * -24820i, u_input.a.xyx ^ min(vec3<i32>(select(2147483647i, arg_1.a.a, false), 1i, -40556i), u_input.a.yzz));
    var var_1 = _wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, 1u) << (select(~vec2<u32>(arg_3, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 50547u), vec2<u32>(u_input.d, arg_3)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(arg_3, 25u)], global0[_wgslsmith_index_u32(17335u, 25u)], false))) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29087u, arg_3) >> (firstTrailingBit(vec2<u32>(1u, 77395u)) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_3, u_input.d), vec2<u32>(arg_3, 17382u))), 52399u));
    let var_2 = arg_1;
    global0 = array<bool, 25>();
    var var_3 = max(firstTrailingBit(~vec2<u32>(arg_3, 0u) | vec2<u32>(u_input.d, 0u)), firstTrailingBit(firstLeadingBit(firstLeadingBit(vec2<u32>(25059u, 78u))))) >> (vec2<u32>(arg_3, arg_3) % vec2<u32>(32u));
    return (arg_3 ^ ~1u) << (~_wgslsmith_mod_u32(4294967295u, ~arg_3) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.d, func_4(func_1(9400u >> (u_input.d % 32u), global0[_wgslsmith_index_u32(u_input.d, 25u)]), Struct_3(func_2(true, u_input.d).a), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 0i), vec4<i32>(-2147483647i, u_input.c, -22762i, -38946i)), u_input.c & u_input.b), u_input.d));
    let var_1 = u_input.c;
    let var_2 = Struct_5(1u, _wgslsmith_dot_vec2_i32(u_input.a.zz, -u_input.a.xx), vec4<u32>(19849u, 78365u, ~1u, 51335u), reverseBits(~(abs(vec4<u32>(0u, var_0.x, 9305u, u_input.d)) << (~vec4<u32>(var_0.x, 39364u, 0u, 0u) % vec4<u32>(32u)))));
    var_0 = reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(~firstLeadingBit(u_input.d), 7676u), _wgslsmith_div_vec2_u32(vec2<u32>(60999u, 36779u) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_2.c.x), var_2.c.wz) % vec2<u32>(32u)), reverseBits(~var_2.d.zw))));
    var var_3 = vec2<bool>(true, true);
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, var_1, -2147483647i, 0i), firstTrailingBit(~(~u_input.a)));
    let var_5 = vec3<bool>(any(vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(false, false, var_3.x, global0[_wgslsmith_index_u32(3070u, 25u)]))), true)), 1699f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(f32(-1f) * -308f))), var_3.x);
    let var_6 = select(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], var_3.x), !var_5.zx, any(var_5.yz)), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(23808u, 25u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 25u)], var_3.x), vec2<bool>(var_5.x, false), var_5.xx), !var_5.xy, global0[_wgslsmith_index_u32(~1u, 25u)])), !vec2<bool>(!var_5.x, false), var_5.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-950f, 1f)), 1031f) * vec3<f32>(1301f, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(u_input.c, var_6.x, 2147483647i), false, 33086i, var_4.zxy), true | var_3.x, u_input.a & u_input.a)).x, _wgslsmith_f_op_f32(837f + 127f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1386f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(var_4.x, false, 0i), false, 16931i, var_4.xwy), var_6.x, vec4<i32>(82035i, var_2.b, 41761i, 34846i))).x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831f + -1731f) - _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(2147483647i, var_5.x, u_input.b), false, u_input.a.x, vec3<i32>(var_1, u_input.c, 26521i)), var_6.x, vec4<i32>(-5776i, var_4.x, 1i, 1i))).x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-2319f, -1207f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(274f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(var_1, true, var_1), false, 2147483647i, u_input.a.wxw), false, u_input.a)).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(762f, -135f)))))), var_4.wy, var_0.x);
}

