struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: vec2<u32> = vec2<u32>(7614u, 0u);

var<private> global2: array<i32, 5> = array<i32, 5>(i32(-2147483648), 1i, -1589i, 0i, -19773i);

var<private> global3: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, select(false, select(false, true, false) | any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), true, all(vec2<bool>(true, false))), abs(global0[_wgslsmith_index_u32(min(~98734u, u_input.a), 20u)]) != abs(_wgslsmith_clamp_i32(u_input.b.x, 5562i, ~(-1i))));
    let var_1 = -(-u_input.b.wxw & firstTrailingBit(u_input.b.www));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~select(4294967295u, 7300u, var_0.x)), u_input.a), ~(~max(vec2<u32>(global1.x, global1.x) | vec2<u32>(1u, 20041u), reverseBits(vec2<u32>(u_input.a, 4214u)))));
    var var_3 = select(var_0.x, global1.x == (~4294967295u >> (u_input.a % 32u)), any(!(!var_0.ywy)) || false);
    global3 = var_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f - -2829f) * _wgslsmith_f_op_f32(round(-1473f))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-713f, 1043f), _wgslsmith_f_op_f32(trunc(-342f))))) + 441f));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> Struct_4 {
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_2) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(347f, _wgslsmith_f_op_f32(trunc(-338f)), any(!vec3<bool>(true, false, arg_0.c.d)))));
    global0 = array<i32, 20>();
    global1 = arg_1.xy;
    let var_1 = arg_0.c.c.yww;
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: f32) -> vec4<u32> {
    let var_0 = ~(vec3<i32>(global0[_wgslsmith_index_u32(select(103125u >> (arg_0.c.a.b % 32u), _wgslsmith_mod_u32(59242u, 1844u), arg_1.d.a), 20u)], 0i, 42096i) | firstTrailingBit(~(-vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(u_input.a, 5u)]))));
    var var_1 = ~_wgslsmith_clamp_u32(arg_0.c.a.b, u_input.a, _wgslsmith_dot_vec4_u32(~arg_0.c.b.d, vec4<u32>(u_input.a, arg_0.b.b, 21321u, 0u)) >> (~(~arg_0.b.b) % 32u));
    global3 = -9596i;
    var var_2 = vec3<bool>(arg_1.c.x, arg_1.a.a, arg_1.a.a);
    var var_3 = arg_1;
    return ~func_2(arg_0, var_3.d.b.wxy, var_3.b, true & arg_0.c.d).c.b.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    global3 = _wgslsmith_clamp_i32(~(i32(-1i) * -21310i), -countOneBits(-53705i), global2[_wgslsmith_index_u32(0u, 5u)]);
    global2 = array<i32, 5>();
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(func_4(func_2(Struct_4(vec2<u32>(u_input.a, global1.x), Struct_1(arg_1.x, global1.x), Struct_3(Struct_1(arg_1.x, 1u), Struct_2(false, vec4<u32>(4294967295u, 30812u, 3439u, 0u), vec3<f32>(arg_3, arg_3, arg_0.x), vec4<u32>(u_input.a, 1u, 98380u, 1u)), vec4<i32>(1i, 0i, 61942i, global0[_wgslsmith_index_u32(63399u, 20u)]), arg_1.x, vec3<f32>(-936f, arg_2.x, arg_3)), global1.x), vec3<u32>(4294967295u, u_input.a, global1.x), arg_3, false), Struct_5(Struct_2(false, vec4<u32>(0u, 44067u, 1u, global1.x), vec3<f32>(arg_2.x, arg_3, arg_3), vec4<u32>(global1.x, 10683u, 20251u, global1.x)), 210f, arg_1, Struct_2(arg_1.x, vec4<u32>(53002u, 0u, 1u, 77131u), vec3<f32>(-1090f, 1000f, arg_3), vec4<u32>(global1.x, 104902u, u_input.a, 15u))), vec2<f32>(-1270f, -1000f), -525f), vec4<u32>(1u, global1.x & 1225u, firstTrailingBit(1u), u_input.a)) | _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, global1.x, 1u), vec4<u32>(u_input.a, 0u, global1.x, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(58167u, u_input.a, global1.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, global1.x, 14428u), vec4<u32>(0u, 4774u, u_input.a, u_input.a)))), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, 20751u, u_input.a, 1u), vec4<u32>(~global1.x, _wgslsmith_sub_u32(global1.x, global1.x), global1.x, _wgslsmith_add_u32(u_input.a, global1.x)), _wgslsmith_div_vec4_u32(func_4(Struct_4(vec2<u32>(u_input.a, global1.x), Struct_1(arg_1.x, u_input.a), Struct_3(Struct_1(false, 27155u), Struct_2(arg_1.x, vec4<u32>(43934u, 1u, global1.x, 4294967295u), vec3<f32>(arg_0.x, arg_0.x, arg_3), vec4<u32>(0u, global1.x, global1.x, 1u)), u_input.b, false, vec3<f32>(-707f, -703f, 1721f)), u_input.a), Struct_5(Struct_2(arg_1.x, vec4<u32>(global1.x, global1.x, 4294967295u, 1u), vec3<f32>(1000f, arg_0.x, arg_3), vec4<u32>(32737u, 36586u, 1u, 0u)), -533f, vec4<bool>(false, true, arg_1.x, arg_1.x), Struct_2(false, vec4<u32>(4294967295u, 0u, 0u, 42587u), vec3<f32>(-1763f, 1190f, 658f), vec4<u32>(16370u, 4294967295u, u_input.a, 0u))), vec2<f32>(-343f, arg_3), arg_0.x), vec4<u32>(global1.x, global1.x, 0u, global1.x) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(vec4<u32>(global1.x, 1u, u_input.a, global1.x) & reverseBits(vec4<u32>(4294967295u, global1.x, global1.x, u_input.a)))));
    let var_1 = u_input.a;
    let var_2 = Struct_5(func_2(func_2(func_2(func_2(Struct_4(vec2<u32>(var_1, 2077u), Struct_1(arg_1.x, 64675u), Struct_3(Struct_1(false, 55107u), Struct_2(arg_1.x, vec4<u32>(1u, 9536u, u_input.a, 61382u), vec3<f32>(-715f, arg_0.x, arg_3), vec4<u32>(var_0, u_input.a, var_0, global1.x)), u_input.b, true, vec3<f32>(-939f, -430f, -600f)), 1u), vec3<u32>(u_input.a, var_1, global1.x), -228f, arg_1.x), vec3<u32>(65057u, var_1, global1.x), _wgslsmith_f_op_f32(arg_0.x * -2115f), arg_1.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(22573u, var_1, 21812u), vec3<u32>(1u, var_1, var_0)), arg_0.x, arg_3 < _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(24971u, 4294967295u, var_0)), select(abs(vec3<u32>(1u, var_1, 58019u)), vec3<u32>(var_1, 1u, global1.x), vec3<bool>(false, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -698f), arg_1.x).c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), vec4<bool>(false, arg_1.x, any(arg_1.zy), true), func_2(Struct_4(~(vec2<u32>(var_0, var_1) | vec2<u32>(u_input.a, u_input.a)), func_2(Struct_4(vec2<u32>(1u, 50893u), Struct_1(true, var_1), Struct_3(Struct_1(false, 1u), Struct_2(true, vec4<u32>(var_0, 83003u, 4294967295u, var_0), vec3<f32>(arg_2.x, arg_0.x, arg_0.x), vec4<u32>(var_1, 4294967295u, 44034u, 1u)), vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(var_0, 5u)], u_input.b.x, 8351i), true, vec3<f32>(arg_0.x, -879f, -637f)), var_0), select(vec3<u32>(11119u, global1.x, 23495u), vec3<u32>(var_0, 4294967295u, 61359u), arg_1.www), _wgslsmith_f_op_f32(f32(-1f) * -789f), 4294967295u < u_input.a).b, Struct_3(func_2(Struct_4(vec2<u32>(var_0, global1.x), Struct_1(arg_1.x, 2092u), Struct_3(Struct_1(arg_1.x, global1.x), Struct_2(false, vec4<u32>(global1.x, 1u, 0u, 4294967295u), vec3<f32>(arg_0.x, 716f, arg_3), vec4<u32>(var_0, var_1, global1.x, 31582u)), u_input.b, false, vec3<f32>(1000f, arg_3, -705f)), var_1), vec3<u32>(global1.x, 0u, 9818u), arg_3, false).c.a, Struct_2(arg_1.x, vec4<u32>(1u, var_0, u_input.a, global1.x), vec3<f32>(arg_0.x, arg_2.x, arg_2.x), vec4<u32>(0u, 1u, u_input.a, global1.x)), vec4<i32>(36928i, 27533i, global2[_wgslsmith_index_u32(u_input.a, 5u)], 0i) & u_input.b, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, 678f, arg_2.x) * vec3<f32>(1474f, arg_3, arg_2.x))), max(_wgslsmith_add_u32(1u, 43570u), var_0)), vec3<u32>(var_0, abs(23098u), 1u & ~var_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1568f, arg_0.x)))), any(!vec2<bool>(false, arg_1.x))).c.b);
    return ~global2[_wgslsmith_index_u32(1u, 5u)] << (abs(global1.x & 1u) % 32u);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))) >= -104f;
    var var_2 = !vec2<bool>(true, any(select(!vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(false, true, false), vec3<bool>(arg_3, true, false), vec3<bool>(false, arg_1.d, true)), false)));
    var var_3 = arg_1;
    return func_2(Struct_4(var_3.b.b.xx << (abs(min(var_0.b.d.zz, vec2<u32>(32972u, var_0.a.b))) % vec2<u32>(32u)), arg_1.a, Struct_3(Struct_1(!arg_3, ~20792u), Struct_2(all(vec2<bool>(false, true)), abs(var_0.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(605f, -1009f, -1158f) - vec3<f32>(arg_1.b.c.x, -691f, var_0.b.c.x)), arg_1.b.d & var_0.b.b), (u_input.b | vec4<i32>(-19460i, -17057i, 10221i, u_input.b.x)) & (vec4<i32>(global2[_wgslsmith_index_u32(var_0.b.d.x, 5u)], 2147483647i, 36216i, -9519i) ^ vec4<i32>(-44697i, 2147483647i, 0i, global0[_wgslsmith_index_u32(var_3.a.b, 20u)])), any(vec2<bool>(var_0.a.a, false)) || func_2(Struct_4(vec2<u32>(global1.x, 1u), arg_1.a, Struct_3(Struct_1(true, 4294967295u), Struct_2(true, vec4<u32>(0u, 0u, var_3.b.b.x, var_0.b.d.x), var_3.e, vec4<u32>(arg_1.b.d.x, u_input.a, global1.x, 57990u)), vec4<i32>(0i, 0i, arg_0.x, arg_1.c.x), var_2.x, var_3.b.c), u_input.a), arg_1.b.d.wzx, arg_1.b.c.x, arg_3).b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.c + vec3<f32>(684f, -1495f, var_0.e.x)))), abs(_wgslsmith_dot_vec3_u32(func_4(Struct_4(vec2<u32>(1u, 4294967295u), var_0.a, arg_1, 0u), Struct_5(Struct_2(var_0.a.a, vec4<u32>(global1.x, u_input.a, 8116u, 25633u), var_0.b.c, arg_1.b.d), -398f, vec4<bool>(false, arg_1.a.a, true, false), arg_1.b), arg_2.yx, -250f).zyz, ~vec3<u32>(global1.x, 1u, 5897u)))), ~vec3<u32>(~(~global1.x), ~(~4294967295u), 46272u), -1000f, !(!all(!vec2<bool>(arg_1.b.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(max(func_1(vec2<f32>(-1255f, 1000f), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(848f, -240f) * vec2<f32>(-650f, 642f)), -512f), -global0[_wgslsmith_index_u32(~global1.x, 20u)]), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(33824i, global0[_wgslsmith_index_u32(u_input.a, 20u)]), 8182i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10669u, 1u), vec3<u32>(global1.x, 4294967295u, 33426u)), 20u)]), -vec3<i32>(1i, -18547i, global0[_wgslsmith_index_u32(95641u, 20u)]))), Struct_3(func_2(Struct_4(min(vec2<u32>(23229u, global1.x), vec2<u32>(global1.x, global1.x)), Struct_1(false, 0u), func_2(Struct_4(vec2<u32>(global1.x, 1u), Struct_1(true, global1.x), Struct_3(Struct_1(true, u_input.a), Struct_2(false, vec4<u32>(76974u, u_input.a, 4294967295u, 48663u), vec3<f32>(642f, 702f, -1000f), vec4<u32>(global1.x, 4294967295u, global1.x, 1u)), vec4<i32>(-37380i, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], -33561i), true, vec3<f32>(-355f, 326f, -1277f)), global1.x), vec3<u32>(47976u, u_input.a, u_input.a), -573f, false).c, abs(u_input.a)), abs(countOneBits(vec3<u32>(global1.x, u_input.a, 25577u))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_mod_u32(global1.x, global1.x) == ~u_input.a).b, Struct_2(any(vec2<bool>(true, true)), ~vec4<u32>(91122u, u_input.a, u_input.a, u_input.a) & func_2(Struct_4(vec2<u32>(60081u, global1.x), Struct_1(true, 4294967295u), Struct_3(Struct_1(true, 24684u), Struct_2(true, vec4<u32>(u_input.a, 4294967295u, 6880u, 1u), vec3<f32>(744f, 368f, -190f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a)), u_input.b, false, vec3<f32>(1181f, -786f, -198f)), 23173u), vec3<u32>(global1.x, u_input.a, 0u), 724f, false).c.b.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(938f, -399f, 1702f), vec3<f32>(146f, -1396f, 987f), vec3<bool>(false, true, false))))), vec4<u32>(global1.x, ~global1.x, ~43527u, global1.x)), u_input.b, all(vec3<bool>(false, true, global1.x <= 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-816f + 1000f), _wgslsmith_f_op_f32(582f * -675f), _wgslsmith_f_op_f32(f32(-1f) * -335f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-153f, -869f, 1822f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1497f, -168f, 1914f), vec3<f32>(-756f, 643f, -423f))), false)) * vec3<f32>(1986f, _wgslsmith_f_op_f32(f32(-1f) * -497f), -298f))), false);
    let var_1 = all(select(vec3<bool>(all(vec2<bool>(true, true)), func_5(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 5u)], -6547i), func_5(vec3<i32>(9246i, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(93595u, 20u)]), var_0.c, vec3<f32>(var_0.c.e.x, -906f, var_0.c.b.c.x), var_0.c.d).c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.b.c.x, var_0.c.b.c.x, var_0.c.b.c.x), vec3<f32>(var_0.c.b.c.x, var_0.c.b.c.x, 1289f))), any(vec2<bool>(true, var_0.b.a))).b.a, any(select(vec2<bool>(var_0.c.b.a, true), vec2<bool>(var_0.b.a, var_0.c.a.a), true))), select(select(vec3<bool>(true, false, var_0.c.b.a), select(vec3<bool>(var_0.b.a, false, true), vec3<bool>(false, var_0.b.a, var_0.c.d), vec3<bool>(false, var_0.c.a.a, var_0.c.a.a)), vec3<bool>(false, false, var_0.b.a)), !(!vec3<bool>(var_0.b.a, false, var_0.b.a)), !var_0.c.d), all(!vec3<bool>(var_0.c.d, var_0.c.d, false))));
    var var_2 = var_0.c.b.d;
    var var_3 = var_0.c.c.x;
    let var_4 = func_2(Struct_4(var_2.ww, Struct_1(true, 1u), var_0.c, ~var_2.x), ~var_2.xwy, 346f, func_5(vec3<i32>(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(47951u, 5u)], max(1457i, var_0.c.c.x)), _wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(1u, 5u)]) ^ 1i, var_0.c.c.x), func_5(vec3<i32>(i32(-1i) * -1i, -27933i, ~global2[_wgslsmith_index_u32(var_0.a.x, 5u)]), var_0.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b.c.x, var_0.c.e.x, var_0.c.e.x), var_0.c.e))), true).c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(107f, var_0.c.b.c.x, 565f), var_0.c.b.c)), _wgslsmith_f_op_vec3_f32(-var_0.c.e))))), true).b.a).c.b;
    var var_5 = var_0.c.c.yxz;
    var var_6 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2431f))));
    var var_7 = var_0.c.b.a | false;
    var var_8 = select(!vec4<bool>(var_0.b.a & var_0.c.d, var_0.b.a && true, false, false), vec4<bool>(any(!(!vec3<bool>(true, var_0.b.a, false))), true, any(select(vec4<bool>(var_4.a, false, false, var_4.a), vec4<bool>(var_1, var_1, var_0.c.a.a, var_4.a), false)) || false, true), any(!select(select(vec2<bool>(var_0.b.a, true), vec2<bool>(false, true), vec2<bool>(true, var_1)), select(vec2<bool>(var_4.a, var_1), vec2<bool>(var_1, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(24365u, ~(~var_4.b.x)), 1264f, var_0.c.b.c.x);
}

