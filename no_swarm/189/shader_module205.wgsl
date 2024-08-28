struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(5255u, 104492u, 5115u);

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    global1 = vec4<bool>(!global1.x & true, global1.x, !((select(global1.x, false, true) & true) && any(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), false))), true);
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-634f + -357f) - -130f))))) + -1024f);
    var var_2 = global1.x;
    return Struct_3(global1.wyy);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = func_2();
    return global1.yyz;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = all(!vec4<bool>(func_1(arg_1, Struct_1(vec4<i32>(-57236i, -1i, 0i, arg_1.a.b.a.x), vec3<i32>(arg_1.a.a.a.x, -1i, 6319i), 9027i, vec4<bool>(true, false, false, arg_0.x)), arg_2, Struct_4(Struct_2(arg_1.a.b, Struct_1(arg_1.a.a.a, arg_1.a.a.b, -1i, arg_1.a.b.d)))).x, arg_0.x, !arg_1.a.a.d.x, global0.x != 1u)) || true;
    global1 = select(arg_1.a.b.d, arg_1.a.a.d, !select(select(arg_1.a.b.d, !arg_1.a.a.d, all(arg_1.a.a.d)), vec4<bool>(any(global1.xzx), true, false, true), arg_1.a.b.d));
    global0 = firstTrailingBit(select(select(vec3<u32>(1u, global0.x, 0u) | vec3<u32>(46212u, global0.x, 1u), vec3<u32>(1u, 1u, 1u), arg_0), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 24857u, global0.x), vec3<u32>(global0.x, global0.x, 2835u)), select(any(vec3<bool>(global1.x, false, true)), select(true, true, arg_0.x), false)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, global0.x, global0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 72400u, 64973u), vec3<u32>(1u, global0.x, 0u), vec3<u32>(4294967295u, 43122u, 35679u))), abs(vec3<u32>(global0.x, 131763u, 1u))) % vec3<u32>(32u)));
    let var_1 = Struct_5(abs(arg_1.a.a.b), _wgslsmith_clamp_vec3_i32(arg_1.a.a.a.wxz, vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-2147483647i, u_input.a, ~_wgslsmith_clamp_i32(2147483647i, -14388i, -7601i))), 74585i);
    global0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(firstLeadingBit(0u), global0.x ^ 0u, countOneBits(global0.x))), vec3<u32>(global0.x, global0.x, ~abs(73829u)));
    return Struct_2(arg_1.a.a, arg_1.a.b);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_4 {
    global0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.x, ~47929u, ~65212u) & arg_1, ~(~(~arg_1 << (arg_1 % vec3<u32>(32u)))), vec3<u32>(10666u, arg_1.x, 6848u));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1739f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(985f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -919f));
    let var_1 = reverseBits(countOneBits(-5i));
    let var_2 = func_3(vec3<bool>(func_2().a.x, !(!func_2().a.x), false), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -429f)))), var_0).b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1059f, var_0, var_0))))));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.x, u_input.a, var_1, u_input.a), vec4<i32>(3036i, 2147483647i, var_2.c, 0i)), vec4<i32>(0i, var_1, 13165i, var_2.a.x)), var_2.a.xxy, func_3(var_2.d.wwy, Struct_4(Struct_2(Struct_1(vec4<i32>(-2147483647i, -48659i, arg_0.a.a.c, 0i), var_2.a.xxy, u_input.a, vec4<bool>(var_2.d.x, true, var_2.d.x, true)), Struct_1(arg_0.a.b.a, vec3<i32>(u_input.a, 7857i, var_1), var_1, var_2.d))), var_3.x, var_3.x).a.c << ((global0.x >> (0u % 32u)) % 32u), !arg_0.a.a.d), arg_0.a.b));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = true;
    var var_1 = ~(-(~_wgslsmith_div_i32(arg_0, arg_0)));
    var var_2 = Struct_5(vec3<i32>(1i, ~arg_2.a.b.a.x, -_wgslsmith_mod_i32(arg_0, -1i)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(func_3(global1.xxy, Struct_4(Struct_2(Struct_1(arg_2.a.a.a, vec3<i32>(-8978i, -2147483647i, arg_0), u_input.a, arg_2.a.b.d), arg_2.a.b)), -1685f, -678f).b.b, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_0, arg_0), vec3<i32>(u_input.a, -48712i, arg_0))), arg_2.a.a.a.yyw), vec3<i32>(_wgslsmith_sub_i32(arg_2.a.a.b.x, -47399i), -24354i, countOneBits(select(_wgslsmith_clamp_i32(arg_2.a.b.a.x, u_input.a, u_input.a), -1i, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -19374i, countOneBits(arg_2.a.b.b.x), 1i), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -10416i), vec2<i32>(-5190i, arg_2.a.a.c)), u_input.a, u_input.a)));
    var var_3 = ~global0.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(323f, 564f)))))));
    return func_3(!vec3<bool>(true, all(func_3(arg_2.a.a.d.zzx, Struct_4(Struct_2(arg_2.a.b, Struct_1(arg_2.a.a.a, vec3<i32>(1i, arg_0, -6083i), u_input.a, vec4<bool>(global1.x, arg_1, arg_1, false)))), -1297f, 806f).a.d.xzx), !arg_2.a.b.d.x), Struct_4(arg_2.a), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(458f, var_4.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - 1249f))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1362f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1706f), _wgslsmith_f_op_f32(f32(-1f) * -207f)))) >= -1000f, func_4(Struct_4(func_3(func_1(Struct_4(Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i), u_input.a, vec4<bool>(true, false, false, global1.x)), Struct_1(vec4<i32>(15559i, 37524i, u_input.a, u_input.a), vec3<i32>(u_input.a, -37523i, u_input.a), -2147483647i, vec4<bool>(global1.x, true, global1.x, true)))), Struct_1(vec4<i32>(u_input.a, u_input.a, -3075i, 0i), vec3<i32>(-37646i, u_input.a, u_input.a), u_input.a, vec4<bool>(true, global1.x, true, true)), -2202f, Struct_4(Struct_2(Struct_1(vec4<i32>(0i, 23978i, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, -19975i), 2147483647i, vec4<bool>(global1.x, global1.x, false, global1.x)), Struct_1(vec4<i32>(u_input.a, 37993i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), -1i, vec4<bool>(global1.x, false, true, global1.x))))), Struct_4(Struct_2(Struct_1(vec4<i32>(49218i, 2147483647i, -1i, -48824i), vec3<i32>(-2147483647i, u_input.a, u_input.a), 0i, vec4<bool>(false, global1.x, false, global1.x)), Struct_1(vec4<i32>(u_input.a, 0i, -20599i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), -2147483647i, vec4<bool>(true, true, global1.x, global1.x)))), -133f, -911f)), vec3<u32>(~global0.x, global0.x, ~global0.x)));
    var var_1 = vec3<u32>(~abs(28975u), _wgslsmith_div_u32(~(30881u >> (_wgslsmith_sub_u32(global0.x, 1u) % 32u)), global0.x), _wgslsmith_clamp_u32(countOneBits(~abs(16460u)), 1u, reverseBits(global0.x >> ((0u << (0u % 32u)) % 32u))));
    global0 = ~(select(~vec3<u32>(0u, 1u, 21348u), firstLeadingBit(max(vec3<u32>(1u, var_1.x, global0.x), vec3<u32>(64308u, global0.x, 4294967295u))), !vec3<bool>(var_0.d.x, global1.x, false)) ^ ~vec3<u32>(~0u, _wgslsmith_mult_u32(var_1.x, var_1.x), 123972u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(921f, 1368f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-326f)))), 292f))));
    var_2 = -729f;
    var_0 = Struct_1(var_0.a, var_0.a.wyw, 27449i, vec4<bool>(var_0.d.x, var_0.d.x, global1.x, true));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_dot_vec3_u32(min(countOneBits(vec3<u32>(0u, 58387u, 15508u) << (vec3<u32>(global0.x, var_1.x, var_1.x) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(var_1.x, 0u, 2841u))), vec3<u32>(global0.x & global0.x, global0.x, 38255u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(141f, 1580f, false)), _wgslsmith_f_op_f32(floor(-1127f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f * -1000f))));
}

