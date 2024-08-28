struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(4294967295u, 61507u, u_input.b.x, 4294967295u))) | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, arg_0, arg_0)), u_input.b.wzy), firstLeadingBit(~u_input.a.xzy)), 28u)], Struct_4(Struct_2(-1i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, ~1u), 28u)]), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(278f)))), _wgslsmith_div_f32(-688f, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), -2553f), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.c, ~1i, max(-1i, 2147483647i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, u_input.c, 30582i), vec3<i32>(2147483647i, u_input.c, -24197i), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), firstTrailingBit(vec3<i32>(u_input.c, u_input.c, 2147483647i)))), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1030f)))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-1i, u_input.c, u_input.c), abs(countOneBits(u_input.c))), reverseBits(~3341i)), 1u, vec4<u32>(u_input.b.x, abs(_wgslsmith_div_u32(countOneBits(arg_0), _wgslsmith_div_u32(0u, arg_0))), ~u_input.b.x, arg_0));
    var_1 = Struct_1(1i, var_1.b, abs(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(var_1.c.x, u_input.b.x, var_1.b, var_1.b), u_input.a >> (var_1.c % vec4<u32>(32u))), ~countOneBits(vec4<u32>(4294967295u, 43650u, arg_0, 4294967295u)))));
    let var_2 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(abs(min(var_0.b.c.xz, vec2<i32>(var_0.b.c.x, 2147483647i))), vec2<i32>(var_0.b.a.a, _wgslsmith_dot_vec2_i32(var_0.b.c.zy, vec2<i32>(-1i, 0i)))), var_0.b.c.xx, vec2<i32>(u_input.c ^ 22505i, 12716i));
    var var_3 = Struct_4(Struct_2(_wgslsmith_sub_i32(u_input.c, i32(-1i) * -10582i) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(24668u, var_1.b), arg_0 >> (u_input.a.x % 32u)) % 32u), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, arg_1, 688f, _wgslsmith_f_op_f32(round(521f)))), var_0.b.c, select(select(var_0.b.d, var_0.b.d, !(var_0.b.d.x && var_0.b.d.x)), !vec4<bool>(!var_0.a, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, var_0.b.d.x, false)), true, false), ((global0[_wgslsmith_index_u32(var_1.c.x, 28u)] && true) | var_0.b.a.b) & true));
    return ~(vec4<u32>(select(_wgslsmith_sub_u32(4294967295u, 28011u), 102u, true), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.b, 44586u, var_1.c.x), ~u_input.b.x), 1u, ~_wgslsmith_sub_u32(var_1.b, 0u)) >> (select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, 0u, 0u, 0u), ~var_1.c), var_1.c >> ((u_input.b | var_1.c) % vec4<u32>(32u)), select(vec4<bool>(var_3.a.b, false, false, var_3.a.b), vec4<bool>(false, var_3.a.b, var_0.b.d.x, false), !var_0.a)) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<bool, 28>();
    let var_0 = Struct_1(-2982i, ~4294967295u, select(_wgslsmith_add_vec4_u32(min(countOneBits(vec4<u32>(arg_0, arg_0, 106056u, 0u)), u_input.a), firstTrailingBit(vec4<u32>(18087u, u_input.a.x, u_input.a.x, u_input.b.x))), func_3(~5173u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, global0[_wgslsmith_index_u32(26703u, 28u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], true, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], all(vec3<bool>(global0[_wgslsmith_index_u32(30128u, 28u)], false, false)), true, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global0[_wgslsmith_index_u32(arg_0, 28u)])))));
    let var_1 = var_0.c;
    let var_2 = Struct_2(u_input.c & -2147483647i, true);
    global0 = array<bool, 28>();
    return ~(~_wgslsmith_mult_u32(34818u, ~min(var_1.x, u_input.a.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    var var_0 = min(-reverseBits(firstLeadingBit(vec4<i32>(-6432i, -1i, -1i, -8694i))) | _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 0i, u_input.c, arg_2.a.x), -vec4<i32>(u_input.c, -1i, 0i, -2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -24224i, -1i, u_input.c), vec4<i32>(arg_2.a.x, 1544i, 2147483647i, 19592i)), ~vec4<i32>(arg_2.a.x, arg_2.a.x, -36326i, u_input.c))), vec4<i32>(20426i, -2147483647i, u_input.c, _wgslsmith_sub_i32(1i, arg_2.a.x)));
    global0 = array<bool, 28>();
    var var_1 = ~(~vec2<i32>(-23399i, firstLeadingBit(u_input.c)));
    let var_2 = Struct_4(Struct_2(firstLeadingBit(arg_2.a.x), false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -2580f, -1476f, -729f))), vec4<f32>(_wgslsmith_f_op_f32(select(-161f, -625f, false)), _wgslsmith_f_op_f32(-151f * 1000f), _wgslsmith_f_op_f32(2345f * 533f), _wgslsmith_f_op_f32(round(-254f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1160f * -207f), _wgslsmith_f_op_f32(-571f + -820f), -296f, -1528f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, -1037f, -1720f, 644f))))))), var_0.wzy, select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(26503u, 28u)], arg_1.x, false, arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], true, arg_1.x), all(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(3007u, 28u)], arg_1.x))), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 28u)], false, global0[_wgslsmith_index_u32(415u, 28u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0, 28u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], false, arg_1.x, true)), true), !select(vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(arg_3, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(arg_3, 28u)], false, true), false), vec4<bool>(_wgslsmith_f_op_f32(521f - -538f) < _wgslsmith_f_op_f32(step(-607f, 333f)), true, global0[_wgslsmith_index_u32(func_3(52549u, _wgslsmith_f_op_f32(1542f - -1000f)).x, 28u)], false)));
    var_0 = vec4<i32>(min(arg_2.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.c.x, var_0.x, u_input.c, arg_2.a.x) | vec4<i32>(var_1.x, arg_2.a.x, arg_2.a.x, 49411i), reverseBits(select(vec4<i32>(2147483647i, 0i, 7408i, 2147483647i), vec4<i32>(var_1.x, var_0.x, var_1.x, -37740i), false)))), ~max(1i, countOneBits(i32(-1i) * -2147483647i)), max(var_1.x, ~(~1i)), _wgslsmith_add_i32(-50792i, u_input.c));
    return arg_2;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-353f)) * _wgslsmith_f_op_f32(257f - 476f)), _wgslsmith_f_op_f32(select(-1258f, _wgslsmith_f_op_f32(-1650f + -126f), false))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1627f * _wgslsmith_f_op_f32(trunc(1036f))))))));
    var var_1 = Struct_5(false, Struct_4(Struct_2(arg_0.a.x, all(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(-1216f, var_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 196f, var_0, var_0))))), arg_0.a, select(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(42720u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 28u)], true, global0[_wgslsmith_index_u32(51985u, 28u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(46440u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), vec4<bool>(global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 28u)], true, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 900f)));
    let var_2 = Struct_5(global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_4(Struct_2(_wgslsmith_mult_i32(var_1.b.a.a & var_1.b.a.a, max(-2147483647i, arg_0.a.x)), all(!vec2<bool>(true, global0[_wgslsmith_index_u32(71081u, 28u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, var_0, var_1.b.b.x, var_1.c)), _wgslsmith_f_op_vec4_f32(-var_1.b.b), global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), ~vec3<i32>(-u_input.c, max(18087i, 0i), ~arg_0.a.x), vec4<bool>(true, var_1.c >= _wgslsmith_f_op_f32(round(var_1.b.b.x)), global0[_wgslsmith_index_u32(4299u, 28u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(5295u, 28u)], true)))), -589f);
    var_1 = var_2;
    return func_4(~(~_wgslsmith_dot_vec4_u32(abs(u_input.b), u_input.b)), select(select(select(!vec2<bool>(true, var_2.a), var_1.b.d.yz, select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], var_2.b.d.x), var_2.b.d.zy, vec2<bool>(false, var_2.b.a.b))), var_2.b.d.xw, select(vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(1u, 28u)]), var_2.b.d.yz, vec2<bool>(var_2.b.a.b, false))), vec2<bool>(true, select(true, true, var_1.a) == !var_1.a), true), Struct_3(reverseBits(min(abs(vec3<i32>(17264i, -2147483647i, -18709i)), _wgslsmith_mult_vec3_i32(var_1.b.c, vec3<i32>(-2147483647i, -2147483647i, var_2.b.a.a))))), abs(u_input.b.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_5 {
    var var_0 = Struct_3(-vec3<i32>(-(30356i << (arg_1 % 32u)), min(firstTrailingBit(u_input.c), i32(-1i) * -2147483647i), (-1095i << (1u % 32u)) << (_wgslsmith_add_u32(u_input.b.x, 37885u) % 32u)));
    var_0 = func_5(func_4(min(_wgslsmith_add_u32(min(0u, arg_1), countOneBits(arg_1)), ~u_input.b.x << (0u % 32u)), vec2<bool>(true, false), Struct_3(select(var_0.a, var_0.a, vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)])) ^ _wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(-13227i, -2147483647i, u_input.c))), reverseBits(func_2(47230u)) >> ((u_input.a.x >> (u_input.b.x % 32u)) % 32u)));
    let var_1 = vec3<bool>(false, global0[_wgslsmith_index_u32(23835u, 28u)] & (!(!global0[_wgslsmith_index_u32(arg_1, 28u)]) & all(arg_0)), any(!vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true, arg_2)), true, true, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(875f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1622f + -508f), _wgslsmith_f_op_f32(max(-708f, -892f)))), _wgslsmith_f_op_f32(ceil(-1558f)))));
    global0 = array<bool, 28>();
    return Struct_5(all(vec3<bool>(true, !arg_0.x, all(vec3<bool>(arg_0.x, true, true)))), Struct_4(Struct_2(func_4(arg_1, vec2<bool>(var_1.x, var_1.x), Struct_3(vec3<i32>(var_0.a.x, 0i, u_input.c)), ~arg_1).a.x, select(select(true, false, var_1.x), any(vec2<bool>(true, false)), true)), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)), var_2.x), vec3<i32>((-6518i >> (arg_1 % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1839i, var_0.a.x, 31992i, -1i), vec4<i32>(-1i, -24251i, var_0.a.x, -7413i)), ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -2147483647i), var_0.a.yz << (vec2<u32>(43065u, 4294967295u) % vec2<u32>(32u)))), vec4<bool>(false, arg_0.x & (var_0.a.x <= u_input.c), arg_0.x, all(vec4<bool>(true, arg_2, global0[_wgslsmith_index_u32(arg_1, 28u)], var_1.x)))), -282f);
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    let var_0 = true && (true || all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, u_input.c), 1i), arg_1.b.a.a) | vec2<i32>(1i, -2147483647i), -vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(-24544i, u_input.c)), _wgslsmith_div_i32(u_input.c | arg_1.b.c.x, _wgslsmith_add_i32(arg_1.b.a.a, -49425i))));
    let var_2 = Struct_3(_wgslsmith_sub_vec3_i32(arg_1.b.c, vec3<i32>(-1i) * -arg_1.b.c) | arg_1.b.c);
    global0 = array<bool, 28>();
    let var_3 = arg_1.b.c;
    return _wgslsmith_mod_i32(select(var_1.x, max(arg_1.b.c.x, ~_wgslsmith_sub_i32(var_1.x, -2147483647i)), arg_0), select(2147483647i, ~func_5(var_2).a.x, func_1(!(!arg_1.b.d), 1u, !arg_0).b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(918f, 191f) - vec2<f32>(-112f, -1527f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -916f))));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_add_i32(0i, -5671i), _wgslsmith_mod_i32(u_input.c, 0i), -u_input.c), vec3<i32>(func_6(var_0.x < _wgslsmith_f_op_f32(floor(1566f)), func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<u32>(~0u, u_input.a.x, ~4294967295u, ~23819u), u_input.a.x), _wgslsmith_div_i32(u_input.c, -u_input.c ^ u_input.c), u_input.c));
    var var_2 = Struct_2(~_wgslsmith_dot_vec3_i32(~(-var_1), var_1), u_input.c < _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(u_input.c << (1u % 32u), _wgslsmith_clamp_i32(2147483647i, -2147483647i, -2147483647i), _wgslsmith_div_i32(var_1.x, 0i))));
    let var_3 = Struct_4(Struct_2(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_2.a), vec2<i32>(-19878i, 9314i))), global0[_wgslsmith_index_u32(countOneBits(~abs(90613u)), 28u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, var_0.x, var_0.x, var_0.x)) * vec4<f32>(var_0.x, var_0.x, 181f, var_0.x)) + vec4<f32>(var_0.x, -187f, 357f, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, 312f, var_0.x, -1227f) * vec4<f32>(var_0.x, -1509f, -2175f, -1134f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 519f, var_0.x, var_0.x))), select(!var_2.b, true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true, var_2.b)))))), ~var_1, vec4<bool>(func_1(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(36458u, 28u)], true, true)), func_2(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), func_1(vec4<bool>(false, var_2.b, false, false), 0u, select(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false, false)).b.d.x).b.d.x, true, true, all(!vec4<bool>(true, false, var_2.b, var_2.b))));
    var var_4 = select(select(select(select(!var_3.d.xx, !var_3.d.yy, true && global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), func_1(!var_3.d, abs(137838u), var_2.b).b.d.zy, !(!vec2<bool>(var_3.a.b, false))), func_1(select(!var_3.d, select(var_3.d, vec4<bool>(true, var_2.b, var_3.d.x, false), true), var_3.d), u_input.a.x, var_3.d.x).b.d.yx, !any(vec4<bool>(var_3.d.x, true, true, var_2.b))), vec2<bool>(!(!var_2.b || false), global0[_wgslsmith_index_u32(~4294967295u, 28u)]), vec2<bool>(func_1(select(select(var_3.d, vec4<bool>(false, var_3.a.b, var_2.b, var_3.d.x), var_3.a.b), select(vec4<bool>(var_3.d.x, var_2.b, var_2.b, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], var_2.b, false), var_3.d), !vec4<bool>(false, true, var_2.b, global0[_wgslsmith_index_u32(6849u, 28u)])), abs(~u_input.b.x), var_3.d.x).a, any(vec2<bool>(any(var_3.d.zyx), any(vec3<bool>(false, false, var_2.b))))));
    var var_5 = var_3.b.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b.x), u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_5.x)), var_3.b.x, ~abs(64408i) < var_3.c.x)), _wgslsmith_sub_i32(countOneBits(i32(-1i) * -2147483647i), var_2.a), u_input.a.x);
}

