struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: bool;

var<private> global2: vec3<f32> = vec3<f32>(-729f, 1000f, -1014f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> bool {
    let var_0 = select(-(firstTrailingBit(vec3<i32>(arg_1.x, u_input.b.x, -2147483647i)) >> (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61193u, 1u)], 1u)], 48423u, 18028u) % vec3<u32>(32u))), vec3<i32>(abs(0i), -_wgslsmith_mult_i32(u_input.b.x, -2147483647i), arg_1.x), true) << (firstLeadingBit(~vec3<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 1u)], 0u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18529u, 1u)], 1u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(113836u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(24257u, 1u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 93997u)))) % vec3<u32>(32u));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + 950f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1046f - arg_2) - _wgslsmith_f_op_f32(min(-868f, 1073f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_div_f32(arg_2, arg_2), arg_0.a)))));
    let var_1 = Struct_2(vec4<i32>(55575i, u_input.b.x, 1i, 18888i));
    global1 = -1504f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, global2.x, true)) + -318f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-873f, _wgslsmith_f_op_f32(step(-125f, arg_2)), -298f, _wgslsmith_f_op_f32(arg_2 - arg_2)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(163f, 3545f, global2.x, arg_2), vec4<f32>(-431f, 1047f, global2.x, arg_2))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1264f, 592f, global2.x) - vec4<f32>(global2.x, global2.x, global2.x, 1024f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -450f, arg_2, global2.x) + vec4<f32>(arg_2, arg_2, arg_2, -1058f))))));
    return arg_0.a;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = select(select(vec3<bool>(select(false, false, true) | false, all(vec2<bool>(false, true)), global2.x > _wgslsmith_f_op_f32(ceil(global2.x))), vec3<bool>(u_input.a > -7310i, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), !(!func_3(Struct_3(true), ~vec2<i32>(21680i, arg_0), global2.x)));
    var var_1 = Struct_2(reverseBits(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-33719i, 18280i, 0i, arg_0)), vec4<i32>(~(-69416i), 16931i, _wgslsmith_mod_i32(1i, arg_0), 64069i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)] % 32u)))));
    return Struct_4(true, Struct_3(false), vec3<i32>(u_input.b.x, ~u_input.a, _wgslsmith_clamp_i32(-u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(abs(18196i), ~1i))), ~global0[_wgslsmith_index_u32(4294967295u, 1u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(~(-(~countOneBits(vec4<i32>(-2147483647i, u_input.a, 3484i, 1i)))));
    var var_1 = -1404f;
    global0 = array<u32, 1>();
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u >> (1u % 32u), 1u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -368f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-848f))))));
    return Struct_3(~arg_3.x == reverseBits(26706u));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_4(!arg_1.x, arg_0, abs(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-39194i, arg_2.a.x, arg_2.a.x)), ~arg_2.a.wzx, min(arg_2.a.wxw, vec3<i32>(arg_2.a.x, arg_2.a.x, 36859i)))) >> (reverseBits(select(countOneBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], global0[_wgslsmith_index_u32(7261u, 1u)])), ~vec3<u32>(100077u, 54205u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6607u, 1u)], 1u)]), vec3<bool>(arg_0.a, false, false))) % vec3<u32>(32u)), 21954u);
    var var_1 = 11350u;
    let var_2 = vec4<bool>(!arg_1.x, arg_1.x, func_4(func_2(u_input.a), vec3<bool>(func_4(Struct_4(false, Struct_3(false), var_0.c, 33700u), vec3<bool>(false, false, true), !arg_1.xw, _wgslsmith_mult_vec4_u32(vec4<u32>(29454u, global0[_wgslsmith_index_u32(14479u, 1u)], 24598u, global0[_wgslsmith_index_u32(16847u, 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(var_0.d, 1u)], 31912u, var_0.d, 43422u))).a, true, var_0.b.a), select(!arg_1.xy, !vec2<bool>(arg_0.a, true), var_0.a), vec4<u32>(~var_0.d, abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.d, 1u)], global0[_wgslsmith_index_u32(var_0.d, 1u)])), abs(_wgslsmith_sub_u32(var_0.d, 1u)), 7628u ^ ~var_0.d)).a, all(vec2<bool>(_wgslsmith_mod_i32(var_0.c.x, 2147483647i) >= -arg_2.a.x, true)));
    let var_3 = func_2(var_0.c.x);
    var var_4 = Struct_1(~var_3.d, !vec4<bool>(true, true, arg_0.a, all(select(vec3<bool>(false, true, var_2.x), vec3<bool>(arg_0.a, false, arg_0.a), false))), vec4<bool>(true, arg_1.x, true, all(select(!var_2.xxw, !arg_1.wwx, vec3<bool>(var_0.a, arg_1.x, true)))), ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], var_3.d)), ~abs(vec2<u32>(global0[_wgslsmith_index_u32(46067u, 1u)], global0[_wgslsmith_index_u32(93390u, 1u)]))), -vec4<i32>(~var_0.c.x ^ -2147483647i, -1i, reverseBits(_wgslsmith_add_i32(0i, arg_2.a.x)), _wgslsmith_dot_vec2_i32(var_3.c.xx ^ vec2<i32>(arg_2.a.x, var_0.c.x), var_3.c.xy)));
    return !all(!vec4<bool>(arg_1.x, var_0.b.a, true, false)) | arg_1.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: i32) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, _wgslsmith_f_op_f32(arg_2 - 1642f), -534f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1666f, -768f, -109f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(253f, -1355f, -1119f))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 1175f, _wgslsmith_f_op_f32(337f * arg_2)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -637f, global2.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, arg_2, 857f)))))));
    var var_0 = Struct_4(!func_5(func_4(func_2(arg_3), !vec3<bool>(arg_1, arg_1, arg_1), vec2<bool>(true, true), select(vec4<u32>(60193u, 0u, 10870u, 4294967295u), vec4<u32>(24913u, 23865u, 4294967295u, global0[_wgslsmith_index_u32(22973u, 1u)]), arg_1)), select(vec4<bool>(false, arg_1, true, arg_1), !vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, arg_1, true, arg_1)), Struct_2(vec4<i32>(1i, 2147483647i, -3950i, 1i) & vec4<i32>(6569i, 32075i, arg_0, -4229i))), Struct_3(arg_1), firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -43628i, u_input.a), vec3<i32>(2147483647i, arg_3, 6784i)), vec3<i32>(-6247i, -2147483647i, -63059i)))), 63353u);
    global1 = var_0.b.a;
    var var_1 = all(select(vec3<bool>(var_0.b.a, (arg_1 && var_0.b.a) && false, false), vec3<bool>(true != var_0.a, !any(vec2<bool>(false, false)), any(vec4<bool>(var_0.b.a, arg_1, false, arg_1)) & true), true));
    return (var_0.a & func_5(Struct_3(false), select(!vec4<bool>(var_0.b.a, true, arg_1, false), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(var_0.a, true, true, true), arg_1), arg_1), Struct_2(min(vec4<i32>(arg_3, -1i, u_input.a, arg_0), vec4<i32>(22875i, u_input.b.x, 14172i, 4064i))))) | var_0.b.a;
}

fn func_6(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = select(!select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1), !select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false)), arg_1), select(select(vec4<bool>(true, arg_1, func_2(0i).b.a, func_1(u_input.a, true, -1000f, u_input.a)), vec4<bool>(arg_1, func_3(Struct_3(arg_1), u_input.b, arg_0), !arg_1, true), !any(vec3<bool>(arg_1, true, false))), vec4<bool>(func_2(firstTrailingBit(u_input.a)).a, arg_1, true, !arg_1), select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), func_1(9741i, arg_1, global2.x, u_input.b.x)), vec4<bool>(false, true, -634f <= global2.x, any(vec4<bool>(arg_1, true, true, false))), all(select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), arg_1)))), select(vec4<bool>(~1i != firstTrailingBit(7742i), _wgslsmith_div_i32(-14621i, u_input.b.x) < u_input.a, arg_1, func_3(Struct_3(arg_1), u_input.b, arg_0) & all(vec4<bool>(true, arg_1, arg_1, arg_1))), vec4<bool>(true, select(4294967295u <= global0[_wgslsmith_index_u32(75556u, 1u)], arg_1, !arg_1), select(true, !arg_1, true), !(arg_1 || true)), select(true, arg_1, all(vec2<bool>(arg_1, true)))));
    global0 = array<u32, 1>();
    let var_1 = _wgslsmith_add_u32(~reverseBits(min(4294967295u, global0[_wgslsmith_index_u32(0u, 1u)])), 1u);
    let var_2 = false;
    var_0 = !(!vec4<bool>(arg_1 || true, any(vec2<bool>(arg_1, false)), !(global0[_wgslsmith_index_u32(1u, 1u)] <= global0[_wgslsmith_index_u32(var_1, 1u)]), func_1(_wgslsmith_div_i32(u_input.a, u_input.b.x), true, 455f, min(-37121i, -51181i))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    global1 = !all(vec2<bool>(func_6(-511f, func_1(u_input.a, true, -302f, u_input.a)), true));
    var var_0 = reverseBits(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(73866u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3283u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), ~vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16874u, 1u)], 1u)]), firstLeadingBit(4294967295u)), vec2<u32>(abs(abs(global0[_wgslsmith_index_u32(35129u, 1u)])), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(40314u, 1u)], 4294967295u), vec2<u32>(0u, 47069u), false), vec2<u32>(1u, 6958u) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14187u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)))));
    let var_1 = Struct_2(select(-abs(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 1i))), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 2134i) | vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), max(vec4<i32>(0i, u_input.b.x, -45849i, -3147i), vec4<i32>(22360i, 15646i, 2147483647i, 3805i)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))));
    global1 = false;
    var var_2 = Struct_3(!(true != all(vec3<bool>(false, true, false))) & (false || all(vec3<bool>(true, true, true))));
    var_2 = Struct_3(false != all(select(select(vec4<bool>(false, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, false, true)), !vec4<bool>(var_2.a, false, var_2.a, var_2.a), func_5(Struct_3(var_2.a), vec4<bool>(false, false, false, var_2.a), var_1))));
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x + global2.x))))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(floor(-654f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(global2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2463f, global2.x, 954f, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 377f, global2.x, global2.x) - vec4<f32>(global2.x, 205f, -1163f, global2.x))))))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57367u, 1u)], 1u)], 0u)), ~vec3<u32>(4294967295u, 18717u, 33413u))), 1u)], 1u)], reverseBits(var_0.x), -((vec3<i32>(-1i) * -vec3<i32>(-14493i, u_input.a, -26252i)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 40394u, var_0.x), vec3<u32>(31511u, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 1u)], 1u)], 1u)])) % vec3<u32>(32u))));
}

