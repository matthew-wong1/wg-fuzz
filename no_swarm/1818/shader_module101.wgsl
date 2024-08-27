struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: Struct_3,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(vec3<u32>(27167u, 78144u, 128589u), Struct_4(vec4<u32>(1u, 1u, 17004u, 29281u), Struct_2(vec3<f32>(-957f, 337f, -125f), -2079f, vec4<u32>(34412u, 43606u, 32040u, 12924u), vec2<f32>(-139f, -584f), Struct_1(vec3<u32>(1u, 5158u, 0u), 13465u, vec2<u32>(1u, 0u), true, 220i)), 11824u), Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(106f, -1303f, 519f), -647f, vec4<u32>(25050u, 0u, 1u, 1u), vec2<f32>(-201f, 879f), Struct_1(vec3<u32>(1u, 58280u, 1u), 6613u, vec2<u32>(34142u, 1u), false, 1i)), -862f), Struct_2(vec3<f32>(-959f, 1124f, 1000f), 430f, vec4<u32>(4294967295u, 32476u, 34541u, 32041u), vec2<f32>(-1536f, 564f), Struct_1(vec3<u32>(14796u, 0u, 33311u), 0u, vec2<u32>(4294967295u, 69885u), false, 13867i)), 84194u), Struct_5(vec3<u32>(1u, 45286u, 0u), Struct_4(vec4<u32>(78430u, 5115u, 4294967295u, 4294967295u), Struct_2(vec3<f32>(1767f, -1229f, -1381f), 263f, vec4<u32>(35743u, 0u, 19919u, 4294967295u), vec2<f32>(473f, 997f), Struct_1(vec3<u32>(23727u, 23529u, 9459u), 4294967295u, vec2<u32>(1u, 69168u), true, -1i)), 4294967295u), Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(587f, 911f, 352f), -766f, vec4<u32>(4294967295u, 4294967295u, 36122u, 34541u), vec2<f32>(-298f, -421f), Struct_1(vec3<u32>(4294967295u, 17939u, 28479u), 21357u, vec2<u32>(12378u, 5111u), true, 1i)), -813f), Struct_2(vec3<f32>(-1237f, 1528f, 567f), 128f, vec4<u32>(4294967295u, 2461u, 4294967295u, 4294967295u), vec2<f32>(1000f, 2841f), Struct_1(vec3<u32>(67271u, 33066u, 4294967295u), 63209u, vec2<u32>(1u, 17908u), true, i32(-2147483648))), 22859u));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(87745u, 4294967295u, 50552u), 68928u, vec2<u32>(1u, 4294967295u), true, 2147483647i);

var<private> global2: array<vec2<f32>, 2>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(-114030i ^ u_input.b.x, -11814i >> (0u % 32u), _wgslsmith_mult_i32(global1.e, u_input.c.x)) ^ select(abs(u_input.c), vec3<i32>(global1.e, u_input.a.x, u_input.c.x), select(vec3<bool>(arg_2, false, global1.d), vec3<bool>(false, false, true), arg_2)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.e ^ global1.e, firstTrailingBit(u_input.a.x), reverseBits(global1.e)), u_input.c)), ~(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(12850i, 2147483647i, u_input.b.x)), ~u_input.a, ~u_input.c)));
    var var_1 = !select(!vec3<bool>(!global1.d, !global1.d, true), select(!(!vec3<bool>(global1.d, arg_2, global1.d)), vec3<bool>(!arg_2, !arg_2, any(vec3<bool>(true, true, true))), select(!vec3<bool>(true, global1.d, global1.d), vec3<bool>(global1.d, arg_2, arg_2), global1.d)), vec3<bool>(false, false, _wgslsmith_f_op_f32(arg_1 - -1000f) != arg_1));
    var var_2 = _wgslsmith_div_u32(3523u, ~25866u);
    let var_3 = _wgslsmith_clamp_u32(arg_0, 1u, ~(select(_wgslsmith_mod_u32(1u, arg_0), 1u, arg_1 == arg_1) & arg_3.x));
    let var_4 = Struct_3(var_1.xy, Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(184f, arg_1, arg_1))))), arg_1, firstTrailingBit(vec4<u32>(36230u, var_3 >> (42574u % 32u), 1u, _wgslsmith_add_u32(var_3, arg_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), _wgslsmith_f_op_f32(arg_1 - 174f))), Struct_1(select(arg_3, arg_3, arg_2) & _wgslsmith_div_vec3_u32(arg_3, vec3<u32>(0u, arg_3.x, global1.a.x)), _wgslsmith_mult_u32(countOneBits(71347u), arg_0 << (arg_3.x % 32u)), reverseBits(~vec2<u32>(arg_0, var_3)), !var_1.x, 0i)), -497f);
    return ~min(max(vec3<u32>(firstTrailingBit(1u), abs(19655u), 107663u), arg_3), ~firstLeadingBit(vec3<u32>(1u, 1833u, var_4.b.e.a.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = false;
    global2 = array<vec2<f32>, 2>();
    var var_1 = select(vec2<bool>(arg_1.d, false), vec2<bool>(arg_1.d, !global1.d), vec2<bool>(var_0, true));
    let var_2 = arg_1.e;
    global1 = Struct_1(~select(~(arg_1.a | vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.c.x, global1.c.x), func_3(arg_1.c.x, -1134f, true, vec3<u32>(64897u, 7809u, 1u))), vec3<bool>(arg_1.d && var_0, !global1.d, false)), ~(~global1.b & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_2, arg_2)), arg_1.a.xy)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.c.x, arg_1.b), 4294967295u | global1.a.x)), global1.d, i32(-1i) * -(~(~(-17773i))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    let var_1 = 34926u;
    global2 = array<vec2<f32>, 2>();
    global2 = array<vec2<f32>, 2>();
    global2 = array<vec2<f32>, 2>();
    return -_wgslsmith_sub_i32(i32(-1i) * -64609i, u_input.c.x);
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec4_i32(-select(vec4<i32>(countOneBits(global1.e), _wgslsmith_div_i32(-33504i, -6412i), -1i, _wgslsmith_clamp_i32(u_input.c.x, 30959i, global1.e)), -vec4<i32>(-2147483647i, -6866i, u_input.c.x, -2147483647i) | -vec4<i32>(global1.e, global1.e, 37541i, u_input.b.x), vec4<bool>(false, all(vec3<bool>(global1.d, true, true)), true, true)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, -22870i, -1i), vec4<i32>(u_input.a.x, 0i, global1.e, global1.e) ^ vec4<i32>(global1.e, global1.e, global1.e, global1.e)) & vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.a.xz), u_input.a.x), -min(0i, -2147483647i), global1.e, 2147483647i));
    let var_1 = vec2<i32>(-1i, func_4(func_2(select(_wgslsmith_mod_vec3_i32(var_0.ywx, vec3<i32>(-1438i, 80780i, -14594i)), vec3<i32>(var_0.x, var_0.x, -2147483647i), !global1.d), Struct_1(global1.a, _wgslsmith_sub_u32(global1.b, global1.c.x), global1.a.xy, select(true, false, false), global1.e), global1.c.x), Struct_3(vec2<bool>(select(global1.d, false, global1.d), true), Struct_2(vec3<f32>(-1448f, -509f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -405f), ~vec4<u32>(global1.b, 0u, 4294967295u, global1.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6520u, global1.b), vec2<u32>(global1.c.x, global1.c.x)), 2u)], func_2(u_input.a, Struct_1(global1.a, 4294967295u, vec2<u32>(16246u, 0u), false, 1i), 1u)), 1167f)));
    let var_2 = _wgslsmith_dot_vec3_u32(global1.a | global1.a, global1.a);
    var var_3 = _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global1.a, firstLeadingBit(vec3<u32>(9214u, var_2, global1.a.x))), vec3<u32>(global1.c.x, global1.c.x, ~56508u)), 1u);
    global2 = array<vec2<f32>, 2>();
    return vec3<i32>(abs(-1i), ~2147483647i, ~(-u_input.c.x));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32) -> vec4<u32> {
    var var_0 = vec2<bool>(global1.d, true);
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    var var_1 = func_2(vec3<i32>(_wgslsmith_sub_i32(~reverseBits(-32868i), i32(-1i) * -17006i), u_input.a.x, countOneBits(71i)), Struct_1(~max(~vec3<u32>(2741u, global1.b, 92967u), vec3<u32>(15335u, global1.b, 1u)), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(global1.a.x, 0u, global1.a.x), global1.a), ~firstLeadingBit(vec3<u32>(1u, global1.a.x, 34757u))), vec2<u32>(1u & firstTrailingBit(global1.b), global1.a.x), true, -14624i), _wgslsmith_mult_u32(92677u, countOneBits(0u)));
    global1 = Struct_1(min(var_1.a, global1.a), _wgslsmith_dot_vec2_u32(abs(max(var_1.c, global1.a.yz)), abs(~(~var_1.c))), var_1.a.zy << (firstLeadingBit(vec2<u32>(0u, global1.a.x) ^ (global1.c << (vec2<u32>(global1.c.x, 5042u) % vec2<u32>(32u)))) % vec2<u32>(32u)), global1.d | any(vec3<bool>(any(vec2<bool>(true, arg_0)), true, false)), _wgslsmith_sub_i32(2147483647i, max(-37777i << (1u % 32u), select(arg_1, -1i, true) >> (firstLeadingBit(global1.a.x) % 32u))));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(global1.c.x) >> (var_1.a.x % 32u), 11712u, var_1.a.x, global1.a.x), firstTrailingBit(select(vec4<u32>(global1.a.x, global1.c.x, global1.b, 9063u), ~vec4<u32>(0u, var_1.c.x, 72860u, 4294967295u), var_0.x)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = var_0.c;
    global1 = arg_1.b.e;
    let var_2 = ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 25429i, arg_1.b.e.e), vec3<i32>(4256i, 30128i, 48943i))) | reverseBits(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, 2147483647i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.e.e, u_input.a.x, -6982i), vec3<i32>(arg_1.b.e.e, arg_1.b.e.e, -2147483647i))), arg_2.b.e.e));
    let var_3 = arg_0.wyz;
    return vec3<bool>(true, true && (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -298f))) > _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1513f, 900f)))), all(!(!(!vec4<bool>(arg_2.b.e.d, false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~func_5(global1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -40104i, global1.e), func_1()), -_wgslsmith_add_i32(u_input.c.x, u_input.b.x)), Struct_3(select(select(select(vec2<bool>(global1.d, global1.d), vec2<bool>(false, global1.d), global1.d), vec2<bool>(true, true), !vec2<bool>(false, global1.d)), select(!vec2<bool>(false, global1.d), vec2<bool>(global1.d, false), vec2<bool>(true, true)), vec2<bool>(global1.d, true)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-458f, -973f, 1464f)))), -914f, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.c.x, global1.b, 23774u), firstTrailingBit(vec4<u32>(40299u, global1.b, global1.a.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(global1.c.x, 2u)]))), Struct_1(~vec3<u32>(4294967295u, global1.a.x, 4294967295u), _wgslsmith_mult_u32(global1.b, global1.a.x), global1.c, func_2(u_input.c, Struct_1(vec3<u32>(0u, global1.b, 45571u), global1.b, global1.a.zx, global1.d, 64438i), 0u).d, 54936i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(591f, 978f, true))), -2023f))), Struct_4(~reverseBits(vec4<u32>(0u, 4294967295u, 11564u, 33447u)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, -622f, -888f) - vec3<f32>(1400f, 282f, 334f)) + vec3<f32>(-893f, -287f, -116f)), -123f, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 64540u, global1.b, 1u), vec4<u32>(global1.a.x, global1.c.x, 0u, 0u)), 111236u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(20593u, 44554u, global1.a.x, global1.b), vec4<u32>(global1.c.x, global1.c.x, 0u, global1.c.x))), global2[_wgslsmith_index_u32(~global1.c.x, 2u)], func_2(-vec3<i32>(global1.e, 0i, u_input.c.x), func_2(vec3<i32>(29417i, -1i, -10459i), Struct_1(global1.a, global1.a.x, vec2<u32>(global1.c.x, global1.a.x), false, -42606i), global1.a.x), _wgslsmith_add_u32(global1.b, global1.b))), ~global1.c.x));
    global2 = array<vec2<f32>, 2>();
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    let var_1 = abs(u_input.a.x);
    var var_2 = Struct_1(vec3<u32>(max(global1.c.x, 4294967295u), _wgslsmith_clamp_u32(min(1u, min(4294967295u, 9420u)), global1.a.x, _wgslsmith_mod_u32(global1.a.x, _wgslsmith_sub_u32(1u, global1.c.x))), global1.a.x), ~(~(global1.a.x >> (countOneBits(global1.c.x) % 32u))), vec2<u32>(global1.b, countOneBits(_wgslsmith_div_u32(global1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 35469u, 1u, 4294967295u), vec4<u32>(global1.a.x, 66929u, 19055u, global1.a.x))))), !var_0.x != false, -(min(-842i, 4030i) << (func_2(vec3<i32>(0i, -3958i, var_1), Struct_1(global1.a, 15294u, global1.a.yy, global1.d, u_input.b.x), 46960u).a.x % 32u)) >> (~_wgslsmith_dot_vec4_u32(min(vec4<u32>(global1.a.x, 27314u, 72936u, global1.a.x), vec4<u32>(global1.c.x, 56267u, global1.a.x, 38454u)), vec4<u32>(57425u, 1u, 0u, global1.a.x) | vec4<u32>(global1.a.x, 0u, 0u, 4294967295u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~((firstTrailingBit(vec3<u32>(0u, 1u, global1.c.x)) ^ vec3<u32>(global1.b, global1.b, var_2.c.x)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1.c.x, 59397u), vec3<u32>(9378u, 0u, var_2.b))), countOneBits(~(u_input.c ^ u_input.a)) & -(_wgslsmith_mult_vec3_i32(u_input.c, u_input.c) & -u_input.c), global1.e);
}

