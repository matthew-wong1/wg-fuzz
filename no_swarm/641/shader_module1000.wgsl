struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-239f, 189f, 1906f, 1024f), vec4<f32>(-500f, -378f, 746f, -1026f), vec4<f32>(-1436f, 926f, 372f, -1624f), vec4<f32>(510f, 2531f, -346f, 157f), vec4<f32>(-1000f, 1000f, 1000f, 1321f), vec4<f32>(-1307f, -565f, 205f, -516f), vec4<f32>(445f, 625f, 194f, 902f), vec4<f32>(-1000f, 2916f, 1477f, -833f), vec4<f32>(125f, -1478f, 248f, 835f), vec4<f32>(-146f, 1000f, 251f, 1669f), vec4<f32>(118f, -1607f, -1000f, 1313f), vec4<f32>(-1373f, 602f, 1000f, 966f), vec4<f32>(-564f, 782f, 768f, 1169f), vec4<f32>(-432f, 1455f, 1651f, -1580f), vec4<f32>(-702f, 1196f, -1016f, 250f), vec4<f32>(-217f, 253f, -1000f, 140f), vec4<f32>(-1265f, -1836f, 610f, 3703f), vec4<f32>(572f, 1448f, 1000f, -1000f), vec4<f32>(-1688f, -231f, -1641f, -310f), vec4<f32>(-1000f, 1376f, -604f, 257f), vec4<f32>(-1000f, 477f, -1209f, -387f), vec4<f32>(2048f, -2317f, -234f, 970f), vec4<f32>(625f, -181f, 550f, 559f), vec4<f32>(-1000f, -340f, -269f, 1155f));

var<private> global1: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.yx >> (vec2<u32>(arg_1.x, arg_0.x) % vec2<u32>(32u)), arg_0.zx) >> (select(~vec2<u32>(4294967295u, arg_1.x), max(arg_0.xx, vec2<u32>(u_input.b.x, 110523u)), vec2<bool>(true, true)) % vec2<u32>(32u)), abs(~reverseBits(vec2<u32>(arg_1.x, 8839u)))), arg_1.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), abs(0u), u_input.b.x), u_input.b.x, _wgslsmith_mult_u32(u_input.c.x ^ 0u, 1u)) | ~(~u_input.c.yzz >> (~_wgslsmith_div_vec3_u32(u_input.c.ywz, u_input.c.wzw) % vec3<u32>(32u)));
    let var_1 = abs(~(~var_0 >> (vec3<u32>(~var_0.x, _wgslsmith_add_u32(0u, 4538u), var_0.x) % vec3<u32>(32u))));
    var var_2 = !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x);
    var var_3 = var_2.xxy;
    var_2 = !vec4<bool>(!(-1874f > _wgslsmith_f_op_f32(floor(-215f))), !arg_0.x, true, !(all(vec2<bool>(false, arg_0.x)) != !arg_0.x));
    return Struct_1(var_1.x << (30085u % 32u), vec3<i32>(1i, max(~2147483647i, _wgslsmith_div_i32(-43581i, reverseBits(22405i))), firstLeadingBit(_wgslsmith_mod_i32(1i, -2147483647i)) >> (func_3(u_input.c, var_1) % 32u)), -(~(-vec3<i32>(2147483647i, 2147483647i, -17660i))), true, 1653f);
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = 40342u & _wgslsmith_sub_u32(~func_2(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, false))).a, arg_0.a);
    let var_1 = Struct_2(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(select(arg_0.c, arg_0.c, false), vec3<i32>(arg_0.b.x, arg_0.c.x, -734i)), -2147483647i, 2147483647i, -36452i)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b >> (u_input.a.xy % vec2<u32>(32u))) | arg_0.a, vec3<i32>(-1900i, 9915i & arg_0.b.x, _wgslsmith_div_i32(-54223i, firstLeadingBit(arg_0.b.x))), abs(firstLeadingBit(vec3<i32>(arg_0.c.x, 2981i, arg_0.b.x))), arg_0.d, arg_0.e), func_2(select(vec2<bool>(arg_0.d || arg_0.d, true), vec2<bool>(any(vec2<bool>(true, true)), arg_0.d), arg_0.d & true)), func_2(!vec2<bool>(arg_0.d, arg_0.d && true)));
    var_0 = ~0u;
    var var_2 = select(vec3<bool>(all(vec4<bool>(true, true, all(vec2<bool>(arg_0.d, var_1.c.d)), -267f > var_1.c.e)), var_1.c.d != !arg_0.d, true), vec3<bool>(true, arg_0.d, !all(select(vec3<bool>(var_1.c.d, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, var_1.b.d, false), true))), all(vec4<bool>(true, any(vec4<bool>(var_1.d.d, var_1.d.d, var_1.b.d, arg_0.d)), (arg_0.a ^ arg_0.a) > 92870u, arg_0.d)));
    var var_3 = vec4<bool>(var_1.d.d, arg_0.d, ~(-(i32(-1i) * -2147483647i)) < select(-_wgslsmith_clamp_i32(-8508i, arg_0.c.x, -32616i), var_1.d.c.x, arg_0.d), arg_0.d);
    return vec4<i32>(-31917i & firstTrailingBit(-4839i), arg_0.c.x, -2147483647i, ~15244i);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    let var_0 = Struct_2(arg_0, func_2(vec2<bool>(true, true)), Struct_1(~0u, abs(arg_0.wzz), -arg_0.zwz, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1550f))))), Struct_1(abs(~(~u_input.b.x)), ~select(arg_0.xwx >> (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u)), ~arg_0.xxz, vec3<bool>(true, false, false)), vec3<i32>(-1i, 42540i, abs(35196i)) << (max(u_input.a, u_input.c.wwy) % vec3<u32>(32u)), !(u_input.a.x > u_input.c.x), 254f));
    let var_1 = var_0.b.a & reverseBits(~var_0.b.a >> (u_input.b.x % 32u));
    var var_2 = func_2(select(!(!vec2<bool>(var_0.c.d, var_0.b.d)), select(!vec2<bool>(false, var_0.b.d), vec2<bool>(var_0.d.d, false | var_0.b.d), var_0.c.e >= _wgslsmith_f_op_f32(-var_0.c.e)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, var_0.d.d)), !select(vec2<bool>(true, var_0.b.d), vec2<bool>(var_0.c.d, true), var_0.d.d), !(!var_0.b.d))));
    let var_3 = var_2.e;
    let var_4 = select(!vec4<bool>(var_2.d, true, !func_2(vec2<bool>(true, var_2.d)).d, !(var_2.e <= -1257f)), select(select(!select(vec4<bool>(false, var_0.c.d, true, var_2.d), vec4<bool>(false, var_2.d, var_0.b.d, var_0.c.d), vec4<bool>(true, true, var_0.d.d, var_0.b.d)), select(!vec4<bool>(var_2.d, var_2.d, true, true), select(vec4<bool>(var_0.b.d, var_0.b.d, var_2.d, false), vec4<bool>(false, var_0.b.d, true, var_0.b.d), vec4<bool>(true, var_0.b.d, var_0.d.d, true)), vec4<bool>(var_0.c.d, false, var_2.d, true)), vec4<bool>(var_0.b.d, select(var_2.d, false, true), true || var_0.c.d, var_0.c.d)), !vec4<bool>(!var_0.d.d, all(vec3<bool>(var_2.d, false, var_2.d)), var_0.d.d, any(vec3<bool>(var_2.d, var_0.b.d, var_0.c.d))), !all(select(vec2<bool>(true, false), vec2<bool>(var_0.d.d, false), vec2<bool>(var_2.d, var_0.d.d)))), (func_2(vec2<bool>(var_0.b.d, var_0.c.d)).d & any(!vec4<bool>(var_2.d, false, var_2.d, var_2.d))) & var_0.c.d);
    return -20911i;
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    global1 = true;
    let var_0 = Struct_2(vec4<i32>(-1i) * -select(-vec4<i32>(arg_0, -16679i, 2147483647i, 25585i), vec4<i32>(arg_0, arg_1.x, 2147483647i, arg_1.x), true), func_2(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), Struct_1(3926u | u_input.a.x, _wgslsmith_div_vec3_i32(~arg_1, vec3<i32>(abs(-66636i), ~arg_1.x, _wgslsmith_div_i32(arg_0, arg_0))), arg_1, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(41461u, u_input.a.x), u_input.c.x), ~func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), true)).c, _wgslsmith_add_vec3_i32(~arg_1, _wgslsmith_mult_vec3_i32(abs(arg_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_0, -466i), arg_1, arg_1))), true, _wgslsmith_f_op_f32(-arg_2)));
    var var_1 = ~select(~var_0.b.a, 77579u, var_0.c.d);
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = -465f;
    var var_1 = func_6(arg_2.x, vec3<i32>(func_5(func_4(func_2(vec2<bool>(false, arg_1))), arg_2.x), 1i, reverseBits(arg_2.x)), _wgslsmith_f_op_f32(-var_0));
    let var_2 = firstTrailingBit(abs(max(vec4<u32>(u_input.c.x << (0u % 32u), u_input.a.x ^ u_input.b.x, 1u, u_input.c.x | 0u), ~(~vec4<u32>(4294967295u, u_input.a.x, 29708u, u_input.b.x)))));
    var var_3 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(2151f * var_0), func_2(vec2<bool>(false, false)).d))))));
    let var_4 = Struct_2(-vec4<i32>(arg_2.x, arg_2.x, 2147483647i, 58466i), func_2(!vec2<bool>(!arg_1, true)), Struct_1(~reverseBits(373u), ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, arg_2.x), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, 0i), vec3<i32>(0i, arg_2.x, 2147483647i))), arg_2, arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-142f - -941f), var_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f), var_0))), func_2(!select(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, false), true)));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.e) + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1285f, _wgslsmith_f_op_f32(arg_0 * 562f))) + -552f));
}

fn func_7(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(100627u, 24u)], Struct_2(~(-vec4<i32>(1i, 1i, 1i, 1i)), func_2(!select(arg_1.zw, arg_1.zy, true)), func_2(!vec2<bool>(arg_1.x, arg_1.x)), func_2(!select(arg_1.wz, arg_1.yw, arg_1.ww))), func_2(vec2<bool>(arg_1.x, false)).e);
    global0 = array<vec4<f32>, 24>();
    let var_1 = Struct_3(vec4<f32>(func_2(!(!vec2<bool>(true, arg_1.x))).e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1668f, _wgslsmith_f_op_f32(-var_0.c), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -680f)))), func_2(select(arg_1.yz, vec2<bool>(true, true), select(vec2<bool>(arg_1.x, var_0.b.c.d), arg_1.zz, vec2<bool>(true, arg_1.x)))).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -210f)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(min(var_0.b.d.e, _wgslsmith_f_op_f32(step(var_0.c, -793f)))))));
    let var_2 = 1i;
    global0 = array<vec4<f32>, 24>();
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, 1000f) - _wgslsmith_f_op_vec2_f32(func_1(1196f, false, vec3<i32>(-41725i, 0i, 14480i)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(640f, 1000f, false)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-965f, 1000f) * vec2<f32>(-688f, -1106f))), !(!vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true)));
    global0 = array<vec4<f32>, 24>();
    var_0 = Struct_1(~u_input.a.x, var_0.b, var_0.b, any(select(!(!vec2<bool>(var_0.d, var_0.d)), select(!vec2<bool>(var_0.d, true), vec2<bool>(true, true), var_0.e == 1652f), !vec2<bool>(var_0.d, true))), 1718f);
    global0 = array<vec4<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(640f, vec4<f32>(var_0.e, var_0.e, 181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + 1000f)));
}

