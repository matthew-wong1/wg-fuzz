struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, 1i, 39511i, -1i), vec4<i32>(2147483647i, -55922i, 30610i, -1i), vec4<i32>(22324i, 0i, -1i, -44405i), vec4<i32>(12495i, -14207i, 1i, -15962i), vec4<i32>(2442i, 4562i, 0i, 0i), vec4<i32>(-23966i, -19759i, -16766i, -37451i), vec4<i32>(-46604i, i32(-2147483648), 19559i, 5967i), vec4<i32>(17055i, 392i, -26413i, 0i), vec4<i32>(i32(-2147483648), 9366i, 0i, 1i), vec4<i32>(1i, 40165i, -26437i, 0i), vec4<i32>(6022i, -1i, 25107i, 1i), vec4<i32>(-10873i, 1i, 0i, 1i), vec4<i32>(-1i, 12291i, -12039i, 48702i), vec4<i32>(1i, -34974i, 1i, 20029i), vec4<i32>(-50197i, i32(-2147483648), -54799i, 0i), vec4<i32>(17534i, 7946i, 0i, 1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 26665i), vec4<i32>(49336i, 32005i, 2147483647i, -21784i), vec4<i32>(-38690i, 2147483647i, -1i, 2147483647i), vec4<i32>(10443i, -24266i, 25131i, 14264i), vec4<i32>(-1i, 24427i, -45787i, 44786i), vec4<i32>(-25117i, 23757i, -9419i, -7138i));

var<private> global1: array<f32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_0.x, 19u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 19u)] - -399f)))))));
    global0 = array<vec4<i32>, 22>();
    global1 = array<f32, 19>();
    var var_1 = !all(vec2<bool>(all(vec2<bool>(true, true)), false));
    var var_2 = ~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, arg_0.x), _wgslsmith_mod_u32(~1817u, u_input.a)));
    return vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), _wgslsmith_div_f32(-1145f, _wgslsmith_f_op_f32(924f - _wgslsmith_f_op_f32(-569f + _wgslsmith_div_f32(var_0, global1[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 19u)] - _wgslsmith_f_op_f32(select(478f, global1[_wgslsmith_index_u32(80415u, 19u)], true))));
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2273f, 1610f, global1[_wgslsmith_index_u32(41006u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 631f, global1[_wgslsmith_index_u32(2487u, 19u)], -336f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b.x, u_input.d, 27708u, u_input.b.x), vec4<i32>(0i, -20216i, arg_0.x, 1i) & global0[_wgslsmith_index_u32(57400u, 22u)])))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 19u)])), 1650f, _wgslsmith_div_f32(718f, -793f), -458f)) * vec4<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(~1u, 19u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~5488u, 1u, u_input.b.x), 19u)] - -1000f), -235f, _wgslsmith_f_op_f32(ceil(-1027f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 22>();
    global1 = array<f32, 19>();
    var var_0 = 940f;
    global1 = array<f32, 19>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1094f - _wgslsmith_div_f32(arg_2.x, global1[_wgslsmith_index_u32(u_input.d, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 434f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - global1[_wgslsmith_index_u32(u_input.d, 19u)]))), all(!select(vec2<bool>(arg_3.a, arg_3.a), arg_1.zy, arg_3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.x)))) - _wgslsmith_f_op_f32(step(-680f, 139f)))));
    return arg_3;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(select(_wgslsmith_add_vec4_i32(~global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(select(29574u, 0u, true), 22u)]), ~vec4<i32>(48431i, -2147483647i, u_input.c, u_input.e.x), any(!vec3<bool>(arg_0, false, arg_0))))), !select(vec3<bool>(true, select(arg_0, false, arg_0), all(vec4<bool>(false, true, arg_0, false))), vec3<bool>(true, true, true), !vec3<bool>(false, arg_0, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1090f + global1[_wgslsmith_index_u32(u_input.d, 19u)]), global1[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(firstLeadingBit(90556u), 19u)], _wgslsmith_div_f32(-909f, -188f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)] - global1[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_f32(-565f + -517f)))), Struct_1(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(55391u, 19u)])) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1232f) * -872f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(10976u, 178u), 19u)]))));
    return u_input.c;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.x & arg_0.x;
    let var_1 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1055f + 292f), _wgslsmith_f_op_f32(1010f - global1[_wgslsmith_index_u32(12259u, 19u)]), _wgslsmith_f_op_f32(min(-946f, global1[_wgslsmith_index_u32(arg_1.x, 19u)])), 1139f)), select(vec3<bool>(any(vec3<bool>(var_0, false, arg_0.x)), all(vec4<bool>(false, true, true, true)), var_0), vec3<bool>(true, true, true), arg_0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(~arg_1.x, 19u)], _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b.x, 16549u, arg_2, 88238u), vec4<i32>(arg_3.x, arg_3.x, -1i, 0i))).x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 19u)] * 606f), _wgslsmith_f_op_f32(sign(-119f))), _wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(1u, 2030u, 1u, 35695u), ~vec4<i32>(arg_3.x, 81982i, arg_3.x, arg_3.x))))), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(863u, 19u)], global1[_wgslsmith_index_u32(107125u, 19u)], -402f, global1[_wgslsmith_index_u32(4294967295u, 19u)]))), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(arg_2, 19u)], -1041f, global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(arg_0.x, false, var_0, var_0))), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.x, var_0), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(468f, -505f, global1[_wgslsmith_index_u32(5939u, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)]), vec4<f32>(global1[_wgslsmith_index_u32(0u, 19u)], 1298f, -1694f, -1065f), vec4<bool>(arg_0.x, true, false, arg_0.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1074f, -518f, 876f, 785f), vec4<f32>(global1[_wgslsmith_index_u32(39081u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], -324f)))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1813u, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)], 304f, -1047f) + vec4<f32>(184f, 1023f, global1[_wgslsmith_index_u32(arg_2, 19u)], 127f)), select(vec3<bool>(true, true, false), vec3<bool>(var_0, var_0, true), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 19u)], global1[_wgslsmith_index_u32(arg_2, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)], global1[_wgslsmith_index_u32(42754u, 19u)])), func_4(vec4<f32>(2298f, global1[_wgslsmith_index_u32(77065u, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)], -1000f), vec3<bool>(arg_0.x, var_0, true), vec4<f32>(1210f, -1000f, global1[_wgslsmith_index_u32(25944u, 19u)], -1879f), Struct_1(true, -626f))))).a, 449f);
    let var_2 = u_input.c;
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!vec2<bool>(false, all(vec4<bool>(true, true, true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, select(vec2<u32>(24672u, 48873u) >> (u_input.b.xy % vec2<u32>(32u)), u_input.b.yz, vec2<bool>(false, false))), _wgslsmith_dot_vec2_u32(u_input.b.zx, ~(~u_input.b.xy))), u_input.d, select(vec4<i32>(-func_1(false), _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(u_input.e.x, u_input.c, 2147483647i), _wgslsmith_clamp_i32(-42882i, u_input.c, -2147483647i)), u_input.c, -2147483647i), countOneBits(-firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 22u)])), vec4<bool>(true, true, !all(vec4<bool>(false, false, false, true)), !all(vec4<bool>(true, false, false, false)))));
    var_0 = Struct_1(~(-firstLeadingBit(0i)) >= min(-(i32(-1i) * -57282i), ~(~u_input.c)), global1[_wgslsmith_index_u32(9378u, 19u)]);
    global1 = array<f32, 19>();
    global0 = array<vec4<i32>, 22>();
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, global1[_wgslsmith_index_u32(u_input.d, 19u)], -913f, 1000f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(vec4<f32>(var_0.b, var_0.b, global1[_wgslsmith_index_u32(1u, 19u)], 1556f), vec3<bool>(var_0.a, true, true), vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 19u)], -147f, 1591f, -700f), Struct_1(true, global1[_wgslsmith_index_u32(4294967295u, 19u)])).b, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(-var_0.b), -452f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, global1[_wgslsmith_index_u32(0u, 19u)], 540f, 1282f)))))), vec3<bool>(true, false, !var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, global1[_wgslsmith_index_u32(~u_input.a, 19u)], 624f)), func_4(vec4<f32>(global1[_wgslsmith_index_u32(~u_input.b.x >> (0u % 32u), 19u)], -971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), 850f), vec3<bool>(select(true, u_input.d > u_input.d, u_input.d == 17789u), u_input.b.x <= ~44886u, var_0.a), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(round(936f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40953u, 19u)]))), func_4(vec4<f32>(-448f, -891f, _wgslsmith_f_op_f32(-var_0.b), var_0.b), vec3<bool>(var_0.a, !var_0.a, var_0.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -487f), -2846f, -495f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] * global1[_wgslsmith_index_u32(u_input.d, 19u)])), Struct_1(var_0.a, -512f))));
    let var_2 = Struct_1(true, -467f);
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.c), select(-vec3<i32>(u_input.c, -7601i, u_input.e.x), max(vec3<i32>(-1i, -63195i, 2147483647i), vec3<i32>(u_input.c, u_input.e.x, -29198i)), any(vec2<bool>(true, var_0.a)))) << (min(~select(u_input.b, vec3<u32>(0u, u_input.d, u_input.d), var_0.a), vec3<u32>(1u, u_input.a, u_input.b.x)) % vec3<u32>(32u)), ~u_input.b.yy, ~u_input.b, (~(vec4<u32>(64087u, 57908u, u_input.b.x, u_input.b.x) >> (vec4<u32>(var_3, var_3, var_3, var_3) % vec4<u32>(32u))) >> (abs(vec4<u32>(27600u, 7879u, var_3, var_3) | vec4<u32>(57698u, 49792u, 36439u, u_input.d)) % vec4<u32>(32u))) | ~(~vec4<u32>(u_input.a, var_3, 45758u, u_input.b.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, var_3, 0u, 0u), vec4<u32>(u_input.b.x, 4294967295u, var_3, u_input.d))));
}

