struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-403f, 1075f);

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-1096f, 704f), vec2<f32>(-763f, 630f), vec2<f32>(-481f, 1000f), vec2<f32>(-177f, 436f), vec2<f32>(628f, -2811f), vec2<f32>(787f, -2011f), vec2<f32>(-1000f, -771f), vec2<f32>(-542f, -668f), vec2<f32>(1045f, -1000f));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = reverseBits(u_input.e.x);
    let var_1 = ~(-vec3<i32>(global2.c.x, u_input.c, _wgslsmith_mult_i32(-2147483647i, u_input.c)));
    let var_2 = u_input.a;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f * arg_0.a.x)), _wgslsmith_f_op_f32(select(-1108f, arg_0.a.x, all(global2.a.xyz)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1054f, -347f)) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-832f, 2066f)))), 1f);
    let var_4 = Struct_2(!(!vec4<bool>(global2.e.x, true, any(vec4<bool>(global2.a.x, true, false, true)), true)), 2147483647i, select(vec2<i32>(1i, u_input.c), vec2<i32>(0i, -global2.d.x) & vec2<i32>(-37810i, abs(var_1.x)), !global2.e), vec3<i32>(52918i, max(reverseBits(_wgslsmith_mod_i32(var_1.x, 9809i)), u_input.c), var_1.x ^ abs(u_input.c)), vec2<bool>(global2.e.x || true, !(!(0u != arg_0.c))));
    return ~select(_wgslsmith_sub_i32(var_1.x, ~(u_input.c << (2800u % 32u))), _wgslsmith_mult_i32(global2.b, 49386i), global2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    global2 = Struct_2(vec4<bool>(global2.e.x && true, !any(global2.e), all(select(vec4<bool>(global2.e.x, global2.e.x, global2.a.x, global2.e.x), global2.a, any(global2.a))), all(!select(vec2<bool>(false, true), vec2<bool>(global2.e.x, true), global2.a.x))), u_input.c, -(~reverseBits(vec2<i32>(37304i, arg_2))), ~select(vec3<i32>(1i, u_input.c, u_input.c) & countOneBits(global2.d), global2.d, global2.a.xwz), !select(global2.e, global2.e, global2.a.xy));
    var var_0 = select(!(!vec3<bool>(all(vec2<bool>(true, false)), -1870f > arg_0.a.x, !global2.e.x)), vec3<bool>(false, _wgslsmith_f_op_f32(select(-313f, _wgslsmith_f_op_f32(f32(-1f) * -892f), global2.a.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 1000f), global0.x), global2.a.x), vec3<bool>(global2.e.x, false, true));
    var var_1 = firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(arg_0.c, ~arg_0.c, _wgslsmith_sub_u32(1u, arg_0.c & 4294967295u))));
    var_0 = select(!global2.a.xwx, select(global2.a.wzx, global2.a.wzx, global2.a.x), false);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1270f * arg_0.a.x) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x)))))), 1000f, global0.x, -601f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f - 1083f) * -1768f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> vec2<i32> {
    global1 = array<vec2<f32>, 9>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, 84218u, 1u), firstTrailingBit(u_input.a.x))), 9u)])) + global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, 13195u), 9u)]);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec2<f32>(arg_0, -1000f), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(76225u, u_input.a.x), vec2<u32>(0u, u_input.b.x))), 0i, min(firstTrailingBit(u_input.c), func_3(Struct_1(vec2<f32>(arg_0, arg_0), u_input.d.x, 105169u)))))), _wgslsmith_f_op_f32(f32(-1f) * -638f));
    let var_1 = 13654i;
    let var_2 = Struct_2(select(select(global2.a, select(select(vec4<bool>(false, false, arg_2, true), global2.a, true), vec4<bool>(global2.e.x, true, true, false), arg_2 || true), false), global2.a, true), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(global1[_wgslsmith_index_u32(u_input.d.x, 9u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1595f, global0.x) * var_0.xx))), u_input.b.x, _wgslsmith_div_u32(abs(u_input.a.x), u_input.b.x))), select(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~global2.c, ~global2.c), vec2<i32>(~global2.c.x, 41340i << (u_input.a.x % 32u))), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 48500i), global2.c & global2.c)), select(vec2<bool>(true, true), global2.a.zz, !(arg_1 <= global2.d.x))), ~_wgslsmith_add_vec3_i32(~select(vec3<i32>(1i, 31580i, 1i), global2.d, vec3<bool>(arg_2, false, false)), global2.d), !vec2<bool>(!arg_2, all(vec2<bool>(arg_2, arg_2))));
    return vec2<i32>(17363i, var_2.c.x);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec2<f32>, 9>();
    let var_0 = _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(~28853i, _wgslsmith_dot_vec2_i32(global2.d.zx, max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-53403i, 24580i))))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -2147483647i, 2147483647i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 0i, 49648i, u_input.c), vec4<i32>(-1i, -28989i, u_input.c, global2.c.x))), -62521i) ^ ~1i);
    var var_1 = Struct_2(select(arg_0.a, !vec4<bool>(!global2.e.x, arg_0.a.x, false, any(vec3<bool>(false, arg_0.a.x, false))), vec4<bool>(true, true, !arg_0.e.x, global2.a.x)), -2147483647i, global2.c, global2.d, vec2<bool>(false, !global2.e.x));
    var var_2 = -1000f;
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(global2.b), -83835i), _wgslsmith_mult_vec2_i32(arg_0.d.yy << (u_input.e.yx % vec2<u32>(32u)), vec2<i32>(-(31854i ^ arg_0.b), -countOneBits(arg_0.d.x))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(16239u, 9u)])))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(1u, 25720u)) ^ u_input.a.yz, u_input.d >> (u_input.e.xy % vec2<u32>(32u))), u_input.a.x);
}

fn func_1(arg_0: i32) -> bool {
    global1 = array<vec2<f32>, 9>();
    let var_0 = func_5(Struct_2(select(!vec4<bool>(global2.a.x, true, global2.a.x, false), global2.a, global2.a), reverseBits(-1i), global2.c ^ _wgslsmith_add_vec2_i32(func_2(274f, 0i, global2.a.x), -vec2<i32>(-2147483647i, u_input.c)), ~vec3<i32>(~u_input.c, firstLeadingBit(global2.c.x), -50581i), !vec2<bool>(global2.a.x || global2.a.x, global2.e.x)));
    let var_1 = ~(~u_input.b.x);
    var var_2 = ~u_input.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1179f, global0.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, global0.x, var_0.a.x, -587f) - vec4<f32>(var_0.a.x, global0.x, -803f, 880f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, var_0.a.x, var_0.a.x, var_0.a.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, global0.x, 1000f, global0.x), vec4<f32>(global0.x, var_0.a.x, -1004f, global0.x), global2.a.x))), vec4<bool>(all(vec3<bool>(true, global2.a.x, global2.e.x)), !global2.e.x, !global2.e.x, global2.b <= arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1052f)), var_0.a.x), _wgslsmith_f_op_f32(trunc(-350f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, 150f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -540f)), 192f, -1989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))))));
    return global2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(vec4<bool>(func_1(firstTrailingBit(1i)), select(u_input.b.x, u_input.a.x, true) >= 23833u, !any(global2.e) || true, false), ~(~(i32(-1i) * -global2.d.x)), global2.c, max(-select(~vec3<i32>(global2.b, u_input.c, 1i), vec3<i32>(-25986i, global2.b, u_input.c), select(global2.a.wwz, vec3<bool>(true, true, true), vec3<bool>(global2.e.x, false, true))), vec3<i32>(-2147483647i, -32270i, _wgslsmith_add_i32(2147483647i, u_input.c))), global2.e);
    let var_0 = u_input.b.x;
    global2 = Struct_2(!global2.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(abs(global2.d), select(global2.d, global2.d, true), global2.a.x), global2.d), _wgslsmith_sub_i32(global2.b, _wgslsmith_div_i32(u_input.c & global2.d.x, firstLeadingBit(37305i)))), _wgslsmith_mod_vec2_i32(global2.c, global2.d.zz), ~vec3<i32>(~global2.b, u_input.c | global2.d.x, _wgslsmith_sub_i32(-2147483647i, global2.d.x)) | (_wgslsmith_add_vec3_i32(-vec3<i32>(global2.b, -42946i, -2147483647i), vec3<i32>(19624i, -16990i, -1i) >> (vec3<u32>(var_0, u_input.d.x, 0u) % vec3<u32>(32u))) << (~(u_input.e | vec3<u32>(1u, 26494u, var_0)) % vec3<u32>(32u))), select(!vec2<bool>(1258f < global0.x, false), select(!select(vec2<bool>(false, global2.e.x), vec2<bool>(true, global2.a.x), global2.e), !select(vec2<bool>(true, global2.e.x), vec2<bool>(global2.a.x, global2.a.x), false), true), global2.a.x));
    let var_1 = Struct_1(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(2283f * _wgslsmith_f_op_f32(f32(-1f) * -150f)))), 2580u, var_0);
    let var_2 = _wgslsmith_div_i32(-u_input.c, abs(-global2.c.x) & 6144i) << (select(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.a.xwz), 0u, 1u) << (~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u) % 32u), global2.a.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.c));
}

