struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global0 = array<bool, 16>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-137f, -577f))))), _wgslsmith_div_f32(-209f, _wgslsmith_f_op_f32(f32(-1f) * -283f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-778f - -895f), 301f))), -326f);
    var var_1 = max(u_input.d >> (u_input.b % vec3<u32>(32u)), abs(u_input.d));
    var_1 = _wgslsmith_div_vec3_i32(~u_input.d | vec3<i32>(~u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 2147483647i), select(2147483647i, u_input.c, false)), -11669i), firstTrailingBit(abs(u_input.d)));
    global0 = array<bool, 16>();
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(var_1.x, 28815i, -72145i, -14323i)), vec4<i32>(10989i >> (_wgslsmith_div_u32(0u, 78357u) % 32u), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.c, var_1.x), ~vec4<i32>(var_1.x, 2147483647i, u_input.d.x, var_1.x)), ~(24188i >> (u_input.a % 32u)))) >= reverseBits(u_input.d.x);
}

fn func_2() -> Struct_1 {
    let var_0 = 62758u;
    let var_1 = Struct_1(abs(_wgslsmith_clamp_vec3_u32(~u_input.b, u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0, 4294967295u) << (u_input.b % vec3<u32>(32u)), u_input.b, ~vec3<u32>(u_input.b.x, 59241u, var_0)))), vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(31672u, 16u)] && true, !global0[_wgslsmith_index_u32(4294967295u, 16u)], func_3())), !global0[_wgslsmith_index_u32(~(4294967295u >> (0u % 32u)), 16u)]), ~(vec3<u32>(abs(5193u), 30506u ^ u_input.b.x, 42600u) >> (~(u_input.b | vec3<u32>(var_0, u_input.a, u_input.b.x)) % vec3<u32>(32u))));
    let var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-23058i, u_input.d.x, ~(-2147483647i), firstLeadingBit(u_input.d.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 8296i, -34251i, -18982i), vec4<i32>(-6251i, u_input.c, u_input.c, u_input.d.x)), vec4<i32>(39539i, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<i32>(u_input.d.x, 11993i, 2147483647i, -27805i), !var_1.b.x)) | vec4<i32>(-70720i, i32(-1i) * -1i, u_input.c << (~countOneBits(u_input.a) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 2147483647i, -13507i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.c, -1i), vec4<i32>(7817i, u_input.c, 1i, u_input.c))) & ~(-u_input.d.x));
    let var_3 = select(!vec3<bool>(func_3(), false, true), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(var_1.b.x, true, false), vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(true, false, var_1.b.x)), select(vec3<bool>(var_1.b.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, false), false), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 16u)], var_1.b.x, global0[_wgslsmith_index_u32(80202u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))), all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)] && false, var_1.c.x <= 1u, true))), var_1.b.x);
    global0 = array<bool, 16>();
    return Struct_1(var_1.a, var_3.xx, ~(~vec3<u32>(~14900u, 4294967295u, var_0)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec4<bool>(arg_1.b.x, arg_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 16u)], firstLeadingBit(7273i) <= (arg_2.x ^ abs(i32(-1i) * -41674i)));
    var var_1 = Struct_3(false, u_input.d.yx);
    global0 = array<bool, 16>();
    var var_2 = Struct_1(vec3<u32>(u_input.b.x ^ abs(arg_0.a.a.x), 1u, ~(~func_2().a.x)), vec2<bool>(func_2().b.x, true), (vec3<u32>(select(arg_1.a.x, arg_1.a.x, true), _wgslsmith_dot_vec3_u32(arg_1.c, arg_1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 60511u), vec4<u32>(arg_1.c.x, 1u, u_input.a, arg_1.c.x))) | _wgslsmith_mod_vec3_u32(arg_0.a.a, vec3<u32>(arg_1.c.x, u_input.b.x, arg_1.c.x))) << (firstLeadingBit(firstTrailingBit(u_input.b)) % vec3<u32>(32u)));
    var var_3 = arg_0;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, ~0u), 1416u) & _wgslsmith_div_u32(reverseBits(~8218u), ~min(arg_1.c.x, var_3.c.a.x)), 25644u);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<bool, 16>();
    var var_0 = max(abs(arg_3.wxx), arg_2.c);
    var_0 = vec3<u32>(~arg_2.a.x, ~abs((1u & u_input.a) >> ((48684u << (1u % 32u)) % 32u)), max(abs(~var_0.x), ~_wgslsmith_add_u32(~u_input.a, abs(1u))));
    var_0 = ~reverseBits(firstLeadingBit(~(~vec3<u32>(arg_2.a.x, arg_3.x, u_input.b.x))));
    global0 = array<bool, 16>();
    return Struct_1(arg_3.xzw, !vec2<bool>(false || any(vec4<bool>(true, arg_2.b.x, arg_2.b.x, global0[_wgslsmith_index_u32(1u, 16u)])), arg_2.b.x), vec3<u32>(~arg_2.a.x, min(~4294967295u, ~var_0.x) & (arg_3.x | (0u << (arg_3.x % 32u))), func_4(Struct_2(arg_2, min(60403i, 33652i), arg_2, arg_1, select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec2<bool>(arg_2.b.x, true), vec2<bool>(arg_2.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))), func_2(), vec3<i32>(arg_0.x, 2147483647i, arg_1) | _wgslsmith_sub_vec3_i32(u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(583f, 2149f, -1047f, 1283f) * vec4<f32>(-1082f, -520f, 2494f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1186f, 1152f, -2588f, 1011f) * vec4<f32>(900f, 565f, -819f, -431f)), select(vec4<bool>(false, arg_2.b.x, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(31171u, 16u)], arg_2.b.x), global0[_wgslsmith_index_u32(64305u, 16u)]))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<bool, 16>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-185f, 1412f)) + -1773f)), _wgslsmith_f_op_f32(1206f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(405f + -545f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1127f)));
    global0 = array<bool, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1265f, _wgslsmith_f_op_f32(floor(634f))))), _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-663f)) + 792f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1596f + 968f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(-u_input.d.zx, vec2<i32>(u_input.c, -12013i), func_1(vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x), u_input.c, Struct_1(u_input.b, vec2<bool>(true, false), u_input.b), vec4<u32>(0u, 34521u, 0u, 52354u)), _wgslsmith_div_i32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2109f * 942f)))), -114f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(828f * _wgslsmith_f_op_f32(f32(-1f) * -663f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) + _wgslsmith_f_op_f32(1000f * -2300f))))));
    global0 = array<bool, 16>();
    var var_1 = func_1(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.c))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, 1i, -1i) >> (vec4<u32>(26213u, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(u_input.d.x, u_input.c, 2147483647i, -8931i)))), u_input.c, Struct_1(vec3<u32>(u_input.a, ~_wgslsmith_sub_u32(u_input.b.x, 16311u), u_input.b.x), select(!func_1(vec4<i32>(u_input.d.x, -72717i, -90832i, u_input.d.x), u_input.d.x, Struct_1(u_input.b, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<u32>(u_input.b.x, 4294967295u, 2552u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)).b, !select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(33688u, 16u)], false), global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), func_2().b), min(~firstTrailingBit(u_input.b), vec3<u32>(u_input.a, u_input.a, 65285u))), _wgslsmith_add_vec4_u32(vec4<u32>(func_1(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c), _wgslsmith_sub_i32(-5643i, u_input.c), Struct_1(vec3<u32>(u_input.a, 1u, 26240u), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), u_input.b), vec4<u32>(6004u, u_input.a, 1u, 0u)).a.x, ~3389u, ~(~u_input.b.x), abs(~u_input.b.x)), abs(reverseBits(vec4<u32>(1u, 5996u, u_input.b.x, u_input.b.x))) >> (firstTrailingBit(vec4<u32>(4294967295u, 50935u, 45271u, 45300u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec3<u32>(4294967295u, ~15104u, ~u_input.b.x)));
}

