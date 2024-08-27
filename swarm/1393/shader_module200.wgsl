struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(274f, 1000f), vec2<f32>(1008f, 875f), vec2<f32>(380f, 1438f), vec2<f32>(929f, 545f), vec2<f32>(-1239f, 2805f), vec2<f32>(-1255f, -343f), vec2<f32>(-1345f, -1000f), vec2<f32>(-1000f, -258f), vec2<f32>(1085f, -1623f), vec2<f32>(1906f, -101f), vec2<f32>(-1000f, 1000f), vec2<f32>(376f, -145f));

var<private> global1: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec3<bool> {
    return arg_1.b.a.zwz;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    global0 = array<vec2<f32>, 12>();
    global1 = !(!select(true, true, false)) | ((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1003f))) <= 1195f) != ((func_3(1u, arg_1).x || arg_0.x) & true));
    var var_0 = false;
    var_0 = any(!arg_0.xx);
    let var_1 = Struct_1(select(firstTrailingBit(-firstLeadingBit(vec4<i32>(-29840i, u_input.a.x, arg_1.a.b.x, -28987i))), abs(select(arg_1.a.b ^ vec4<i32>(1025i, -31489i, arg_1.a.b.x, -17833i), min(vec4<i32>(u_input.a.x, u_input.a.x, arg_1.a.b.x, arg_1.a.b.x), vec4<i32>(arg_1.a.b.x, 0i, 0i, 1i)), arg_1.a.a.x)), !arg_1.b.a));
    return 444f;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -141f)))), _wgslsmith_f_op_f32(func_4(func_3(reverseBits(30008u), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(-1i, u_input.a.x, -17824i, 1i)), Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(u_input.a.x, 2147483647i, 56319i, -2147483647i)))), Struct_3(Struct_2(vec4<bool>(false, false, false, true), _wgslsmith_add_vec4_i32(vec4<i32>(1326i, 54307i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, -10522i, -1i))), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(8563i, u_input.a.x, u_input.a.x, 55087i))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(2054u, 16820u), vec2<u32>(1u, 4294967295u), true), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 75374u), vec2<u32>(61926u, 4294967295u))) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)))), 352f, _wgslsmith_div_f32(arg_0, arg_0));
    var var_1 = Struct_3(Struct_2(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), Struct_3(Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(4476i, -1i, 2147483647i, 1i)), Struct_2(vec4<bool>(false, true, false, false), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), vec2<u32>(4294967295u, 4294967295u)))), ~vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), max(-2147483647i, u_input.a.x), 1i)), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(53441i, u_input.a.x)), u_input.a.x, -2147483647i, ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.zzy);
    global1 = ((firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, 54573i)) << (max(~4294967295u, ~1u) % 32u)) < -9492i) && all(select(vec4<bool>(arg_0 != arg_0, true, any(var_1.b.a.xz), true), !vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, false), !select(false, var_1.a.a.x, true)));
    var_2 = var_0.yzz;
    return _wgslsmith_mod_u32(abs(~1u), 1u << (1u % 32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_2 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = Struct_2(select(vec4<bool>(true, false, true, false), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), firstTrailingBit(countOneBits(arg_0)));
    let var_1 = Struct_3(var_0, var_0);
    let var_2 = Struct_2(select(vec4<bool>(true, all(var_1.a.a.zw) == true, all(vec4<bool>(false, var_0.a.x, var_0.a.x, false)), var_1.a.a.x), vec4<bool>(true, true, true, (1u >= arg_1.x) & (1i >= var_0.b.x)), !select(vec4<bool>(false, false, var_1.b.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, false, false), var_1.b.a)), abs(firstLeadingBit(arg_0 | arg_0)));
    var var_3 = Struct_3(Struct_2(var_1.b.a, var_2.b), Struct_2(!(!select(vec4<bool>(var_2.a.x, true, var_0.a.x, true), vec4<bool>(true, false, true, false), var_2.a.x)), vec4<i32>(abs(12017i), _wgslsmith_div_i32(~var_0.b.x, abs(var_2.b.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-50317i, -15405i), vec2<i32>(var_2.b.x, var_2.b.x)), _wgslsmith_mod_i32(-14075i, u_input.a.x), arg_0.x), var_1.b.b.x)));
    return var_1.a;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 1041f;
    global1 = (all(vec4<bool>(all(arg_2.a), arg_0.a.x, arg_0.a.x, all(vec2<bool>(arg_0.a.x, true)))) && func_3(~min(14146u, 4294967295u), Struct_3(arg_0, func_5(arg_2.b, vec3<u32>(7233u, 19771u, 1u)))).x) | true;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, arg_1.x) - _wgslsmith_f_op_vec2_f32(arg_1 * global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1), arg_1), true || !arg_2.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, var_0)))), vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.x, -1000f, false)), -272f), arg_2.a.x))) + vec2<f32>(arg_1.x, -373f));
    global1 = false;
    global0 = array<vec2<f32>, 12>();
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(min(countOneBits(2147483647i), -10704i), -2147483647i, select(_wgslsmith_sub_i32(-13069i, -2147483647i), 1i, func_5(vec4<i32>(u_input.a.x, arg_0.b.x, -2147483647i, arg_2.b.x), vec3<u32>(1u, 18154u, 0u)).a.x), 29749i), arg_2.b));
}

fn func_1() -> Struct_3 {
    let var_0 = func_6(func_5(~select(vec4<i32>(1227i, 27787i, -5435i, 1i), -vec4<i32>(u_input.a.x, 0i, -2844i, u_input.a.x), vec4<bool>(false, false, true, false)), vec3<u32>(1u, ~firstLeadingBit(4294967295u), func_2(973f))), global0[_wgslsmith_index_u32(1u, 12u)], func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(2147483647i, 0i), max(u_input.a.x, u_input.a.x), 2147483647i), vec4<i32>(_wgslsmith_mult_i32(-40042i, u_input.a.x), u_input.a.x, 26176i, u_input.a.x)), vec3<u32>(1u, 1u, 1u)));
    let var_1 = select(23834u, ~(~0u), true);
    var var_2 = ~4294967295u << (firstTrailingBit(1u) % 32u);
    let var_3 = vec4<i32>(firstLeadingBit(~_wgslsmith_add_i32(~u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec4_i32(var_0.a, var_0.a), _wgslsmith_mult_i32(u_input.a.x, 1i), _wgslsmith_div_i32(1i, firstTrailingBit(select(u_input.a.x | var_0.a.x, var_0.a.x, select(true, false, true)))));
    return Struct_3(func_5(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, var_0.a.x, 51926i), max(u_input.a.x, 51404i)), var_0.a.x ^ 2147483647i, u_input.a.x, func_6(Struct_2(vec4<bool>(false, true, false, false), var_0.a), global0[_wgslsmith_index_u32(61840u, 12u)], Struct_2(vec4<bool>(true, false, true, true), var_3)).a.x), abs(~vec3<u32>(var_1, var_1, var_1))), Struct_2(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, func_5(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i), ~vec3<u32>(var_1, var_1, 10489u)).a.x), min(var_3, var_0.a)));
}

fn func_7(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    global1 = any(vec3<bool>(arg_3.x, arg_1, true));
    return 1000f;
}

fn func_8(arg_0: vec4<f32>) -> Struct_2 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = ~0u;
    let var_1 = func_1().a.a.yxz;
    global0 = array<vec2<f32>, 12>();
    var var_2 = var_0;
    return Struct_2(!(!func_1().b.a), min(_wgslsmith_mod_vec4_i32(vec4<i32>(19921i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, 12357i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(31576i, u_input.a.x, -2147483647i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 8904i))) & func_6(Struct_2(vec4<bool>(var_1.x, var_1.x, true, false), vec4<i32>(u_input.a.x, u_input.a.x, -14336i, 0i)), vec2<f32>(-344f, 946f), func_1().a).a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(0i, u_input.a.x, 0i, -70782i), func_1().b.b) << (firstTrailingBit(vec4<u32>(4294967295u, 0u, var_0, 12275u)) % vec4<u32>(32u))));
}

fn func_9(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(935f, 463f, -281f, 964f), vec4<f32>(384f, 1000f, 372f, 279f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(299f, 591f, -259f, -322f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(954f, -688f, 487f, 2133f) + vec4<f32>(871f, -156f, 553f, 219f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 740f, -197f, -561f))), arg_2.a)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f + 423f) * -1520f), _wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(f32(-1f) * -1455f))), _wgslsmith_f_op_f32(f32(-1f) * -1810f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(3085f))))));
    return Struct_1(-(func_6(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(109f, 571f)), func_8(vec4<f32>(-707f, -3319f, -574f, -330f))).a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 12>();
    let var_0 = _wgslsmith_mult_vec4_i32(-(((vec4<i32>(-3870i, u_input.a.x, -29382i, 5663i) & vec4<i32>(17501i, -2147483647i, u_input.a.x, u_input.a.x)) & -vec4<i32>(u_input.a.x, u_input.a.x, 29757i, 10387i)) & _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 16450i, u_input.a.x), vec4<i32>(5271i, u_input.a.x, u_input.a.x, 58994i)), vec4<i32>(2147483647i, -970i, 48357i, 0i))), ~(~vec4<i32>(-u_input.a.x, u_input.a.x << (23147u % 32u), u_input.a.x, 1i)));
    var var_1 = func_9(true, true, func_8(vec4<f32>(_wgslsmith_f_op_f32(func_7(Struct_3(Struct_2(vec4<bool>(true, false, false, false), var_0), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(var_0.x, 6686i, -14206i, -1i))), false, func_1(), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-610f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1251f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-429f + 1555f), -1000f)))));
    global0 = array<vec2<f32>, 12>();
    var var_2 = (1u << (_wgslsmith_div_u32(~(~1u), max(32616u, 1u) << (1u % 32u)) % 32u)) << (1u % 32u);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1304f, -251f)), _wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), Struct_3(Struct_2(vec4<bool>(true, false, true, false), var_1.a), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(var_0.x, var_0.x, u_input.a.x, 30179i))), vec2<u32>(41279u, 67738u))), all(vec2<bool>(false, true))))))) > _wgslsmith_f_op_f32(1017f - _wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(854f)) * _wgslsmith_f_op_f32(-1313f + 958f))));
    let var_4 = func_9(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1210f, -1000f))))) < _wgslsmith_f_op_f32(func_7(Struct_3(func_8(vec4<f32>(-506f, -568f, -853f, 400f)), Struct_2(vec4<bool>(false, true, false, false), var_0)), true, Struct_3(func_1().b, Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(u_input.a.x, var_1.a.x, -1i, 1i))), func_5(vec4<i32>(u_input.a.x, 32064i, -1i, -13850i) ^ vec4<i32>(-87782i, 707i, -1i, -2147483647i), ~vec3<u32>(53669u, 948u, 18910u)).a.ww)), !(_wgslsmith_div_f32(-238f, 272f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2505f)), -261f)), Struct_2(func_8(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-612f, 1380f, 1132f, 227f), vec4<f32>(365f, 646f, 1051f, -1000f)))))).a, _wgslsmith_add_vec4_i32(~var_1.a, var_0) & _wgslsmith_mult_vec4_i32(var_1.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(-55812i, ~(-7406i), u_input.a.x, -3477i)), 4136i, u_input.a.xx, 28050u);
}

