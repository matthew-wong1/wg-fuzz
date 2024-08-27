struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
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

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> f32 {
    global0 = array<Struct_2, 28>();
    var var_0 = -vec2<i32>(-15554i, ~_wgslsmith_clamp_i32(2147483647i, max(arg_0, -6120i), -2147483647i));
    var_0 = reverseBits(vec2<i32>(0i, firstLeadingBit(~_wgslsmith_sub_i32(var_0.x, var_0.x))));
    let var_1 = 28755u;
    let var_2 = !select(vec2<bool>(true, !(!arg_1.a.d)), vec2<bool>(arg_1.d, arg_1.d), select(!select(vec2<bool>(arg_1.a.d, false), vec2<bool>(false, false), arg_1.d), select(vec2<bool>(false, true), !vec2<bool>(arg_1.d, arg_1.a.d), false), arg_1.a.d));
    return arg_1.c;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_5(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f + -2586f) * -882f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-472f)))), 436f, true)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-948f - -810f), _wgslsmith_f_op_f32(-1870f - 1322f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-1241f * 2263f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(min(-139f, -2256f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_0.b >> (5938u % 32u), Struct_5(Struct_1(-11752i, 1317f, -126f, false, vec2<f32>(-1856f, 1117f)), vec4<f32>(663f, 1759f, -2016f, -1000f), 1255f, false, Struct_4(u_input.b.x, vec4<f32>(1000f, -188f, 977f, 842f), 2147483647i, 1i, 610f)))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(608f)) - _wgslsmith_f_op_f32(f32(-1f) * -550f))))), false, Struct_4(-70891i, vec4<f32>(-194f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(sign(-972f)))), _wgslsmith_f_op_f32(min(-460f, _wgslsmith_f_op_f32(step(-452f, 719f)))), _wgslsmith_f_op_f32(sign(-492f))), u_input.b.x, ~1i, _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1210f * -1215f))))));
    global0 = array<Struct_2, 28>();
    let var_1 = firstTrailingBit(~(~select(-vec4<i32>(1i, 7267i, 0i, 14109i), vec4<i32>(1i, u_input.b.x, u_input.c.x, -45117i) << (vec4<u32>(u_input.d, 34307u, 29334u, u_input.a) % vec4<u32>(32u)), !var_0.a.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1224f * var_0.e.e), _wgslsmith_f_op_f32(func_3(firstTrailingBit(-2147483647i), Struct_5(Struct_1(var_1.x, var_0.e.e, var_0.e.b.x, var_0.a.d, var_0.a.e), vec4<f32>(var_0.a.c, -838f, -264f, 815f), 215f, var_0.d, Struct_4(var_1.x, var_0.b, -1i, 1i, -813f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.x)), 1615f), vec4<f32>(var_0.a.b, -136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(round(-1000f))))));
    var var_3 = var_0.e.b;
    return select(select(select(vec4<bool>(true, u_input.d != 49132u, any(vec3<bool>(var_0.d, false, true)), var_0.a.d), select(!vec4<bool>(var_0.a.d, true, true, false), select(vec4<bool>(var_0.a.d, false, var_0.a.d, var_0.d), vec4<bool>(false, var_0.a.d, true, var_0.d), var_0.a.d), all(vec3<bool>(false, var_0.d, var_0.a.d))), !vec4<bool>(true, false, var_0.d, false)), vec4<bool>(false, var_0.d, false, var_0.d), !(var_0.a.d && (false != var_0.a.d))), vec4<bool>(false, true, var_0.d, true), !vec4<bool>(true, any(vec2<bool>(var_0.d, true)), ~41311u <= ~u_input.a, true));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = any(!vec4<bool>(true, true, false, any(!arg_0)));
    var_0 = !arg_0.x;
    var var_1 = vec3<bool>(false, u_input.a != ~(~(4294967295u | u_input.d)), true);
    var_1 = !select(arg_0, arg_0, any(func_2(Struct_2(u_input.b.x, 0i)).yz));
    var var_2 = _wgslsmith_add_u32(~1u, select(reverseBits(abs(4294967295u)), ~4294967295u, arg_0.x));
    return Struct_1(57484i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -953f))) * -633f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1783f - -649f)))), all(vec4<bool>(!(!arg_0.x), !(true && arg_0.x), !(1u < u_input.d), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-574f, -539f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1140f, -2133f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 302f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = func_4(vec3<bool>(false, all(func_2(arg_0)), !(all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)) | true)));
    let var_1 = Struct_3(func_4(!func_2(global0[_wgslsmith_index_u32(1u, 28u)]).zzx).b, func_4(select(vec3<bool>(var_0.d, all(vec3<bool>(var_0.d, arg_2, arg_2)), all(vec2<bool>(arg_2, var_0.d))), select(select(vec3<bool>(false, var_0.d, false), vec3<bool>(false, false, arg_2), true), !vec3<bool>(arg_2, false, true), select(false, arg_2, false)), !var_0.d || func_2(Struct_2(-2147483647i, arg_0.b)).x)), vec3<i32>(func_4(select(vec3<bool>(true, arg_2, var_0.d), vec3<bool>(arg_2, var_0.d, true), func_2(Struct_2(2147483647i, var_0.a)).wwx)).a, var_0.a, _wgslsmith_sub_i32(func_4(vec3<bool>(true, true, true)).a, _wgslsmith_mod_i32(-39310i, -39572i))), 34382i);
    global0 = array<Struct_2, 28>();
    let var_2 = !(!(!(!select(vec2<bool>(var_1.b.d, arg_2), vec2<bool>(var_1.b.d, true), var_1.b.d))));
    return Struct_4(arg_1.a, arg_3, ~(u_input.c.x ^ -1i), ~10312i, _wgslsmith_f_op_f32(-312f + _wgslsmith_div_f32(-1434f, var_1.b.e.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> i32 {
    global0 = array<Struct_2, 28>();
    var var_0 = Struct_5(Struct_1(func_4(!(!arg_0)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-arg_2.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.x)))), _wgslsmith_f_op_f32(abs(686f)), arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(-arg_3), arg_2.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(max(1000f, 598f))), arg_2.b.x, arg_3, arg_3), arg_3, true, func_1(global0[_wgslsmith_index_u32(849u, 28u)], Struct_4(u_input.c.x & ~arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 6300i, 21077i), vec4<i32>(-1i, arg_2.d, arg_2.d, u_input.c.x)), ~u_input.c.x, 184f), -2147483647i == _wgslsmith_dot_vec2_i32(u_input.b.zz, ~vec2<i32>(2147483647i, -9240i)), arg_2.b));
    global0 = array<Struct_2, 28>();
    var var_1 = -7932i;
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.e.b), var_0.a.e.x, true, arg_2);
    return ~_wgslsmith_dot_vec2_i32(u_input.c.xy, -u_input.c.zx);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = abs(firstTrailingBit(firstTrailingBit(select(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 8081u), reverseBits(vec4<u32>(1u, u_input.d, u_input.a, 0u)), true))));
    return Struct_5(func_4(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), func_2(global0[_wgslsmith_index_u32(u_input.d, 28u)]).zzx, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, -1428f, 642f, 167f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 1378f, 257f, -554f) * vec4<f32>(-839f, 239f, -1845f, -535f))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(min(-2209f, -1000f)), false, func_1(global0[_wgslsmith_index_u32(u_input.d, 28u)], Struct_4(arg_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(482f, -983f, -123f, -894f), vec4<f32>(491f, -1282f, -322f, 198f), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1057f, -992f, 399f, 2271f), vec4<f32>(-1421f, -1150f, 373f, -1000f)))), func_5(vec3<bool>(true, true, true), true, Struct_4(1i, vec4<f32>(1537f, -151f, 1333f, -959f), -37967i, arg_1.x, 313f), _wgslsmith_f_op_f32(ceil(981f))), arg_1.x, -718f), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), 1000f, -566f, _wgslsmith_f_op_f32(f32(-1f) * -568f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, 739f, 414f, -921f)))), func_2(Struct_2(arg_1.x, u_input.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_0 = 16258u;
    let var_1 = _wgslsmith_add_i32(u_input.b.x << (0u % 32u), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)) | 0i;
    var_0 = 1u >> (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 46772u, 18760u), ~(~4294967295u)) % 32u);
    let var_2 = func_6(vec2<i32>(u_input.c.x, func_5(vec3<bool>(true, true, true), false, func_1(Struct_2(var_1, var_1), Struct_4(-2147483647i, vec4<f32>(-650f, -1523f, 1115f, 2769f), var_1, u_input.c.x, 295f), any(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, -514f, -105f, 809f))), -2844f)), abs(firstTrailingBit(vec2<i32>(min(u_input.c.x, u_input.c.x), ~var_1))));
    global0 = array<Struct_2, 28>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b);
}

