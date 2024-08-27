struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<i32, 28> = array<i32, 28>(16916i, -1i, -25483i, i32(-2147483648), 25346i, -9973i, 3336i, 0i, 0i, 0i, -74214i, 2147483647i, i32(-2147483648), 1i, -83616i, -1i, i32(-2147483648), -1i, 2147483647i, -1i, 2147483647i, 26769i, 0i, 2147483647i, i32(-2147483648), i32(-2147483648), 23919i, -22529i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_2(u_input.d.zy, !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), vec2<bool>(false, true), !(global1[_wgslsmith_index_u32(u_input.b.x, 28u)] <= -33805i)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1320f, arg_0.x)));
    global1 = array<i32, 28>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))))) + arg_1.ww);
    global1 = array<i32, 28>();
    return ~min(min(vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, ~var_0.a.x), -select(vec4<i32>(19522i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -681i, var_0.a.x), vec4<i32>(-1i, 0i, arg_3.x, 10306i), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(35115u, 28u)], u_input.d.x, arg_3.x, -2147483647i), vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, arg_3.x)), ~(vec4<i32>(var_0.a.x, 0i, 22546i, arg_3.x) >> (vec4<u32>(u_input.a, u_input.c, u_input.b.x, 28862u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.d.x), vec3<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.c, 28u)], 2147483647i) & reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(34824i, -2147483647i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(4010u, 28u)], u_input.d.x)))), Struct_1(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, 1375f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, -494f, 345f, 1713f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(299f, -672f, -1710f, -488f) - vec4<f32>(-499f, -518f, -360f, 1100f))), -148f, u_input.d.zx), vec3<u32>(~21527u, 12356u, 0u), ~global1[_wgslsmith_index_u32(0u, 28u)]), vec2<f32>(-357f, -1307f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(f32(-1f) * -789f), -2738f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(abs(-896f))))));
    var var_2 = _wgslsmith_mod_vec4_u32(select(firstLeadingBit(vec4<u32>(~1u, ~var_0.b.b.x, 6802u, ~u_input.a)), min(~(~vec4<u32>(1u, var_0.b.b.x, u_input.a, 39129u)), ~vec4<u32>(4294967295u, var_0.b.b.x, 4294967295u, u_input.a)), true != !any(vec3<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.a, 29u)]))), ~vec4<u32>(reverseBits(~4294967295u), 1u, u_input.c, 18002u));
    var_0 = Struct_3(vec3<i32>(global1[_wgslsmith_index_u32(~var_0.b.b.x, 28u)], 0i, i32(-1i) * -(global1[_wgslsmith_index_u32(u_input.a, 28u)] << (0u % 32u))), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, var_0.c) - _wgslsmith_f_op_vec2_f32(exp2(var_0.d.xy)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))), 1386f, var_1));
    var var_3 = Struct_3(var_0.b.a.xzw, Struct_1(firstLeadingBit(var_0.b.a) ^ var_0.b.a, countOneBits(~vec3<u32>(u_input.c, u_input.b.x, u_input.a)), var_0.b.a.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1236f), var_1))), _wgslsmith_f_op_f32(-804f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(var_0.d.x))))), _wgslsmith_f_op_vec3_f32(sign(var_0.d)));
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1)))), 1f) >= _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)))), Struct_3(vec3<i32>(var_0.b.c, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.b.b.x, 28u)], 1i, 1076i, -38782i), vec4<i32>(-2147483647i, 0i, var_0.b.c, u_input.d.x)), 10244i, any(vec3<bool>(arg_0, true, false)))), var_3.b, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-303f)), _wgslsmith_f_op_f32(-var_0.d.x))), 1504f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(725f, var_0.d.x, -1905f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(var_2.x, 29u)], arg_0)))) * var_3.d)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 28u)], -1i, var_0.b.c, 0i), _wgslsmith_div_vec4_i32(var_3.b.a | vec4<i32>(u_input.d.x, -1i, 0i, var_0.b.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.a.x, global1[_wgslsmith_index_u32(var_2.x, 28u)], global1[_wgslsmith_index_u32(var_0.b.b.x, 28u)], 4896i), firstTrailingBit(var_0.b.a), _wgslsmith_add_vec4_i32(var_3.b.a, var_0.b.a)))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32) -> vec3<bool> {
    var var_0 = u_input.d.x;
    global1 = array<i32, 28>();
    var var_1 = Struct_2(reverseBits(u_input.d.zz), vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-270f, 1001f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1693f, arg_0.b.x, arg_0.b.x, -1056f)), -224f, vec2<i32>(25279i, 16759i)).x < ~arg_0.c.b.a.x, all(select(!vec3<bool>(true, true, arg_0.a), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, arg_2), 29u)]))));
    global0 = array<bool, 29>();
    var_0 = 33270i;
    return select(!vec3<bool>(var_1.b.x, !any(vec4<bool>(arg_0.a, arg_1, global0[_wgslsmith_index_u32(arg_0.c.b.b.x, 29u)], arg_0.a)), true), vec3<bool>(func_2(arg_1).a, !(!(!arg_0.a)), true), true);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> vec4<i32> {
    global1 = array<i32, 28>();
    let var_0 = select(func_4(func_2(false), all(!arg_1.xx), u_input.c), select(!vec3<bool>(arg_1.x, true, !arg_1.x), select(!(!arg_1), func_4(func_2(global0[_wgslsmith_index_u32(u_input.c, 29u)]), !global0[_wgslsmith_index_u32(20034u, 29u)], 52369u), arg_1), !select(select(vec3<bool>(false, false, false), arg_1, vec3<bool>(global0[_wgslsmith_index_u32(66842u, 29u)], false, false)), arg_1, all(vec3<bool>(false, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 29u)])))), _wgslsmith_f_op_f32(sign(-594f)) < _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1599f, -407f), 1811f)));
    let var_1 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.a) & vec4<u32>(0u, u_input.b.x, 39329u, u_input.c), select(vec4<u32>(u_input.c, u_input.b.x, u_input.c, 46042u), vec4<u32>(0u, 7676u, 7693u, u_input.c), vec4<bool>(true, var_0.x, true, arg_1.x)))), max(min(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(4294967295u, 1u), min(6008u, 0u), _wgslsmith_clamp_u32(u_input.b.x, 0u, 12927u)), vec4<u32>(1u, _wgslsmith_add_u32(u_input.b.x, u_input.c), u_input.a, _wgslsmith_add_u32(u_input.c, u_input.a))), vec4<u32>(~select(u_input.c, 53293u, global0[_wgslsmith_index_u32(1u, 29u)]), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4103u, u_input.a), vec2<u32>(0u, u_input.c)), 47196u)));
    var var_2 = func_2(arg_1.x).c;
    var var_3 = 71873u;
    return ~vec4<i32>(firstTrailingBit(firstLeadingBit(u_input.d.x)), 8669i, ~u_input.d.x, select(_wgslsmith_clamp_i32(2147483647i | arg_0, -1i, global1[_wgslsmith_index_u32(var_2.b.b.x, 28u)]), u_input.d.x, true));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = false;
    global1 = array<i32, 28>();
    var var_1 = func_2(true).c.b;
    let var_2 = _wgslsmith_div_vec3_f32(func_2(true).c.d, _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, 307f)))), arg_0.x, arg_0.x)));
    global0 = array<bool, 29>();
    return Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-global1[_wgslsmith_index_u32(arg_1.x, 28u)], -7663i, min(_wgslsmith_div_i32(var_1.c, u_input.d.x), 2147483647i)), firstTrailingBit(var_1.a.zxz)), func_2(func_2(true || global0[_wgslsmith_index_u32(~29200u, 29u)]).a).c.b, arg_0.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = 19935u;
    global1 = array<i32, 28>();
    var var_1 = 15214u;
    let var_2 = true;
    let var_3 = true;
    return StorageBuffer(vec2<f32>(_wgslsmith_div_f32(arg_2.c.c.x, _wgslsmith_div_f32(-403f, _wgslsmith_f_op_f32(f32(-1f) * -1424f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + 1225f))))), _wgslsmith_add_vec3_u32(u_input.b, ~(arg_1.b.b | ~arg_1.b.b)), arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) * _wgslsmith_f_op_f32(f32(-1f) * -723f)))), (func_3(_wgslsmith_f_op_vec2_f32(arg_2.b * arg_2.c.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.c.x, arg_1.d.x), vec4<f32>(836f, arg_2.b.x, arg_1.c.x, arg_1.d.x), vec4<bool>(var_3, arg_2.a, var_3, false))), _wgslsmith_f_op_f32(-arg_2.b.x), firstTrailingBit(arg_3.a)).x >> (~53551u % 32u)) << (u_input.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_dot_vec3_u32(u_input.b | countOneBits(min(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(u_input.a, u_input.c, u_input.a))), ~(u_input.b << (countOneBits(vec3<u32>(u_input.a, u_input.c, u_input.b.x)) % vec3<u32>(32u)))), func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-156f, -484f, -974f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1481f, 145f, 2043f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1063f)), _wgslsmith_f_op_f32(min(480f, -2112f))))), ~u_input.b.xz, ~u_input.b, min(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 28u)], -26687i, -30086i, u_input.d.x), func_1(u_input.d.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)])))), Struct_4(all(!select(vec4<bool>(global0[_wgslsmith_index_u32(3456u, 29u)], false, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(64071u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, 1000f) * vec2<f32>(-1000f, -743f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-235f, 1215f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(754f, 995f)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-650f, -555f, 1000f), vec3<f32>(-1068f, -822f, -449f), false)) * vec3<f32>(781f, -1046f, 1254f)), u_input.b.zx, vec3<u32>(u_input.a, _wgslsmith_div_u32(68781u, 12037u), u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i, 1i, 27755i) << ((vec4<u32>(u_input.c, 1u, 77663u, 0u) & vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c)) % vec4<u32>(32u))), vec4<i32>(-1i, ~(~(-25977i)), -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(9278u, 28u)], global1[_wgslsmith_index_u32(u_input.c, 28u)], -1i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.d.x, -13625i)), -vec4<i32>(global1[_wgslsmith_index_u32(23751u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], 1i)))), Struct_2(vec2<i32>(1i, 1i), vec2<bool>(any(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(97007u, 29u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 29u)], false, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))), any(func_4(Struct_4(global0[_wgslsmith_index_u32(u_input.c, 29u)], vec2<f32>(104f, 416f), Struct_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 0i, -92458i), Struct_1(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.d.x, u_input.d.x), u_input.b, 2147483647i), vec2<f32>(-2340f, 1495f), vec3<f32>(452f, 1295f, 424f)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -21569i)), false, u_input.a).xz))));
}

