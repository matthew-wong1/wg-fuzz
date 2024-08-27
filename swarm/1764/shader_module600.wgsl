struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

var<private> global2: array<u32, 30> = array<u32, 30>(1u, 19650u, 25946u, 4294967295u, 4294967295u, 0u, 0u, 35740u, 8675u, 6741u, 4294967295u, 19758u, 55188u, 0u, 36461u, 1u, 1u, 23575u, 25002u, 34959u, 1547u, 1u, 15107u, 38566u, 72696u, 0u, 1u, 18653u, 18058u, 72256u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1483f, 1325f))))), _wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(select(-743f, -222f, any(vec4<bool>(true, false, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-896f, 845f)))), _wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(round(-577f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1591f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-720f)) - 1f)));
    let var_1 = ~(~(~vec4<u32>(1u, arg_1.a, global2[_wgslsmith_index_u32(1u, 30u)], 25780u)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))));
    let var_3 = ~global0.x < _wgslsmith_clamp_i32(u_input.c.x, arg_0.x, ~abs(-global0.x));
    global2 = array<u32, 30>();
    return vec3<bool>(false, any(!select(!vec3<bool>(true, var_3, true), vec3<bool>(true, false, true), true)), var_3);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(32606u, 30u)], 4294967295u) | (u_input.a >> (43634u % 32u)), countOneBits(~firstTrailingBit(4294967295u))), 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(4294967295u, 30u)]), min(1u, global2[_wgslsmith_index_u32(u_input.a, 30u)])), ~(~7383u)), 30u)] & u_input.b.x, (global0.xxx ^ _wgslsmith_mod_vec3_i32(u_input.c.xxx, countOneBits(global0.xzy))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(29142u, 24254u, global2[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<u32>(u_input.a, u_input.b.x, 22767u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 30u)], min(countOneBits(_wgslsmith_div_u32(1u, 16379u) & u_input.a), ~82821u), global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_add_vec3_i32(vec3<i32>(3156i, min(u_input.c.x, _wgslsmith_div_i32(global0.x, 2147483647i)), _wgslsmith_sub_i32(u_input.c.x, i32(-1i) * -41361i)), ~u_input.c.xxy | global0.zyy));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - -124f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1214f, 239f) - -173f), _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_3 = arg_1;
    global2 = array<u32, 30>();
    return u_input.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = func_4(vec4<bool>(true, true, true, true), select(select(vec3<bool>(true, any(vec2<bool>(false, false)), false), vec3<bool>(true, true, true), !any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), func_3(-arg_2.xz, Struct_2(global2[_wgslsmith_index_u32(~arg_1.x, 30u)], min(11998i, 25879i)))));
    global0 = select(_wgslsmith_div_vec4_i32(-(-u_input.c ^ ~vec4<i32>(global0.x, -39142i, -70203i, arg_0.x)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(-2147483647i, -2147483647i, 21712i, u_input.c.x)), -vec4<i32>(global0.x, global0.x, -2010i, arg_2.x))), vec4<i32>(-(firstTrailingBit(global0.x) >> ((u_input.b.x >> (1u % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-26670i), -1i & arg_0.x), firstLeadingBit(u_input.c.wy)), ~arg_0.x, 1i), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))));
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(23025u, firstTrailingBit(u_input.d.x), u_input.d.x)), 4294967295u), arg_0.x);
    let var_2 = Struct_3(1344f, ~(i32(-1i) * -20645i), ~_wgslsmith_mult_i32(arg_0.x, -u_input.c.x) == -_wgslsmith_div_i32(25719i, var_1.b | -2147483647i), Struct_1(1u, ~0u, _wgslsmith_add_u32(4294967295u << (var_0.x % 32u), ~108654u) ^ ~5808u, -abs(-vec3<i32>(1i, global0.x, 72818i))));
    var_1 = Struct_2(~countOneBits(69633u), 1i);
    return firstLeadingBit(max(var_0, u_input.d));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(min(1u, 22981u), 20914u, 22459u), arg_2, _wgslsmith_mod_u32(reverseBits(~(~34906u)), _wgslsmith_mult_u32(~arg_2 ^ arg_2, abs(4294967295u))), reverseBits(~(~u_input.c.zxy)) << (~max(vec3<u32>(4294967295u, u_input.d.x, 1u), vec3<u32>(u_input.d.x, 10891u, 4294967295u) | vec3<u32>(0u, 1u, 0u)) % vec3<u32>(32u)));
    global0 = u_input.c;
    let var_1 = arg_1.x;
    var var_2 = vec4<bool>(true, false | ((true & all(vec4<bool>(true, true, false, false))) == true), all(vec2<bool>(true, func_3(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(-1271i, 1i), vec2<i32>(arg_0.x, 1i)), Struct_2(64969u, 1i)).x)), true);
    var var_3 = all(select(select(!select(vec4<bool>(false, var_2.x, true, false), vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), vec4<bool>(true, true, true, true), all(var_2.xy)), select(vec4<bool>(false, var_2.x != true, var_0.d.x <= 2147483647i, var_2.x), vec4<bool>(!var_2.x, true, all(var_2.xz), select(false, true, false)), select(select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, var_2.x, false)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, true, true, false)))), vec4<bool>(all(!var_2.yy), !var_2.x, true, true)));
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_div_f32(-1855f, -596f);
    let var_2 = true;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f + 181f)))), global0.x, ~_wgslsmith_mult_u32(0u, arg_1.c) == 47471u, func_5(-abs(_wgslsmith_mult_vec2_i32(arg_1.d.zx, vec2<i32>(global0.x, u_input.c.x))), func_2(vec3<i32>(arg_1.d.x, i32(-1i) * -15571i, u_input.c.x ^ u_input.c.x), u_input.b, arg_1.d), 57099u));
    var var_4 = arg_0.yx;
    return ~func_2(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-62955i, u_input.c.x, -1i), vec3<i32>(var_3.b, global0.x, 18937i), vec3<i32>(-42309i, global0.x, -989i))), vec2<u32>(0u, 84172u), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), global0.ww), 32357i, -2147483647i)).x > min(~1u, 2665u | ~func_5(vec2<i32>(global0.x, u_input.c.x), vec2<u32>(12699u, global2[_wgslsmith_index_u32(arg_1.c, 30u)]), 0u).b);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1159f * arg_1.a)));
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(68751u, 503u, arg_1.d.a), vec3<u32>(1u, u_input.a, 4294967295u)) ^ ~vec3<u32>(35135u, global2[_wgslsmith_index_u32(arg_1.d.b, 30u)], global2[_wgslsmith_index_u32(42910u, 30u)]), abs(min(vec3<u32>(arg_1.d.a, arg_1.d.c, 38753u), vec3<u32>(0u, 0u, 1u)))));
    var var_2 = arg_1;
    var var_3 = 61859u;
    return _wgslsmith_f_op_f32(round(var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_6(vec2<bool>(true, true), Struct_3(_wgslsmith_f_op_f32(step(422f, _wgslsmith_f_op_f32(-1075f * 222f))), u_input.c.x, func_1(vec3<bool>(false, true, false), Struct_1(global2[_wgslsmith_index_u32(1u, 30u)], u_input.d.x, u_input.d.x, u_input.c.yzw), vec4<bool>(true, true, true, true)) | true, func_5(vec2<i32>(u_input.c.x, -1i), _wgslsmith_add_vec2_u32(u_input.b, u_input.b), ~u_input.b.x))))));
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global2[_wgslsmith_index_u32(u_input.b.x & 0u, 30u)]), ~96006u, abs(55161u), 0u), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 3409u), vec4<u32>(1u, 4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(13980u, 30u)])))), global0.x);
    let var_1 = ~firstLeadingBit(firstLeadingBit(vec3<u32>(func_2(u_input.c.zxw, vec2<u32>(global2[_wgslsmith_index_u32(var_0.a, 30u)], global2[_wgslsmith_index_u32(18734u, 30u)]), global0.wxy).x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(var_0.a, global2[_wgslsmith_index_u32(4294967295u, 30u)])), func_4(vec4<bool>(false, true, true, false), vec3<bool>(true, false, true)).x)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-278f, -2381f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-130f - 578f), _wgslsmith_f_op_f32(f32(-1f) * -1155f)))))) + 1387f);
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(var_1.x, 30u)], _wgslsmith_dot_vec2_u32(~var_1.xy, ~(~(vec2<u32>(global2[_wgslsmith_index_u32(26718u, 30u)], 67635u) >> (var_1.xx % vec2<u32>(32u))))), ~(~1u), reverseBits(select(~vec3<i32>(56292i, 0i, -67427i), abs(vec3<i32>(var_0.b, var_0.b, var_0.b)), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(16918u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-305f, -799f, 432f, -2297f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-114f, 1000f, -412f, 497f), vec4<f32>(1170f, -797f, -459f, -872f))), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2101f + -599f) * _wgslsmith_div_f32(1103f, 1560f))), -1428f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * -358f)), 2778f)))), _wgslsmith_mod_i32(i32(-1i) * -6833i, 6384i));
}

