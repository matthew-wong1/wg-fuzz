struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(28920u, 23716u, 0u, 4294967295u)), Struct_1(vec4<u32>(27228u, 1u, 2175u, 14580u)), Struct_1(vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(347u, 74352u, 69670u, 1u)), Struct_1(vec4<u32>(54829u, 37159u, 1u, 1u)), Struct_1(vec4<u32>(22150u, 0u, 1u, 121200u)), Struct_1(vec4<u32>(0u, 1u, 17504u, 4294967295u)), Struct_1(vec4<u32>(41801u, 4294967295u, 37930u, 52583u)), Struct_1(vec4<u32>(28222u, 28804u, 69317u, 52833u)), Struct_1(vec4<u32>(73817u, 4294967295u, 7701u, 1u)), Struct_1(vec4<u32>(69837u, 0u, 44289u, 1u)), Struct_1(vec4<u32>(4294967295u, 7947u, 100248u, 0u)), Struct_1(vec4<u32>(94443u, 59335u, 39118u, 89395u)), Struct_1(vec4<u32>(27204u, 9588u, 0u, 65043u)), Struct_1(vec4<u32>(4294967295u, 27417u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 17310u, 11201u, 8696u)), Struct_1(vec4<u32>(4294967295u, 117945u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(30502u, 4294967295u, 1u, 48529u)), Struct_1(vec4<u32>(4294967295u, 247u, 0u, 20203u)));

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-891f)), -834f, 1053f, 548f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 211f, 687f, -566f) + vec4<f32>(global1.x, global1.x, -1000f, -1000f))))))));
    let var_1 = all(select(vec4<bool>(var_0, any(vec2<bool>(var_0, false)), global1.x <= _wgslsmith_f_op_f32(global1.x - global1.x), false), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, false, var_0, var_0), var_0), !vec4<bool>(var_0, true, false, true)), select(!vec4<bool>(true, var_0, false, var_0), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, true), false), !var_0), select(vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(true, var_0, false, false), !vec4<bool>(false, var_0, var_0, var_0))), vec4<bool>(!all(vec4<bool>(var_0, var_0, false, true)), var_0, -14108i >= _wgslsmith_add_i32(17401i, u_input.a), all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(false, var_0, true))))));
    global0 = array<Struct_1, 20>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(select(-295f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -871f)))), true)));
    return -(_wgslsmith_mod_vec4_i32(countOneBits(abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, 13259i)) & -vec4<i32>(-9462i, -52163i ^ u_input.a, 0i, u_input.a << (13157u % 32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global0 = array<Struct_1, 20>();
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, -1289f, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1160f, 166f, global1.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-174f, -630f, -1137f, -257f)))))), vec4<f32>(global1.x, 1000f, _wgslsmith_div_f32(982f, -3116f), _wgslsmith_f_op_f32(global1.x - -1689f))))));
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-(2147483647i >> (u_input.d % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, 2147483647i), ~(-30783i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, 7486i, 24058i), func_3(arg_1.a.x)), _wgslsmith_add_i32(-1i, -8728i)), firstTrailingBit(vec4<i32>(-69752i, arg_2 << (0u % 32u), ~arg_0.x, ~arg_0.x))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = Struct_2(0i, _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(floor(global1.x)))));
    return Struct_3(var_0, !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), any(vec2<bool>(false, true))), vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, false)), true)), global0[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(-38469i, u_input.a, 6991i)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 57623i, -2147483647i), vec3<i32>(97944i, 581i, arg_2)), ~vec3<i32>(arg_0.x, -1i, 52000i))), firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(arg_0.x, 1i)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_0.yz;
    let var_1 = Struct_1(arg_1.c.a);
    var var_2 = var_1;
    global0 = array<Struct_1, 20>();
    var var_3 = select(~abs(arg_1.c.a), vec4<u32>(16930u, 33245u, ~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(arg_1.c.a, var_1.a, arg_1.b.x), min(vec4<u32>(58485u, 9179u, var_1.a.x, var_2.a.x), vec4<u32>(0u, arg_0.x, var_0.x, var_1.a.x))), ~vec4<u32>(1u, 74443u, 50629u, u_input.b))), select(!vec4<bool>(all(vec2<bool>(false, arg_1.b.x)), false, arg_1.b.x, true), arg_1.b, !vec4<bool>(50645u < arg_1.c.a.x, arg_1.b.x, false, select(arg_1.b.x, arg_1.b.x, true))));
    return arg_1.a;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a == 34701i;
    var var_1 = Struct_3(func_4(~((vec3<u32>(23215u, 0u, u_input.d) << (vec3<u32>(u_input.b, 10939u, 51901u) % vec3<u32>(32u))) << (firstTrailingBit(vec3<u32>(1u, u_input.c.x, 11352u)) % vec3<u32>(32u))), func_2(vec2<i32>(48869i, _wgslsmith_mult_i32(u_input.a, 50936i)), Struct_1(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.b)), -47568i)), select(!(!vec4<bool>(var_0, var_0, var_0, var_0)), func_2(countOneBits(~vec2<i32>(2147483647i, u_input.a)), func_2(-vec2<i32>(-2147483647i, u_input.a), global0[_wgslsmith_index_u32(min(18789u, u_input.c.x), 20u)], -u_input.a).c, u_input.a).b, true), Struct_1(~min(~vec4<u32>(u_input.d, u_input.d, 97092u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.d, 48287u, 34761u), vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 0u)))), select(-u_input.a, -56632i, var_0 | all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0)))));
    let var_2 = var_0;
    var var_3 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_4 = ~var_1.c.a;
    return Struct_2(_wgslsmith_mod_i32(2147483647i, u_input.a ^ 1i), _wgslsmith_f_op_f32(-global1.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2((_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, arg_2.d, arg_2.a.a), vec3<i32>(-2147483647i, 20252i, arg_2.d)), arg_2.a.a) | 2147483647i) << (min(96688u, arg_2.c.a.x) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -988f));
    return Struct_3(func_4(_wgslsmith_mod_vec3_u32(min(arg_0.c.a.wzx, ~arg_0.c.a.wyw), ~(arg_0.c.a.wyy << (vec3<u32>(arg_2.c.a.x, u_input.b, arg_1.x) % vec3<u32>(32u)))), Struct_3(arg_0.a, !arg_2.b, global0[_wgslsmith_index_u32(arg_2.c.a.x, 20u)], -1i)), func_2(max((vec2<i32>(arg_0.a.a, arg_0.d) << (arg_0.c.a.yz % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_2.a.a, u_input.a)), vec2<i32>(-73031i, -12083i) | select(vec2<i32>(arg_2.d, 2147483647i), vec2<i32>(-28980i, arg_0.d), vec2<bool>(true, arg_2.b.x))), func_2(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-22810i, arg_2.d), vec2<i32>(u_input.a, arg_2.d)), countOneBits(vec2<i32>(arg_0.d, u_input.a)), arg_0.b.x), func_2(~vec2<i32>(-287i, arg_2.d), func_2(vec2<i32>(32812i, 2294i), Struct_1(arg_0.c.a), arg_0.d).c, arg_2.a.a).c, -17934i).c, -9789i).b, arg_0.c, ~var_0.a);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_2(vec2<i32>(arg_1.d, arg_0.d), global0[_wgslsmith_index_u32(u_input.b, 20u)], arg_1.a.a).a;
    var var_1 = func_2(-vec2<i32>(firstLeadingBit(i32(-1i) * -30943i), 0i), func_5(func_5(Struct_3(func_2(vec2<i32>(arg_1.a.a, var_0.a), Struct_1(arg_1.c.a), 1i).a, arg_0.b, func_2(vec2<i32>(2147483647i, -2147483647i), Struct_1(vec4<u32>(u_input.d, 1u, 28587u, arg_1.c.a.x)), var_0.a).c, 2147483647i), reverseBits(_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(4294967295u, u_input.d))), arg_0), ~_wgslsmith_mod_vec2_u32(reverseBits(arg_0.c.a.wy), arg_1.c.a.yz), Struct_3(func_2(select(vec2<i32>(var_0.a, arg_0.a.a), vec2<i32>(-1i, arg_1.a.a), vec2<bool>(false, arg_0.b.x)), Struct_1(vec4<u32>(arg_1.c.a.x, arg_0.c.a.x, arg_1.c.a.x, u_input.d)), 41966i).a, select(func_5(arg_0, vec2<u32>(4294967295u, 8103u), Struct_3(arg_0.a, arg_0.b, Struct_1(vec4<u32>(arg_1.c.a.x, 62662u, arg_0.c.a.x, arg_1.c.a.x)), arg_1.d)).b, arg_1.b, vec4<bool>(true, false, arg_1.b.x, arg_1.b.x)), arg_1.c, 2328i)).c, -49448i);
    let var_2 = var_1.c.a;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2241f), arg_0.a.b, _wgslsmith_f_op_f32(select(176f, -923f, any(arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b))))));
    let var_3 = u_input.b;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.xzz)), global1.zzw))));
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1000f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-918f * var_0.x), global1.x, true)))), -368f, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))));
    var var_1 = func_6(func_5(Struct_3(func_1(), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), Struct_1(~vec4<u32>(38565u, u_input.d, u_input.b, 4294967295u)), ~18004i | u_input.a), ~vec2<u32>(~u_input.d, u_input.d), Struct_3(Struct_2(-8126i, 438f), vec4<bool>(true, false, all(vec4<bool>(true, true, false, false)), true), Struct_1(func_2(vec2<i32>(0i, 0i), global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a).c.a), -2147483647i)), Struct_3(func_1(), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), (37563u <= u_input.c.x) | select(false, true, false)), func_2(~_wgslsmith_clamp_vec2_i32(vec2<i32>(62122i, u_input.a), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -1i)), func_5(Struct_3(Struct_2(u_input.a, var_0.x), vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 0u)), 2147483647i), min(vec2<u32>(u_input.d, 37580u), vec2<u32>(0u, u_input.b)), func_5(Struct_3(Struct_2(1i, -1000f), vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(u_input.d, 20u)], -1i), u_input.c, Struct_3(Struct_2(u_input.a, -1750f), vec4<bool>(true, true, true, false), Struct_1(vec4<u32>(40855u, u_input.b, u_input.c.x, 1u)), u_input.a))).c, -2147483647i).c, u_input.a));
    let var_2 = Struct_2(u_input.a, _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = _wgslsmith_mod_vec2_i32(abs(max(abs(~vec2<i32>(1i, u_input.a)), vec2<i32>(1i, 1i))), ((vec2<i32>(-1i) * -vec2<i32>(-17460i, -38677i)) << (~(vec2<u32>(4294967295u, 1u) | vec2<u32>(31580u, var_1.a.x)) % vec2<u32>(32u))) | ~vec2<i32>(-var_2.a, 1i));
    let var_4 = var_2;
    var var_5 = -(~u_input.a);
    global0 = array<Struct_1, 20>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, var_4.b, var_0.x, 1035f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, var_4.b, var_4.b, -309f))), vec4<bool>(true, false, true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-20804i, -25416i)), vec2<i32>(-35107i, var_3.x)), vec2<i32>(2147483647i, reverseBits(u_input.a))), ~41238i, _wgslsmith_f_op_f32(var_0.x + -859f), -1572f);
}

