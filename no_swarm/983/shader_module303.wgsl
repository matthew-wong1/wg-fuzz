struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-667f, -532f, 1000f, -368f, 334f, -335f, -175f, -1022f);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, vec2<i32>(-37464i, -12777i), true, 66823u, Struct_1(false, -1000f, 62555u, vec2<f32>(-1074f, 866f), 6920u)), Struct_2(false, vec2<i32>(19556i, 24489i), false, 41053u, Struct_1(false, -642f, 0u, vec2<f32>(840f, 1119f), 47113u)), Struct_2(false, vec2<i32>(2147483647i, 1i), false, 25191u, Struct_1(false, -1628f, 0u, vec2<f32>(635f, 2107f), 20716u)), Struct_2(false, vec2<i32>(33853i, 34598i), false, 0u, Struct_1(false, -801f, 1u, vec2<f32>(-2022f, -131f), 1u)), Struct_2(false, vec2<i32>(2147483647i, 6140i), true, 39586u, Struct_1(false, -206f, 70218u, vec2<f32>(913f, -258f), 12542u)), Struct_2(true, vec2<i32>(2147483647i, 1i), true, 0u, Struct_1(false, 494f, 1u, vec2<f32>(532f, -441f), 47302u)), Struct_2(true, vec2<i32>(0i, 1i), false, 20508u, Struct_1(false, -1655f, 1u, vec2<f32>(2596f, 242f), 4777u)), Struct_2(true, vec2<i32>(-18871i, 5680i), false, 4294967295u, Struct_1(true, -356f, 55340u, vec2<f32>(156f, -589f), 3525u)), Struct_2(true, vec2<i32>(i32(-2147483648), 0i), false, 4294967295u, Struct_1(true, -1000f, 0u, vec2<f32>(1257f, 281f), 4294967295u)), Struct_2(false, vec2<i32>(0i, 14486i), false, 20048u, Struct_1(false, -2380f, 1u, vec2<f32>(-586f, 966f), 4294967295u)), Struct_2(false, vec2<i32>(57726i, i32(-2147483648)), true, 57666u, Struct_1(true, -496f, 49453u, vec2<f32>(1897f, 1153f), 5059u)), Struct_2(false, vec2<i32>(i32(-2147483648), 60153i), false, 20748u, Struct_1(true, -1000f, 0u, vec2<f32>(226f, 1323f), 89299u)), Struct_2(true, vec2<i32>(2454i, -24485i), false, 1u, Struct_1(false, 613f, 0u, vec2<f32>(-1779f, -410f), 4577u)), Struct_2(false, vec2<i32>(-1i, -1i), true, 4294967295u, Struct_1(false, -440f, 74413u, vec2<f32>(-334f, 1110f), 4294967295u)), Struct_2(false, vec2<i32>(-1i, 37558i), true, 0u, Struct_1(false, 1022f, 13218u, vec2<f32>(-1495f, -1333f), 1u)), Struct_2(false, vec2<i32>(2147483647i, -1i), true, 12566u, Struct_1(false, -388f, 41377u, vec2<f32>(-660f, 2781f), 1u)), Struct_2(true, vec2<i32>(-47301i, 0i), false, 15249u, Struct_1(false, 550f, 4294967295u, vec2<f32>(-1118f, 900f), 866u)), Struct_2(false, vec2<i32>(-1i, 1i), true, 34556u, Struct_1(false, -857f, 4294967295u, vec2<f32>(408f, 264f), 61161u)));

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_2, 18>();
    let var_0 = (~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 4294967295u, 53180u, 0u)), countOneBits(vec4<u32>(arg_0.c, u_input.a.x, 23057u, u_input.a.x))) ^ ~vec4<u32>(~arg_0.e, 49451u, _wgslsmith_div_u32(arg_0.e, arg_0.c), 0u)) << (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0.e, u_input.a.x, 33442u, arg_0.e)) << (~vec4<u32>(35363u, 33836u, arg_0.e, 64040u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 18582u, arg_0.e, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.e))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_add_vec3_u32(select(_wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, 1u, arg_0.c), _wgslsmith_add_vec3_u32(vec3<u32>(39246u, 1u, 0u), var_0.wyw)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.e, 20211u, arg_0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, arg_0.c), vec3<u32>(4294967295u, u_input.a.x, 0u)))), ~(~var_0.wwy ^ select(var_0.zyz, var_0.wwy, arg_0.a)), arg_0.a), select(var_0.xwx, select(vec3<u32>(arg_0.c ^ var_0.x, 1u, reverseBits(40197u)), var_0.xzw, true), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, true, arg_0.a), -248f >= global0[_wgslsmith_index_u32(1u, 8u)]), true)));
    var var_2 = (_wgslsmith_mult_i32(firstLeadingBit(4826i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, 32076i), vec4<i32>(0i, -15257i, 6627i, 23557i) >> (var_0 % vec4<u32>(32u)))) > 0i) && all(select(vec3<bool>(!arg_0.a, var_0.x == u_input.a.x, true), !vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.b <= -197f, arg_0.a, true)));
    let var_3 = vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.x, ~117662u), 1u), 6124u, 11420u);
    return 1f;
}

fn func_2() -> bool {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -497f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(573f - global2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x))), _wgslsmith_f_op_f32(-1378f + -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true, 1226f, 1u, vec2<f32>(-484f, 845f), u_input.a.x))))));
    let var_0 = -(_wgslsmith_div_i32(~(~2147483647i), select(-23853i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -67197i), vec2<i32>(2147483647i, -2147483647i)), 47112u == u_input.a.x)) | 1i);
    global0 = array<f32, 8>();
    global1 = array<Struct_2, 18>();
    global0 = array<f32, 8>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-954f - 339f))) - global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 8u)]))) > global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(4294967295u, u_input.a.x), 8u)] - 525f), -145f, -796f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1378f, global0[_wgslsmith_index_u32(1u, 8u)], global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -239f) - vec3<f32>(758f, global2.x, global2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1973f), _wgslsmith_f_op_f32(round(848f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, 1000f, -194f)))))));
    var var_0 = ~(~vec2<i32>(2147483647i, arg_0.x));
    var_0 = arg_0;
    global0 = array<f32, 8>();
    let var_1 = select(select(select(vec3<bool>(all(vec3<bool>(false, false, false)), true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), vec3<bool>(select(10715i <= arg_0.x, func_2(), all(vec2<bool>(true, false))), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), all(vec4<bool>(false, true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !func_2())), vec3<bool>(!select(true, true, true), func_2(), false), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), func_2())));
    return Struct_3(-(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, 0i), vec2<i32>(arg_0.x, -1i), arg_0)), Struct_1(1u == u_input.a.x, 129f, u_input.a.x | 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.yz))), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) >> ((_wgslsmith_add_u32(23231u, 0u) | (u_input.a.x >> (25537u % 32u))) % 32u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-219f, _wgslsmith_f_op_f32(func_3(Struct_1(true, global2.x, u_input.a.x, global2.zz, u_input.a.x))), 667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - _wgslsmith_f_op_f32(floor(global2.x)))))), 8915i);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = -(select(~arg_0, arg_0, !arg_1.b.a) >> (~abs(0u) % 32u)) & _wgslsmith_add_i32(arg_1.d, firstLeadingBit(-reverseBits(arg_1.d)));
    global1 = array<Struct_2, 18>();
    global0 = array<f32, 8>();
    let var_1 = select(select(!vec4<bool>(arg_0 > arg_1.a.x, true, arg_1.b.a, true), !(!vec4<bool>(arg_1.b.a, true, true, arg_1.b.a)), vec4<bool>(arg_1.b.a, true, !(arg_1.b.a != arg_1.b.a), any(select(vec4<bool>(arg_1.b.a, false, true, arg_1.b.a), vec4<bool>(true, true, false, arg_1.b.a), vec4<bool>(true, arg_1.b.a, arg_1.b.a, arg_1.b.a))))), select(select(vec4<bool>(false & arg_1.b.a, select(arg_1.b.a, arg_1.b.a, false), true, arg_2.x > 763f), select(vec4<bool>(arg_1.b.a, true, arg_1.b.a, false), !vec4<bool>(false, arg_1.b.a, true, false), !arg_1.b.a), select(!vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, true), !vec4<bool>(arg_1.b.a, arg_1.b.a, true, arg_1.b.a), select(vec4<bool>(true, false, arg_1.b.a, true), vec4<bool>(arg_1.b.a, true, false, arg_1.b.a), false))), !vec4<bool>(arg_1.b.a, true, arg_1.b.a, arg_1.b.a), select(!vec4<bool>(true, arg_1.b.a, arg_1.b.a, true), !(!vec4<bool>(arg_1.b.a, false, arg_1.b.a, false)), func_1(arg_1.a).b.a)), vec4<bool>(arg_1.b.a, arg_1.b.a, !(!arg_1.b.a), all(vec2<bool>(arg_1.b.a, any(vec2<bool>(false, true))))));
    let var_2 = vec2<i32>(arg_1.a.x, ~(~_wgslsmith_mult_i32(arg_1.d, _wgslsmith_sub_i32(28885i, 1i))));
    return ~10015u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(reverseBits(~u_input.a)), ~(u_input.a ^ vec2<u32>(26568u, 0u))), 8u)], 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.zy))) * vec2<f32>(_wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(min(690f, global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))))), u_input.a.x);
    var var_1 = 14577u ^ _wgslsmith_mult_u32(var_0.e, func_4(abs(~0i), func_1(-vec2<i32>(12084i, 2147483647i)), var_0.d, abs(vec4<u32>(var_0.e, u_input.a.x, 0u, 18456u) << (vec4<u32>(u_input.a.x, var_0.c, u_input.a.x, var_0.e) % vec4<u32>(32u)))));
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(u_input.a), ~vec2<u32>(var_0.c, u_input.a.x)), u_input.a), ~(~u_input.a.x));
    global1 = array<Struct_2, 18>();
    var_1 = ~u_input.a.x;
    let var_3 = ~vec3<u32>(countOneBits(4294967295u), var_2, ~abs(u_input.a.x)) & vec3<u32>(~_wgslsmith_clamp_u32(var_2, 80809u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(max(1u, ~u_input.a.x), 4294967295u, var_2), ~_wgslsmith_div_u32(1u, ~u_input.a.x));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1291f * _wgslsmith_f_op_f32(abs(890f))), var_0.d.x, 575f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, global2.x, 1106f), vec3<f32>(global2.x, -995f, 770f), vec3<bool>(false, true, var_0.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, 1412f, -1453f))))), vec3<f32>(global2.x, _wgslsmith_div_f32(533f, var_0.b), var_0.d.x), var_0.a)));
    global0 = array<f32, 8>();
    var var_4 = ~(~(~0i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, -10724i, 14750i), select(vec4<i32>(19269i, -2147483647i, 43564i, -1i), vec4<i32>(-1i, -21978i, 0i, 1i), var_0.a)), ~select(vec4<i32>(0i, 2147483647i, -22271i, 2147483647i), vec4<i32>(-2147483647i, -13067i, 2147483647i, 1i), false)), ~(reverseBits(var_3) | (var_3 << (vec3<u32>(121234u, u_input.a.x, var_2) % vec3<u32>(32u)))) & reverseBits(var_3), ~(~(~vec4<u32>(var_0.c, var_0.e, var_2, var_2))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~var_3.xx, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(41217u, var_0.c))), var_3.x, ~(~13838u), ~_wgslsmith_mult_u32(u_input.a.x, 52030u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -1013f, 522f) - vec4<f32>(global2.x, 1084f, global2.x, var_0.b))), vec4<f32>(-316f, 1111f, _wgslsmith_f_op_f32(1000f + var_0.d.x), _wgslsmith_f_op_f32(-var_0.b)))), abs(u_input.a.x));
}

