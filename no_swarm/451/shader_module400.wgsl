struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: u32 = 1u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = select(~vec2<i32>(_wgslsmith_clamp_i32(-55209i, ~(-62912i), -1i), ~2147483647i), vec2<i32>(1i, 1i), select(vec2<bool>(true, select(true, true, false)), vec2<bool>(true, true), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(26617u, 28u)])))));
    global0 = array<bool, 28>();
    global1 = _wgslsmith_add_u32(select(~u_input.a >> (1u % 32u), u_input.a, any(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)])))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, ~0u), 69590u));
    let var_1 = -23577i;
    let var_2 = !select(vec2<bool>(_wgslsmith_f_op_f32(floor(219f)) >= -1000f, false), !vec2<bool>(!global0[_wgslsmith_index_u32(1u, 28u)], var_1 <= 0i), vec2<bool>(global0[_wgslsmith_index_u32(69246u, 28u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(491f + _wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_f32(step(-497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1000f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(630f)), _wgslsmith_f_op_f32(round(379f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1519f - 712f), _wgslsmith_f_op_f32(f32(-1f) * -1382f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1932f - -296f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1285f)) - -130f), _wgslsmith_f_op_f32(max(-564f, _wgslsmith_f_op_f32(f32(-1f) * -628f))))) * -562f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = select(select(!(!(!vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 28u)], false, false))), !select(vec4<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(1u, 28u)], arg_1.x), !vec4<bool>(global0[_wgslsmith_index_u32(23267u, 28u)], arg_1.x, false, arg_1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(43984u, 28u)], arg_1.x, true)), vec4<bool>(true, 1u != u_input.a, !global0[_wgslsmith_index_u32(arg_3.a.x, 28u)] || all(vec2<bool>(true, false)), !any(vec3<bool>(global0[_wgslsmith_index_u32(15739u, 28u)], arg_1.x, global0[_wgslsmith_index_u32(70171u, 28u)])))), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], arg_1.x, true)), select(select(vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(7046u, 28u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_3.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), global0[_wgslsmith_index_u32(4294967295u, 28u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(arg_3.a.x, 28u)], true, false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, false, false), !vec4<bool>(arg_1.x, false, false, arg_1.x)), -574f == _wgslsmith_f_op_f32(-arg_0.x)), all(vec4<bool>(true, false, true, true)) | true), vec4<bool>(any(select(arg_1, vec3<bool>(false, false, true), arg_1)), false, false, arg_1.x));
    global0 = array<bool, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yw)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).zx, vec2<f32>(-333f, -555f)))));
    var_0 = !vec4<bool>(true | (~4294967295u < firstTrailingBit(1u)), !global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.a, arg_3.a.x)), 28u)], var_0.x, false);
    var var_2 = ~(select(_wgslsmith_div_u32(arg_3.a.x, 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, 0u), vec3<u32>(5779u, 0u, 4294967295u)), 28646u), var_0.x) << ((_wgslsmith_add_u32(u_input.a, ~0u) | 4294967295u) % 32u));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    global0 = array<bool, 28>();
    global1 = func_4(_wgslsmith_f_op_vec4_f32(func_3()), vec3<bool>(!(_wgslsmith_add_i32(2147483647i, arg_0.x) >= _wgslsmith_clamp_i32(25698i, 27980i, arg_2.d.d.x)), true, !(!global0[_wgslsmith_index_u32(4294967295u, 28u)])), select(-vec2<i32>(_wgslsmith_clamp_i32(-8526i, arg_0.x, -21890i), abs(arg_2.a)), vec2<i32>(~reverseBits(arg_2.d.a), -2147483647i), all(!vec3<bool>(false, arg_2.d.c.x, false))), Struct_4(firstLeadingBit(select(~vec2<u32>(arg_2.c, arg_2.c), ~vec2<u32>(0u, u_input.a), arg_2.d.c.x & global0[_wgslsmith_index_u32(u_input.a, 28u)]))));
    return ~arg_0.x;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> vec3<u32> {
    global1 = abs(0u);
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, ~2147483647i, -19701i, select(1i, 2147483647i, false)), vec4<bool>(global0[_wgslsmith_index_u32(105781u, 28u)] || global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], false, -292f != arg_1)), abs(-(vec4<i32>(-1i, 1i, -22489i, 20892i) >> (vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 4294967295u) % vec4<u32>(32u))))), _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(-48481i, -19074i, 0i, 2147483647i), vec4<i32>(8390i, -2147483647i, -1i, 2147483647i), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(8152u, 28u)], false)) | vec4<i32>(-19492i, func_2(vec3<i32>(-2147483647i, -2147483647i, 1i), false, Struct_2(1i, arg_1, arg_0.a.x, Struct_1(14895i, vec2<f32>(-237f, 595f), vec2<bool>(true, false), vec3<i32>(0i, 23048i, -2147483647i)))), ~(-29418i), -53371i), select(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, -23941i, 11310i, -1i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(29330u, 28u)], true, global0[_wgslsmith_index_u32(arg_0.a.x, 28u)])) ^ abs(-vec4<i32>(55793i, -2147483647i, -43999i, -1i)), -abs(vec4<i32>(1i, 1i, 1i, 1i))));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 2147483647i, ~(-2147483647i), -32553i), vec4<i32>(_wgslsmith_clamp_i32(-70573i & -var_0.x, i32(-1i) * -61212i, _wgslsmith_div_i32(-30508i, var_0.x) >> (u_input.a % 32u)), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_0.x, 1i), i32(-1i) * -7742i), var_0.x, var_0.x));
    global1 = _wgslsmith_div_u32(min(1749u, 1u), ~(~1u));
    let var_1 = Struct_5(Struct_1(~_wgslsmith_dot_vec2_i32(var_0.ww << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1845i, var_0.x), var_0.zy)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()).yy)))), vec2<bool>(true, false), abs(var_0.yxw)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), arg_1))), Struct_2(44305i, arg_1, u_input.a, Struct_1(33288i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a << (arg_0.a.x % 32u), 28u)], select(true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(19685u, 28u)])), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 186i, 13717i), vec3<i32>(var_0.x, -1634i, var_0.x)))), 20036u >> (firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a))) % 32u));
    return firstTrailingBit(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a), func_4(vec4<f32>(1311f, -668f, var_1.a.b.x, var_1.b), select(select(vec3<bool>(var_1.c.d.c.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], false, true), true), vec3<bool>(true, false, var_1.c.d.c.x), select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 28u)], var_1.a.c.x), vec3<bool>(global0[_wgslsmith_index_u32(41933u, 28u)], global0[_wgslsmith_index_u32(arg_0.a.x, 28u)], var_1.c.d.c.x), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(var_1.c.c, 28u)]))), vec2<i32>(-2147483647i, i32(-1i) * -1i), arg_0)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_2(countOneBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15195i, 1i), vec3<i32>(33627i, 2147483647i, -43740i)), 1i), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(592f, -815f)), _wgslsmith_f_op_f32(step(-1250f, -763f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(132f * 690f), _wgslsmith_f_op_f32(abs(-1108f))), !(!global0[_wgslsmith_index_u32(1u, 28u)])))), 1u, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(23964i, -2147483647i, 23620i, -1452i))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1281f, 1509f))), _wgslsmith_f_op_f32(-1f)), select(vec2<bool>(!global0[_wgslsmith_index_u32(1u, 28u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], false))), !vec2<bool>(global0[_wgslsmith_index_u32(63280u, 28u)], false)), max(-(vec3<i32>(-28530i, 1i, -11177i) >> (vec3<u32>(u_input.a, arg_1.x, u_input.a) % vec3<u32>(32u))), select(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(5251i, -2147483647i, 6170i), vec3<i32>(0i, 0i, 0i)), false || global0[_wgslsmith_index_u32(arg_1.x, 28u)]))));
    global1 = abs(1u);
    let var_1 = var_0.d.c;
    let var_2 = ~2147483647i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - 1901f))), 0u ^ _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(11489u, abs(31929u), max(10227u, 73721u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.b, -1000f, true)), var_0.d.b.x, true)), _wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(f32(-1f) * -1068f)))) * -625f), var_0.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, -698f, -1962f) + vec3<f32>(var_3.a, var_3.a, var_0.b)) - vec3<f32>(var_3.e, 644f, 1797f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-332f, -1078f, -1131f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, 755f, -525f), vec3<f32>(var_3.b, var_3.d, -1043f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1002f, var_0.b, var_0.b) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-105f, -2370f, -2016f))))) + vec3<f32>(161f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.b.x, -179f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 28>();
    let var_0 = abs(abs(vec3<i32>(1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(reverseBits(func_1(Struct_4(vec2<u32>(4294967295u, 17589u)), -448f) ^ _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, 0u, 33409u)), countOneBits(vec3<u32>(4294967295u, 91073u, u_input.a)))), ~abs(vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_sub_u32(u_input.a, 1u)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(-455f));
    let var_3 = all(select(select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 28u)]), vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(62931u, 28u)], true)), vec2<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 28u)]), false), vec2<bool>(true, all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(94607u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)])))), _wgslsmith_f_op_f32(select(-1872f, _wgslsmith_f_op_f32(var_2 - var_1.x), true)) >= -244f));
    let var_4 = max(~(~vec2<u32>(46929u, 1u)), ~(~vec2<u32>(0u, 1u))) | (~(~vec2<u32>(u_input.a, 4294967295u)) & countOneBits(countOneBits(vec2<u32>(11351u, u_input.a))));
    global1 = reverseBits(~(~(~min(var_4.x, 0u))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, var_1.x, -339f) - vec3<f32>(var_1.x, var_2, -918f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1600f, -541f, var_2)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(133f, var_1.x, var_2) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 328f, -403f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(vec3<u32>(var_4.x, 36911u, u_input.a), vec3<u32>(u_input.a, 1u, 71770u))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-643f, -521f, -1245f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(36113u, 69980u), vec2<u32>(var_4.x, 4294967295u)), min(u_input.a, var_4.x))) >> ((((vec2<u32>(1u, var_4.x) | var_4) ^ vec2<u32>(4294967295u, var_4.x)) | (_wgslsmith_mult_vec2_u32(var_4, vec2<u32>(u_input.a, 17028u)) >> (var_4 % vec2<u32>(32u)))) % vec2<u32>(32u)), var_1.x, var_1.xx, reverseBits(_wgslsmith_div_u32(firstLeadingBit(var_4.x), 0u)), var_4);
}

