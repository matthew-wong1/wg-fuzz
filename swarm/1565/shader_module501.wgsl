struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = firstTrailingBit(~(~select(abs(u_input.b), u_input.b, true)));
    var var_1 = Struct_1(vec3<bool>(true, all(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false)), any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(1u, 20u)] | global0[_wgslsmith_index_u32(97163u, 20u)], any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)])))), select(any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], false)), false, true)), _wgslsmith_add_u32(~(u_input.b | 1u), u_input.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1044f, 1590f), vec2<f32>(-585f, 187f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(241f)), _wgslsmith_f_op_f32(select(1639f, 716f, global0[_wgslsmith_index_u32(u_input.b, 20u)]))))), vec2<bool>(true, select(global0[_wgslsmith_index_u32(u_input.b, 20u)], false, true) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), 20u)]))), -_wgslsmith_clamp_i32(1i, -1i, _wgslsmith_sub_i32(u_input.a.x, reverseBits(u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-544f, 2147f, 314f), vec3<f32>(253f, 147f, 837f), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 20u)])))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, 381f, -154f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-919f, -643f, -1939f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-251f, -319f, -1578f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(659f, 961f, 134f) + vec3<f32>(-1272f, 569f, -781f)))))));
    var var_2 = u_input.a.x;
    global0 = array<bool, 20>();
    var var_3 = Struct_1(vec3<bool>(any(vec3<bool>(true && global0[_wgslsmith_index_u32(26628u, 20u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], false, true)))), !(!global0[_wgslsmith_index_u32(47273u, 20u)]), (true || (var_1.b <= u_input.b)) & (max(var_1.b, 0u) != countOneBits(4294967295u))), reverseBits(firstLeadingBit(select(1u, var_1.b | 4294967295u, !global0[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.e.zy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.e.x)))), var_1.a.x))), 1i, _wgslsmith_div_vec3_f32(vec3<f32>(-110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)) + _wgslsmith_f_op_f32(min(var_1.c.x, var_1.e.x))), 298f), vec3<f32>(_wgslsmith_f_op_f32(927f * 1653f), 119f, -551f)));
    return min(~u_input.a, firstTrailingBit(u_input.a));
}

fn func_2() -> bool {
    var var_0 = -func_3();
    var var_1 = firstTrailingBit(41799i);
    var_0 = vec2<i32>(_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(i32(-1i) * -1i, func_3().x, func_3().x)), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, 5641i, u_input.a.x)), ~0i)), u_input.a.x);
    var_0 = vec2<i32>(-var_0.x, -(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(18307i, -2147483647i, var_0.x), vec3<i32>(var_0.x, -6368i, u_input.a.x)), u_input.a.x)));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~abs(~0u), u_input.b), select(abs(max(vec2<u32>(61974u, 0u), vec2<u32>(u_input.b, u_input.b)) & vec2<u32>(1u, 1u)), vec2<u32>(50383u, ~51857u), global0[_wgslsmith_index_u32(~u_input.b, 20u)]));
    return !all(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(38808u, 20u)], true)), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(0u, 20u)], true), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>(true, !all(vec4<bool>(true, true, false, arg_0.a.x)), arg_0.a.x), !arg_0.a, !func_2()), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), _wgslsmith_add_i32(u_input.a.x, -22290i >> (arg_1.x % 32u)) >> (~arg_1.x % 32u), vec3<f32>(-2366f, -1036f, _wgslsmith_f_op_f32(-arg_0.c.x)));
    let var_1 = 34089i;
    let var_2 = arg_0;
    let var_3 = -640f;
    let var_4 = u_input.b;
    return Struct_1(!select(vec3<bool>(var_2.a.x & true, var_2.a.x, true), vec3<bool>(select(var_2.a.x, false, var_2.a.x), true, all(arg_0.a)), var_2.a), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, arg_0.c.x))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(select(-1000f, -337f, var_0.a.x))))), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 1i, ~(-2147483647i), -1847i), abs(~vec4<i32>(var_2.d, var_1, 2147483647i, -2147483647i))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-663f, -343f, _wgslsmith_f_op_f32(-arg_0.e.x)) * vec3<f32>(_wgslsmith_f_op_f32(floor(571f)), var_2.c.x, arg_0.e.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_0.e)), var_2.e)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global0 = array<bool, 20>();
    var var_0 = select(~u_input.a.x, u_input.a.x, !(!(u_input.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(54960u, 26228u, 39553u, 15889u)))));
    var var_1 = func_4(Struct_1(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], true)), vec3<bool>(true, true, true), vec3<bool>(!arg_1, true, func_2())), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 31965u, u_input.b), min(vec3<u32>(u_input.b, 61522u, u_input.b), vec3<u32>(34686u, 0u, 1u))), vec3<u32>(~46252u, ~u_input.b, u_input.b)), arg_0.xy, u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0))))), ~(vec4<u32>(u_input.b & 42325u, _wgslsmith_mult_u32(50377u, u_input.b), 4294967295u, min(u_input.b, u_input.b)) >> (~(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) | vec4<u32>(0u, u_input.b, 4170u, u_input.b)) % vec4<u32>(32u))));
    let var_2 = select((-vec3<i32>(u_input.a.x, var_1.d, -2147483647i) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, 0u, 0u), vec3<u32>(3500u, var_1.b, 4294967295u)), ~vec3<u32>(var_1.b, 1u, u_input.b)) % vec3<u32>(32u))) << (firstTrailingBit(~vec3<u32>(55090u, 26525u, u_input.b)) % vec3<u32>(32u)), vec3<i32>(~(~max(0i, u_input.a.x)), 0i, _wgslsmith_sub_i32(countOneBits(_wgslsmith_clamp_i32(u_input.a.x, var_1.d, -2577i)), 2147483647i)), vec3<bool>(true, true, true));
    let var_3 = func_4(func_4(Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 20u)], true, false), ~firstTrailingBit(1605u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c.x, 382f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - var_1.c)), -var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.x, arg_0.x, 421f), vec3<f32>(-1254f, -602f, -547f)) * vec3<f32>(-207f, 915f, 1302f))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 17077u, 0u, 0u), vec4<u32>(var_1.b, 0u, var_1.b, var_1.b))), _wgslsmith_clamp_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_1.b, var_1.b), ~vec4<u32>(u_input.b, 40923u, var_1.b, var_1.b)), vec4<u32>(4294967295u, ~4294967295u, reverseBits(0u), u_input.b)), vec4<u32>(var_1.b, u_input.b, ~u_input.b, 1u) | firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 11355u, 1u)), reverseBits(firstTrailingBit(~vec4<u32>(15457u, 1u, 1u, var_1.b)))));
    return Struct_1(!select(func_4(var_3, ~vec4<u32>(1u, var_1.b, 64230u, var_3.b)).a, var_3.a, var_3.a), var_1.b, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(978f + _wgslsmith_f_op_f32(-var_3.e.x)))), var_3.c.x), abs(~min(var_2.x, -var_2.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.e.x), _wgslsmith_f_op_f32(f32(-1f) * -924f), -1500f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), vec3<f32>(var_1.e.x, arg_0.x, 459f))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_0.d, u_input.a.x, var_0.d, var_0.d)) >> (select(vec4<u32>(28925u, u_input.b, u_input.b, 50391u), vec4<u32>(1u, arg_2, arg_3.b, 0u), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], arg_1, arg_1)) % vec4<u32>(32u)), ~vec4<i32>(-15781i, var_0.d, arg_3.d, u_input.a.x) & (vec4<i32>(var_0.d, 2147483647i, var_0.d, -14126i) << (vec4<u32>(32307u, arg_2, 38953u, u_input.b) % vec4<u32>(32u))))), reverseBits(vec4<i32>(arg_3.d, 1i, abs(22236i), max(1i, 18700i) ^ u_input.a.x)));
    var_1 = vec4<i32>(i32(-1i) * -firstTrailingBit(var_1.x), -var_1.x, u_input.a.x, -2495i) ^ (vec4<i32>(1i | ~var_0.d, ~2147483647i, var_0.d, -arg_3.d) & vec4<i32>(arg_3.d, -1i, countOneBits(func_4(Struct_1(arg_3.a, 37363u, vec2<f32>(var_0.c.x, 1288f), 17715i, var_0.e), vec4<u32>(arg_3.b, u_input.b, u_input.b, 42559u)).d), select(arg_3.d, u_input.a.x, arg_3.a.x) | 7357i));
    var_1 = firstTrailingBit(vec4<i32>(func_3().x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.xz & var_1.zw, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, var_1.x), vec2<i32>(var_0.d, -2147483647i))), -1i), reverseBits(var_1.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 0i), vec2<i32>(5942i, var_1.x))));
    let var_2 = func_2();
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    var var_0 = abs(vec3<i32>(_wgslsmith_div_i32(5807i, ~select(1i, -52134i, false)), _wgslsmith_mult_i32(0i, -u_input.a.x), _wgslsmith_div_i32(u_input.a.x, countOneBits(-2147483647i))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(!(!vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b, 20u)], false, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])))), firstLeadingBit(u_input.b), vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-568f + -666f), _wgslsmith_f_op_f32(f32(-1f) * -811f))), false, 1u, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-725f, -1000f, 253f), vec3<f32>(-2019f, 1535f, -842f), vec3<bool>(false, false, true))), true))), _wgslsmith_f_op_f32(f32(-1f) * -223f)), 5642i, vec3<f32>(_wgslsmith_f_op_f32(696f + _wgslsmith_f_op_f32(f32(-1f) * -264f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f - 1000f)) + 162f), _wgslsmith_f_op_f32(ceil(1000f))));
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec2<u32>(4294967295u, ~(_wgslsmith_div_u32(u_input.b, 4294967295u) >> (u_input.b % 32u))), 4294967295u, abs(_wgslsmith_add_u32(abs(4294967295u), ~var_3)));
}

