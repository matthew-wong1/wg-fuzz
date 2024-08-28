struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec2<u32>, 30>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(498f, 805f, -1000f), vec3<f32>(-529f, 908f, 2121f), vec3<f32>(-351f, 1000f, 117f), vec3<f32>(-292f, 3914f, 544f), vec3<f32>(171f, 918f, 143f), vec3<f32>(454f, 255f, -117f), vec3<f32>(979f, 711f, 101f), vec3<f32>(2705f, 623f, -820f), vec3<f32>(1671f, -670f, 1145f), vec3<f32>(939f, 971f, 278f), vec3<f32>(637f, 294f, 984f), vec3<f32>(1122f, 683f, -362f), vec3<f32>(-206f, -1093f, 1119f), vec3<f32>(513f, 1817f, -435f), vec3<f32>(-973f, -612f, 394f), vec3<f32>(-1546f, 922f, 826f));

var<private> global4: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_1(arg_2.b.a);
    global3 = array<vec3<f32>, 16>();
    var var_1 = ~global1[_wgslsmith_index_u32(firstLeadingBit(arg_2.c), 30u)];
    global3 = array<vec3<f32>, 16>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(773f, 465f)), _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, -1111f, -209f, 1716f), vec4<f32>(global2.x, 317f, arg_0.x, 1348f))))));
    return Struct_3(_wgslsmith_f_op_f32(-2032f - 634f), _wgslsmith_f_op_f32(-global2.x), u_input.d);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1.c.wzw;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-159f, 372f, arg_1.a, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-797f, global2.x, arg_1.b, -553f) + vec4<f32>(arg_1.b, 1544f, arg_1.a, 490f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, global2.x, arg_1.b, global2.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1281f, global2.x, _wgslsmith_f_op_f32(step(arg_1.b, -1641f)), global2.x)))));
    var var_2 = Struct_1(!vec2<bool>(all(vec3<bool>(false, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    var_0 = (abs(firstTrailingBit(u_input.d.ywx ^ vec3<u32>(u_input.c, 19918u, 10711u))) >> (select(vec3<u32>(1u, _wgslsmith_sub_u32(arg_1.c.x, 36972u), _wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(arg_1.c.x, var_0.x, 24696u, u_input.c))), u_input.d.xyy, select(!vec3<bool>(var_2.a.x, var_2.a.x, true), select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, true)), arg_0 > -2147483647i)) % vec3<u32>(32u))) >> (vec3<u32>(var_0.x, var_0.x, 40365u) % vec3<u32>(32u));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -783f)), -654f, u_input.d);
    return Struct_1(!select(!var_2.a, vec2<bool>(var_2.a.x & false, true), var_2.a.x));
}

fn func_1() -> Struct_1 {
    global4 = 840f;
    var var_0 = _wgslsmith_f_op_vec2_f32(-global2.yz);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, global2.x, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1626f, 2252f, 1179f, -366f), vec4<f32>(761f, -259f, -1516f, -546f))))))));
    let var_1 = global2.wyx;
    global1 = array<vec2<u32>, 30>();
    return func_3(u_input.b, func_2(global2.xy, vec3<bool>(!any(vec4<bool>(true, true, true, false)), true, !all(vec4<bool>(true, false, true, false))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -788f), Struct_1(vec2<bool>(true, false)), u_input.c, vec3<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, true)), true), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 1i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), vec4<i32>(~(-15657i) >> (_wgslsmith_dot_vec2_u32(u_input.d.yx, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]) % 32u), 2147483647i, u_input.a, firstLeadingBit(u_input.a))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_2(142f, func_1(), ~u_input.d.x, !(!vec3<bool>(false & arg_1.a.x, !arg_1.a.x, arg_2 > global2.x)), ~max(select(~vec4<i32>(-17633i, arg_3.x, arg_3.x, 2147483647i), -vec4<i32>(-15575i, 15703i, 2147483647i, u_input.b), arg_1.a.x), countOneBits(-vec4<i32>(1i, 8989i, 1i, 0i))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1227f, global2.x))))));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2892f, -592f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -1477f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zz + vec2<f32>(arg_0, arg_2)) * _wgslsmith_f_op_vec2_f32(var_2.zx - global2.yw))))), select(select(!(!var_1.d), var_1.d, var_1.d), select(vec3<bool>(any(vec2<bool>(var_1.b.a.x, var_1.b.a.x)), var_0.b.a.x, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.b.a.x, true), var_0.d.x), false), vec3<bool>(func_2(global2.zw, vec3<bool>(var_1.d.x, true, var_1.b.a.x), Struct_2(var_0.a, Struct_1(vec2<bool>(var_1.b.a.x, false)), var_0.c, var_0.d, vec4<i32>(-2147483647i, var_1.e.x, u_input.a, 15151i)), var_1.e).b <= _wgslsmith_f_op_f32(select(var_0.a, 1104f, arg_1.a.x)), any(var_0.d), true)), var_0, var_1.e);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(326f + var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -928f))), -298f, _wgslsmith_f_op_f32(-1301f - global2.x)))), firstTrailingBit((vec2<i32>(-12526i, -8072i) & arg_3.xz) ^ max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_1.e.x), var_1.e.ww, arg_3.xx), var_0.e.wz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), vec3<i32>(-91392i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 0u), vec2<u32>(18362u, 4294967295u)) % 32u), _wgslsmith_mult_i32(var_0.e.x, _wgslsmith_mult_i32(u_input.a, var_0.e.x)) << (~(~u_input.d.x) % 32u), firstLeadingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, ~1u), ~(50724u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.yx)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global2.x), 690f, u_input.d);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_1.a))));
    global3 = array<vec3<f32>, 16>();
    global1 = array<vec2<u32>, 30>();
    global3 = array<vec3<f32>, 16>();
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.yw)));
    let var_4 = u_input.a <= _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, -36993i) ^ vec3<i32>(0i, -1i, -20657i), vec3<i32>(u_input.a, u_input.b, 41743i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 22547i, u_input.b), select(vec3<i32>(39125i, -2147483647i, 7144i), vec3<i32>(u_input.a, u_input.b, 48249i), false))));
    let x = u_input.a;
    s_output = func_4(1451f, func_1(), _wgslsmith_f_op_f32(round(754f)), abs(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), max(vec3<i32>(-1462i, 36278i, 50295i), vec3<i32>(-1i, -10186i, u_input.a)), vec3<i32>(6582i, 77104i, u_input.b)), select(abs(vec3<i32>(u_input.a, u_input.b, u_input.b)), ~vec3<i32>(20466i, u_input.a, 45619i), select(vec3<bool>(var_4, true, true), vec3<bool>(true, true, var_4), false)))));
}

