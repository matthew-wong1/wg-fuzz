struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<u32, 18> = array<u32, 18>(4294967295u, 4294967295u, 5469u, 4294967295u, 1u, 4294967295u, 4294967295u, 9502u, 4294967295u, 38437u, 3172u, 1u, 4294967295u, 78839u, 4294967295u, 12759u, 0u, 48931u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(i32(-1i) * -74495i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-14289i, u_input.d.x) | vec2<i32>(u_input.d.x, -1i), min(vec2<i32>(-1i, 1i), vec2<i32>(u_input.e.x, u_input.e.x))), _wgslsmith_dot_vec3_i32(u_input.d | vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), countOneBits(u_input.e)))));
    var var_1 = !select(select(!(!vec3<bool>(true, global0.a, false)), !select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, true, true), vec3<bool>(global0.a, global0.a, global0.a)), !select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, true, false), global0.a)), !(!vec3<bool>(global0.a, global0.a, false)), all(vec3<bool>(true, true, global0.a)));
    var var_2 = arg_0;
    var_1 = !(!(!select(select(vec3<bool>(false, global0.a, true), vec3<bool>(global0.a, global0.a, var_1.x), true), vec3<bool>(false, true, global0.a), any(vec4<bool>(var_1.x, false, global0.a, false)))));
    var var_3 = ((select(~45406u, 40893u ^ u_input.c, !global0.a) ^ select(u_input.c, 1u, true)) >> (abs(~max(global0.e, u_input.a.x)) % 32u)) >> ((~(56687u | ~u_input.c) | 1u) % 32u);
    return !vec4<bool>(any(var_1.xy), all(vec4<bool>(global0.d.x >= global1[_wgslsmith_index_u32(17872u, 18u)], var_1.x, any(vec4<bool>(true, global0.a, global0.a, false)), any(var_1.zx))), !(u_input.b.x == u_input.a.x), !(!(1i < u_input.d.x)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>) -> i32 {
    global0 = Struct_1(!(!(arg_0 || (-1i < arg_2.x))), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(42781u, u_input.a.x, global0.d.x)), global0.c.wwy), vec4<u32>(~0u, ~(~u_input.a.x) & 1u, select(_wgslsmith_clamp_u32(u_input.b.x, ~global1[_wgslsmith_index_u32(41495u, 18u)], 15094u), ~(~u_input.b.x), any(vec3<bool>(false, arg_1.x, arg_1.x))), ~(~global1[_wgslsmith_index_u32(max(1u, global0.d.x), 18u)])), global0.d, global0.d.x);
    return -1i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = 285f;
    let var_1 = abs(vec3<i32>(80983i, func_4(true, !func_3(var_0), u_input.e.yy), 2147483647i));
    let var_2 = var_0;
    let var_3 = 2147483647i;
    return Struct_2(func_3(-1000f).zwz, vec4<bool>((-62876i << (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 18u)], 0u) % 32u)) > var_3, select(203f > _wgslsmith_f_op_f32(-105f - var_2), !(true & global0.a), !global0.a && true), false || global0.a, global0.a), global1[_wgslsmith_index_u32(global0.d.x, 18u)], global0.e, Struct_1(!(!(global0.a || global0.a)), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(0u, 0u, u_input.c), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(40645u, 23801u, 28751u), vec3<u32>(4294967295u, 1u, 58741u))), ~u_input.a << ((u_input.a >> (global0.d.zzy % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_vec4_u32(global0.d, select(vec4<u32>(4294967295u, global0.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], global0.b.x), max(global0.c, global0.d), select(vec4<bool>(true, global0.a, true, false), vec4<bool>(true, true, global0.a, global0.a), global0.a))), vec4<u32>(1u, ~countOneBits(global1[_wgslsmith_index_u32(global0.b.x, 18u)]), global1[_wgslsmith_index_u32(~(~123u), 18u)], 7549u), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.c.x, u_input.b.x, global1[_wgslsmith_index_u32(global0.d.x, 18u)]), 1u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(~u_input.a.x) >> (~793u % 32u);
    var var_1 = Struct_3(func_2(abs(~select(u_input.e.xy, u_input.e.zy, arg_0.wy))), arg_2.e.a, Struct_1(arg_2.a.x, global0.d.wwz, global0.d, ~_wgslsmith_mod_vec4_u32(arg_2.e.d, ~global0.d), abs(~30349u >> (_wgslsmith_div_u32(6867u, 4294967295u) % 32u))));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(select(21259u, arg_1, false)), arg_2.c, ~(~58685u) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, u_input.b.x), func_2(vec2<i32>(-13551i, -2147483647i)).e.c.xz) % 32u), 1u), vec4<u32>(global0.d.x, global0.d.x, _wgslsmith_div_u32(~abs(arg_2.e.d.x), ~arg_1), ~_wgslsmith_add_u32(1025u, 22961u) ^ (max(4294967295u, 5899u) & u_input.c)));
    var_0 = ~reverseBits(65531u);
    var_1 = Struct_3(arg_2, !arg_2.e.a, func_2(vec2<i32>(-54865i, ~u_input.d.x)).e);
    return arg_2.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x);
    global0 = func_1(func_2(var_0.yz).b, 4294967295u, func_2(u_input.d.yz));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(748f, _wgslsmith_f_op_f32(1000f * 158f))), _wgslsmith_f_op_f32(select(-294f, _wgslsmith_f_op_f32(-1642f * -1000f), arg_1.a.x & global0.a)), global0.a)), _wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-432f, -1307f))), !func_2(-vec2<i32>(u_input.d.x, u_input.e.x)).b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1655f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) + 1672f))))), _wgslsmith_f_op_f32(f32(-1f) * -2523f), 415f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1000f, 556f, var_1.x), vec4<f32>(1000f, 796f, -666f, 318f), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))));
    global1 = array<u32, 18>();
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    global0 = arg_0.a.e;
    var var_0 = ~(~arg_1.a.e.d);
    var var_1 = 5428i;
    let var_2 = ~0u;
    var_1 = arg_2.x;
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.zz;
    var var_1 = global1[_wgslsmith_index_u32(func_6(func_5(Struct_3(Struct_2(vec3<bool>(true, true, global0.a), select(vec4<bool>(false, global0.a, true, global0.a), vec4<bool>(true, false, global0.a, false), vec4<bool>(false, true, global0.a, true)), global0.c.x, ~var_0.x, func_1(vec4<bool>(true, true, false, global0.a), u_input.b.x, Struct_2(vec3<bool>(global0.a, false, global0.a), vec4<bool>(false, global0.a, global0.a, global0.a), 0u, 4294967295u, Struct_1(false, u_input.a, global0.c, vec4<u32>(16739u, var_0.x, 29659u, 4294967295u), global0.c.x)))), !all(vec2<bool>(false, global0.a)), Struct_1(global0.a, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.c.x, 18u)], 18u)], 42321u, var_0.x), global0.c, vec4<u32>(0u, global1[_wgslsmith_index_u32(29231u, 18u)], 48444u, var_0.x) >> (global0.c % vec4<u32>(32u)), _wgslsmith_dot_vec3_u32(global0.d.ywx, u_input.a))), Struct_2(select(func_2(vec2<i32>(u_input.e.x, -1i)).b.wwx, vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, global0.a, true)), vec4<bool>(true, global1[_wgslsmith_index_u32(27455u, 18u)] >= 1u, true, false && global0.a), global1[_wgslsmith_index_u32(20546u, 18u)], _wgslsmith_div_u32(36096u, max(u_input.b.x, var_0.x)), func_2(vec2<i32>(u_input.e.x, u_input.d.x) & vec2<i32>(u_input.d.x, u_input.e.x)).e)), func_5(func_5(Struct_3(func_2(u_input.e.yz), true, Struct_1(true, global0.c.wwx, vec4<u32>(global1[_wgslsmith_index_u32(15423u, 18u)], 4294967295u, 40007u, global0.b.x), global0.d, u_input.c)), Struct_2(!vec3<bool>(global0.a, false, global0.a), vec4<bool>(global0.a, global0.a, false, global0.a), _wgslsmith_mult_u32(u_input.c, u_input.b.x), global0.e, func_5(Struct_3(Struct_2(vec3<bool>(true, global0.a, global0.a), vec4<bool>(global0.a, false, false, global0.a), 5937u, 90596u, Struct_1(global0.a, vec3<u32>(78859u, 51571u, global0.d.x), global0.c, vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u, u_input.a.x), global1[_wgslsmith_index_u32(0u, 18u)])), global0.a, Struct_1(true, vec3<u32>(var_0.x, u_input.c, 67956u), vec4<u32>(var_0.x, global0.c.x, global1[_wgslsmith_index_u32(17218u, 18u)], 36530u), vec4<u32>(global0.c.x, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.c, 18u)], u_input.a.x), 4294967295u)), Struct_2(vec3<bool>(global0.a, global0.a, true), vec4<bool>(false, global0.a, global0.a, true), 4294967295u, 0u, Struct_1(false, vec3<u32>(global0.c.x, global0.c.x, global0.d.x), global0.d, vec4<u32>(2370u, 4294967295u, u_input.c, 4294967295u), 22946u))).a.e)), func_2(-select(vec2<i32>(u_input.d.x, u_input.e.x), u_input.e.xy, vec2<bool>(false, false)))), max(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.e.x, 2147483647i, u_input.d.x), -u_input.e) >> (select(global0.c.wxw, func_1(vec4<bool>(global0.a, false, false, global0.a), 16696u, Struct_2(vec3<bool>(global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, false, global0.a), global1[_wgslsmith_index_u32(global0.b.x, 18u)], var_0.x, Struct_1(global0.a, vec3<u32>(var_0.x, var_0.x, global0.d.x), vec4<u32>(29934u, 9409u, 4294967295u, u_input.b.x), global0.d, global0.e))).d.ywx, !global0.a) % vec3<u32>(32u)), vec3<i32>(u_input.d.x | -13594i, 1i, abs(1i)) & vec3<i32>(~u_input.d.x, i32(-1i) * -2147483647i, 4935i))), 18u)];
    let var_2 = Struct_3(Struct_2(select(vec3<bool>(false, false, func_1(vec4<bool>(global0.a, true, global0.a, global0.a), 0u, Struct_2(vec3<bool>(false, global0.a, true), vec4<bool>(global0.a, true, false, global0.a), 43991u, 15812u, Struct_1(global0.a, u_input.a, vec4<u32>(u_input.c, 17442u, global0.c.x, 1u), global0.c, var_0.x))).a), vec3<bool>(!global0.a, global0.a, 1i == u_input.d.x), vec3<bool>(true, true, global0.a && global0.a)), !func_5(func_5(Struct_3(Struct_2(vec3<bool>(false, true, global0.a), vec4<bool>(global0.a, true, true, global0.a), u_input.a.x, global0.c.x, Struct_1(global0.a, u_input.a, global0.d, vec4<u32>(global0.e, var_0.x, 4294967295u, var_0.x), var_0.x)), true, Struct_1(true, vec3<u32>(u_input.a.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, var_0.x, 85537u, global1[_wgslsmith_index_u32(1u, 18u)]), global0.d, 4294967295u)), Struct_2(vec3<bool>(false, false, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a), 20926u, 19810u, Struct_1(true, vec3<u32>(global1[_wgslsmith_index_u32(51219u, 18u)], var_0.x, 1744u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 1u, 5198u, var_0.x), vec4<u32>(var_0.x, 0u, 48177u, global1[_wgslsmith_index_u32(29090u, 18u)]), global0.c.x))), func_5(Struct_3(Struct_2(vec3<bool>(global0.a, global0.a, global0.a), vec4<bool>(true, false, global0.a, false), global1[_wgslsmith_index_u32(1u, 18u)], var_0.x, Struct_1(true, global0.b, vec4<u32>(61829u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 18u)], 18u)], global1[_wgslsmith_index_u32(global0.e, 18u)], 1u), vec4<u32>(u_input.b.x, 33798u, var_0.x, var_0.x), 4294967295u)), false, Struct_1(global0.a, global0.b, vec4<u32>(31070u, 4294967295u, 42345u, 38450u), vec4<u32>(4294967295u, 32642u, u_input.c, u_input.c), var_0.x)), Struct_2(vec3<bool>(true, false, true), vec4<bool>(false, global0.a, false, false), 1u, var_0.x, Struct_1(true, u_input.a, vec4<u32>(36645u, 38762u, var_0.x, 1u), vec4<u32>(global1[_wgslsmith_index_u32(78254u, 18u)], 5321u, 45712u, u_input.b.x), 0u))).a).a.b, 18689u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global0.c.x), firstTrailingBit(vec2<u32>(0u, global0.e))) | ~_wgslsmith_sub_u32(73357u, 13067u), Struct_1(false, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)] & 21830u, 1u), vec4<u32>(68649u & global0.e, var_0.x, ~u_input.a.x, global0.d.x), (global0.c & global0.c) & global0.c, ~firstLeadingBit(36784u))), false, Struct_1(global0.a, global0.c.zwx, vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 18u)], (var_0.x | 1u) << (u_input.b.x % 32u), func_2(firstTrailingBit(u_input.e.zx)).d), func_2(u_input.e.xy).e.c, 4294967295u));
    var var_3 = func_5(Struct_3(var_2.a, ~global0.c.x > _wgslsmith_dot_vec3_u32(global0.c.yzx, firstTrailingBit(u_input.a)), Struct_1(false, global0.b, ~vec4<u32>(1u, var_2.c.e, 1u, 4294967295u), select(select(var_2.c.c, global0.c, vec4<bool>(global0.a, true, var_2.b, global0.a)), var_2.a.e.c, var_2.a.b), global0.e)), var_2.a).a.a.xx;
    let var_4 = vec4<i32>(select(1i, firstLeadingBit(-(u_input.e.x << (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-963f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f + 2061f))), u_input.d.x, u_input.d.x | -13638i, (u_input.e.x ^ u_input.e.x) << (u_input.a.x % 32u));
    global0 = func_1(vec4<bool>(all(vec4<bool>(global0.a, true, true, true)) & !any(vec4<bool>(false, var_3.x, var_3.x, true)), !func_1(vec4<bool>(var_2.a.b.x, global0.a, true, false), ~u_input.a.x, Struct_2(vec3<bool>(true, false, var_2.b), vec4<bool>(true, false, false, var_3.x), 0u, global0.c.x, var_2.a.e)).a, true, true), 22092u, Struct_2(select(!var_2.a.a, func_2(vec2<i32>(-2147483647i, 0i)).a, global0.a), !var_2.a.b, global0.b.x, func_1(vec4<bool>(var_3.x, true, var_2.b, true), ~4294967295u, var_2.a).c.x, func_2(var_4.xx).e));
    var var_5 = vec3<bool>(!(!var_3.x), true, var_3.x);
    var var_6 = vec2<i32>(-7231i, ~var_4.x);
    var_1 = func_5(func_5(func_5(var_2, Struct_2(select(vec3<bool>(true, var_3.x, var_3.x), var_2.a.b.xxw, var_2.a.b.wyz), var_2.a.b, ~1u, 51602u, Struct_1(var_3.x, global0.d.wxw, vec4<u32>(global0.c.x, u_input.c, var_2.a.d, global0.e), global0.c, 0u))), var_2.a), func_2(var_4.xy)).c.e;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x);
}

