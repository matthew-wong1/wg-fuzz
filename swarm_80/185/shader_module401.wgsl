struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<i32, 9>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec2<bool>, 18>;

var<private> global4: Struct_2 = Struct_2(-54446i, Struct_1(vec4<i32>(41787i, 0i, 1i, -37448i)), Struct_1(vec4<i32>(i32(-2147483648), -45737i, 8994i, 2147483647i)), vec2<i32>(-28664i, 0i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1524f, -308f)) * _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-182f)))))), _wgslsmith_f_op_f32(round(-1368f)), -199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-113f, -541f)) - _wgslsmith_f_op_f32(f32(-1f) * -1520f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1000f, 994f, -863f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-849f, 1531f, -2029f, -1674f) * vec4<f32>(-433f, 542f, -543f, 1306f))), select(select(vec4<bool>(false, global2.x, true, global0.x), vec4<bool>(false, false, global2.x, false), vec4<bool>(global2.x, global2.x, true, global0.x)), vec4<bool>(false, true, false, true), all(vec4<bool>(global2.x, false, true, false)))))));
    var var_1 = Struct_4(global4.d.x, global4.b, _wgslsmith_dot_vec2_u32(vec2<u32>(514u, _wgslsmith_sub_u32(7773u, ~4294967295u)), ~(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 844f)))))));
    let var_2 = Struct_4(_wgslsmith_dot_vec3_i32(var_1.b.a.zww, _wgslsmith_sub_vec3_i32(var_1.b.a.zyw, var_1.b.a.wyx)), var_1.b, countOneBits(~var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(1f, -251f, 736f, _wgslsmith_f_op_f32(1000f - var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d))));
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(71927u, 9u)], Struct_1(-abs(vec4<i32>(global4.d.x, -2147483647i, global1[_wgslsmith_index_u32(var_2.c, 9u)], global4.b.a.x))), var_1.b, abs(global4.b.a.ww));
    let var_4 = -1539f;
    return select(~_wgslsmith_clamp_u32(reverseBits(0u), var_1.c, var_2.c), reverseBits(min(~var_2.c, var_1.c)), var_4 >= var_4);
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    global1 = array<i32, 9>();
    global2 = vec2<bool>(global2.x, global0.x);
    let var_0 = (global4.b.a.xzy << (~vec3<u32>(~89444u, ~0u, 4294967295u) % vec3<u32>(32u))) & vec3<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 1i, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(-1i, 30395i, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]) ^ global4.b.a), 1i & _wgslsmith_div_i32(arg_0.x, -1i)), arg_0.x);
    global1 = array<i32, 9>();
    var var_1 = 1u;
    return global3[_wgslsmith_index_u32(func_3(), 18u)];
}

fn func_1() -> Struct_4 {
    global2 = select(global3[_wgslsmith_index_u32(4294967295u, 18u)], select(vec2<bool>(all(vec4<bool>(global0.x, global0.x, true, global2.x)), any(vec3<bool>(global2.x, global0.x, global0.x))), vec2<bool>(false, 103i == ~global4.a), func_2(~(~global4.c.a.wz))), !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(670u, 4294967295u, 1u), vec3<u32>(0u, 10492u, 87266u)) != abs(70816u))));
    var var_0 = Struct_3(Struct_2(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mod_i32(2147483647i, reverseBits(global1[_wgslsmith_index_u32(52770u, 9u)])), abs(u_input.a)), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(22075i, 23480i, -10902i, global4.a), global4.c.a)), Struct_1(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global4.b.a.x, 37633i, global1[_wgslsmith_index_u32(50598u, 9u)]))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, min(u_input.a, 1921i)), _wgslsmith_div_vec2_i32(global4.b.a.zy, vec2<i32>(1i, 1i)))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 15484u), 9u)], Struct_1(vec4<i32>(~u_input.a, firstTrailingBit(1i), 23317i, 24410i)), Struct_1(vec4<i32>(select(1i, u_input.a, global0.x), u_input.a, -8969i, u_input.a)), firstTrailingBit(global4.d ^ global4.c.a.xz)), Struct_1(global4.b.a), vec4<bool>(global2.x, global2.x, true, !func_2(vec2<i32>(global1[_wgslsmith_index_u32(56667u, 9u)], -1i)).x), Struct_2(-6479i, Struct_1(max(global4.c.a << (vec4<u32>(31490u, 4294967295u, 10583u, 1u) % vec4<u32>(32u)), -vec4<i32>(-3308i, u_input.a, 2147483647i, global1[_wgslsmith_index_u32(1u, 9u)]))), global4.b, firstLeadingBit(vec2<i32>(6811i, u_input.a)) ^ min(-global4.d, firstLeadingBit(global4.c.a.zx))));
    let var_1 = ~vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 67574u, 41076u), vec4<u32>(40186u, 8479u, 51148u, 106298u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 33523u, 1u, 40975u), vec4<u32>(20740u, 1u, 1u, 1u)))), 29968u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, 93292u, 1u)), ~vec4<u32>(4294967295u, 7446u, 4294967295u, 0u)), ~1u));
    global1 = array<i32, 9>();
    var_0 = Struct_3(var_0.a, Struct_2(-3074i, var_0.b.c, var_0.b.b, _wgslsmith_mod_vec2_i32(global4.c.a.zz, var_0.b.d)), var_0.c, var_0.d, var_0.a);
    return Struct_4(~1i, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(60506i, u_input.a, u_input.a, 20028i), vec4<i32>(global1[_wgslsmith_index_u32(var_1.x, 9u)], 26399i, 0i, var_0.e.b.a.x)), abs(global1[_wgslsmith_index_u32(select(1591u, var_1.x, global0.x), 9u)]), max(_wgslsmith_add_i32(u_input.a, global4.a), _wgslsmith_clamp_i32(u_input.a, global1[_wgslsmith_index_u32(77299u, 9u)], u_input.a)), 41643i)), ~var_1.x >> ((var_1.x ^ (max(var_1.x, 4294967295u) >> (var_1.x % 32u))) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f + -617f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(684f)))), _wgslsmith_f_op_f32(-900f * _wgslsmith_f_op_f32(floor(1492f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(198f, _wgslsmith_f_op_f32(-1208f - -1486f))))), 3119f));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec4<bool> {
    let var_0 = arg_1.c;
    global0 = global3[_wgslsmith_index_u32(var_0, 18u)];
    var var_1 = func_1().b;
    var var_2 = _wgslsmith_mod_vec2_u32(select(~(~vec2<u32>(arg_1.c, var_0)), ~(~vec2<u32>(arg_1.c, 38414u)), false), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(54207u, var_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(6089u, var_0))), firstTrailingBit(vec2<u32>(var_0, arg_1.c)) & (vec2<u32>(arg_1.c, var_0) >> (vec2<u32>(4294967295u, arg_1.c) % vec2<u32>(32u))))) ^ _wgslsmith_div_vec2_u32(~reverseBits(~vec2<u32>(27753u, arg_1.c)), _wgslsmith_mod_vec2_u32((vec2<u32>(var_0, var_0) & vec2<u32>(15554u, 0u)) | firstTrailingBit(vec2<u32>(arg_1.c, arg_1.c)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(19766u, var_0), vec2<u32>(4294967295u, 0u))));
    var var_3 = Struct_1(-(vec4<i32>(~2147483647i, ~u_input.a, arg_0, select(1i, 1i, true)) ^ -vec4<i32>(global1[_wgslsmith_index_u32(67087u, 9u)], global4.d.x, arg_0, -11866i)));
    return select(!select(select(!vec4<bool>(false, global2.x, global0.x, true), select(vec4<bool>(global2.x, arg_2, global0.x, true), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(arg_2, true, true, true)), any(vec4<bool>(global2.x, false, true, false))), !(!vec4<bool>(true, arg_2, global0.x, global2.x)), false), select(!vec4<bool>(true, !global2.x, any(vec3<bool>(arg_2, global2.x, global0.x)), false), select(!vec4<bool>(global2.x, true, global0.x, false), vec4<bool>(true, all(vec2<bool>(false, arg_2)), select(false, global2.x, arg_2), false), !(!vec4<bool>(true, global0.x, false, false))), all(select(select(vec4<bool>(false, global2.x, false, arg_2), vec4<bool>(false, global2.x, false, false), vec4<bool>(arg_2, false, arg_2, true)), !vec4<bool>(false, global2.x, arg_2, global0.x), arg_2))), select(select(vec4<bool>(all(vec2<bool>(false, global0.x)), true, true, all(vec4<bool>(false, true, global2.x, global0.x))), vec4<bool>(any(vec3<bool>(false, global0.x, false)), 180f == arg_1.d.x, arg_2, all(vec3<bool>(true, global2.x, global2.x))), global0.x), vec4<bool>(!(4294967295u > arg_1.c), !(!arg_2), any(select(vec4<bool>(arg_2, true, global2.x, true), vec4<bool>(arg_2, true, global0.x, false), global0.x)), false), !global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(select(1u, 1u, true)), abs(~reverseBits(4294967295u))), 9u)], global4.b, Struct_1(~(~(global4.c.a & global4.c.a))), _wgslsmith_add_vec2_i32(countOneBits(select(abs(global4.b.a.xz), _wgslsmith_div_vec2_i32(global4.d, vec2<i32>(u_input.a, -1i)), select(global3[_wgslsmith_index_u32(59626u, 18u)], vec2<bool>(true, global2.x), global3[_wgslsmith_index_u32(44598u, 18u)]))), vec2<i32>(~(-39593i), 41370i)));
    global0 = vec2<bool>(select(all(func_4(_wgslsmith_div_i32(global4.b.a.x, u_input.a), func_1(), all(vec2<bool>(global0.x, true)))), false, !(any(vec3<bool>(global2.x, true, global2.x)) | true)), false);
    var var_0 = Struct_3(Struct_2(u_input.a, global4.c, Struct_1(-_wgslsmith_div_vec4_i32(global4.c.a, global4.b.a)), global4.b.a.wz), Struct_2(global4.c.a.x, Struct_1(global4.c.a), Struct_1(firstTrailingBit(vec4<i32>(1i, u_input.a, 0i, u_input.a)) >> (vec4<u32>(1u, 0u, 1u, 0u) % vec4<u32>(32u))), vec2<i32>(reverseBits(i32(-1i) * -34825i), select(-1i, global1[_wgslsmith_index_u32(1u, 9u)], any(vec3<bool>(false, false, global2.x))))), global4.c, func_4(-u_input.a << (1u % 32u), func_1(), true), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(11898u, 20637u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 5380u), ~88562u)), 9u)], global4.b, func_1().b, ~vec2<i32>(global1[_wgslsmith_index_u32(1u, 9u)] & 0i, -2147483647i)));
    global4 = var_0.e;
    var var_1 = Struct_2(-global4.a, var_0.a.b, func_1().b, select(_wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(-2147483647i), -2147483647i), _wgslsmith_clamp_vec2_i32(var_0.b.d, vec2<i32>(-29243i, 1i), var_0.e.d)), vec2<i32>(-global4.b.a.x, 13911i), vec2<bool>(global0.x, var_0.d.x && (var_0.e.a != u_input.a))));
    var_1 = Struct_2(57390i, Struct_1(vec4<i32>(_wgslsmith_div_i32(select(2147483647i, -19126i, true), ~(-2147483647i)), var_1.d.x, _wgslsmith_add_i32(abs(global4.b.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 9u)], var_1.d.x, var_1.b.a.x), vec3<i32>(-2159i, var_0.b.d.x, var_0.e.c.a.x))), _wgslsmith_dot_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.d.x), var_1.d << (vec2<u32>(0u, 41577u) % vec2<u32>(32u))))), func_1().b, _wgslsmith_add_vec2_i32(global4.d, countOneBits(global4.c.a.zw)));
    global3 = array<vec2<bool>, 18>();
    global1 = array<i32, 9>();
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(var_0.b.b.a >> (min(abs(vec4<u32>(31891u, 4294967295u, 32584u, 0u)), firstTrailingBit(vec4<u32>(31966u, 17238u, 4294967295u, 0u))) % vec4<u32>(32u)), global4.c.a | -countOneBits(vec4<i32>(var_1.b.a.x, 9667i, global4.b.a.x, global1[_wgslsmith_index_u32(1u, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec2<u32>(41531u, 37811u), vec2<u32>(4294967295u, 14033u), true)) & ~select(_wgslsmith_div_vec2_u32(vec2<u32>(808u, 20046u), vec2<u32>(41536u, 4294967295u)), vec2<u32>(41714u, 0u), func_4(var_1.c.a.x, Struct_4(var_0.a.d.x, var_0.c, 0u, vec4<f32>(290f, -1000f, 966f, -1000f)), var_0.d.x).x), -var_1.c.a.x, abs(20001u));
}

