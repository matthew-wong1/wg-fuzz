struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, -25832i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(0i, -26976i, -47192i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(0i, -28274i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(28274i, -32987i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(1i, i32(-2147483648), 12050i)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(-6142i, 0i, -17475i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-45523i, 1i, -24557i)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-1i, 1i, -42948i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-7739i, 15592i, 2147483647i)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(1i, 2147483647i, 1i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(0i, 6433i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1i, -55624i, 2147483647i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(27762i, -28295i, -3790i)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(-8170i, 1i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(1i, 72809i, 1i)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-1i, -47698i, 10248i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(0i, 29313i, 0i)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(69481i, -48707i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-43003i, 0i, -710i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-13922i, -43487i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(0i, 2147483647i, -34145i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(1i, 16227i, 0i)), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(28197i, -7709i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-37755i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-26885i, -1i, 1206i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(7306i, 2147483647i, 19481i)), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-41083i, 4284i, 1i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(0i, 2147483647i, 11721i)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(0i, -4395i, 38379i)));

var<private> global2: array<i32, 3> = array<i32, 3>(54505i, 3594i, -11959i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(448f, 1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1896f, -566f), _wgslsmith_f_op_f32(round(-217f))), true)))));
    let var_1 = Struct_4(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, 16563u, 0u, u_input.a)), ~vec4<u32>(u_input.a, 1u, 1u, u_input.a)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 31938u), vec3<u32>(1u, 4294967295u, u_input.a)), 1u >> (0u % 32u), reverseBits(u_input.a), ~18763u), 0i, Struct_2(vec3<i32>(-_wgslsmith_mult_i32(-6870i, u_input.c), select(_wgslsmith_mult_i32(-2147483647i, -1i), -58890i >> (u_input.a % 32u), false), -countOneBits(-15906i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(global2[_wgslsmith_index_u32(~u_input.a, 3u)], abs(global2[_wgslsmith_index_u32(u_input.a, 3u)]), u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(20402u, reverseBits(u_input.a)), 32u)], -2551f));
    let var_2 = _wgslsmith_sub_i32(var_1.c.b.b.x, ~(-1i));
    var var_3 = 4294967295u;
    var var_4 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(~u_input.a << (1u % 32u), ~36698u), ~_wgslsmith_mult_u32(var_1.a.x | var_1.a.x, u_input.a));
    return vec4<i32>(countOneBits(1i << (firstTrailingBit(~var_1.a.x) % 32u)), 31233i, -var_2, _wgslsmith_sub_i32(-(global2[_wgslsmith_index_u32(var_4.x, 3u)] & ~1i), abs(12656i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_4(arg_0, _wgslsmith_add_i32(7201i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global2[_wgslsmith_index_u32(arg_0.x, 3u)], u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 3u)]), func_3())), Struct_2(min(u_input.b, u_input.b), global1[_wgslsmith_index_u32(~(~1u), 32u)], Struct_1(vec4<bool>(true, true, true, true), -u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = Struct_4(~vec4<u32>(abs(var_0.a.x), var_0.a.x, 4294967295u, ~1u), _wgslsmith_clamp_i32(-u_input.c, ~9788i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(29913u, 3u)], -1i, 14117i), max(vec3<i32>(0i, 11130i, -3281i), u_input.b))), var_0.c);
    global1 = array<Struct_1, 32>();
    var var_1 = var_0.c.b.a.yyw;
    var_1 = select(vec3<bool>(false, !all(select(vec4<bool>(false, false, true, var_0.c.b.a.x), var_0.c.c.a, var_0.c.c.a)), all(vec2<bool>(var_0.a.x >= 0u, true))), !select(var_0.c.c.a.wxx, vec3<bool>(var_1.x, true, any(var_0.c.c.a.wwx)), var_0.c.b.a.yxw), var_0.c.c.a.xyy);
    return Struct_2(max(_wgslsmith_add_vec3_i32(max(~vec3<i32>(var_0.c.b.b.x, 2147483647i, 46168i), u_input.b), _wgslsmith_div_vec3_i32(var_0.c.c.b, var_0.c.c.b)), vec3<i32>(~(-2147483647i), -13127i, firstLeadingBit(-2147483647i)) >> (vec3<u32>(1u, abs(arg_0.x), ~1u) % vec3<u32>(32u))), var_0.c.c, var_0.c.b, arg_1);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = func_2(_wgslsmith_add_vec4_u32(max(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_0, arg_0, 1u, 72498u)), ~vec4<u32>(arg_0, u_input.a, 61745u, u_input.a))), vec4<u32>(~u_input.a, u_input.a, arg_0, 46815u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1483f)))), -1098f));
    var var_1 = func_2((_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0, 1u, u_input.a), vec4<u32>(4294967295u, arg_0, u_input.a, arg_0)), ~vec4<u32>(u_input.a, u_input.a, arg_0, arg_0)) ^ vec4<u32>(min(0u, 52535u), 1u, u_input.a, arg_0)) << (vec4<u32>(621u, ~reverseBits(31121u), ~44332u, arg_0) % vec4<u32>(32u)), 997f).b.a.zzw;
    let var_2 = select(select(var_0.b.a.ywz, var_0.b.a.wzy, _wgslsmith_f_op_f32(2566f + _wgslsmith_f_op_f32(f32(-1f) * -800f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d * -2165f)))), func_2(~vec4<u32>(arg_0, 41747u, arg_0, 5031u) ^ ~max(vec4<u32>(4294967295u, 4294967295u, 111448u, arg_0), vec4<u32>(21547u, 0u, u_input.a, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-526f + 110f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(386f * 105f), _wgslsmith_f_op_f32(-var_0.d))))).c.a.yzy, arg_0 >= ~u_input.a);
    global1 = array<Struct_1, 32>();
    global2 = array<i32, 3>();
    return vec4<i32>(11145i, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.a >> (firstLeadingBit(1u) % 32u)), 3u)], _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c), -2147483647i, firstLeadingBit(_wgslsmith_mod_i32(1i, global2[_wgslsmith_index_u32(4294967295u, 3u)]))), reverseBits(~_wgslsmith_clamp_vec3_i32(var_0.a, u_input.b, var_0.c.b))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_4 {
    global1 = array<Struct_1, 32>();
    var var_0 = arg_2.b.zy;
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_1 = func_2(vec4<u32>(~1u, u_input.a, max(4294967295u ^ u_input.a, firstLeadingBit(51741u)), 4294967295u) ^ vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(u_input.a, 1u), 15543u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 16192u), vec3<u32>(u_input.a, 0u, 63061u)), _wgslsmith_sub_u32(7410u, 1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.x, arg_2.b.x, false)) - 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b.x))), _wgslsmith_f_op_f32(-arg_2.b.x))), reverseBits(18492u) >= _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 4294967295u, 18984u, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 42593u, 1u), vec4<u32>(61114u, u_input.a, u_input.a, u_input.a))))));
    return Struct_4(vec4<u32>(1u, u_input.a, min(abs(~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(4294967295u, 29746u), vec2<u32>(u_input.a, u_input.a))), firstLeadingBit(1u)), _wgslsmith_sub_i32(abs(1i) | arg_1.x, -reverseBits(_wgslsmith_add_i32(11652i, -1i))), func_2(~vec4<u32>(32406u, u_input.a, 0u, 1u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(34704u, 25319u, 44109u, u_input.a) | vec4<u32>(38122u, u_input.a, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), arg_2.b.x));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    let var_0 = true;
    var var_1 = select(arg_3.a, arg_1.c.c.a, arg_3.a.x);
    var var_2 = vec2<f32>(arg_1.c.d, arg_1.c.d);
    return func_2(~(~(~(~vec4<u32>(4294967295u, arg_1.a.x, 47014u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(234f, _wgslsmith_f_op_f32(step(-116f, _wgslsmith_f_op_f32(arg_1.c.d * -224f)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_1 = false && (u_input.a == _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39182u, 4294967295u, 1u) | vec3<u32>(0u, 1u, u_input.a), ~vec3<u32>(61500u, 43315u, 0u)), abs(31376u)));
    var var_2 = Struct_2(firstLeadingBit(select(vec3<i32>(1i, -1i, var_0.b.x), u_input.b, select(!var_0.a.yzz, select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(false, var_0.a.x, true), vec3<bool>(false, false, var_0.a.x)), var_0.a.x != var_0.a.x))), func_5(vec3<bool>(!var_0.a.x, all(select(var_0.a, var_0.a, var_0.a.x)), var_0.a.x), func_4(abs(reverseBits(vec4<i32>(1i, -19917i, global2[_wgslsmith_index_u32(0u, 3u)], -21067i))), vec4<i32>(u_input.c, var_0.b.x, u_input.c, -1i) ^ func_1(0u), Struct_3(global1[_wgslsmith_index_u32(~u_input.a, 32u)], _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(237f, 548f, -355f, -2645f))), u_input.a == u_input.a, var_0.a.x, true), ~(vec2<i32>(1i, u_input.c) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1224f, 231f, -1200f), vec3<f32>(-1274f, -893f, -521f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -413f, 483f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(512f, -408f, -282f)))), true)), global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 32u)]), global1[_wgslsmith_index_u32(abs(u_input.a), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1708f - -885f))) * 594f));
    let var_3 = _wgslsmith_f_op_f32(abs(1356f));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1082f);
    let var_5 = ~_wgslsmith_mod_vec3_i32(~(~(-var_2.a)), vec3<i32>(-1i, 1i, ~(i32(-1i) * -68193i)));
    var_1 = !((u_input.a << ((~u_input.a >> (29215u % 32u)) % 32u)) <= u_input.a);
    let var_6 = var_2.a.x;
    let var_7 = func_4(vec4<i32>(-4784i, func_5(func_2(vec4<u32>(12510u, 35576u, u_input.a, 115006u), _wgslsmith_f_op_f32(step(-659f, -261f))).b.a.wzw, func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, u_input.b.x, -37470i, 2147483647i), vec4<i32>(var_5.x, var_0.b.x, -1i, var_0.b.x)), vec4<i32>(39471i, var_5.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], var_2.b.b.x) | vec4<i32>(0i, var_5.x, 1i, 40275i), Struct_3(Struct_1(var_0.a, var_0.b), vec4<f32>(-1188f, -1000f, -650f, var_3), var_0.a.x, false, var_2.c.a.x), -vec2<i32>(-741i, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, var_2.d, var_3) - vec3<f32>(1000f, var_2.d, var_2.d)) * vec3<f32>(var_3, 1876f, var_3)), var_2.c).b.x, 1i, global2[_wgslsmith_index_u32(48044u, 3u)]), vec4<i32>(_wgslsmith_dot_vec2_i32(select(countOneBits(vec2<i32>(70775i, -2679i)), vec2<i32>(8951i, 2147483647i), var_0.a.x), var_0.b.yz), firstLeadingBit(-1i), _wgslsmith_mult_i32(1i, (u_input.b.x | u_input.b.x) << (63666u % 32u)), -2147483647i), Struct_3(func_4(abs(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], var_2.c.b.x, var_2.a.x, 2147483647i))), vec4<i32>(37112i, abs(global2[_wgslsmith_index_u32(86931u, 3u)]), func_2(vec4<u32>(1u, 98286u, 25188u, 1u), var_3).c.b.x, u_input.b.x), Struct_3(Struct_1(vec4<bool>(var_0.a.x, var_2.c.a.x, true, true), var_0.b), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, -1000f, var_3, var_2.d), vec4<f32>(-895f, var_2.d, 238f, var_3))), var_0.a.x, false, true), ~(var_2.a.zx & u_input.b.zy)).c.b, vec4<f32>(var_2.d, _wgslsmith_f_op_f32(exp2(var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-370f, var_2.d), -795f))), all(vec4<bool>(false, all(var_2.c.a.yw), var_0.a.x, var_3 < 1303f)), false, false), abs(var_5.zy)).c.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-441f, -2214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_7, var_2.d)))) - vec2<f32>(var_3, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2178f, 684f), _wgslsmith_f_op_f32(f32(-1f) * -682f))))));
}

