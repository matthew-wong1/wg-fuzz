struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 1u, 0u);

var<private> global1: array<bool, 23>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: vec2<i32>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = !vec3<bool>(false, true, any(global2.xy));
    global1 = array<bool, 23>();
    global3 = -(arg_0.d.xw >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 65673u, arg_0.a.x), ~vec4<u32>(arg_0.a.x, 27719u, arg_0.a.x, 27740u)), ~arg_0.a.x) % vec2<u32>(32u)));
    var var_0 = vec2<i32>(global3.x, arg_0.d.x);
    var var_1 = ~_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(global0.x, 1u, 4294967295u, 46772u))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(26831u, 1u, 45668u, arg_0.a.x) ^ vec4<u32>(1u, 17354u, global0.x, global0.x)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(77548u, 86783u, arg_0.a.x, arg_0.a.x)), firstLeadingBit(vec4<u32>(0u, arg_0.a.x, arg_0.a.x, 4294967295u)))));
    return vec3<bool>(global2.x, false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~var_1.yww, ~vec3<u32>(0u, 0u, global0.x)), _wgslsmith_add_vec3_u32(var_1.yzy, global0.zzw) >> (global0.yyx % vec3<u32>(32u))) >> (26069u % 32u), 23u)]);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = !(!(!func_3(Struct_1(vec2<u32>(1u, 50489u), false, arg_3.x, vec4<i32>(-2147483647i, global3.x, 2147483647i, u_input.a)))));
    let var_1 = arg_3.x;
    var var_2 = Struct_2(!global2.x == global2.x, !global2.x, 24137i, true, Struct_1(vec2<u32>(1u, _wgslsmith_mod_u32(0u, 3933u)), true, _wgslsmith_f_op_f32(f32(-1f) * -2890f), vec4<i32>(25739i, reverseBits(~18137i), ~_wgslsmith_mult_i32(-2147483647i, global3.x), countOneBits(-47862i) >> ((global0.x << (arg_2.x % 32u)) % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_3 * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3) * arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1629f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-908f, var_2.e.c), arg_3))))));
    var var_4 = !vec4<bool>(global2.x, !all(vec3<bool>(true, arg_1, var_2.d)), var_2.d, func_3(Struct_1(~vec2<u32>(var_2.e.a.x, arg_2.x), all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(var_1)), -vec4<i32>(27671i, 2147483647i, var_2.e.d.x, global3.x))).x);
    return arg_3.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> u32 {
    global3 = -firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global3.x, u_input.a, global3.x), select(u_input.a, u_input.a, global1[_wgslsmith_index_u32(9904u, 23u)])), arg_1));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_2)), false & (6140i < arg_1))), arg_2));
    global3 = vec2<i32>(countOneBits(arg_1), -19995i);
    let var_1 = ~vec4<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(-29315i, arg_1, -8150i), abs(vec3<i32>(0i, 1i, arg_1)))), firstTrailingBit(1i), ~(-max(0i, arg_1)), -26568i);
    var var_2 = Struct_1(~global0.yx, _wgslsmith_f_op_f32(func_2(false, !all(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 23u)], true)), ~global0.xwx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-743f, var_0.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(655f)) - _wgslsmith_div_f32(-1448f, -727f)), _wgslsmith_f_op_f32(arg_2 + 1f), firstTrailingBit(vec4<i32>(~(-4047i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.x, -2197i), u_input.a, abs(20107i)), 40192i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, arg_1, var_1.x), reverseBits(vec3<i32>(global3.x, -1i, u_input.a))))));
    return ~countOneBits(1u);
}

fn func_4(arg_0: bool) -> u32 {
    var var_0 = func_3(Struct_1(global0.xz, false, 1f, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, global3.x, 2147483647i, u_input.a), vec4<i32>(global3.x, 2147483647i, 338i, global3.x)))).zy;
    let var_1 = _wgslsmith_sub_vec4_i32(select(firstTrailingBit(vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-6045i, -1i, u_input.a), vec3<i32>(2147483647i, 36768i, global3.x)), ~2147483647i, _wgslsmith_mod_i32(global3.x, -2120i))), ~firstLeadingBit(vec4<i32>(u_input.a, global3.x, -44225i, -9862i)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 0u, global0.x, global0.x)), ~vec4<u32>(42898u, 63087u, global0.x, global0.x)) % vec4<u32>(32u)), !select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(17089u, 23u)], var_0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], true, false)), !vec4<bool>(global2.x, false, global1[_wgslsmith_index_u32(global0.x, 23u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 23u)], true, true, false))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.a, global3.x, 45814i)), -firstLeadingBit(vec4<i32>(-1i, 1i, 1i, 6741i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(56406i, 46731i, 27321i, 50291i), vec4<i32>(global3.x, global3.x, global3.x, -20156i)), vec4<i32>(41866i, global3.x, global3.x, -5843i)))));
    global2 = !(!vec3<bool>(global3.x < -2147483647i, all(vec3<bool>(global1[_wgslsmith_index_u32(12861u, 23u)], false, arg_0)), !(false || global2.x)));
    global4 = func_3(Struct_1(_wgslsmith_clamp_vec2_u32(~global0.xx, global0.wy, vec2<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 1u, global0.x))), !(1095f > _wgslsmith_f_op_f32(round(-146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1072f * 1399f)))), vec4<i32>(global3.x, 0i, -1897i, ~0i))).x;
    let var_2 = Struct_1(vec2<u32>(firstTrailingBit(reverseBits(~global0.x)), global0.x), true, _wgslsmith_f_op_f32(max(-1514f, -1253f)), countOneBits(~vec4<i32>(0i, 2147483647i, 1i, var_1.x)) | min(vec4<i32>(12642i, firstLeadingBit(var_1.x), 0i | u_input.a, ~25177i), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -9529i, 31664i, u_input.a), var_1)));
    return var_2.a.x;
}

fn func_5(arg_0: u32) -> Struct_2 {
    let var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1992f, 1197f), vec2<f32>(-1244f, 653f))), vec2<f32>(-306f, -306f))), vec2<f32>(-449f, 1636f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2870f, 660f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-916f, -396f))))), false)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 225f) - _wgslsmith_f_op_f32(max(var_1.x, var_1.x))))) > var_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, 1f)), 121f, var_1.x, _wgslsmith_f_op_f32(min(678f, var_1.x))));
    var var_3 = vec3<i32>(-1i, i32(-1i) * -11659i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~11563i >> (global0.x % 32u)), -vec2<i32>(-33203i, 1i)));
    return Struct_2(true, global1[_wgslsmith_index_u32(func_1(var_2.yzx, 2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1519f))))), 23u)], u_input.a, global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-836f * -232f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1019f, var_2.x, var_1.x), vec3<f32>(1490f, 1901f, -643f))) + vec3<f32>(-468f, 1285f, 718f)))), -43902i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -265f)))), 23u)], Struct_1(vec2<u32>(~1u, 1u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -45731i, global3.x), vec3<i32>(-9793i, -261i, 2147483647i) | vec3<i32>(-12333i, var_3.x, 2147483647i)) < ~(~(-39796i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-789f - var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2188f, var_2.x, global1[_wgslsmith_index_u32(48635u, 23u)])) * -704f))), firstTrailingBit(reverseBits(~vec4<i32>(-46767i, var_0, u_input.a, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(max(func_4(global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, -340f, -1000f)), global3.x, _wgslsmith_div_f32(2108f, 758f)), 23u)]), _wgslsmith_clamp_u32(18579u, 4294967295u, global0.x)));
    let var_1 = func_3(Struct_1(vec2<u32>(1u, ~(global0.x & 1u)), !global1[_wgslsmith_index_u32(0u, 23u)], func_5(global0.x).e.c, firstLeadingBit(~(vec4<i32>(0i, -17629i, global3.x, -1538i) << (vec4<u32>(19793u, global0.x, 1u, 0u) % vec4<u32>(32u)))))).zz;
    let var_2 = var_0;
    var var_3 = ~max(var_0.e.a.x, _wgslsmith_mult_u32(~var_0.e.a.x << (~9483u % 32u), ~(global0.x >> (12797u % 32u))));
    global1 = array<bool, 23>();
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, var_2.e.c)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-847f, -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.c, -617f), vec2<f32>(438f, var_2.e.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1427f, var_2.e.c) + vec2<f32>(1000f, var_2.e.c))))));
    global4 = func_3(func_5(var_0.e.a.x).e).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.c, -273f, var_4.x) * vec3<f32>(var_4.x, 392f, var_4.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, 761f, -802f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1368f, var_2.e.c, 442f) * vec3<f32>(var_2.e.c, -272f, var_0.e.c))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(839f)))), 1025f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.e.c)) - var_2.e.c))));
}

