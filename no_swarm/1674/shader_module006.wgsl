struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-94912i, 4868i, 12931i, -20715i), vec4<i32>(0i, 1i, -33127i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -7715i), vec4<i32>(2147483647i, -13826i, -7022i, i32(-2147483648)), vec4<i32>(3213i, -1i, i32(-2147483648), 14171i), vec4<i32>(-5481i, 17746i, -17758i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -35178i), vec4<i32>(-1i, 1i, 2147483647i, 19573i), vec4<i32>(4993i, -1i, 7442i, -10587i), vec4<i32>(0i, 2147483647i, -19432i, -4893i), vec4<i32>(905i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(24175i, 50861i, 26943i, 2147483647i), vec4<i32>(0i, 30472i, 1i, 2147483647i), vec4<i32>(-1i, -66i, i32(-2147483648), 2147483647i), vec4<i32>(-109423i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-1883i, i32(-2147483648), 1i, 7639i), vec4<i32>(2147483647i, 8288i, -1i, 2147483647i), vec4<i32>(-6432i, 2147483647i, 0i, 48742i), vec4<i32>(-48213i, i32(-2147483648), 42679i, i32(-2147483648)));

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = Struct_1(~vec3<u32>(select(arg_0 & arg_2.a.x, 1u, true | arg_2.e), max(u_input.a.x, 7491u | arg_2.a.x), arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.x)), -3230f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), arg_2.c, true)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c - arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), select(!(!arg_2.d), !arg_2.d, vec2<bool>(true, arg_2.e)), false);
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(u_input.a, select(u_input.a, vec3<u32>(abs(var_0.a.x), ~arg_2.a.x, ~arg_2.a.x), !vec3<bool>(false, var_0.d.x, var_0.e))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), -1868f, select(!vec2<bool>(!arg_2.e, arg_2.d.x), vec2<bool>(countOneBits(1i) < u_input.d, all(vec2<bool>(var_0.d.x, arg_2.d.x))), !var_0.d), all(!arg_2.d));
    var_0 = Struct_1(~u_input.a, -256f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(751f)))), arg_2.d, arg_2.e);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(924f, _wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(trunc(var_0.b))))))));
    global0 = array<vec4<i32>, 19>();
    return all(vec4<bool>(any(vec2<bool>(var_0.a.x > u_input.a.x, arg_2.d.x && false)), arg_2.d.x, any(vec2<bool>(var_1 == 119f, any(vec4<bool>(var_0.e, arg_2.d.x, false, var_0.d.x)))), (true & (var_1 != arg_2.c)) && false));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.a.x), ~4294967295u), 4294967295u, 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1085f, -797f, func_3(25916u, vec3<f32>(-1000f, 484f, 820f), Struct_1(u_input.a, 111f, -1635f, vec2<bool>(true, true), false), -23227i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) * 1537f), !(u_input.a.x != 4294967295u))), _wgslsmith_f_op_f32(max(-612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f + 1000f)))), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), Struct_1(u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -962f))), _wgslsmith_f_op_f32(max(420f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1623f)), 367f))), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), any(vec2<bool>(true, true))), true));
    var_0 = Struct_2(Struct_1(~(~vec3<u32>(3504u, 4294967295u, u_input.a.x)), 1031f, _wgslsmith_f_op_f32(floor(446f)), !(!vec2<bool>(false, var_0.a.e)), false), var_0.b);
    var var_1 = -select(-select(vec3<i32>(18719i, arg_0.x, -2147483647i) ^ vec3<i32>(35302i, -9517i, u_input.c.x), -vec3<i32>(u_input.b, global1.x, u_input.c.x), !vec3<bool>(true, var_0.a.e, var_0.b.d.x)), ~reverseBits(max(vec3<i32>(-10111i, 10967i, arg_0.x), vec3<i32>(-20201i, 16472i, global1.x))), select(vec3<bool>(true, all(var_0.b.d), func_3(105065u, vec3<f32>(var_0.b.c, var_0.a.b, var_0.b.b), Struct_1(vec3<u32>(0u, var_0.a.a.x, u_input.a.x), var_0.a.c, 345f, var_0.a.d, false), arg_0.x)), vec3<bool>(var_0.a.a.x <= u_input.a.x, false, !var_0.a.d.x), select(vec3<bool>(false, var_0.a.e, false), select(vec3<bool>(var_0.b.d.x, false, var_0.b.d.x), vec3<bool>(true, false, true), vec3<bool>(var_0.b.d.x, var_0.b.d.x, true)), select(vec3<bool>(var_0.b.d.x, var_0.b.e, false), vec3<bool>(false, true, var_0.a.e), var_0.a.d.x))));
    var var_2 = Struct_1(var_0.a.a, 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.b - -1000f))), select(var_0.b.d, var_0.a.d, var_0.b.d), true || !func_3(~var_0.a.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, -103f, -2528f) * vec3<f32>(346f, var_0.a.c, 1410f)), var_0.b, countOneBits(global1.x)));
    var var_3 = 0u;
    return var_2.c;
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-658f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(589f, 1827f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1161f + 759f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1232f - -401f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<i32>(7421i, global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1196f)) + _wgslsmith_f_op_f32(f32(-1f) * -241f))))));
    global0 = array<vec4<i32>, 19>();
    var var_1 = Struct_2(Struct_1(vec3<u32>(1277u, 4294967295u, 1u), 1f, var_0, vec2<bool>(true, !(global1.x <= 832i)), true), Struct_1(~(~u_input.a), 2467f, var_0, vec2<bool>(true, true), true));
    let var_2 = _wgslsmith_div_vec3_i32(abs(reverseBits(abs(select(arg_0, vec3<i32>(19783i, arg_0.x, u_input.c.x), vec3<bool>(var_1.b.e, var_1.a.d.x, var_1.b.d.x))))), _wgslsmith_add_vec3_i32(~arg_0, vec3<i32>(reverseBits(1i), _wgslsmith_sub_i32(global1.x, u_input.d), -max(u_input.d, -7165i))));
    var var_3 = Struct_2(var_1.b, var_1.a);
    return select(vec3<i32>(~(-37891i), -(~2147483647i), -1i), min(vec3<i32>(-(arg_0.x << (u_input.a.x % 32u)), abs(var_2.x), global1.x), _wgslsmith_clamp_vec3_i32(arg_0, firstTrailingBit(firstTrailingBit(vec3<i32>(57924i, 55071i, var_2.x))), -arg_0)), !(!vec3<bool>(true, all(vec4<bool>(false, var_3.a.e, true, var_1.a.d.x)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.d), ~(~(-16410i)), -6942i), max(-reverseBits(vec3<i32>(u_input.d, u_input.c.x, u_input.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, global1.x, -2147483647i), max(vec3<i32>(global1.x, u_input.b, 60547i), vec3<i32>(-1i, 26100i, -18484i)), vec3<i32>(-2147483647i, 0i, u_input.d)))));
    var var_0 = 932f;
    var var_1 = 1871f;
    let var_2 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, ~u_input.a.x > _wgslsmith_sub_u32(1u, u_input.a.x), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)), true), select(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), true)), !vec4<bool>(true, true, func_3(u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2845f, -564f, -1091f)), Struct_1(u_input.a, 262f, -1582f, vec2<bool>(true, true), false), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, global1.x), vec3<i32>(global1.x, u_input.b, u_input.b))), false));
    let var_3 = Struct_2(Struct_1(~(~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, 8437u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2056f + 102f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-890f, 1956f))), _wgslsmith_f_op_f32(abs(-503f))), vec2<bool>(-5591i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global1.x), vec2<i32>(u_input.c.x, global1.x)), global1.x < global1.x), var_2.x), Struct_1(~(vec3<u32>(u_input.a.x, 53322u, 17329u) & ~vec3<u32>(u_input.a.x, 4294967295u, 0u)), _wgslsmith_f_op_f32(-577f * -227f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-574f, 111f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1085f, 1000f)))), !(!vec2<bool>(var_2.x, var_2.x)), 6277u != _wgslsmith_mult_u32(4294967295u, u_input.a.x)));
    let var_4 = 301f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(global1.zy >> (vec2<u32>(var_3.a.a.x, var_3.a.a.x) % vec2<u32>(32u)), vec2<i32>(global1.x, 14023i))), _wgslsmith_f_op_f32(-var_4), 0u);
}

