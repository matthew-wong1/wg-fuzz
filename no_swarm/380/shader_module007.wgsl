struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 6>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    global0 = ~global2.a.c;
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(~global2.a.a, vec4<i32>(-2147483647i, 0i, _wgslsmith_mult_i32(u_input.d.x, global2.a.d), ~(-10414i)), vec4<i32>(-u_input.a.x, _wgslsmith_sub_i32(-1i, global2.c), ~u_input.a.x, -global2.c)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -504f))), 4294967295u, _wgslsmith_add_i32(abs(u_input.a.x), countOneBits(global2.c) | u_input.d.x), ~vec2<u32>(~global2.a.c, global2.a.e.x)), !select(global1[_wgslsmith_index_u32(u_input.c, 6u)], !(true & global2.b), select(global1[_wgslsmith_index_u32(17931u, 6u)] & false, select(global2.b, false, false), global1[_wgslsmith_index_u32(~u_input.c, 6u)])), global2.a.a.x, u_input.a);
    let var_1 = any(vec2<bool>(!(!any(vec4<bool>(var_0.b, global2.b, true, global2.b))), !(!all(vec4<bool>(global1[_wgslsmith_index_u32(global2.a.e.x, 6u)], var_0.b, false, false)))));
    let var_2 = ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(9125u, global2.a.e.x, 4294967295u), vec3<u32>(u_input.b, var_0.a.c, u_input.b)), ~vec3<u32>(global2.a.c, 0u, var_0.a.c)), vec3<u32>(4294967295u, select(53590u, var_0.a.c, true), ~var_0.a.c)), ~vec3<u32>(4294967295u, 35919u, var_0.a.c) | vec3<u32>(countOneBits(59714u), min(4294967295u, 34713u), ~var_0.a.c));
    let var_3 = -23709i;
    return select(select(vec2<bool>(false, !(!global2.b)), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.e.x, 6u)], global2.b))), !vec2<bool>(true, !var_1)), !(!vec2<bool>(var_1, global2.b)), vec2<bool>(false, false));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 6u)];
    global0 = ~min(~firstTrailingBit(abs(21579u)), ~(~(~20610u)));
    var_0 = true;
    let var_1 = _wgslsmith_mod_u32(arg_1, abs(~global2.a.e.x));
    global2 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_div_i32(select(arg_2.d.x, u_input.a.x, arg_3.x), global2.d.x), arg_0.x, arg_2.c, global2.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global2.a.b, vec2<f32>(1227f, global2.a.b.x)))), 1u, _wgslsmith_dot_vec2_i32(arg_2.d.yx, -min(arg_2.a.a.wz, vec2<i32>(arg_2.d.x, u_input.d.x))), firstTrailingBit((vec2<u32>(var_1, 18645u) | vec2<u32>(var_1, u_input.b)) << (global2.a.e % vec2<u32>(32u)))), all(select(!select(vec4<bool>(true, arg_2.b, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global2.b, true, false), global2.b), select(select(vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(25064u, 6u)]), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)), !vec4<bool>(arg_3.x, arg_2.b, true, arg_2.b), vec4<bool>(arg_2.b, false, arg_2.b, true)), !(!vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a.e.x, 6u)], arg_3.x, arg_2.b, false)))), firstTrailingBit(abs(_wgslsmith_sub_i32(global2.c, u_input.d.x))), reverseBits(vec3<i32>(1i, -u_input.d.x, 0i)));
    return vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.a.e, global2.a.e), 6u)], all(arg_3), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.a.c, ~arg_1, countOneBits(max(1u, 1u)) >> (firstLeadingBit(arg_1) % 32u)), 6u)]);
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = 2036u;
    var var_0 = Struct_2(global2.a, true, 1i, ~global2.d);
    let var_1 = func_4(firstTrailingBit(var_0.a.a), 1u, Struct_2(var_0.a, global2.b, u_input.a.x, -min(var_0.d << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)), global2.a.a.wxz)), vec3<bool>(global2.b, !any(func_3(vec3<f32>(global2.a.b.x, -699f, -107f))), u_input.b <= var_0.a.c));
    var_0 = Struct_2(var_0.a, var_0.b, -_wgslsmith_div_i32(-_wgslsmith_div_i32(global2.c, -2147483647i), _wgslsmith_div_i32(1i << (u_input.b % 32u), ~0i)), var_0.d);
    var var_2 = var_0.a.b.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, var_0.a.b.x, 691f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.b.x, 160f, var_0.a.b.x), vec3<f32>(global2.a.b.x, var_0.a.b.x, 2148f), vec3<bool>(var_0.b, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, -423f, global2.a.b.x)), true))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, -293f, 437f))))), vec3<f32>(_wgslsmith_f_op_f32(994f + -1420f), _wgslsmith_f_op_f32(sign(695f)), 604f)));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    return Struct_1(global2.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3.yy)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, -1887f)))), firstLeadingBit(_wgslsmith_div_u32(~(47708u << (arg_0 % 32u)), 1u)), abs(-2147483647i), global2.a.e);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = ~4294967295u;
    global1 = array<bool, 6>();
    var var_0 = ~_wgslsmith_div_vec2_i32(arg_0.a.zz, -(_wgslsmith_sub_vec2_i32(global2.a.a.wz, vec2<i32>(-2147483647i, -38632i)) | arg_1.a.a.yz));
    global0 = arg_0.e.x;
    let var_1 = Struct_2(func_5(arg_0.c, _wgslsmith_mult_vec2_i32(arg_0.a.wz, vec2<i32>(arg_1.a.d, var_0.x) & ~global2.a.a.wy), abs(min(arg_1.c, i32(-1i) * -15670i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1971f, -548f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1735f - 100f)))), any(select(vec2<bool>(!arg_1.b, true), vec2<bool>(all(vec3<bool>(global2.b, global1[_wgslsmith_index_u32(1u, 6u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global2.a.c), 6u)]), arg_1.b)), ~_wgslsmith_mult_i32(arg_1.a.d, ~(-2147483647i ^ global2.a.d)), ~global2.d);
    return func_5(_wgslsmith_sub_u32(67481u, 25409u), u_input.a.xz, abs(var_0.x), vec3<f32>(global2.a.b.x, 1858f, _wgslsmith_f_op_f32(floor(403f))));
}

fn func_1() -> bool {
    global1 = array<bool, 6>();
    let var_0 = func_6(func_5(abs(1u), ~((vec2<i32>(2147483647i, u_input.d.x) >> (vec2<u32>(u_input.c, global2.a.e.x) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(u_input.a.x, 0i))), u_input.a.x, _wgslsmith_f_op_vec3_f32(func_2(0i))), Struct_2(Struct_1(vec4<i32>(~global2.c, global2.a.a.x, 10115i, _wgslsmith_dot_vec3_i32(u_input.a, global2.d)), global2.a.b, 4294967295u, ~u_input.a.x, vec2<u32>(abs(global2.a.e.x), global2.a.c ^ 56255u)), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(42372u, 6u)], true, global2.b), select(vec4<bool>(global2.b, global1[_wgslsmith_index_u32(25939u, 6u)], true, true), vec4<bool>(false, global2.b, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(20908u, 6u)], global2.b, global2.b)))), u_input.a.x, ~(~vec3<i32>(-1i, -29010i, global2.a.d))));
    global2 = Struct_2(Struct_1((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -3080i, -2147483647i, global2.c)) & vec4<i32>(abs(u_input.d.x), 1i, i32(-1i) * -2147483647i, ~(-6166i)), var_0.b, ~_wgslsmith_mult_u32(17669u, global2.a.e.x), _wgslsmith_div_i32(-56968i, u_input.d.x >> (0u % 32u)), ~reverseBits(reverseBits(global2.a.e))), !(global2.b & true), -64952i, func_6(global2.a, Struct_2(Struct_1(global2.a.a, vec2<f32>(var_0.b.x, var_0.b.x), u_input.b | 1u, global2.a.d, vec2<u32>(var_0.c, global2.a.c)), global1[_wgslsmith_index_u32(countOneBits(8530u) | select(u_input.b, 17297u, global1[_wgslsmith_index_u32(var_0.c, 6u)]), 6u)], -max(1i, -1831i), global2.a.a.xyx)).a.zxx);
    var var_1 = vec2<i32>(u_input.a.x, -global2.d.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_2(func_5(abs(var_0.e.x), vec2<i32>(-33354i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, var_1.x), global2.a.a.x)), 22304i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b.x, _wgslsmith_f_op_f32(global2.a.b.x - -2542f), -1244f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))).d)).x;
    return func_3(_wgslsmith_f_op_vec3_f32(func_2(4721i))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global2.a.a;
    var var_1 = (global1[_wgslsmith_index_u32(~66566u, 6u)] & !func_1()) | (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2135f))), -649f)) >= _wgslsmith_f_op_f32(floor(-313f)));
    var var_2 = Struct_2(global2.a, !((countOneBits(1u) ^ ~u_input.b) != ~(~u_input.c)), 2147483647i, vec3<i32>(_wgslsmith_clamp_i32(-(~0i), var_0.x, -(1i << (u_input.b % 32u))), u_input.a.x, ~u_input.a.x));
    let var_3 = Struct_2(Struct_1(~var_0, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b.x, global2.a.b.x) + vec2<f32>(global2.a.b.x, var_2.a.b.x)))), 17454u, ~(-1i), vec2<u32>(min(~global2.a.c, ~global2.a.c), _wgslsmith_clamp_u32(36375u, 62885u >> (1u % 32u), 4294967295u))), all(func_4(countOneBits(select(global2.a.a, var_0, vec4<bool>(true, true, var_2.b, global1[_wgslsmith_index_u32(global2.a.e.x, 6u)]))), var_2.a.c, Struct_2(global2.a, true, _wgslsmith_mult_i32(var_2.a.d, -5383i), _wgslsmith_mod_vec3_i32(var_2.d, u_input.a)), !select(vec3<bool>(true, true, global2.b), vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(2802u, 6u)], false), vec3<bool>(true, false, false)))), ~(i32(-1i) * -abs(var_0.x)), func_5(u_input.c, firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(global2.a.a.x, 13965i), vec2<i32>(var_2.a.d, 26144i))), 49678i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f + global2.a.b.x)), _wgslsmith_div_f32(global2.a.b.x, _wgslsmith_f_op_f32(floor(var_2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f + global2.a.b.x) * _wgslsmith_f_op_f32(561f - var_2.a.b.x)))).a.zyw);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x, countOneBits(u_input.a), select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(func_5(var_2.a.e.x, vec2<i32>(-1i, 0i), u_input.a.x, vec3<f32>(var_3.a.b.x, var_3.a.b.x, 239f)).a, vec4<i32>(0i, -24802i, global2.a.a.x, 20697i)), vec4<i32>(u_input.a.x, -1i, var_3.d.x, var_2.a.a.x) << ((vec4<u32>(1u, 1u, 22944u, 63768u) & vec4<u32>(4294967295u, var_3.a.c, 6364u, 2091u)) % vec4<u32>(32u))), vec4<i32>(global2.a.a.x, _wgslsmith_mult_i32(var_3.c, i32(-1i) * -1i), min(-1i, var_3.d.x) | ~(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.c, 0i), ~2147483647i, -18423i)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], (global2.a.b.x <= var_2.a.b.x) || (-1i > global2.a.a.x), any(select(vec4<bool>(false, false, var_2.b, global2.b), vec4<bool>(var_3.b, true, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(64172u, 6u)], false, var_2.b))), any(vec2<bool>(true, true)))), var_3.a.a.x, func_6(Struct_1(func_5(31955u | u_input.b, _wgslsmith_add_vec2_i32(var_2.d.yy, vec2<i32>(var_3.c, var_3.c)), ~(-4983i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, -745f, var_2.a.b.x))).a, var_2.a.b, 1u, -11648i, vec2<u32>(var_3.a.c, var_3.a.c) & ~vec2<u32>(u_input.b, 1u)), var_3).a.yw);
}

