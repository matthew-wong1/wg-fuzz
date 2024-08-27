struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 25> = array<u32, 25>(1u, 4294967295u, 4294967295u, 33985u, 1u, 4294967295u, 4294967295u, 0u, 18548u, 1u, 4294967295u, 79246u, 473u, 1u, 1u, 14746u, 1475u, 58416u, 41701u, 1u, 4294967295u, 23524u, 52449u, 25328u, 77908u);

var<private> global2: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(f32(-1f) * -1011f))))));
    var var_2 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), all(vec4<bool>(true, false, true, false)))));
    var_1 = arg_0;
    let var_3 = Struct_1(i32(-1i) * -1i, var_2.yx, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1389f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-734f * 1031f), 1000f, arg_0, 821f)));
    return !((var_3.d.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))) && !var_3.b.x);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~max(~vec4<u32>(54646u, 44041u, 4294967295u, u_input.a), ~vec4<u32>(59534u, arg_0, 1u, 37503u)), vec4<u32>(~9280u, 0u, 0u, countOneBits(4294967295u)));
    var var_1 = Struct_1(firstTrailingBit(global0.x), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1593f - _wgslsmith_f_op_f32(-360f + -1240f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(143f - -965f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1937f, 1000f, 2308f, 633f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -612f), -380f, _wgslsmith_div_f32(455f, -1121f), -183f), vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = array<u32, 25>();
    var var_2 = var_1.b;
    let var_3 = Struct_1((i32(-1i) * -7948i) | ~(-_wgslsmith_div_i32(global0.x, var_1.a)), select(select(select(vec2<bool>(true, true), var_1.b, var_1.b.x), !var_1.b, vec2<bool>(true, false)), !var_1.b, var_2.x), _wgslsmith_f_op_vec2_f32(var_1.d.xx + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c - var_1.c))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-123f, var_1.c.x, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(533f))), 1000f, var_1.d.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 1417f, var_1.d.x, 150f)))))));
    return var_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(vec2<bool>(true, false), vec2<bool>(true, true), func_2(-1170f, _wgslsmith_div_vec2_f32(vec2<f32>(236f, -231f), vec2<f32>(-1555f, 304f))) && select(any(vec3<bool>(true, false, false)), true, false)), !vec2<bool>(!func_3(62576u), true), vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), func_3(45600u)))));
    global2 = ~u_input.a;
    var var_1 = reverseBits(firstTrailingBit(~u_input.a));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, firstTrailingBit(u_input.a), global1[_wgslsmith_index_u32(18791u, 25u)] & 10411u), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18577u, 25u)], 25u)], 25u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(17792u, u_input.a, 1u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 25u)], 45729u)))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global1[_wgslsmith_index_u32(128601u, 25u)], 24072u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 25u)], 4294967295u), abs(vec3<u32>(202u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)], 11281u)), ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 25u)], 0u)), ~vec3<u32>(20763u, global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a) | abs(vec3<u32>(40891u, u_input.a, global1[_wgslsmith_index_u32(30474u, 25u)])))), select(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)], u_input.a)), vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a << (1u % 32u), 25u)], 0u << (abs(global1[_wgslsmith_index_u32(u_input.a, 25u)]) % 32u)), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(99432u, 25u)], 25u)] != (u_input.a | reverseBits(global1[_wgslsmith_index_u32(0u, 25u)]))));
    var var_3 = -((~(~vec3<i32>(u_input.b.x, -1i, 15428i)) ^ ~vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)) << (vec3<u32>(~var_2, 5501u, global1[_wgslsmith_index_u32(15818u, 25u)]) % vec3<u32>(32u)));
    return Struct_1(global0.x & -reverseBits(_wgslsmith_mult_i32(50227i, var_3.x)), vec2<bool>(true, true), vec2<f32>(-1583f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1241f))) * _wgslsmith_f_op_f32(sign(-1705f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1056f)), _wgslsmith_f_op_f32(f32(-1f) * -382f), -1736f, 426f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-787f, 803f, -884f, 2165f) - vec4<f32>(-831f, -245f, -1650f, -1545f))))))));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_1();
    let var_1 = countOneBits(global0.x);
    var var_2 = Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(u_input.b, -global0.xyx)), select(func_1().b, !(!select(vec2<bool>(true, var_0.b.x), arg_0.b, arg_0.b)), vec2<bool>(!all(vec4<bool>(var_0.b.x, arg_0.b.x, var_0.b.x, true)), true)), arg_0.d.ww, _wgslsmith_f_op_vec4_f32(-var_0.d));
    let var_3 = ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(100198u, 44550u, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, 31216u))) << (firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 11263u, global1[_wgslsmith_index_u32(41563u, 25u)]) << (vec3<u32>(12261u, 21411u, 48359u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global0 = vec4<i32>(-1i, ~(-2587i), var_0.a, -u_input.b.x);
    return arg_0.b.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 550f;
    let var_1 = max(-(~(~0i)), arg_3.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(max(756f, _wgslsmith_f_op_f32(abs(-2263f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 377f) - var_0)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(arg_3.d.x, -453f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - -1815f), _wgslsmith_f_op_f32(max(arg_3.c.x, -1160f)), arg_3.c.x)))) + arg_3.d.wwy);
    var var_3 = vec3<u32>(~u_input.a | u_input.a, u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42638u, 25u)], 25u)], u_input.a))) & (10205u & global1[_wgslsmith_index_u32(0u, 25u)]));
    let var_4 = vec3<bool>(!arg_3.b.x, true, func_2(-1038f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-294f, -959f)))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -268f)), 852f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1f))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec2<bool>(false, select(-6146i < u_input.b.x, true, true)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), !func_4(func_1())), Struct_1(select(0i, 40006i, true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(821f, -1272f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1429f, -159f), vec2<f32>(906f, 1465f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1027f, -302f) + vec2<f32>(-766f, 878f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-511f, 676f)) - _wgslsmith_f_op_f32(step(-597f, -710f))), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -863f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1095f))))));
    global0 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global0.x, -8571i, -1i), vec4<i32>(-func_5(var_0.d.xzx, vec3<bool>(false, false, var_0.b.x), vec2<bool>(var_0.b.x, var_0.b.x), Struct_1(u_input.b.x, vec2<bool>(var_0.b.x, var_0.b.x), vec2<f32>(603f, -1344f), vec4<f32>(-789f, 1335f, var_0.d.x, var_0.d.x))).a, var_0.a, _wgslsmith_add_i32(min(24281i, 2147483647i), var_0.a), 2147483647i)));
    global0 = vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_0.a, -28561i, -5909i), vec4<i32>(u_input.b.x, -8268i, -41163i, -2147483647i), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-32844i, u_input.b.x, var_0.a, u_input.b.x), vec4<i32>(0i, -2147483647i, 0i, 1841i))), select(~(-20563i), countOneBits(_wgslsmith_add_i32(-10926i, 10598i)) & _wgslsmith_add_i32(countOneBits(var_0.a), select(global0.x, var_0.a, true)), var_0.b.x), ~global0.x, ~(u_input.b.x >> (_wgslsmith_sub_u32(17956u, global1[_wgslsmith_index_u32(0u, 25u)]) % 32u)));
    var var_1 = global0.x;
    let var_2 = vec3<u32>(u_input.a >> (~(4294967295u >> (~u_input.a % 32u)) % 32u), min(~u_input.a, 0u), max(80303u, ~(u_input.a & global1[_wgslsmith_index_u32(1u, 25u)])));
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, 756f) * _wgslsmith_f_op_vec3_f32(-func_5(_wgslsmith_f_op_vec3_f32(-var_0.d.wzx), !vec3<bool>(true, var_0.b.x, false), !var_0.b, func_5(vec3<f32>(-1838f, -288f, -342f), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, var_0.b.x), Struct_1(2147483647i, var_0.b, vec2<f32>(-1404f, 1000f), var_0.d))).d.wxy)), !(!(!select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, var_0.b.x), var_0.b.x))), !func_1().b, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(select(-48582i, ~(~(-1i)), var_3.b.x), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(abs(-5364i), global0.x, -85212i, var_3.a)), reverseBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 48201i, -2147483647i, var_3.a), vec4<i32>(72402i, var_0.a, var_0.a, 0i)), abs(vec4<i32>(var_3.a, -2669i, -1i, u_input.b.x))))), vec4<u32>(var_2.x, var_2.x, max(u_input.a & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], var_2.x), ~4294967295u), u_input.a));
}

