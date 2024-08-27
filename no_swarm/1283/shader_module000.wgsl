struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(53620i, 64271i, 1i, 13255i), 57504i), vec4<f32>(-429f, -482f, -899f, 1149f), 560f), 70976u, 37972u, 41863u, vec4<bool>(true, true, false, false));

var<private> global2: array<vec3<f32>, 21>;

var<private> global3: u32 = 48634u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32) -> Struct_4 {
    return Struct_4(global1.a.a, global1.a, Struct_1(vec4<i32>(0i, -1i, 2147483647i, 22627i), global1.a.a.b), ~(~(arg_2 ^ (arg_2 ^ 1u))), -_wgslsmith_mult_i32(select(21649i, global1.a.a.a.x, all(global1.e.xwy)), -_wgslsmith_clamp_i32(-1i, -49339i, -3315i)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = global1.a.a.a.xyx;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(-234f, 232f)), global1.a.c, 553f, -1591f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.b * func_2(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(arg_1.x, 21u)]), vec4<u32>(global1.b, 55026u, 12369u, 15465u), abs(111166u)).b.b))));
    let var_2 = countOneBits(arg_1);
    global3 = var_2.x;
    global1 = Struct_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.b.x, -2079f)), _wgslsmith_f_op_f32(389f - _wgslsmith_f_op_f32(-global1.a.b.x)), -483f), _wgslsmith_div_vec4_u32(select(~var_2, arg_1, global1.e), vec4<u32>(_wgslsmith_div_u32(92560u, arg_1.x), ~13657u, reverseBits(global1.c), 0u)), reverseBits(~(~0u))).b, global1.c, var_2.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 1u, var_2.x | arg_2.x) & ~(~771u), 56374u), vec4<bool>(false, true, true, global1.e.x && global1.e.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(10323u, 53169u), vec2<u32>(global1.c, 101150u)), ~firstLeadingBit(1u), global1.d), ~(~countOneBits(vec3<u32>(1u, global1.d, global1.b)))));
    let var_1 = 1i;
    global2 = array<vec3<f32>, 21>();
    var var_2 = select(select(select(!vec2<bool>(false, global1.e.x), vec2<bool>(global1.e.x, global1.e.x), !(!global1.e.x)), global1.e.xy, all(vec2<bool>(true, true))), select(select(vec2<bool>(true, any(vec4<bool>(true, false, false, global1.e.x))), global1.e.xx, global1.e.x), !global1.e.xz, !vec2<bool>(false, global1.e.x)), any(vec3<bool>(all(global1.e.wxz), false && global1.e.x, false)) & !(4294967295u <= ~global1.c));
    global3 = ~var_0.x;
    return Struct_1(max(_wgslsmith_div_vec4_i32(vec4<i32>(func_2(arg_1.b.wyx, vec4<u32>(global1.c, 1104u, var_0.x, 52522u), global1.b).a.b, var_1, 0i, u_input.a), -global1.a.a.a), countOneBits(vec4<i32>(u_input.a, reverseBits(26880i), abs(var_1), var_1))), _wgslsmith_mod_i32(1i, -41651i));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_5(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, _wgslsmith_f_op_f32(global1.a.c - 188f), global1.a.c)), vec4<u32>(reverseBits(arg_2) >> (global1.c % 32u), 1u, 1u, ~_wgslsmith_div_u32(global1.c, 0u)), 4294967295u), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1163f, -153f), vec2<f32>(global1.a.c, -833f)))), Struct_2(func_2(global1.a.b.yzw, ~vec4<u32>(94u, 4874u, 39223u, 64370u), ~arg_1).b.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.a.b.x)), -620f, 1490f, _wgslsmith_f_op_f32(func_3(global1.a.a.a.x, vec4<u32>(1u, arg_1, 44049u, arg_2), vec3<u32>(4294967295u, 9265u, global1.d)))), global1.a.b.x)), global1.e.x | select(global1.e.x, global1.e.x, any(select(vec3<bool>(global1.e.x, true, global1.e.x), global1.e.wzw, true))), !global1.e.x);
    global2 = array<vec3<f32>, 21>();
    global3 = ~(~(~(~arg_2 ^ var_0.a.d)));
    global2 = array<vec3<f32>, 21>();
    global1 = Struct_3(Struct_2(func_2(global1.a.b.yzz, vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 88557u, arg_1), vec3<u32>(18645u, arg_2, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, 52302u), vec2<u32>(0u, 22891u)), firstTrailingBit(global1.c)), reverseBits(arg_2)).a, _wgslsmith_f_op_vec4_f32(max(global1.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1364f, global1.a.c, -1320f, var_0.a.b.b.x) - var_0.a.b.b) - _wgslsmith_f_op_vec4_f32(global1.a.b + var_0.a.b.b)))), _wgslsmith_f_op_f32(-168f + 1081f)), 0u, 1u, global1.c, vec4<bool>((_wgslsmith_sub_i32(1i, -1i) <= min(-1i, u_input.a)) && !global1.e.x, false, any(global1.e), !all(!global1.e)));
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.b.xww + _wgslsmith_f_op_vec3_f32(-global1.a.b.zzw))), ~select(abs(vec4<u32>(arg_2, var_0.a.d, var_0.a.d, 31140u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global1.c, var_0.a.d), vec4<u32>(global1.b, global1.b, arg_2, 48123u)), reverseBits(vec4<u32>(arg_2, 0u, 64633u, arg_1))), select(global1.e, global1.e, global1.e)), ~_wgslsmith_mod_u32(firstTrailingBit(4294967295u), firstTrailingBit(select(1u, 0u, true)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(reverseBits(abs(~(vec3<i32>(u_input.a, global1.a.a.a.x, global1.a.a.b) | vec3<i32>(u_input.a, 1i, 2147483647i)))), global1.d, global1.b);
    global1 = Struct_3(global1.a, global1.d, ~global1.d, 7792u, !select(select(vec4<bool>(global1.e.x, true, global1.e.x, true), !global1.e, !vec4<bool>(true, true, true, global1.e.x)), vec4<bool>(select(false, true, global1.e.x), !global1.e.x, global1.e.x, global1.d <= global1.d), true));
    global2 = array<vec3<f32>, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1214f) - _wgslsmith_f_op_f32(abs(global1.a.b.x)))), _wgslsmith_f_op_f32(floor(global1.a.c)), -329f));
    var var_2 = select(vec4<bool>(global1.e.x, any(global1.e.xyx), all(vec3<bool>(false && global1.e.x, true, global1.e.x)), !select(global1.e.x, any(global1.e.wzz), true)), !vec4<bool>(all(vec2<bool>(global1.e.x, global1.e.x)) || true, true, any(vec3<bool>(true, global1.e.x, global1.e.x)), all(vec4<bool>(true, false, global1.e.x, global1.e.x))), !(!global1.e));
    global0 = array<vec4<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wwx, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a.xww, vec3<i32>(-16136i, 62558i, var_0.a.x) << (abs(vec3<u32>(0u, 4294967295u, global1.d)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_0.a.xzx, global1.a.a.a.yyy, ~global1.a.a.a.wxz)), var_0.a.yzw), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(199f, 842f), vec2<f32>(var_1.x, 877f), false)))), func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), -1357f, _wgslsmith_f_op_f32(2792f - global1.a.c)), max(~vec4<u32>(4294967295u, global1.d, global1.d, global1.d), ~vec4<u32>(5411u, 717u, 42614u, global1.d)), ~1u).b).a.yx, _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mod_u32(global1.b, 0u)) & 0u);
}

