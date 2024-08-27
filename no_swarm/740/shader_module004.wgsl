struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> bool {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_0 = -(~(reverseBits(_wgslsmith_mod_i32(-22608i, arg_0.x)) & (-32461i << (u_input.a % 32u))));
    return arg_1.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_3;
    var var_1 = arg_0.b.zx;
    return -(~vec4<i32>(_wgslsmith_clamp_i32(-1i, arg_0.a, 0i), 1i, select(firstLeadingBit(-407i), abs(global0.x), false & arg_0.c), _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.zz), vec2<i32>(-41260i, -1i))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    global0 = max(~(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.a, global0.x, -25122i, arg_1.a), firstLeadingBit(vec4<i32>(global0.x, arg_2.a.a, arg_1.a, arg_2.a.a))) & countOneBits(vec4<i32>(arg_2.a.a, -15798i, -1i, arg_1.a))), ~firstLeadingBit(-(vec4<i32>(27232i, arg_1.a, arg_2.a.a, -14317i) & vec4<i32>(-1i, arg_2.a.a, global0.x, -8642i))));
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-40125i, -31770i), i32(-1i) * -14221i, -31740i | global0.x), ~(~vec4<i32>(global0.x, 51248i, arg_1.a, arg_1.a))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, arg_1.a, arg_2.a.a, -2147483647i) << (_wgslsmith_add_vec4_u32(vec4<u32>(13705u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 19652u, 2267u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(78774i, _wgslsmith_div_i32(4107i, arg_2.a.a), ~global0.x, _wgslsmith_div_i32(arg_1.a, global0.x)))), vec4<i32>(-2147483647i, -1i, 1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(global0.xxy, global0.yzz)));
    var var_0 = _wgslsmith_add_u32(abs(countOneBits(abs(64880u))), u_input.a);
    let var_1 = !vec3<bool>(all(vec3<bool>(true, arg_2.a.d.x, true)), true | all(!vec3<bool>(arg_0, arg_0, arg_0)), false);
    global0 = func_4(Struct_1(1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(187f, -402f, -756f, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(-1355f, -1000f, arg_2.a.b.x, -180f), vec4<bool>(var_1.x, false, arg_0, arg_2.a.d.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 303f, arg_2.a.b.x, -1055f) - _wgslsmith_f_op_vec4_f32(arg_2.a.b - vec4<f32>(arg_2.a.b.x, -1177f, 577f, -120f)))), !all(var_1), select(vec2<bool>(arg_0, all(vec4<bool>(var_1.x, true, false, false))), select(vec2<bool>(true, true), arg_2.a.d, vec2<bool>(true, arg_2.a.d.x)), !(!arg_1.d))), ~(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(2573u, 1u, 4294967295u, u_input.a), vec4<u32>(47487u, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)))), vec4<u32>(u_input.a, ~4294967295u, 2657u, select(u_input.a, ~(99384u >> (u_input.a % 32u)), true && func_3(vec2<i32>(arg_1.a, -1i), Struct_2(arg_1), arg_2.a.c))), _wgslsmith_div_u32(0u, 4294967295u));
    return vec2<bool>(false, -1152f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2.a.b.x)))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global0 = vec4<i32>(~(~arg_1.x), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32((vec4<i32>(1i, arg_1.x, 10898i, 14193i) | vec4<i32>(arg_1.x, -40294i, arg_1.x, -1i)) >> ((vec4<u32>(u_input.a, arg_2, 4294967295u, 2487u) ^ vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_2)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-28276i, global0.x, 1i, arg_1.x) ^ vec4<i32>(-2147483647i, 31694i, -5158i, arg_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -45586i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, 29403i, arg_1.x, global0.x)))), (global0.x ^ 898i) | ((arg_1.x | -43731i) ^ (arg_1.x >> (u_input.a % 32u)))), ~global0.x, arg_1.x ^ 0i);
    global0 = countOneBits(select(vec4<i32>(-1i, arg_1.x & global0.x, _wgslsmith_mod_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), 1i), select(-vec4<i32>(arg_1.x, global0.x, arg_1.x, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(16820i, global0.x, -7791i, 1i), ~vec4<i32>(-2147483647i, 0i, arg_1.x, arg_1.x)), vec4<bool>(true, arg_0.x, arg_0.x | true, true)), all(vec3<bool>(all(arg_0), func_3(vec2<i32>(35707i, global0.x), global1[_wgslsmith_index_u32(19560u, 7u)], false), all(vec3<bool>(false, arg_0.x, false))))));
    var var_0 = Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2471f, -1000f, -548f, -451f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2362f, -520f, 1408f, 1128f)), vec4<bool>(arg_0.x, arg_0.x, true, false))) - vec4<f32>(_wgslsmith_f_op_f32(438f - -269f), _wgslsmith_f_op_f32(select(806f, 1544f, true)), _wgslsmith_f_op_f32(min(712f, 549f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_0.x, arg_0);
    var var_1 = vec2<u32>(~arg_2, _wgslsmith_sub_u32(~u_input.a, ~(u_input.a & 15615u))) & reverseBits(~(~vec2<u32>(25906u, 3297u) | reverseBits(vec2<u32>(arg_2, 56129u))));
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1204f + -2034f) - _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_0.c))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-318f)), _wgslsmith_div_f32(var_0.b.x, var_0.b.x)))), -2391f));
    return Struct_1(-(arg_1.x ^ _wgslsmith_clamp_i32(42371i, 1i, i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.b), !vec4<bool>(true, true, arg_0.x, var_0.d.x)))))), arg_0.x, vec2<bool>(var_1.x < (0u ^ (0u & u_input.a)), !func_2(true, Struct_1(arg_1.x, vec4<f32>(var_0.b.x, -205f, var_0.b.x, 233f), var_0.c, var_0.d), global1[_wgslsmith_index_u32(22334u, 7u)]).x));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = vec4<i32>(arg_2.x, ~select(-global0.x, 0i, arg_1.b.x <= -1414f), 2147483647i, arg_1.a | global0.x) >> ((~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(632u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 39809u), vec4<bool>(arg_1.c, false, arg_1.c, false)), vec4<u32>(20923u, u_input.a, u_input.a, 3684u), ~vec4<u32>(27726u, u_input.a, 1u, u_input.a)) >> (max(_wgslsmith_mult_vec4_u32(~vec4<u32>(3881u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 7559u) & vec4<u32>(u_input.a, 37391u, 1u, u_input.a)), vec4<u32>(0u, ~36139u, u_input.a, _wgslsmith_sub_u32(u_input.a, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = ~(~countOneBits(-arg_1.a));
    var var_1 = ~countOneBits(~(~vec3<u32>(17672u, 59787u, 47938u)));
    let var_2 = min(select(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(2147483647i, arg_2.x, arg_2.x, -1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, global0.x, arg_1.a, 0i), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, -29164i, -2147483647i, 23238i), abs(vec4<i32>(arg_2.x, global0.x, 1i, -80i)))), vec4<bool>(0u < max(u_input.a, 11587u), false, arg_1.c, all(vec3<bool>(true, arg_1.c, arg_1.c)))), firstTrailingBit(max(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -1i, -2147483647i, 9253i), ~vec4<i32>(global0.x, arg_2.x, global0.x, 0i)), ~reverseBits(vec4<i32>(global0.x, -9382i, arg_1.a, global0.x)))));
    let var_3 = Struct_2(arg_1);
    return Struct_1(~(-23239i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_3.a.b))), true, !vec2<bool>(_wgslsmith_add_i32(var_2.x, -2147483647i) > 36714i, true));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_2, 7>();
    let var_0 = func_6(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), func_5(func_2(arg_0.x || false, Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 606f, 744f, arg_1.x) * vec4<f32>(arg_1.x, -1000f, arg_1.x, arg_1.x)), arg_0.x, !vec2<bool>(arg_0.x, true)), global1[_wgslsmith_index_u32(min(~104612u, reverseBits(1u)), 7u)]), -select(abs(global0.xxx), reverseBits(global0.ywz), arg_0), 1u & u_input.a), vec3<i32>(global0.x >> (u_input.a % 32u), global0.x, global0.x));
    global1 = array<Struct_2, 7>();
    var var_1 = u_input.a;
    global1 = array<Struct_2, 7>();
    return Struct_2(var_0);
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    global0 = abs(vec4<i32>(global0.x, abs(_wgslsmith_div_i32(arg_0.a.a, min(34919i, 31760i))), _wgslsmith_div_i32(arg_0.a.a, -1i), global0.x));
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_1(-44589i, arg_0.a.b, func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f * _wgslsmith_f_op_f32(max(arg_0.a.b.x, arg_0.a.b.x)))), func_6(_wgslsmith_div_f32(-869f, arg_0.a.b.x), func_5(vec2<bool>(arg_0.a.c, false), -vec3<i32>(arg_0.a.a, -11507i, -2147483647i), u_input.a << (u_input.a % 32u)), min(global0.xwy, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.a, global0.x, global0.x), vec3<i32>(arg_0.a.a, -30625i, 9048i)))), global0.xxy).d.x, !(!(!arg_0.a.d)));
    global1 = array<Struct_2, 7>();
    var var_1 = 1u;
    return Struct_1(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.b.x)))) - vec4<f32>(var_0.b.x, arg_0.a.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(785f, var_0.b.x), 1000f)), _wgslsmith_f_op_f32(func_6(-271f, Struct_1(var_0.a, vec4<f32>(arg_0.a.b.x, -1299f, arg_0.a.b.x, -1834f), true, vec2<bool>(false, var_0.c)), global0.zww).b.x + _wgslsmith_div_f32(var_0.b.x, -355f)))), arg_0.a.d.x, !vec2<bool>(_wgslsmith_f_op_f32(min(arg_0.a.b.x, 1176f)) != var_0.b.x, !var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(-_wgslsmith_mod_vec4_i32(~vec4<i32>(41962i, global0.x, 4000i, -2147483647i), abs(vec4<i32>(-2147483647i, global0.x, -1i, 40819i))), vec4<i32>(28629i, global0.x, firstLeadingBit(_wgslsmith_mult_i32(2147483647i, 1i)), -(global0.x & -1i))) >> (vec4<u32>(15595u, ~abs(1u), u_input.a << (select(u_input.a, ~4294967295u, all(vec4<bool>(false, true, true, false))) % 32u), ~(~u_input.a) ^ ~(~u_input.a)) % vec4<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) - _wgslsmith_f_op_f32(round(-1453f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -115f))))));
    var var_1 = func_7(func_1(!vec3<bool>(any(vec4<bool>(true, false, false, false)), true, global0.x > -49165i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 319f, var_0)))));
    var_1 = Struct_1(_wgslsmith_clamp_i32(~func_6(_wgslsmith_f_op_f32(round(-1062f)), func_1(vec3<bool>(var_1.c, true, var_1.d.x), var_1.b.xwy).a, global0.zzw | vec3<i32>(var_1.a, 2147483647i, -19526i)).a, global0.x, -10903i << (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1983f, var_0, _wgslsmith_f_op_f32(ceil(var_1.b.x)), var_0)))), any(!(!(!var_1.d))), vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1134f)), _wgslsmith_f_op_f32(-1077f - -1000f), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1115f)))) * func_5(!vec2<bool>(var_1.c, any(vec3<bool>(var_1.d.x, var_1.c, false))), global0.xyz, u_input.a).b.x);
    let var_3 = 694f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_4(Struct_1(reverseBits(var_1.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3, -765f, 247f, 159f))), func_6(-891f, Struct_1(14670i, var_1.b, false, var_1.d), global0.www).c, vec2<bool>(var_1.d.x, false)), reverseBits(select(vec4<u32>(u_input.a, 1u, 46332u, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, 14669u), var_1.d.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)), u_input.a).x, min(global0.x, -1i)));
}

