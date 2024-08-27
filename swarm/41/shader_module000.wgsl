struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 1000f) * global1.b) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-496f)), _wgslsmith_f_op_f32(step(global1.b, global1.b))))) < global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -868f), 1327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(578f)))) + global1.b)), false);
    let var_0 = ~38377u;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, global1.b, global1.b)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.b))))), _wgslsmith_f_op_f32(floor(-1758f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-681f, global1.b)))) + global1.b)), select(!vec3<bool>(false, global1.a, global1.b >= global1.b), vec3<bool>(select(global1.a, true, u_input.c < u_input.d), any(select(vec3<bool>(true, false, global1.c), vec3<bool>(false, true, true), false)), global1.c), !vec3<bool>(true, any(vec4<bool>(global1.c, true, false, true)), all(vec4<bool>(global1.a, false, global1.a, false))))));
    global1 = Struct_1(all(select(!(!vec3<bool>(true, global1.c, global1.c)), vec3<bool>(true && global1.c, true & global1.a, global1.a), global1.a)), 710f, select(true, global1.a, false));
    let var_2 = any(select(!vec4<bool>(!global1.a, !global1.a, false, true), select(!select(vec4<bool>(global1.a, true, true, false), vec4<bool>(global1.c, false, global1.a, global1.c), vec4<bool>(true, global1.c, global1.a, global1.a)), vec4<bool>(!global1.a, true, false, global1.c), !any(vec4<bool>(true, global1.c, global1.a, true))), true));
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = select(!vec3<bool>(!(!global1.a), !(arg_0 & arg_0), !arg_0), select(vec3<bool>(_wgslsmith_f_op_f32(-639f - global1.b) > global1.b, true, -48515i <= (u_input.c >> (u_input.e.x % 32u))), vec3<bool>(arg_0, any(vec2<bool>(global1.a, false)) && false, !(!arg_0)), vec3<bool>(any(vec4<bool>(arg_0, global1.a, false, arg_0)), any(!vec3<bool>(false, true, global1.c)), min(-10680i, 1i) > ~u_input.d)), !vec3<bool>(func_3(), true, arg_0));
    global1 = Struct_1(true, global1.b, false);
    let var_1 = Struct_2(true);
    var var_2 = -18620i;
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-7677i, 0i, u_input.d, u_input.d) | vec4<i32>(u_input.c, u_input.d, -1i, u_input.c)), vec4<i32>(countOneBits(u_input.c), 2559i, 0i, u_input.d));
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(arg_2.a, _wgslsmith_mult_u32(~u_input.b.x, 0u), func_2(arg_2.a.c), vec4<u32>(abs(16503u), ~1u, firstLeadingBit(arg_2.b), abs(u_input.e.x)) | select(~arg_2.d, ~arg_2.d, select(vec4<bool>(arg_1.a, true, global1.c, arg_1.a), vec4<bool>(false, arg_3.x, true, true), vec4<bool>(arg_2.c.a, false, global1.a, false)))), vec4<bool>(false, arg_2.a.a, !arg_2.a.a, arg_1.a));
    let var_1 = -reverseBits(u_input.c);
    let var_2 = vec2<bool>(select(arg_1.a, arg_3.x, false), func_2(!all(select(vec3<bool>(arg_1.a, var_0.b.x, arg_1.a), vec3<bool>(false, true, global1.a), vec3<bool>(var_0.a.a.a, arg_3.x, false)))).a);
    var var_3 = var_0.a.a.b;
    var_0 = Struct_4(Struct_3(Struct_1(!(!arg_2.a.c), arg_2.a.b, arg_1.a), u_input.a.x, arg_2.c, var_0.a.d), var_0.b);
    return arg_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.b, arg_3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2667f, -2548f) + vec2<f32>(arg_3.b, 1092f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 321f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, arg_0.b) - vec2<f32>(global1.b, arg_3.b)), global0[_wgslsmith_index_u32(1u, 19u)])))), Struct_2(true), Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-func_4(vec2<f32>(-1055f, 362f), Struct_2(false), Struct_3(Struct_1(true, global1.b, arg_3.a), u_input.b.x, Struct_2(global1.a), vec4<u32>(u_input.b.x, 6643u, u_input.a.x, 0u)), global0[_wgslsmith_index_u32(4294967295u, 19u)]).b), arg_0.a), 61488u, func_2(true), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(10423u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(61044u, 42344u, u_input.b.x, u_input.e.x)), vec4<u32>(4294967295u, countOneBits(u_input.e.x), 82565u, u_input.b.x))), !(!(!global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))).b;
    global0 = array<vec2<bool>, 19>();
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-744f, 1250f) - vec2<f32>(-1790f, -736f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, -687f)))), func_2(!(33050i < arg_1)), Struct_3(func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(851f, arg_3.b), vec2<f32>(-747f, 1319f))), Struct_2(arg_3.c), Struct_3(Struct_1(false, var_0, false), u_input.b.x, Struct_2(arg_3.c), vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.e.x)), select(global0[_wgslsmith_index_u32(18311u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], vec2<bool>(arg_3.c, global1.c))), abs(_wgslsmith_mod_u32(0u, 435u)), Struct_2(any(vec4<bool>(false, true, arg_0.a, true))), ~(~vec4<u32>(48938u, u_input.b.x, 60224u, 7270u))), select(global0[_wgslsmith_index_u32(0u, 19u)], select(vec2<bool>(arg_0.a, arg_0.c), !vec2<bool>(arg_3.a, false), !global0[_wgslsmith_index_u32(u_input.e.x, 19u)]), (arg_0.c != global1.a) && true)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~min(u_input.e.x, 11319u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.e.x), vec3<u32>(u_input.a.x, 7219u, 12893u)), 1u, ~u_input.e.x)), 59032u), Struct_2(!(!(33822u < u_input.a.x))), vec4<u32>(countOneBits(~countOneBits(u_input.b.x)), u_input.a.x, _wgslsmith_clamp_u32(firstTrailingBit(~1u), u_input.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.b.x, u_input.a.x), vec4<u32>(4294967295u, 0u, u_input.e.x, u_input.e.x)), vec4<u32>(18573u, u_input.e.x, 1u, 4294967295u))), firstTrailingBit(u_input.b.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.b, -666f)))) - -121f), 490f, 240f);
    var var_3 = 16819u;
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xy))), var_1.c, Struct_3(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), select(var_1.d.x, 1u, true)), var_1.d.ww), func_2(arg_0.a), ~vec4<u32>(u_input.a.x, var_1.d.x, 68768u, select(var_1.d.x, var_1.b, arg_3.c))), vec2<bool>(false, arg_0.a | global1.a)).b;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1386f) + global1.b) - -1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b))), _wgslsmith_f_op_f32(func_5(Struct_1(global1.c, _wgslsmith_f_op_f32(-global1.b), select(global1.a | false, arg_0, all(vec4<bool>(arg_0, false, global1.a, arg_0)))), reverseBits(min(2147483647i, u_input.d)), u_input.c, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b))), func_2(!global1.c), Struct_3(Struct_1(false, global1.b, arg_0), 1u, func_2(false), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 22110u, 38508u), vec4<u32>(1u, 3778u, 31986u, 4294967295u))), vec2<bool>(true, global1.a || true)))));
    var var_1 = Struct_3(Struct_1(true, global1.b, (-1i >> (~4294967295u % 32u)) > (-1i & u_input.c)), ~1u, Struct_2(true), min(~select(vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u), vec4<u32>(u_input.a.x, u_input.e.x, 73129u, 6650u), vec4<bool>(false, false, global1.c, arg_0)) ^ ~abs(vec4<u32>(u_input.e.x, 4294967295u, 1u, 0u)), vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_mult_u32(u_input.b.x & u_input.a.x, 2249u), ~u_input.e.x)));
    let var_2 = var_1.b;
    var_1 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.b, _wgslsmith_f_op_f32(floor(1000f))))), var_1.c, Struct_3(func_4(var_0.zy, func_2(global1.c), Struct_3(var_1.a, 1u, var_1.c, vec4<u32>(4294967295u, 1u, 0u, 50272u)), vec2<bool>(false, true)), 12441u, Struct_2(global1.c && false), vec4<u32>(27194u, reverseBits(0u), ~4294967295u, firstTrailingBit(1u))), vec2<bool>(true, arg_0)), 18079u, Struct_2(!(_wgslsmith_add_u32(var_1.d.x, 1u) >= ~34368u)), ~(~_wgslsmith_add_vec4_u32(~var_1.d, var_1.d ^ var_1.d)));
    var var_3 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a.b, -1471f, true)), _wgslsmith_f_op_f32(-global1.b))), var_1.c, Struct_3(Struct_1(!var_1.a.c, -163f, true), 2282u & (u_input.a.x >> (var_1.b % 32u)), var_1.c, _wgslsmith_sub_vec4_u32(select(var_1.d, vec4<u32>(var_1.d.x, var_1.b, 47839u, var_1.d.x), var_1.a.c), ~vec4<u32>(72082u, var_1.d.x, 1u, 0u))), select(select(!global0[_wgslsmith_index_u32(57685u, 19u)], select(vec2<bool>(arg_0, true), global0[_wgslsmith_index_u32(var_1.d.x, 19u)], vec2<bool>(var_1.a.c, var_1.c.a)), var_1.c.a && true), !vec2<bool>(false, var_1.c.a), vec2<bool>(false, any(vec4<bool>(var_1.a.c, true, global1.c, var_1.c.a))))).c);
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(all(select(global0[_wgslsmith_index_u32(u_input.e.x, 19u)], vec2<bool>(global1.a, true), vec2<bool>(global1.a, true))) || any(select(vec2<bool>(true, global1.a), global0[_wgslsmith_index_u32(u_input.b.x, 19u)], vec2<bool>(global1.c, global1.c))), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.a & true))), true);
    let var_0 = Struct_1(false, 222f, global1.c);
    let var_1 = Struct_4(Struct_3(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1348f)))), func_2(0u < u_input.b.x), Struct_3(var_0, 4294967295u << (u_input.a.x % 32u), func_2(var_0.a), min(vec4<u32>(u_input.a.x, u_input.a.x, 20908u, 1u), vec4<u32>(u_input.b.x, u_input.a.x, 25524u, u_input.a.x))), vec2<bool>(global1.a, u_input.e.x > 1u)), 80821u, Struct_2(true), ~min(vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.e.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a.x) & vec4<u32>(67905u, 38020u, 4294967295u, 80407u))), select(!(!select(vec4<bool>(true, global1.c, var_0.a, true), vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, false, global1.a, true))), vec4<bool>(u_input.e.x < u_input.a.x, var_0.c, false, var_0.a), select(select(!vec4<bool>(global1.c, true, global1.a, var_0.c), vec4<bool>(false, global1.a, false, var_0.a), !global1.c), vec4<bool>(true, select(true, false, global1.a), true, select(var_0.a, global1.c, false)), false)));
    var var_2 = true;
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -500f), vec2<f32>(var_0.b, -944f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 2777f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, global1.b))))), var_1.a.c, Struct_3(var_0, u_input.a.x, func_2(true), var_1.a.d), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~(~var_1.a.b), var_1.a.d.x), u_input.b), 19u)]);
    let var_4 = _wgslsmith_div_i32(firstLeadingBit(-2147483647i), countOneBits(_wgslsmith_div_i32(1i, u_input.c) << (~4294967295u % 32u)));
    var_2 = (~_wgslsmith_dot_vec4_u32(var_1.a.d, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 26015u, 2499u, 1u), vec4<u32>(var_1.a.b, var_1.a.b, 0u, 4294967295u))) << (5208u % 32u)) < (_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(0u), 8942u & u_input.a.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(22950u, 74244u), u_input.b.zx, u_input.a)) & _wgslsmith_add_u32(_wgslsmith_add_u32(abs(26149u), var_1.a.b), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.a.d, vec4<u32>(var_1.a.b, 16078u, 0u, 1u)), _wgslsmith_mod_u32(var_1.a.d.x, 0u))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global1.b, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) - vec2<f32>(var_1.a.a.b, -1622f)), Struct_2(global1.a), var_1.a, !var_1.b.yw).b, var_1.a.c.a)), _wgslsmith_f_op_f32(-var_3.b)));
    var_3 = func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-339f, var_5.x), vec2<f32>(-2075f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))), func_2(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.a.b, var_5.x), _wgslsmith_f_op_vec2_f32(sign(var_5)), var_1.b.xw)), func_2(all(var_1.b.ywy)), Struct_3(var_0, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(20479u, 1u, var_1.a.d.x)), func_2(var_1.a.a.a), countOneBits(vec4<u32>(var_1.a.d.x, 4294967295u, 0u, 1u))), select(!vec2<bool>(true, var_3.c), select(var_1.b.zy, vec2<bool>(var_3.c, false), vec2<bool>(var_1.b.x, var_0.c)), var_0.c)).c), Struct_3(var_1.a.a, firstLeadingBit(u_input.a.x), Struct_2(true), ~_wgslsmith_mod_vec4_u32(var_1.a.d, firstTrailingBit(vec4<u32>(u_input.e.x, 0u, 12929u, u_input.e.x)))), vec2<bool>(~1i != -(var_4 >> (69089u % 32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), var_4, global1.b, vec2<u32>(11969u, ~4294967295u));
}

