struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<i32, 20>;

var<private> global2: array<vec4<f32>, 19>;

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    global3 = Struct_4(global3.a, firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a.d, 20u)], arg_1.a.c, -1i, 10355i), vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_1.a.b.x, 12u)], global0[_wgslsmith_index_u32(global3.c.x, 12u)], global3.d)), arg_1.a.c), global3.b)), vec2<u32>(41772u, min(~global3.c.x, 0u)), firstLeadingBit(-(~_wgslsmith_mod_i32(global3.b.x, -1i))), global3.e);
    let var_0 = global3.e;
    global3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(744f)))), firstTrailingBit(vec2<i32>(-25666i << (global3.c.x % 32u), 1i)) ^ max(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(arg_1.a.b.x, 12u)], global1[_wgslsmith_index_u32(0u, 20u)])), vec2<i32>(0i, -2147483647i) << (arg_1.a.b.yw % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(arg_1.b.b.zx, vec2<u32>(countOneBits(arg_1.a.d), ~arg_1.b.b.x)) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.b.x, 18406u), vec2<u32>(global3.c.x, 73034u), vec2<u32>(28481u, 22413u)), global3.c) % vec2<u32>(32u)), ~(-(global0[_wgslsmith_index_u32(9056u, 12u)] ^ -54001i)) & ~0i, false);
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2108f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1297f, global3.a.x)))), vec4<u32>(global3.c.x, _wgslsmith_clamp_u32(global3.c.x, ~arg_1.b.b.x, 21608u), 4294967295u >> (arg_1.a.b.x % 32u), ~(~2179u)), -2147483647i, _wgslsmith_dot_vec2_u32(arg_1.a.b.zx, max(vec2<u32>(31467u, 0u), vec2<u32>(0u, global3.c.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), true), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1508f, arg_3) + global3.a), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global3.c.x, 37685u), reverseBits(global3.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.b.x, global3.c.x, 92060u), arg_1.a.b.wyy), arg_1.b.d), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.c.x, global3.c.x, arg_1.a.b.x), vec4<u32>(42053u, 99967u, 4294967295u, global3.c.x)) << (abs(vec4<u32>(0u, 1u, arg_1.a.b.x, global3.c.x)) % vec4<u32>(32u))), ~11474i, firstLeadingBit(max(global3.c.x, _wgslsmith_mult_u32(arg_1.b.b.x, 6639u))), arg_1.b.e));
    var var_2 = var_1.a.e;
    return 1774f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.a.x, 631i, -2147483647i, _wgslsmith_div_i32(2147483647i, var_0)), abs(~vec4<i32>(countOneBits(global0[_wgslsmith_index_u32(arg_0.b.x, 12u)]), 2147483647i, 1i, 1i)));
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1175f, Struct_2(Struct_1(vec2<f32>(516f, -662f), arg_0.b, 0i, global3.c.x, arg_1), arg_0), vec3<f32>(arg_0.a.x, arg_0.a.x, 1077f), arg_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1468f, 270f, global3.e)), _wgslsmith_f_op_f32(-global3.a.x))))));
    global1 = array<i32, 20>();
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.x, 859f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, 802f))), ~_wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.b.x, 0u, 4294967295u), arg_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3.c.x, 0u, arg_0.b.x), arg_0.b), true), ~firstLeadingBit(vec4<u32>(global3.c.x, arg_0.b.x, 44637u, 0u))), ~_wgslsmith_clamp_i32(var_1.x, 0i, var_2), global3.c.x, all(!select(!vec4<bool>(false, global3.e, arg_1, arg_1), vec4<bool>(true, false, true, true), select(false, true, false))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-func_2(arg_3, true || arg_2.e).a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-111f + arg_2.a.x)))), abs(-vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.d, global3.c.x), 20u)], ~arg_0.c)), vec2<u32>(~global3.c.x, 60261u), ~global3.d, all(select(!vec3<bool>(arg_1, false, arg_0.e), !vec3<bool>(true, global3.e, global3.e), select(vec3<bool>(arg_1, false, global3.e), vec3<bool>(global3.e, true, true), false))) & true);
    var var_0 = vec4<f32>(arg_3.a.x, -2057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) - 419f), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1263f, global3.a.x)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.a.x, 1099f)))), countOneBits(firstTrailingBit(arg_2.b)), 1i, firstLeadingBit(max(arg_3.d, 63922u)), global3.e), true).a.x);
    var var_1 = select(!select(select(!vec4<bool>(false, true, arg_3.e, arg_1), !vec4<bool>(arg_1, arg_2.e, true, arg_3.e), vec4<bool>(arg_3.e, arg_0.e, arg_0.e, arg_3.e)), select(vec4<bool>(false, false, arg_3.e, arg_0.e), vec4<bool>(true, false, false, false), !global3.e), !vec4<bool>(arg_3.e, false, true, false)), !(!select(!vec4<bool>(arg_2.e, false, arg_1, arg_1), vec4<bool>(true, false, arg_1, arg_2.e), !global3.e)), 4294967295u >= arg_3.d);
    var_1 = vec4<bool>(false, any(!vec2<bool>(212f != global3.a.x, arg_0.e && arg_2.e)), (4294967295u << (arg_2.d % 32u)) < 67746u, (true && all(vec2<bool>(true, true))) | select(false, true, true));
    let var_2 = reverseBits(abs(arg_3.b));
    return Struct_3(global0[_wgslsmith_index_u32(arg_0.d, 12u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_3) -> vec3<f32> {
    global3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), arg_0.a.x), global3.b, _wgslsmith_add_vec2_u32(select(arg_1, global3.c, !(!vec2<bool>(arg_0.e, false))), global3.c >> (_wgslsmith_mult_vec2_u32(~arg_1, ~arg_1) % vec2<u32>(32u))), ~arg_3.a, false);
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -394f)), Struct_2(func_2(Struct_1(global3.a, arg_0.b, u_input.a.x, arg_0.b.x, false), arg_0.e), Struct_1(arg_0.a, vec4<u32>(4294967295u, global3.c.x, global3.c.x, arg_1.x), 44450i, arg_1.x, global3.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, -926f, 1952f))), arg_0.a.x))));
}

fn func_1(arg_0: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(vec2<f32>(global3.a.x, global3.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 20713u, arg_0.c.x), vec4<u32>(4294967295u, 46708u, arg_0.c.x, 1u)), ~8566i, 0u, true), arg_0.c, 47633i, func_4(func_2(Struct_1(global3.a, vec4<u32>(25454u, global3.c.x, arg_0.c.x, 0u), -2147483647i, 1u, true), true), global3.e, Struct_1(vec2<f32>(405f, 1000f), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), global0[_wgslsmith_index_u32(0u, 12u)], global3.c.x, false), Struct_1(arg_0.a, vec4<u32>(global3.c.x, global3.c.x, 1798u, global3.c.x), 0i, arg_0.c.x, false)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.a.x, arg_0.a.x, global3.a.x), vec3<f32>(-1000f, global3.a.x, 633f))) * vec3<f32>(353f, -314f, -125f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, arg_0.a.x, arg_0.a.x) - vec3<f32>(global3.a.x, -1026f, -789f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1279f, arg_0.a.x, arg_0.a.x))))))));
    global3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, _wgslsmith_div_f32(214f, arg_0.a.x))), -_wgslsmith_clamp_vec2_i32(arg_0.b, vec2<i32>(global3.d, arg_0.b.x), vec2<i32>(arg_0.d, -44948i) | arg_0.b) << (((abs(global3.c) ^ global3.c) << (~arg_0.c % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_clamp_u32(5268u, _wgslsmith_dot_vec2_u32(arg_0.c, global3.c), ~1u), 17232u), ~(-21020i), all(vec3<bool>(true, func_2(func_2(Struct_1(var_0.zx, vec4<u32>(global3.c.x, 1u, 0u, arg_0.c.x), global1[_wgslsmith_index_u32(global3.c.x, 20u)], arg_0.c.x, true), false), false).e, !global3.e)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(395f, -2092f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), ~vec4<u32>(0u, arg_0.c.x, 0u, 66388u) << (select(~vec4<u32>(global3.c.x, global3.c.x, 52695u, 60774u), abs(vec4<u32>(39975u, global3.c.x, global3.c.x, 1u)), true) % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.c.x & _wgslsmith_div_i32(-66780i, global0[_wgslsmith_index_u32(global3.c.x, 12u)]), _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_sub_i32(1i, -13522i))), select(~global3.c.x, _wgslsmith_add_u32(global3.c.x, ~1u), true), global3.e), abs(arg_0.c), -_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-1i, 0i, arg_0.d, -1i), vec4<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(14937u, 20u)])), u_input.c), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a) * _wgslsmith_f_op_vec2_f32(exp2(var_0.zx))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.c.x, arg_0.c.x, 0u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, global3.c.x, arg_0.c.x), vec4<u32>(arg_0.c.x, 10106u, 67063u, global3.c.x))), global3.b.x, reverseBits(firstLeadingBit(1u)), global3.e), global3.e, Struct_1(var_0.xx, ~vec4<u32>(15573u, 21449u, arg_0.c.x, 1u), u_input.b.x, reverseBits(arg_0.c.x), !select(false, true, arg_0.e)), Struct_1(_wgslsmith_f_op_vec3_f32(func_5(func_2(Struct_1(global3.a, vec4<u32>(global3.c.x, global3.c.x, arg_0.c.x, 4294967295u), -5751i, arg_0.c.x, true), global3.e), ~global3.c, global1[_wgslsmith_index_u32(~global3.c.x, 20u)], func_4(Struct_1(arg_0.a, vec4<u32>(1u, arg_0.c.x, 55422u, 43228u), arg_0.b.x, 1u, true), false, Struct_1(vec2<f32>(-546f, -278f), vec4<u32>(arg_0.c.x, 103566u, 1u, 61493u), -39016i, arg_0.c.x, false), Struct_1(vec2<f32>(var_0.x, -1992f), vec4<u32>(0u, global3.c.x, 0u, arg_0.c.x), global0[_wgslsmith_index_u32(global3.c.x, 12u)], arg_0.c.x, false)))).xx, select(vec4<u32>(arg_0.c.x, 0u, 1u, global3.c.x), vec4<u32>(arg_0.c.x, 4294967295u, 4294967295u, global3.c.x), vec4<bool>(true, true, arg_0.e, false)) & ~vec4<u32>(arg_0.c.x, 4294967295u, global3.c.x, 35197u), -(~global1[_wgslsmith_index_u32(arg_0.c.x, 20u)]), arg_0.c.x, true))));
    var var_2 = ~select(vec3<u32>(firstTrailingBit(select(1u, 17160u, arg_0.e)), 35176u, ~4294967295u), countOneBits(max(~vec3<u32>(0u, 32203u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.x, arg_0.c.x, arg_0.c.x), vec3<u32>(arg_0.c.x, 16547u, 10345u)))), !select(vec3<bool>(true, true, global3.e), vec3<bool>(false, true, false), select(vec3<bool>(true, global3.e, global3.e), vec3<bool>(false, global3.e, arg_0.e), vec3<bool>(arg_0.e, arg_0.e, global3.e))));
    let var_3 = 678f;
    return true;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = true;
    var_0 = any(!vec3<bool>(arg_1.a.e, -75051i == global0[_wgslsmith_index_u32(global3.c.x, 12u)], true));
    let var_1 = ~(-vec3<i32>(arg_2, -arg_2, ~u_input.b.x));
    var_0 = arg_1.a.e;
    let var_2 = !(!arg_1.a.e & any(vec3<bool>(arg_1.a.e, true || global3.e, false | arg_1.a.e)));
    return func_2(Struct_1(arg_1.a.a, firstTrailingBit(func_2(arg_1.a, !global3.e).b), -31632i, ~_wgslsmith_mod_u32(abs(global3.c.x), _wgslsmith_dot_vec4_u32(arg_1.a.b, vec4<u32>(arg_1.a.b.x, 0u, global3.c.x, 0u))), true), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(~vec3<i32>(firstTrailingBit(global3.d), global3.d, u_input.b.x), Struct_2(Struct_1(global3.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(66517u, global3.c.x, global3.c.x, global3.c.x), vec4<u32>(global3.c.x, 1u, global3.c.x, 35718u), vec4<u32>(31766u, global3.c.x, global3.c.x, global3.c.x)), 1i, ~global3.c.x, func_1(Struct_4(global3.a, u_input.a.xx, vec2<u32>(global3.c.x, 3186u), global3.b.x, false))), func_2(func_2(Struct_1(global3.a, vec4<u32>(24405u, 0u, global3.c.x, global3.c.x), global3.b.x, 4294967295u, global3.e), global3.e), false || global3.e)), global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1514f), _wgslsmith_f_op_f32(856f + 488f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(vec2<f32>(953f, -1224f), vec4<u32>(global3.c.x, 0u, 0u, global3.c.x), global0[_wgslsmith_index_u32(0u, 12u)], global3.c.x, global3.e), global3.c, global3.d, Struct_3(global3.b.x))).x))), Struct_1(global3.a, _wgslsmith_add_vec4_u32(vec4<u32>(~1u, global3.c.x, ~global3.c.x, global3.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(16976u, 4878u, 28484u, 0u), vec4<u32>(4294967295u, global3.c.x, 0u, global3.c.x) ^ vec4<u32>(global3.c.x, global3.c.x, 1u, global3.c.x))), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d, global3.d, global3.d, global3.b.x), u_input.c | vec4<i32>(11352i, -14890i, global3.d, 30254i))), ~global3.c.x, any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f)) - 603f) - var_0.b.a.x));
    let var_2 = ~_wgslsmith_sub_i32(~(-43397i), ~1i);
    var_0 = Struct_2(Struct_1(vec2<f32>(var_1, _wgslsmith_f_op_f32(func_2(Struct_1(global3.a, var_0.a.b, 1i, var_0.a.b.x, global3.e), true).a.x * var_0.a.a.x)), ~var_0.b.b ^ abs(func_6(vec3<i32>(2147483647i, -4234i, global0[_wgslsmith_index_u32(14272u, 12u)]), Struct_2(Struct_1(var_0.a.a, vec4<u32>(16234u, global3.c.x, 0u, 72517u), u_input.a.x, global3.c.x, var_0.a.e), Struct_1(var_0.b.a, vec4<u32>(var_0.a.b.x, var_0.a.d, 0u, var_0.a.b.x), -35064i, global3.c.x, global3.e)), global1[_wgslsmith_index_u32(global3.c.x, 20u)], 360f).b), -global0[_wgslsmith_index_u32(20805u, 12u)], _wgslsmith_clamp_u32(~firstTrailingBit(1u), ~global3.c.x, global3.c.x), any(select(!vec2<bool>(global3.e, global3.e), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(var_0.b.a, ~var_0.b.b, -44627i, global3.c.x, true));
    let var_3 = ~global3.c.x;
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(231f, var_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a + vec2<f32>(var_0.a.a.x, var_0.a.a.x)))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, global3.c.x, 55711u, var_3)) | ~vec4<u32>(11369u, global3.c.x, 0u, 20049u), var_0.b.b), _wgslsmith_dot_vec3_i32(u_input.a.zxw, u_input.a.yzy) >> ((_wgslsmith_add_u32(var_0.a.b.x, var_0.a.d) >> (_wgslsmith_sub_u32(var_3, 0u) % 32u)) % 32u), reverseBits(~0u) >> (~(~0u) % 32u), global3.e));
    let var_4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * -1592f), _wgslsmith_f_op_f32(f32(-1f) * -1244f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f))), 1000f), u_input.b, abs(vec2<u32>(~func_2(Struct_1(vec2<f32>(var_0.b.a.x, 218f), var_0.a.b, global3.b.x, 0u, false), false).d, 55176u)), i32(-1i) * -1i, all(!(!(!vec4<bool>(true, true, true, global3.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~39378u), countOneBits(var_4.c), firstLeadingBit(u_input.a), var_0.a.a.x);
}

