struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_2(13628u);
    let var_1 = Struct_3(arg_0.a, var_0.a, _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(arg_1.x, var_0.a, u_input.c.x, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.d.x, arg_0.b), true)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.c, arg_0.c, vec4<u32>(4294967295u, arg_1.x, arg_0.c.x, u_input.d.x)), vec4<u32>(u_input.d.x, arg_1.x, u_input.d.x, 19545u) & vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, arg_1.x, arg_0.b, 1u))), false, Struct_1(~(-vec3<i32>(arg_0.e.a.x, -26631i, -8534i)) & vec3<i32>(i32(-1i) * -1i, 2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.e)), arg_0.a.b, vec3<f32>(1250f, global0[_wgslsmith_index_u32(abs(arg_0.b), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f - arg_0.a.c.x)))));
    let var_2 = arg_0.e.b;
    var var_3 = 13872u;
    var_3 = var_0.a;
    return var_1.d;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false), abs(u_input.c.x) < ~1u), select(!vec3<bool>(any(vec2<bool>(true, false)), false, true), vec3<bool>(max(-1i, arg_0.x) != 19356i, false, true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(104046u, 20u)] != _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, false)) & true), select(vec3<bool>(true, true, func_3(Struct_3(Struct_1(vec3<i32>(arg_1, -1i, u_input.e), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], -515f, -523f), vec3<f32>(-494f, global0[_wgslsmith_index_u32(0u, 20u)], -939f)), 70971u, vec4<u32>(55785u, u_input.d.x, u_input.d.x, u_input.d.x), true, Struct_1(vec3<i32>(arg_1, arg_1, u_input.e), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 1027f, 282f), vec3<f32>(2482f, -187f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]))), u_input.d.wy, vec4<f32>(169f, -145f, -585f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, select(false, false, false), u_input.c.x < 0u), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))))));
    let var_1 = Struct_2(~22687u);
    var var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(55262i, _wgslsmith_mod_i32(arg_1, 1549i)), u_input.e >> (var_1.a % 32u), (i32(-1i) * -4269i) ^ arg_0.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(827f, global0[_wgslsmith_index_u32(39345u, 20u)], -480f) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 20u)], -929f, global0[_wgslsmith_index_u32(0u, 20u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], -1113f, global0[_wgslsmith_index_u32(var_1.a, 20u)]) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(29878u, 20u)]))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(90905u, 20u)])), 479f), global0[_wgslsmith_index_u32(var_1.a, 20u)], 1117f)), 10522u, firstTrailingBit(u_input.d), 40537i < (-_wgslsmith_mult_i32(-23588i, u_input.e) | -22044i), Struct_1(vec3<i32>(-12036i << (var_1.a % 32u), 1i, _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(max(955f, -189f)), global0[_wgslsmith_index_u32(~(var_1.a & 1u), 20u)], -752f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-603f, -316f, global0[_wgslsmith_index_u32(24944u, 20u)]) + vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(31892u, 20u)], global0[_wgslsmith_index_u32(9099u, 20u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(5822u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<f32>(-1021f, global0[_wgslsmith_index_u32(23827u, 20u)], -970f))))))));
    var_2 = Struct_3(Struct_1(vec3<i32>(72603i, arg_0.x, 0i), var_2.a.c, var_2.a.c), 4294967295u, ~(~(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 4294967295u) >> (u_input.d % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(var_2.c ^ var_2.c, vec4<u32>(16398u, var_1.a, 1u, var_1.a), u_input.d)), false, Struct_1(vec3<i32>(i32(-1i) * -41950i, var_2.e.a.x, 1i), vec3<f32>(var_2.a.c.x, _wgslsmith_f_op_f32(-var_2.a.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a, 20u)])))), _wgslsmith_f_op_vec3_f32(-var_2.a.b)));
    var var_3 = false;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(u_input.d.x) << (abs(17586u) % 32u), ~(~4294967295u), max(0u, select(arg_2.a, 1u, false))), arg_1.a, _wgslsmith_div_u32(~(~112439u), arg_2.a & arg_2.a), ~(~4294967295u)), ~vec4<u32>(reverseBits(4294967295u), countOneBits(~arg_2.a), u_input.d.x, 4294967295u));
    global0 = array<f32, 20>();
    var_0 = abs(vec4<u32>(~(~47494u), ~69383u, ~max(1u | arg_2.a, arg_1.a >> (0u % 32u)), 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f + global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_2.a, 11073u), var_0.xzw), 20u)]) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.x, 20u)], _wgslsmith_f_op_f32(select(746f, global0[_wgslsmith_index_u32(1u, 20u)], false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + global0[_wgslsmith_index_u32(59267u, 20u)])))));
    var_0 = ~_wgslsmith_div_vec4_u32(countOneBits(abs(u_input.d)), vec4<u32>(~firstLeadingBit(71544u), 5205u, _wgslsmith_dot_vec2_u32(var_0.xy, countOneBits(vec2<u32>(17971u, u_input.d.x))), _wgslsmith_dot_vec2_u32(u_input.c.zy << (u_input.c.xz % vec2<u32>(32u)), abs(u_input.d.xz))));
    return select(!vec4<bool>(arg_0, true, any(!vec3<bool>(true, false, arg_0)), !arg_0), vec4<bool>(!arg_0, false, false, !all(vec3<bool>(true, true, arg_0)) & arg_0), select(select(!select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, false, false, true), vec4<bool>(false, false, arg_0, arg_0)), vec4<bool>(!arg_0, true, true, u_input.e > u_input.b.x), any(vec2<bool>(true, arg_0))), vec4<bool>(!arg_0 || true, true, arg_0, true), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(true, !arg_0.x, all(vec3<bool>(arg_0.x, !(arg_0.x || true), true | (false & arg_0.x))));
    let var_1 = Struct_3(Struct_1(-(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.b.x)) | u_input.b.wwx), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, 597f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-569f, 1095f, arg_1))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), _wgslsmith_f_op_f32(-arg_1), global0[_wgslsmith_index_u32(4294967295u, 20u)]))), arg_2.a, _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(arg_2.a, _wgslsmith_dot_vec3_u32(u_input.d.yyx, vec3<u32>(arg_2.a, u_input.c.x, arg_2.a)) | ~110120u, ~(~10130u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))), arg_0.x, Struct_1(u_input.b.zxw | firstLeadingBit(~u_input.b.wyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 745f, -566f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-1000f * -686f), 1392f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.a.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(348f, arg_1, 1042f), vec3<f32>(arg_1, 584f, -1510f), vec3<bool>(arg_0.x, true, arg_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.c.x, -1472f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~0u), 20u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_div_f32(arg_1, global0[_wgslsmith_index_u32(1u, 20u)]))))), false));
    let var_3 = func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(abs(var_1.a.a.x), -var_1.e.a.x), -6416i), var_1.a.a.yx), _wgslsmith_add_i32(firstTrailingBit(reverseBits(2147483647i)), -2147483647i));
    var var_4 = select(arg_0.x, 16339i > (countOneBits(1i) << (arg_2.a % 32u)), func_2(var_1.e.a.zx, abs(_wgslsmith_div_i32(-2147483647i, var_1.a.a.x))).a <= 4294967295u);
    return Struct_2(arg_2.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_0 = Struct_2(select(130252u, arg_0.x, 685f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(63587u, 20u)]))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-657f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(54661u, 20u)], global0[_wgslsmith_index_u32(66176u, 20u)]))))) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 20u)]);
    var var_2 = 22671i;
    return Struct_2(arg_0.x);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.e.c.x;
    var var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1562f)) - _wgslsmith_f_op_f32(-2196f - 151f))))));
    global0 = array<f32, 20>();
    let var_2 = func_6(arg_0.c.zxz, func_5(!func_4(var_0 <= 1920f, func_2(u_input.b.zz, 31558i), Struct_2(58525u)), _wgslsmith_f_op_f32(var_0 + 1083f), func_2(vec2<i32>(firstLeadingBit(arg_0.e.a.x), 1i), arg_0.a.a.x)), u_input.b, Struct_2(_wgslsmith_sub_u32(u_input.c.x, 10365u) << (~u_input.c.x % 32u)));
    return arg_0.e;
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec4<i32>(select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, u_input.e), i32(-1i) * -11426i), -15046i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, -1i), vec2<i32>(u_input.a, -519i)) | ~u_input.e, !any(vec2<bool>(true, true))), _wgslsmith_div_i32(arg_0.x, firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -arg_3.x))), _wgslsmith_clamp_i32(7770i, _wgslsmith_dot_vec3_i32(countOneBits(u_input.b.xxx & vec3<i32>(arg_0.x, arg_0.x, -1i)), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, arg_1.a.a.x), -18130i >> (1u % 32u), u_input.a)), arg_3.x << (abs(max(arg_1.b, 1u)) % 32u)), ~1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b.x, 240f, 843f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, arg_1.e.c.x, -313f, 1371f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], global0[_wgslsmith_index_u32(61996u, 20u)], 1632f, global0[_wgslsmith_index_u32(28595u, 20u)]), vec4<f32>(250f, -1536f, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(37697u, 20u)]), vec4<bool>(arg_1.d, arg_1.d, arg_1.d, false)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_1.a.c.x - 665f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, arg_1.c.x), 20u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3773u, 20u)] - arg_2.x))))), arg_1.d));
    let var_2 = arg_1.a;
    var var_3 = func_2(vec2<i32>(-37412i ^ _wgslsmith_dot_vec2_i32(arg_1.a.a.zx, vec2<i32>(arg_3.x, -1i)), -arg_1.a.a.x), -var_0.x);
    let var_4 = arg_1;
    return var_4;
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_6(~(vec3<u32>(41631u, u_input.d.x, 1u) & (vec3<u32>(44642u, 71089u, u_input.c.x) & u_input.d.zww)), Struct_2(_wgslsmith_div_u32(~arg_0.x, arg_1.b)), vec4<i32>(-u_input.a, -3458i, _wgslsmith_div_i32(_wgslsmith_add_i32(-51061i, arg_1.a.a.x), -1i), ~firstTrailingBit(-41424i)), Struct_2(39524u)).a ^ _wgslsmith_dot_vec3_u32(countOneBits(arg_0), select(vec3<u32>(_wgslsmith_mult_u32(14597u, 31288u), 0u, arg_0.x >> (u_input.c.x % 32u)), select(arg_0, reverseBits(vec3<u32>(1u, arg_1.c.x, 1u)), true), func_7(vec2<i32>(2147483647i, arg_1.e.a.x), arg_1, arg_1.e.b, u_input.b.yxx).e.a.x <= firstTrailingBit(-33145i)));
    let var_1 = arg_1.e;
    var var_2 = func_7(var_1.a.yy ^ ((vec2<i32>(-1i) * -u_input.b.wx) & var_1.a.zy), func_7(~vec2<i32>(firstLeadingBit(28137i), arg_1.a.a.x), func_7(select(u_input.b.xw, select(vec2<i32>(arg_1.e.a.x, var_1.a.x), vec2<i32>(0i, 0i), true), !vec2<bool>(arg_1.d, false)), arg_1, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.b))), -abs(arg_1.a.a)), _wgslsmith_f_op_vec3_f32(-arg_1.a.c), ~func_1(func_7(var_1.a.zz, arg_1, arg_1.e.b, vec3<i32>(var_1.a.x, -42170i, -3005i))).a), vec3<f32>(301f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_1.b, var_0 << (1u % 32u), var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(24843u, var_0), vec2<u32>(var_0, u_input.c.x))), 20u)], 1309f), vec3<i32>(_wgslsmith_dot_vec2_i32(select(min(var_1.a.xx, vec2<i32>(var_1.a.x, arg_1.a.a.x)), vec2<i32>(34999i, u_input.e) & u_input.b.wz, any(vec2<bool>(true, true))), abs(~var_1.a.yy)), (select(arg_1.e.a.x, 2147483647i, false) << (abs(26813u) % 32u)) & reverseBits(firstTrailingBit(1i)), select(-1i, 2535i, true & (0u > u_input.d.x))));
    let var_3 = 1363f;
    let var_4 = func_6(vec3<u32>(1u, var_2.b, _wgslsmith_clamp_u32(var_2.b, ~(~var_0), ~arg_1.c.x)), Struct_2(_wgslsmith_sub_u32(~arg_1.c.x, arg_0.x)), vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_2.e.a.yz, vec2<i32>(42973i, -1i)), _wgslsmith_div_i32(var_1.a.x, u_input.e)), var_2.e.a.x, var_2.e.a.x, max(func_1(arg_1).a.x, var_2.e.a.x)), Struct_2(1u));
    return Struct_1(vec3<i32>(23373i, var_1.a.x, -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.e.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 104f, global0[_wgslsmith_index_u32(22019u, 20u)]) + vec3<f32>(arg_1.e.c.x, 1014f, global0[_wgslsmith_index_u32(arg_0.x, 20u)]))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.e.b.x - var_1.b.x), _wgslsmith_f_op_f32(round(559f)), _wgslsmith_f_op_f32(exp2(var_2.e.c.x))), arg_1.a.c)), var_1.c);
}

fn func_9(arg_0: Struct_1) -> Struct_3 {
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    var var_0 = func_7(~_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, arg_0.a.x), -func_1(Struct_3(arg_0, u_input.c.x, vec4<u32>(u_input.c.x, 4294967295u, 0u, 60185u), true, Struct_1(vec3<i32>(u_input.e, -1i, arg_0.a.x), arg_0.b, vec3<f32>(789f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 434f)))).a.xx), Struct_3(arg_0, ~4294967295u, u_input.d, !(!func_3(Struct_3(Struct_1(u_input.b.www, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 169f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)]), arg_0.c), u_input.d.x, u_input.d, true, Struct_1(vec3<i32>(arg_0.a.x, -26266i, u_input.e), vec3<f32>(819f, global0[_wgslsmith_index_u32(1u, 20u)], -771f), arg_0.b)), u_input.c.zy, vec4<f32>(-341f, 377f, 1594f, -133f))), Struct_1(select(u_input.b.xxw, vec3<i32>(-1i, arg_0.a.x, u_input.b.x), vec3<bool>(true, true, true)), arg_0.c, _wgslsmith_div_vec3_f32(func_8(vec3<u32>(0u, 0u, 74342u), Struct_3(Struct_1(vec3<i32>(arg_0.a.x, 1i, u_input.a), arg_0.b, arg_0.b), u_input.c.x, u_input.d, true, Struct_1(u_input.b.wyz, vec3<f32>(639f, -2100f, 319f), vec3<f32>(arg_0.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)])))).b, vec3<f32>(642f, -987f, global0[_wgslsmith_index_u32(4294967295u, 20u)])))), arg_0.c, u_input.b.zxx).e;
    var var_1 = func_7(vec2<i32>(_wgslsmith_sub_i32(~arg_0.a.x, ~_wgslsmith_mod_i32(22278i, 21306i)), 20513i), func_7(arg_0.a.zz, Struct_3(arg_0, countOneBits(_wgslsmith_sub_u32(u_input.c.x, u_input.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), max(vec4<u32>(4294967295u, 19262u, u_input.d.x, u_input.c.x), u_input.d)), true, arg_0), var_0.b, vec3<i32>(-arg_0.a.x, ~_wgslsmith_sub_i32(arg_0.a.x, var_0.a.x), i32(-1i) * -14043i)), _wgslsmith_f_op_vec3_f32(-var_0.b), vec3<i32>(-u_input.a, abs(-1i), _wgslsmith_mult_i32(-21542i, -54586i)));
    var_1 = func_7(_wgslsmith_mod_vec2_i32(var_1.a.a.xz, _wgslsmith_div_vec2_i32(vec2<i32>(~39082i, u_input.a), u_input.b.xw)), Struct_3(Struct_1(vec3<i32>(-3127i, var_0.a.x, _wgslsmith_mult_i32(-353i, var_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b + var_1.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1805f, 1000f, 1497f))), var_0.b), 9384u, firstTrailingBit(abs(~vec4<u32>(1u, var_1.c.x, 4294967295u, u_input.c.x))), any(vec4<bool>(var_1.d != false, !var_1.d, true, false | var_1.d)), func_8(u_input.c, func_7(vec2<i32>(0i, 1i), Struct_3(Struct_1(var_0.a, vec3<f32>(103f, var_1.e.b.x, arg_0.c.x), var_1.a.b), var_1.b, var_1.c, var_1.d, Struct_1(vec3<i32>(var_0.a.x, -43698i, u_input.e), vec3<f32>(1506f, -946f, 181f), vec3<f32>(var_0.b.x, global0[_wgslsmith_index_u32(0u, 20u)], arg_0.c.x))), vec3<f32>(var_0.c.x, -157f, -141f), var_1.e.a << (vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x) % vec3<u32>(32u))))), vec3<f32>(arg_0.b.x, -1640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1.c.x, 20u)])))), _wgslsmith_add_vec3_i32(var_1.a.a, arg_0.a));
    return func_7(vec2<i32>(-(var_0.a.x ^ u_input.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), u_input.b.yx)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(~var_1.c.x, _wgslsmith_clamp_u32(var_1.c.x, u_input.c.x, u_input.d.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, 2568u), u_input.c.yx) >> (firstLeadingBit(vec2<u32>(u_input.c.x, var_1.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), func_7(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(35217i, u_input.a), abs(u_input.a)), _wgslsmith_sub_vec2_i32(abs(var_0.a.xz), vec2<i32>(0i, var_1.a.a.x) | var_1.a.a.yy)), Struct_3(arg_0, 31849u, vec4<u32>(u_input.d.x, 0u, 42200u, 0u), false, var_1.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1616f, var_1.a.c.x, 244f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.c.x, 853f, var_1.a.b.x), vec3<f32>(arg_0.b.x, var_1.a.b.x, 1000f)))), arg_0.a), vec3<f32>(-852f, func_8(vec3<u32>(~var_1.c.x, _wgslsmith_mult_u32(u_input.d.x, var_1.c.x), var_1.c.x & 1u), Struct_3(var_1.e, 40776u, var_1.c, var_1.d || var_1.d, arg_0)).b.x, arg_0.b.x), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 26637i, var_1.a.a.x), vec3<i32>(u_input.a, arg_0.a.x, var_1.a.a.x) >> (var_1.c.xwy % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    var var_0 = func_9(func_8(~u_input.d.zzw << (~vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x) % vec3<u32>(32u)), func_7(vec2<i32>(_wgslsmith_sub_i32(0i, u_input.a), abs(u_input.a)), Struct_3(func_1(Struct_3(Struct_1(u_input.b.wyx, vec3<f32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(9594u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 20u)], global0[_wgslsmith_index_u32(22870u, 20u)], global0[_wgslsmith_index_u32(u_input.d.x, 20u)])), 7091u, vec4<u32>(111866u, u_input.d.x, 4294967295u, 21343u), true, Struct_1(vec3<i32>(1i, u_input.a, 1i), vec3<f32>(global0[_wgslsmith_index_u32(132154u, 20u)], 1000f, 1327f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1304f, global0[_wgslsmith_index_u32(4294967295u, 20u)])))), abs(u_input.d.x), u_input.d, true, Struct_1(u_input.b.xyx, vec3<f32>(2239f, global0[_wgslsmith_index_u32(89749u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 434f, 471f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(76368u, 20u)], 1217f, global0[_wgslsmith_index_u32(14172u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(52154u, 20u)], global0[_wgslsmith_index_u32(u_input.d.x, 20u)]), false))), ~u_input.b.wxz)));
    var_0 = func_7(max(func_1(Struct_3(func_9(var_0.a).e, ~0u, vec4<u32>(var_0.b, var_0.c.x, 41075u, var_0.b) & var_0.c, var_0.d, var_0.e)).a.zy, var_0.e.a.yz), func_7(-var_0.a.a.yx, Struct_3(func_8(~vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x), Struct_3(Struct_1(vec3<i32>(u_input.a, 40686i, 0i), vec3<f32>(-827f, 366f, 896f), var_0.e.c), u_input.c.x, vec4<u32>(u_input.d.x, var_0.c.x, 0u, 56327u), var_0.d, var_0.a)), _wgslsmith_add_u32(var_0.b & u_input.c.x, ~242u), vec4<u32>(~u_input.c.x, 15322u, 1u, ~var_0.c.x), func_9(func_7(var_0.e.a.zz, Struct_3(Struct_1(vec3<i32>(-26180i, u_input.a, u_input.b.x), var_0.a.b, var_0.a.c), u_input.d.x, vec4<u32>(var_0.c.x, 4294967295u, var_0.b, 1u), true, var_0.e), var_0.a.c, var_0.a.a).a).d, var_0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(2213u, 20u)], var_0.e.c.x), _wgslsmith_f_op_f32(-var_0.a.b.x), -504f)), vec3<i32>(abs(-2147483647i), -1i, var_0.a.a.x) << ((~vec3<u32>(u_input.c.x, 0u, 26387u) >> (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.c)), min(var_0.e.a, u_input.b.zww));
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.c.x), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(8560u, 20u)], -812f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(15437u, 20u)], -121f), _wgslsmith_f_op_f32(var_0.e.c.x - 115f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, var_0.e.c.x, 1417f, 667f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-622f, var_0.a.c.x, -538f, var_0.a.b.x))))))), var_0.a.a.x, global0[_wgslsmith_index_u32(9527u, 20u)]);
}

