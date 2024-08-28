struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<vec2<bool>, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = !arg_0.a.e.x;
    let var_1 = true;
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(684f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(673f * -1299f)))))), 1021f, 301f, _wgslsmith_f_op_f32(f32(-1f) * -653f));
    return u_input.e;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - -663f)))), _wgslsmith_div_f32(-159f, -496f), 1361f);
    global0 = array<vec2<bool>, 32>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.e, 0u), 4294967295u, arg_0.x), ~(~vec3<u32>(arg_0.x, arg_0.x, 0u))), vec3<i32>(max(u_input.c, u_input.d.x), ~(u_input.a.x >> (arg_0.x % 32u)), arg_1), arg_0.yww, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(0i, reverseBits(1i)))), ~u_input.a, max(u_input.a, max(u_input.d, ~(~u_input.d))), Struct_1(arg_0.yzx, _wgslsmith_mod_vec3_i32(-select(vec3<i32>(u_input.a.x, arg_1, 2147483647i), vec3<i32>(u_input.a.x, 31482i, 0i), vec3<bool>(false, true, false)), vec3<i32>(_wgslsmith_mod_i32(-40640i, arg_1), 1i, arg_1 << (u_input.e % 32u))), _wgslsmith_add_vec3_u32(arg_0.xxz, _wgslsmith_sub_vec3_u32(arg_0.wwy | arg_0.yxy, vec3<u32>(64150u, u_input.e, 21723u))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, u_input.c) & u_input.a.yz, u_input.a.xy) ^ u_input.c), vec3<bool>(true, true, true));
    var var_2 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), var_1.a.a.xz), ~vec2<u32>(4294967295u, u_input.e)) ^ _wgslsmith_mod_vec2_u32(~firstTrailingBit(_wgslsmith_div_vec2_u32(var_1.a.a.zy, var_1.d.c.zz)), abs(firstTrailingBit(arg_0.ww)));
    var_2 = vec2<u32>(firstTrailingBit(var_2.x & abs(var_2.x)) << ((~var_1.d.c.x << (_wgslsmith_mod_u32(1u, var_2.x) % 32u)) % 32u), _wgslsmith_add_u32(4294967295u, var_2.x));
    return (~(select(arg_0.wzw, vec3<u32>(var_1.a.c.x, var_1.d.a.x, arg_0.x), var_1.e.x) & var_1.d.c) >> (~var_1.d.c % vec3<u32>(32u))) >> (vec3<u32>(0u, ~(reverseBits(42974u) ^ var_2.x), countOneBits(1u)) % vec3<u32>(32u));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = Struct_2(Struct_1(func_3(firstTrailingBit(vec4<u32>(0u, u_input.e, u_input.e, u_input.e)) | firstLeadingBit(vec4<u32>(u_input.e, 0u, u_input.e, u_input.e)), u_input.c), vec3<i32>(u_input.c >> (max(arg_0, u_input.e) % 32u), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-7185i, 0i, 1i, u_input.c)), -2147483647i), abs(vec3<u32>(~3098u, ~0u, u_input.e)), u_input.b.x), u_input.a, min(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d.x, u_input.a.x, u_input.b.x, -4045i), vec4<i32>(u_input.b.x, u_input.c, u_input.a.x, u_input.a.x)), abs(-u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(u_input.a.x, u_input.d.x), 2147483647i, -2147483647i), abs(u_input.a ^ vec4<i32>(78412i, -9877i, 2147483647i, -16332i)))), Struct_1(vec3<u32>(firstTrailingBit(1u), ~(~arg_0), arg_0), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, min(vec4<i32>(32638i, 2147483647i, 0i, u_input.d.x), u_input.d)), select(_wgslsmith_sub_i32(u_input.c, u_input.c), 0i, true), -1i), ~vec3<u32>(arg_0, ~26831u, abs(arg_0)), 1i << (u_input.e % 32u)), !vec3<bool>(all(vec2<bool>(true, true)), true, u_input.d.x != 28212i));
    let var_1 = ~0u;
    var var_2 = 603f;
    var var_3 = min(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.a.x, ~(-64750i), ~_wgslsmith_dot_vec4_i32(u_input.a, var_0.c), select(1i, ~46434i, all(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x)))), var_0.c), vec4<i32>(-1i | (~var_0.a.b.x & ~1i), 1i, var_0.c.x, var_0.a.d));
    return Struct_2(var_0.a, -abs(-vec4<i32>(-2147483647i, var_3.x, 11995i, var_0.a.d)), vec4<i32>(-1i) * -var_0.b, var_0.a, !var_0.e);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_sub_u32(u_input.e, 1731u ^ u_input.e) | _wgslsmith_div_u32(~abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(41832u, 4294967295u, 9061u, 1u) | vec4<u32>(48873u, 1u, u_input.e, 703u), vec4<u32>(u_input.e, 4090u, 104594u, u_input.e))), Struct_3(func_2(~func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(15720u, u_input.e, 4294967295u), vec3<i32>(u_input.d.x, 0i, u_input.b.x), vec3<u32>(u_input.e, u_input.e, 0u), 718i), u_input.a, vec4<i32>(u_input.d.x, u_input.b.x, -1i, u_input.c), Struct_1(vec3<u32>(u_input.e, u_input.e, 27056u), u_input.a.yxx, vec3<u32>(4294967295u, 50305u, u_input.e), -1i), vec3<bool>(false, true, true)), 1i, 4294967295u), vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x), u_input.a.zzw, u_input.d)), abs(-2147483647i), abs(~u_input.e)), Struct_2(func_2(u_input.e).d, u_input.d, u_input.a, func_2(4294967295u).d, vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), true);
    var_0 = func_4(~(~0u), func_4(_wgslsmith_dot_vec3_u32(var_0.a.d.c, var_0.a.a.c), Struct_3(func_2(_wgslsmith_mod_u32(var_0.a.a.a.x, 21429u)), -countOneBits(var_0.a.d.d), 1u), var_0.a, true), func_4(69460u, func_4(4294967295u, Struct_3(Struct_2(Struct_1(vec3<u32>(107452u, 44249u, var_0.c), vec3<i32>(var_0.b, u_input.a.x, -21808i), var_0.a.d.a, u_input.a.x), vec4<i32>(var_0.a.b.x, 2147483647i, u_input.a.x, u_input.d.x), vec4<i32>(var_0.b, -19183i, u_input.d.x, var_0.b), var_0.a.d, vec3<bool>(var_0.a.e.x, true, false)), var_0.a.a.b.x, u_input.e), func_4(4294967295u, func_4(0u, Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.e, var_0.a.a.c.x, var_0.a.d.c.x), vec3<i32>(u_input.d.x, var_0.a.b.x, u_input.d.x), vec3<u32>(21309u, u_input.e, u_input.e), 0i), vec4<i32>(-23233i, 0i, var_0.a.a.d, var_0.b), vec4<i32>(-1i, 81461i, 0i, var_0.b), var_0.a.a, vec3<bool>(var_0.a.e.x, false, true)), -7498i, 4294967295u), Struct_2(var_0.a.a, vec4<i32>(var_0.b, var_0.a.a.b.x, 2147483647i, u_input.c), u_input.d, var_0.a.a, vec3<bool>(true, false, var_0.a.e.x)), false), func_4(1u, Struct_3(var_0.a, -17757i, var_0.c), Struct_2(var_0.a.a, u_input.d, vec4<i32>(-22501i, var_0.b, var_0.a.c.x, 2147483647i), var_0.a.a, vec3<bool>(var_0.a.e.x, true, var_0.a.e.x)), false).a, func_4(u_input.e, Struct_3(var_0.a, var_0.b, 81525u), var_0.a, var_0.a.e.x).a.e.x).a, true), Struct_2(func_2(_wgslsmith_mult_u32(var_0.a.a.a.x, u_input.e)).a, abs(func_4(1u, Struct_3(Struct_2(Struct_1(var_0.a.a.a, vec3<i32>(52008i, var_0.b, var_0.b), vec3<u32>(u_input.e, 0u, 0u), var_0.b), var_0.a.c, var_0.a.b, var_0.a.a, var_0.a.e), -2147483647i, var_0.a.d.a.x), var_0.a, false).a.c), ~vec4<i32>(u_input.b.x, 11182i, 26437i, var_0.a.c.x), var_0.a.d, vec3<bool>(any(vec4<bool>(false, false, var_0.a.e.x, var_0.a.e.x)), true, !var_0.a.e.x)), false).a, select(true, true, _wgslsmith_dot_vec2_u32(var_0.a.a.c.zx, vec2<u32>(var_0.c, var_0.c)) <= var_0.a.a.c.x));
    var var_1 = var_0.a;
    var_0 = func_4(countOneBits(61804u & _wgslsmith_div_u32(~u_input.e, u_input.e)), Struct_3(func_4(~abs(1u), Struct_3(func_4(54464u, Struct_3(var_0.a, -1i, var_0.c), var_0.a, true).a, 2903i, 4294967295u), func_2(1u), !(var_0.a.e.x | false)).a, u_input.a.x << (_wgslsmith_mod_u32(~var_1.d.c.x, firstTrailingBit(21651u)) % 32u), 1u), var_0.a, var_0.a.e.x);
    var var_2 = _wgslsmith_f_op_f32(step(863f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(152f * -1223f))), -708f)))));
    let var_3 = abs(vec3<u32>(~u_input.e, 24122u, ~var_0.a.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a);
}

