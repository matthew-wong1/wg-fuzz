struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(187f))) * _wgslsmith_f_op_f32(-270f * 509f)), _wgslsmith_mod_i32(45741i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-1i), 1i), i32(-1i) * -12909i)), vec4<u32>(global0[_wgslsmith_index_u32(countOneBits((0u >> (u_input.a.x % 32u)) ^ 56171u), 7u)], _wgslsmith_add_u32(min(global0[_wgslsmith_index_u32(4294967295u, 7u)], min(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), select(u_input.c, u_input.c, true))), abs(u_input.b >> (global0[_wgslsmith_index_u32(0u, 7u)] % 32u)) >> ((~u_input.b | global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(1u, 7u)], 0u, false), 7u)]) % 32u), u_input.a.x));
    var var_1 = var_0;
    let var_2 = !(false & any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))) | true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -955f))) + 437f)) * _wgslsmith_f_op_f32(round(var_0.a)));
    var_1 = var_0;
    return firstLeadingBit(4294967295u << (~_wgslsmith_sub_u32(1u, 79823u | u_input.a.x) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    global1 = 82909i;
    var var_0 = 18084u >> (_wgslsmith_add_u32(func_3(), ~11216u) % 32u);
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(1378f, -939f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(182f, 339f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2089f, -388f)))))) - vec2<f32>(623f, 924f));
    return 36087i;
}

fn func_1() -> vec4<bool> {
    var var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), min(_wgslsmith_mult_i32(-43016i, 0i), -21507i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~16599i), 20178i), vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1247f);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(select(-1i, var_0.x, true), _wgslsmith_mod_i32(select(abs(var_0.x), var_0.x & 15405i, false), func_2(u_input.c.x, max(var_0.xy, vec2<i32>(var_0.x, var_0.x)))), var_0.x), -6610i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_1 - 559f)))));
    let var_4 = Struct_1(var_3.x, var_0.x, _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(0u, 0u, 33090u, 4294967295u))), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56054u, 7u)], 7u)]) >> (vec4<u32>(5596u, 0u, u_input.b, 12920u) % vec4<u32>(32u)))));
    return vec4<bool>((~(~var_4.c.x) < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)]) || false, select(select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, var_0.x, -1813i), vec4<i32>(var_4.b, var_0.x, var_4.b, 25044i)) >= var_4.b, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), true & any(vec3<bool>(true, true, true))), -(-2147483647i & var_0.x) == -countOneBits(-29364i), _wgslsmith_dot_vec4_u32(var_4.c | var_4.c, var_4.c) != (var_4.c.x << (35147u % 32u))), false, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(14200i, 6303i)), vec2<i32>(16414i, -64298i) >> ((u_input.c.yz ^ ~vec2<u32>(27052u, 12656u)) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-675f, 1000f)), false)))));
    let var_1 = !select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, true, true), func_1()), vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, true, true)), true), all(vec4<bool>(false, true, true, false))));
    let var_2 = Struct_2(Struct_1(938f, firstLeadingBit(-55715i), abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, 4760u, global0[_wgslsmith_index_u32(1u, 7u)], 25769u), vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 7u)], 4294967295u, 4294967295u), var_1), vec4<u32>(19829u, global0[_wgslsmith_index_u32(1u, 7u)], 1u, global0[_wgslsmith_index_u32(u_input.b, 7u)]) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 82505u, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 7u)])))), ~(~max(u_input.a & u_input.c.xz, vec2<u32>(29569u, 28982u))), Struct_1(_wgslsmith_f_op_f32(-1248f * _wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_mult_i32(~(~13742i), -53353i), vec4<u32>(u_input.c.x, 10449u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], global0[_wgslsmith_index_u32(46212u, 7u)]), u_input.b), ~_wgslsmith_add_u32(u_input.a.x, 37856u))), Struct_1(_wgslsmith_div_f32(304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-732f)) * _wgslsmith_f_op_f32(-var_0))), _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, firstTrailingBit(-2147483647i)), func_2(~u_input.c.x, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 1i)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(15442u, u_input.a.x, 66119u, 6497u), vec4<u32>(global0[_wgslsmith_index_u32(104335u, 7u)], 10078u, 53862u, 0u) >> (vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 4294967295u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(36014u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], 0u)))), true);
    global1 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_2.a.b << (global0[_wgslsmith_index_u32(1u, 7u)] % 32u), -10621i >> (u_input.c.x % 32u)), -2147483647i, -var_2.c.b, _wgslsmith_mult_i32(min(3631i, 31i), -4842i)), -countOneBits(-vec4<i32>(var_2.c.b, var_2.d.b, var_2.a.b, 13976i))));
    var var_3 = _wgslsmith_clamp_vec2_u32(~var_2.b, vec2<u32>(u_input.c.x, 1u), vec2<u32>(var_2.c.c.x, 0u) << ((abs(countOneBits(var_2.b)) | vec2<u32>(reverseBits(1u), _wgslsmith_add_u32(13737u, u_input.a.x))) % vec2<u32>(32u)));
    var_3 = (u_input.a >> (_wgslsmith_add_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a) - var_0) + -1542f), var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) + 2009f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a, 1242f, var_2.d.a) * vec3<f32>(var_0, var_2.c.a, 1169f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(max(var_2.d.b | var_2.c.b, i32(-1i) * -var_2.d.b), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.c.b, var_2.c.b, var_2.a.b, -1i), vec4<i32>(var_2.c.b, 1i, var_2.d.b, var_2.d.b), vec4<bool>(var_1.x, var_1.x, var_2.e, var_1.x)), -vec4<i32>(-13487i, var_2.c.b, var_2.a.b, 2673i))));
}

