struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<i32>, 14>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    global1 = array<vec3<i32>, 14>();
    global1 = array<vec3<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(arg_3.e.a.x - _wgslsmith_f_op_f32(-global0.x));
    var_0 = -607f;
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(u_input.b.x, 14u)] >> (vec3<u32>(u_input.b.x, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(arg_2.yxz, vec3<i32>(arg_2.x, arg_2.x, arg_2.x))), firstLeadingBit(_wgslsmith_sub_i32(-1i, arg_1.a))), _wgslsmith_mod_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(arg_3.c, -2147483647i))), _wgslsmith_mod_vec2_i32(-arg_2.zw, abs(vec2<i32>(-58739i, arg_3.c))))), ~select(arg_2.xx, arg_2.xy, ~1u >= ~u_input.b.x));
    return any(arg_3.d.yx);
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var var_1 = select(!(!vec4<bool>(func_3(vec2<f32>(-1015f, global0.x), Struct_2(2147483647i, Struct_1(vec4<f32>(-1321f, 285f, 992f, 1198f), false), 2147483647i, vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(268f, global0.x, 850f, 431f), false)), vec4<i32>(0i, 1i, -1i, 545i), Struct_2(-19977i, Struct_1(vec4<f32>(global0.x, global0.x, -1000f, global0.x), true), -1i, vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(-1143f, global0.x, -115f, global0.x), false))), all(vec4<bool>(true, false, false, true)), true, false)), vec4<bool>(true, false, true, true), !vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(true, false, true), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))));
    let var_2 = abs(~1i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1298f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1699f, 592f, global0.x) - vec3<f32>(global0.x, -691f, global0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -165f)))));
    var var_4 = vec4<f32>(global0.x, 1053f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1658f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f - 575f))))));
    return Struct_2(~1i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1781f, global0.x, 481f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, 1446f, var_4.x, global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), var_3.x, _wgslsmith_f_op_f32(select(532f, 1599f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1577f))), var_2 <= var_2), _wgslsmith_clamp_i32(min(~max(4482i, var_2), 1i | _wgslsmith_add_i32(var_2, 2147483647i)), -1i, min(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(0u, 14u)], vec3<i32>(var_2, 2147483647i, var_2)), ~vec3<i32>(var_2, -14990i, 58854i)))), vec4<bool>(!var_1.x == true, 1000f >= global0.x, select(var_1.x, var_1.x || false, var_2 < _wgslsmith_dot_vec2_i32(vec2<i32>(-66787i, var_2), vec2<i32>(var_2, 31551i))), all(var_1.ww)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, 706f, -1000f))), vec4<f32>(-1000f, var_3.x, -223f, -1010f), true))), false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(min(arg_0.b.a.wyw, _wgslsmith_f_op_vec3_f32(-arg_1.e.a.yxy)));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_2(), Struct_2(_wgslsmith_mod_i32(arg_0, max(-14598i, ~2147483647i)), func_2().e, ~(-35908i >> (firstTrailingBit(u_input.a) % 32u)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), func_2().d, vec4<bool>(true, true, true, true)), func_2().e), abs(min(vec4<i32>(arg_0, 27751i, arg_0, -1i) ^ vec4<i32>(22970i, arg_0, -2147483647i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(25408i, -8440i, 17240i, -1i), vec4<i32>(1958i, -1i, arg_0, 0i), vec4<i32>(arg_0, 1i, arg_0, 56205i))) ^ -(~vec4<i32>(0i, arg_0, -61649i, arg_0)))));
    var var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2().d.xyz, func_3(var_0.zx, Struct_2(arg_0, Struct_1(vec4<f32>(var_0.x, -1005f, var_0.x, 570f), true), arg_0, vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(var_0.x, var_0.x, global0.x, 996f), true)), vec4<i32>(47491i, arg_0, arg_0, arg_0), Struct_2(-38474i, Struct_1(vec4<f32>(373f, -765f, -820f, global0.x), false), -40739i, vec4<bool>(true, false, false, false), Struct_1(vec4<f32>(373f, 204f, -2262f, 376f), true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true)));
    var var_2 = func_2().e;
    let var_3 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(var_2.a.yx));
    return var_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    global1 = array<vec3<i32>, 14>();
    let var_1 = select(var_0.d, vec4<bool>(true, false, u_input.a < u_input.b.x, true), var_0.d);
    global1 = array<vec3<i32>, 14>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -488f), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-814f)), 1351f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.e.a.x, arg_2.x, 596f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1584f, var_0.b.a.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.a.x, global0.x, arg_2.x)))), true);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 14>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -144f), global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)));
    var var_0 = ~(~(~u_input.a));
    var var_1 = ~_wgslsmith_clamp_u32(u_input.a, 0u, firstLeadingBit(~(u_input.b.x & 706u)));
    var var_2 = firstLeadingBit(firstTrailingBit(-_wgslsmith_clamp_i32(34054i << (1u % 32u), ~2147483647i, select(-2147483647i, 1i, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-336f, 517f, global0.x, 823f), vec4<f32>(global0.x, global0.x, global0.x, 206f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, global0.x, 184f, 1945f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1561f, -1681f, 1167f) - vec4<f32>(350f, global0.x, 1179f, 961f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1000f, 238f, -731f), vec4<f32>(-189f, 364f, 478f, global0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -739f, 697f, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1474f, global0.x, global0.x, global0.x) * vec4<f32>(-1055f, 497f, 1000f, global0.x))))), vec4<f32>(570f, _wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(-1343f + global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(global0.x, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -350f)))));
    var var_4 = func_5(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(-29801i, -7415i))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(2147483647i, 1i)))), vec2<i32>(25435i, 0i)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~34969u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~u_input.b), 4294967295u), 14u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(~1i))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(2134f - -1141f), _wgslsmith_f_op_f32(global0.x * -1798f)))), vec4<i32>(~firstTrailingBit(-43564i) >> (~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) % 32u), abs(~(i32(-1i) * -43360i)), 0i, func_2().c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, countOneBits(u_input.a)), vec2<u32>(u_input.a, abs(u_input.b.x)))));
}

