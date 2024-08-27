struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32> = vec2<i32>(5697i, -21255i);

var<private> global2: u32 = 6948u;

var<private> global3: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global4: vec4<f32> = vec4<f32>(816f, 279f, -444f, 330f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> bool {
    global1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(firstLeadingBit(select(arg_1.b, arg_1.b, true)), vec3<i32>(arg_1.b.x, 1i, -87612i)), -global1.x | -2147483647i);
    global3 = array<vec3<bool>, 14>();
    let var_0 = arg_1.a;
    let var_1 = !select(!select(vec3<bool>(var_0.c.x, arg_1.c.c.x, false), vec3<bool>(var_0.c.x, true, arg_0.x), false), arg_0, select(var_0.c, select(arg_0, arg_0, var_0.c), true));
    global3 = array<vec3<bool>, 14>();
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.wx)), ~select(reverseBits(u_input.b.xx), ~u_input.a.xx, arg_1.wx), select(vec3<bool>(func_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec2<f32>(267f, 1000f), u_input.b.zz, global3[_wgslsmith_index_u32(47286u, 14u)]), vec3<i32>(2147483647i, global1.x, 24126i), Struct_1(vec2<f32>(1730f, global4.x), vec2<u32>(u_input.b.x, 40890u), arg_1.yzw), global4.x), vec4<f32>(global4.x, -922f, global4.x, global4.x), 3956i), 4294967295u == u_input.d, arg_1.x), vec3<bool>(func_3(vec3<bool>(arg_1.x, arg_1.x, true), Struct_2(Struct_1(vec2<f32>(-959f, global4.x), vec2<u32>(0u, u_input.b.x), arg_1.zxz), vec3<i32>(u_input.c.x, 95825i, arg_0.x), Struct_1(vec2<f32>(-1400f, 445f), vec2<u32>(u_input.d, 23648u), global3[_wgslsmith_index_u32(45780u, 14u)]), global4.x), vec4<f32>(-843f, 1098f, -1000f, global4.x), -2147483647i), true, true), select(global3[_wgslsmith_index_u32(25954u, 14u)], vec3<bool>(false, false, false), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), true)))), max(abs(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(4359i, arg_0.x, arg_0.x), vec3<i32>(global1.x, global1.x, u_input.c.x)))), firstTrailingBit(vec3<i32>(global1.x, u_input.c.x, -27316i) << (u_input.a % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u))), Struct_1(global4.wx, select(~u_input.b.yy, ~u_input.a.yz, any(arg_1.yw)) | vec2<u32>(~u_input.d, 110784u), vec3<bool>(arg_1.x && true, all(!arg_1), !arg_1.x && !arg_1.x)));
    global1 = -var_0.b.zy;
    var var_1 = Struct_5(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.wz + vec2<f32>(1163f, 516f)), _wgslsmith_div_vec2_f32(vec2<f32>(993f, var_0.c.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, 539f)))), var_0.c.b, var_0.a.c), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, 13099i, u_input.c.x, var_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-33183i, u_input.c.x, -40608i, -8518i), vec4<i32>(global1.x, arg_0.x, 10667i, var_0.b.x))), -(~vec4<i32>(1i, 8814i, 6966i, arg_0.x))), abs(u_input.c.x), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(u_input.c, var_0.b.zx), global1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-global4.wz), abs(abs(~vec2<u32>(37638u, 28639u))), arg_1.yzw));
    var var_2 = reverseBits(u_input.a);
    let var_3 = abs(vec2<u32>(var_2.x, var_2.x));
    return !(any(select(select(vec4<bool>(true, true, true, arg_1.x), arg_1, false), select(vec4<bool>(false, true, var_0.a.c.x, true), vec4<bool>(false, var_0.c.c.x, true, false), var_0.c.c.x), true)) | true);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = select(!select(vec4<bool>(arg_1, func_3(vec3<bool>(true, arg_1, arg_2), Struct_2(Struct_1(vec2<f32>(arg_0.x, arg_0.x), vec2<u32>(u_input.b.x, 1u), vec3<bool>(true, arg_2, arg_1)), vec3<i32>(arg_3, -8423i, u_input.c.x), Struct_1(vec2<f32>(-952f, 1749f), vec2<u32>(38774u, u_input.d), vec3<bool>(false, arg_2, true)), global4.x), vec4<f32>(520f, global4.x, 1000f, global4.x), u_input.c.x), arg_2, !arg_1), !vec4<bool>(false, arg_1, arg_1, false), any(vec4<bool>(false, false, arg_1, arg_2))), vec4<bool>(select(select(any(vec3<bool>(false, arg_1, true)), all(vec3<bool>(arg_1, arg_2, true)), true), false, false), arg_2, arg_1, any(vec2<bool>(arg_1, arg_1))), select(!(!(!vec4<bool>(true, true, arg_1, true))), select(select(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_1, false, arg_1, true), false), vec4<bool>(arg_1, true, true, arg_1), func_3(vec3<bool>(false, false, arg_2), Struct_2(Struct_1(vec2<f32>(arg_0.x, global4.x), vec2<u32>(79444u, 0u), global3[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec3<i32>(2147483647i, 73079i, 2147483647i), Struct_1(arg_0.zz, vec2<u32>(54213u, 86167u), global3[_wgslsmith_index_u32(4294967295u, 14u)]), arg_0.x), vec4<f32>(arg_0.x, arg_0.x, global4.x, 1532f), 0i)), vec4<bool>(arg_2, true, arg_1 != false, arg_2 || true), vec4<bool>(any(global3[_wgslsmith_index_u32(4294967295u, 14u)]), false | arg_1, arg_1, global4.x >= global4.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + global4.x))) != _wgslsmith_f_op_f32(sign(-1000f))));
    var var_1 = _wgslsmith_div_i32(arg_3, _wgslsmith_div_i32(u_input.c.x & _wgslsmith_clamp_i32(-2147483647i, -1i, u_input.c.x), ~16110i) | abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_3, 1i, arg_3, arg_3), vec4<i32>(u_input.c.x, u_input.c.x, 0i, global1.x), vec4<bool>(arg_1, false, arg_1, arg_1)), select(vec4<i32>(arg_3, 1i, 2147483647i, global1.x), vec4<i32>(global1.x, arg_3, global1.x, global1.x), false))));
    let var_2 = Struct_2(Struct_1(arg_0.zz, ~vec2<u32>(7253u, ~9770u), var_0.wyy), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.c.x, _wgslsmith_div_i32(-u_input.c.x, 22285i)), -vec3<i32>(arg_3 ^ 7522i, u_input.c.x, ~2147483647i), max(firstLeadingBit(vec3<i32>(-1i, global1.x, arg_3)), -vec3<i32>(u_input.c.x, 1i, -19797i)) & ~(vec3<i32>(-2147483647i, 29178i, u_input.c.x) | vec3<i32>(29398i, global1.x, global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.yx, global4.zw) * vec2<f32>(_wgslsmith_f_op_f32(select(-2048f, 311f, var_0.x)), global4.x)), ~_wgslsmith_div_vec2_u32(~u_input.b.yx, ~u_input.a.xz), global3[_wgslsmith_index_u32(reverseBits(4294967295u), 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(695f * global4.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(684f, arg_0.x))))))));
    let var_3 = u_input.a;
    global0 = var_2.a.c.x;
    return countOneBits(1u);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, global4.x, arg_0.a.x, arg_0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1897f, 509f, arg_2))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, arg_2, arg_0.a.x, global4.x), vec4<f32>(1651f, 1266f, arg_2, global4.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1077f, arg_0.a.x, arg_2, -630f), vec4<f32>(arg_0.a.x, global4.x, 370f, -433f))))))));
    let var_1 = select(select(arg_0.c, global3[_wgslsmith_index_u32(func_4(global4.xxz, select(any(vec2<bool>(arg_0.c.x, true)), func_2(vec2<i32>(global1.x, u_input.c.x), vec4<bool>(false, arg_0.c.x, true, true)), global4.x > arg_2), true, ~17210i), 14u)], any(select(!vec2<bool>(arg_0.c.x, true), select(arg_0.c.xx, arg_0.c.zz, arg_1), !arg_0.c.x))), select(arg_0.c, arg_0.c, vec3<bool>(!(u_input.a.x == u_input.a.x), false, true)), !vec3<bool>(arg_0.c.x, !arg_0.c.x, false));
    var var_2 = arg_0;
    let var_3 = ~max(select(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, 1u, 0u, 18490u), vec4<u32>(4294967295u, 0u, var_2.b.x, 0u)), vec4<u32>(min(0u, var_2.b.x), 1u ^ arg_0.b.x, _wgslsmith_sub_u32(var_2.b.x, var_2.b.x), ~var_2.b.x), vec4<bool>(!arg_1, all(vec4<bool>(false, var_1.x, arg_0.c.x, true)), false, !arg_1)), vec4<u32>(u_input.a.x, func_4(_wgslsmith_f_op_vec3_f32(select(var_0.wzw, global4.ywy, var_2.c)), false & arg_1, true, u_input.c.x), _wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(0u, var_2.b.x)), 1u));
    global4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * var_2.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -733f)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 12356u;
    var var_0 = global4.x;
    global3 = array<vec3<bool>, 14>();
    var_0 = 1000f;
    var var_1 = 27506u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.zz)) - global4.yw)));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, 1134f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_mod_u32(u_input.d, u_input.a.x)), !select(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(false, true, true), false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(-global4.x));
    var var_3 = Struct_1(global4.ww, u_input.b.zy, !vec3<bool>(true, select(all(vec4<bool>(true, false, false, false)), true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), -vec2<i32>(-(~(-1511i)), abs(-28438i)), abs(~vec3<i32>(42094i, -global1.x, -51605i)), ~(-(~vec3<i32>(global1.x, global1.x, 4146i)) ^ countOneBits(vec3<i32>(global1.x, u_input.c.x, -36107i))));
}

