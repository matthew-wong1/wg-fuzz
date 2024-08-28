struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = firstLeadingBit(~80235i);
    global0 = array<vec3<i32>, 6>();
    var var_1 = 1082u;
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(u_input.b.zyy), max(firstLeadingBit(vec3<i32>(u_input.a, u_input.b.x, -45092i)), reverseBits(global0[_wgslsmith_index_u32(0u, 6u)]) << (~vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))) << ((abs(max(vec3<u32>(4294967295u, 2578u, 4788u), vec3<u32>(0u, 28998u, 0u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(67461u, 106842u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = ~select(33941u, 8120u, -(~2147483647i) <= (firstLeadingBit(var_0) >> (_wgslsmith_clamp_u32(1u, 0u, 0u) % 32u)));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(Struct_1(true, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true))), Struct_1(all(vec2<bool>(true, true)), vec3<bool>(arg_0 >= 367f, true, func_3(vec4<f32>(-704f, -1000f, -1000f, arg_1.x), Struct_1(true, vec3<bool>(true, false, true)), vec2<f32>(408f, -620f), false))), Struct_1(true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false)))), Struct_1(true, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(floor(arg_0)), max(abs(_wgslsmith_add_vec2_i32(abs(arg_2.yy), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, arg_2.x)))), arg_2.yx), Struct_1(true, select(vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), true), vec3<bool>(func_3(vec4<f32>(-261f, -787f, -861f, -137f), Struct_1(false, vec3<bool>(true, true, true)), vec2<f32>(arg_0, arg_1.x), true), true, any(vec2<bool>(false, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))));
    var var_1 = Struct_2(Struct_1(var_0.a.c.b.x, !(!(!var_0.e.b))), Struct_1((false || (false | var_0.a.c.b.x)) && var_0.b.b.x, vec3<bool>(_wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(select(1048f, arg_0, false)), all(var_0.e.b.xx), arg_3 > 1u)), Struct_1(var_0.b.b.x, select(var_0.b.b, vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    return Struct_3(var_0.a, select(var_0.a.c.a, !any(!vec4<bool>(false, false, var_0.a.a.b.x, false)), false), -1323f);
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> Struct_4 {
    global0 = array<vec3<i32>, 6>();
    let var_0 = Struct_4(Struct_2(arg_1.d, func_2(_wgslsmith_div_f32(func_2(arg_1.b, vec2<f32>(-1362f, arg_1.b), u_input.b.zxx, 27736u).c, _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1120f, 808f))), firstLeadingBit(vec3<i32>(21573i, 1i, arg_1.e.x)) << (vec3<u32>(14950u, 0u, 1u) % vec3<u32>(32u)), abs(1u)).a.c, func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -992f), arg_0)), vec2<f32>(arg_1.b, arg_0), _wgslsmith_add_vec3_i32(-u_input.b.yyw, global0[_wgslsmith_index_u32(46566u, 6u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 61750u), ~vec2<u32>(4909u, 32136u))).a.a), func_2(_wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, !arg_1.d.b.x && (arg_1.d.b.x != false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c, arg_0) + vec2<f32>(1000f, -913f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(978f, -176f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c, -293f) - vec2<f32>(-208f, 417f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -386f) * vec2<f32>(-1108f, -1000f))))), select(global0[_wgslsmith_index_u32(~9086u, 6u)], vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, u_input.b.x, u_input.a, -5623i)), 0i, arg_1.e.x), arg_1.a.a.b.b), 1u).a.a, -1266f, u_input.b.xy, arg_1.d);
    var var_1 = arg_1.a.a.c.b.yy;
    global0 = array<vec3<i32>, 6>();
    let var_2 = max(~(~select(vec4<u32>(30960u, 33835u, 48188u, 21123u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<bool>(true, false, var_1.x, false))), firstTrailingBit(min(max(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 34651u)), vec4<u32>(0u, 4294967295u, 0u, 1u)))) & vec4<u32>(33136u, 72215u, 80442u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(107295u, 12027u, 19612u, 1u)), ~abs(vec4<u32>(30705u, 33005u, 25097u, 57441u))));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = ~(~(~firstTrailingBit(0u) | ~firstTrailingBit(1u)));
    var var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(step(arg_2.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, arg_1.c) + _wgslsmith_f_op_vec2_f32(step(arg_2.xy, arg_2.ww))))), _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(var_0, 6u)], global0[_wgslsmith_index_u32(~(var_0 ^ 1u), 6u)]), var_0), _wgslsmith_f_op_f32(ceil(arg_0)), select(!vec2<bool>(any(arg_1.a.b.b), true), !vec2<bool>(func_4(arg_2.x, Struct_5(Struct_3(arg_1.a, false, -828f), arg_0, arg_1.e.b.yy, arg_1.e, vec2<i32>(u_input.b.x, u_input.b.x))).a.c.b.x, !arg_1.a.b.a), false), func_2(1223f, arg_2.wx, -_wgslsmith_sub_vec3_i32(-vec3<i32>(-27034i, arg_1.d.x, arg_1.d.x), global0[_wgslsmith_index_u32(0u, 6u)]), 19633u >> ((~var_0 ^ 1u) % 32u)).a.a, firstLeadingBit(vec2<i32>(u_input.a, ~(u_input.b.x | 93126i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -795f), var_1.b, arg_0), var_1.c.x));
    var var_3 = select(0u, var_0, true);
    var var_4 = 0i;
    return func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(704f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.c)) * _wgslsmith_f_op_f32(floor(var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) + -436f))), vec2<f32>(-1655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f * var_2.x))), ~firstTrailingBit(~u_input.b.zwx >> (_wgslsmith_add_vec3_u32(vec3<u32>(30070u, var_0, 40196u), vec3<u32>(4294967295u, var_0, var_0)) % vec3<u32>(32u))), ~var_0).a;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global0 = array<vec3<i32>, 6>();
    var var_0 = 4294967295u;
    let var_1 = arg_0.a;
    let var_2 = Struct_5(Struct_3(Struct_2(Struct_1(var_1.a.a, vec3<bool>(true, true, arg_0.b)), Struct_1(var_1.b.b.x, vec3<bool>(false, false, false)), var_1.a), all(!select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, var_1.c.a, false), var_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), 938f)))), arg_0.c, select(vec2<bool>(arg_0.c < arg_0.c, any(select(arg_0.a.b.b, vec3<bool>(arg_0.a.b.b.x, arg_0.a.c.b.x, true), vec3<bool>(arg_0.a.c.a, false, arg_0.a.b.a)))), vec2<bool>(true, false), _wgslsmith_div_i32(u_input.b.x, -20699i) >= _wgslsmith_mod_i32(countOneBits(14303i), u_input.b.x)), arg_0.a.a, vec2<i32>(u_input.b.x, -(~u_input.b.x)));
    let var_3 = func_5(var_2.a.c, func_4(_wgslsmith_f_op_f32(round(-542f)), Struct_5(func_2(_wgslsmith_f_op_f32(max(-228f, -662f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, var_2.a.c) + vec2<f32>(-1000f, 1350f)), firstTrailingBit(u_input.b.wyz), firstLeadingBit(46411u)), _wgslsmith_f_op_f32(trunc(arg_0.c)), func_2(_wgslsmith_f_op_f32(var_2.a.c * arg_0.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c, var_2.a.c), vec2<f32>(211f, -2300f))), vec3<i32>(u_input.a, u_input.b.x, var_2.e.x), 1u).a.b.b.xx, var_1.b, vec2<i32>(countOneBits(u_input.b.x), reverseBits(13829i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 322f, -423f, 171f)))));
    return Struct_2(Struct_1(true, vec3<bool>(all(var_1.b.b.xz), func_4(_wgslsmith_f_op_f32(-227f - arg_0.c), Struct_5(Struct_3(Struct_2(var_1.b, var_3.c, Struct_1(var_2.c.x, var_1.a.b)), arg_0.b, arg_0.c), arg_0.c, var_1.c.b.xx, var_2.d, vec2<i32>(14339i, -1i))).e.a, false)), func_5(var_2.b, Struct_4(var_1, var_2.a.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(199f - arg_0.c) + _wgslsmith_div_f32(arg_0.c, -980f)), vec2<i32>(-1i) * -vec2<i32>(var_2.e.x, 2147483647i), Struct_1(func_5(var_2.a.c, Struct_4(var_2.a.a, var_1.b, 1209f, vec2<i32>(1i, var_2.e.x), Struct_1(true, var_3.b.b)), vec4<f32>(1515f, arg_0.c, -993f, var_2.a.c)).c.b.x, var_2.d.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, var_2.b, -312f, 1692f), vec4<f32>(arg_0.c, var_2.b, var_2.a.c, -339f), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, arg_0.c, var_2.b, var_2.b))))).b, func_5(295f, func_4(726f, var_2), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -514f, var_2.a.c, -1000f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1564f, var_2.a.c, -1048f))))))).a);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    let var_0 = countOneBits(-vec4<i32>(1i, u_input.a, select(u_input.a, 1i, true), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -1199i))));
    global0 = array<vec3<i32>, 6>();
    let var_1 = var_0.xy;
    let var_2 = !select(select(select(vec4<bool>(arg_0.a.a, arg_1, arg_0.c.a, arg_1), select(vec4<bool>(true, true, false, arg_0.c.a), vec4<bool>(arg_1, false, false, true), true), select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_0.c.a, arg_0.c.a, arg_0.b.b.x), arg_1)), vec4<bool>(arg_1, true || arg_0.a.a, !arg_0.a.a, false), false), select(select(select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(false, arg_0.c.b.x, false, false), false), select(vec4<bool>(true, true, arg_0.c.a, arg_1), vec4<bool>(false, arg_1, arg_0.a.a, arg_0.c.b.x), vec4<bool>(false, true, false, false)), any(vec4<bool>(arg_1, arg_0.c.a, arg_1, arg_0.b.b.x))), select(select(vec4<bool>(true, true, arg_1, arg_0.b.a), vec4<bool>(false, false, arg_0.a.a, arg_0.b.a), vec4<bool>(arg_1, arg_0.a.b.x, false, arg_0.a.a)), !vec4<bool>(arg_0.b.b.x, arg_1, arg_0.a.b.x, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)), vec4<bool>(u_input.b.x > -2147483647i, false, true, arg_0.b.b.x && false)), any(arg_0.c.b.xy));
    global0 = array<vec3<i32>, 6>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, func_4(-1632f, Struct_5(Struct_3(Struct_2(Struct_1(var_2.x, arg_0.a.b), Struct_1(arg_1, vec3<bool>(true, arg_0.b.a, arg_0.a.a)), arg_0.c), arg_0.a.b.x, 898f), 189f, vec2<bool>(var_2.x, false), Struct_1(arg_0.b.b.x, var_2.yww), vec2<i32>(var_0.x, var_1.x))).c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-238f, 1128f) + _wgslsmith_f_op_f32(f32(-1f) * -492f)), -1215f)));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = Struct_5(Struct_3(Struct_2(arg_1.b, Struct_1(select(true, arg_3, false), func_4(-1113f, Struct_5(Struct_3(Struct_2(Struct_1(arg_3, vec3<bool>(arg_3, false, arg_3)), arg_1.a.c, arg_1.e), arg_1.a.a.b.x, arg_1.c), arg_1.c, arg_1.e.b.zx, Struct_1(arg_3, vec3<bool>(arg_1.a.c.a, arg_1.e.b.x, arg_1.a.b.a)), arg_1.d)).e.b), arg_1.e), _wgslsmith_f_op_f32(select(794f, arg_0.x, func_4(arg_1.c, Struct_5(Struct_3(arg_1.a, true, -2126f), -385f, arg_1.a.c.b.yy, Struct_1(arg_1.b.a, arg_1.e.b), vec2<i32>(-2147483647i, arg_2))).a.c.b.x)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.x, 142f)))), func_4(-1437f, Struct_5(func_2(709f, vec2<f32>(747f, -590f), var_0.wzy, 17563u), _wgslsmith_f_op_f32(-277f - arg_0.x), arg_1.a.b.b.xx, arg_1.e, u_input.b.zx)).c), arg_1.c, func_1(func_2(937f, _wgslsmith_f_op_vec2_f32(-arg_0.yw), firstLeadingBit(u_input.b.zyx), 1u), _wgslsmith_clamp_u32(~63100u, countOneBits(~31466u), ~1u)).b.b.zy, arg_1.b, _wgslsmith_add_vec2_i32(-vec2<i32>(-arg_2, ~0i), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(arg_1.d.x, 37053i)), ~arg_1.d.x), _wgslsmith_sub_i32(var_0.x, 48034i) << (45165u % 32u))));
    var var_2 = func_4(_wgslsmith_f_op_f32(sign(-978f)), Struct_5(func_2(1031f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.zz, vec2<f32>(-950f, -212f))), ~vec3<i32>(-10330i, arg_2, -2147483647i), 1u), _wgslsmith_f_op_vec4_f32(func_6(var_1.a.a, arg_1.a.c.a)).x, vec2<bool>(!func_2(960f, vec2<f32>(arg_1.c, 938f), global0[_wgslsmith_index_u32(1u, 6u)], 4294967295u).b, any(select(arg_1.a.c.b, vec3<bool>(arg_1.e.a, arg_1.e.a, false), var_1.c.x))), Struct_1(arg_1.a.b.a, vec3<bool>(!arg_1.e.a, var_1.c.x, !arg_3)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.d.x, min(var_0.x, var_0.x)), vec2<i32>(1i, -2147483647i), ~(var_0.yz >> (vec2<u32>(19811u, 4294967295u) % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_6(Struct_2(arg_1.b, var_2.e, var_1.d), false)).x, arg_1.c)))));
    var_0 = vec4<i32>(-1i) * -u_input.b;
    return arg_1.a;
}

fn func_8(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = arg_0.a.b.x;
    let var_1 = Struct_5(Struct_3(func_2(_wgslsmith_f_op_f32(-440f + -371f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, 303f) + vec2<f32>(-208f, -850f)), ~u_input.b.wwy, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(14429u, 3561u))).a, var_0, _wgslsmith_f_op_f32(-264f * -1840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_6(Struct_2(func_5(396f, Struct_4(Struct_2(arg_0.b, arg_0.c, arg_0.b), arg_0.a, -1782f, vec2<i32>(u_input.b.x, -2147483647i), Struct_1(var_0, vec3<bool>(arg_0.a.b.x, false, true))), vec4<f32>(-378f, -423f, -814f, 390f)).c, arg_0.b, Struct_1(arg_0.c.b.x, vec3<bool>(false, true, arg_0.b.b.x))), func_1(Struct_3(arg_0, false, 1088f), _wgslsmith_add_u32(94265u, 1u)).b.b.x)).x), func_2(-2073f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2000f, 1515f), _wgslsmith_f_op_f32(max(452f, -326f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(397f, -1537f) * vec2<f32>(-940f, -623f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-371f, 1000f) - vec2<f32>(-509f, -878f)))), vec3<i32>(abs(55662i), abs(u_input.b.x), _wgslsmith_add_i32(2147483647i, -2147483647i)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(34769u, 4294967295u, 0u), select(vec3<u32>(30961u, 58379u, 56082u), vec3<u32>(5336u, 4294967295u, 1u), arg_0.b.b)), select(1u, 90940u, false))).a.b.b.yx, arg_0.c, vec2<i32>(~_wgslsmith_sub_i32(u_input.a, ~arg_1), ~_wgslsmith_sub_i32(-u_input.a, func_4(820f, Struct_5(Struct_3(arg_0, false, 572f), 314f, vec2<bool>(false, true), arg_0.c, vec2<i32>(-56176i, -1i))).d.x)));
    let var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(~30293u, select(46318u, 16092u, arg_0.a.b.x), abs(28950u), 1u))), vec4<u32>(~(~(~0u)), 19384u >> (_wgslsmith_mod_u32(1u, 1u) % 32u), _wgslsmith_div_u32(1u, 4294967295u), firstLeadingBit(_wgslsmith_mod_u32(~41326u, 50410u))));
    var var_3 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(var_1.a.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b, 520f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.b) + vec2<f32>(var_1.a.c, var_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, var_1.b))))), vec3<i32>(firstTrailingBit(countOneBits(var_1.e.x)), ~(~0i), _wgslsmith_mod_i32(~(-2147483647i), 1i << (1u % 32u))), 64450u).a.b.b;
    var var_4 = Struct_5(Struct_3(arg_0, var_3.x, 274f), var_1.a.c, !(!vec2<bool>(false, var_0)), arg_0.a, vec2<i32>(-1i) * -var_1.e);
    return -52763i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    let var_0 = true;
    var var_1 = ~0u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -1000f)) + 1319f);
    var var_3 = !(!vec4<bool>(any(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, true, var_0, false))), !var_0 || select(var_0, var_0, false), any(!vec3<bool>(true, var_0, var_0)), !var_0));
    let x = u_input.a;
    s_output = StorageBuffer(func_8(func_7(_wgslsmith_f_op_vec4_f32(func_6(func_1(Struct_3(Struct_2(Struct_1(false, var_3.xwx), Struct_1(false, var_3.xyy), Struct_1(var_3.x, var_3.zyx)), var_3.x, var_2), 47202u), true)), Struct_4(Struct_2(Struct_1(true, vec3<bool>(var_3.x, true, var_0)), Struct_1(false, var_3.yww), Struct_1(var_3.x, var_3.yxx)), Struct_1(true, vec3<bool>(false, var_0, true)), 467f, func_4(762f, Struct_5(Struct_3(Struct_2(Struct_1(true, var_3.yzy), Struct_1(var_3.x, var_3.xzw), Struct_1(false, vec3<bool>(var_3.x, false, var_3.x))), var_0, var_2), -537f, vec2<bool>(true, var_3.x), Struct_1(false, vec3<bool>(false, var_3.x, true)), u_input.b.xx)).d, func_1(Struct_3(Struct_2(Struct_1(false, var_3.xyz), Struct_1(true, vec3<bool>(var_0, false, var_3.x)), Struct_1(false, var_3.wwz)), var_0, -145f), 941u).b), 2618i, var_0), ~_wgslsmith_clamp_i32(~u_input.a, -21935i << (1u % 32u), 3692i)), vec2<f32>(_wgslsmith_f_op_f32(-116f * _wgslsmith_f_op_f32(max(1247f, 996f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -406f) + 1280f))));
}

