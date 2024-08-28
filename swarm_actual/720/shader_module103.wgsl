struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(48897u, 0u), vec2<u32>(4294967295u, 32874u), vec2<u32>(1u, 6705u), vec2<u32>(1u, 59465u), vec2<u32>(56306u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(70321u, 1u), vec2<u32>(66437u, 1u), vec2<u32>(4294967295u, 44612u), vec2<u32>(102916u, 42540u), vec2<u32>(0u, 1u), vec2<u32>(1u, 21969u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(41292u, 79079u), vec2<u32>(4294967295u, 6426u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 22678u), vec2<u32>(1u, 0u), vec2<u32>(72525u, 63650u), vec2<u32>(0u, 77301u), vec2<u32>(1u, 1u));

var<private> global2: array<bool, 12> = array<bool, 12>(false, true, true, false, true, false, true, true, false, true, false, false);

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(0u, Struct_1(vec2<bool>(false, false), -1185f), vec3<u32>(56149u, 6450u, 1u), Struct_1(vec2<bool>(true, false), -226f), Struct_1(vec2<bool>(true, false), 243f)), Struct_2(1u, Struct_1(vec2<bool>(true, true), -181f), vec3<u32>(12474u, 1487u, 0u), Struct_1(vec2<bool>(true, false), -247f), Struct_1(vec2<bool>(false, true), 655f)), Struct_2(11989u, Struct_1(vec2<bool>(false, true), -331f), vec3<u32>(4294967295u, 31779u, 82734u), Struct_1(vec2<bool>(true, false), 987f), Struct_1(vec2<bool>(true, true), -1025f)), Struct_2(0u, Struct_1(vec2<bool>(true, true), -1270f), vec3<u32>(53517u, 1u, 4294967295u), Struct_1(vec2<bool>(false, true), 675f), Struct_1(vec2<bool>(false, true), 470f)), Struct_2(0u, Struct_1(vec2<bool>(true, false), -967f), vec3<u32>(111730u, 0u, 49686u), Struct_1(vec2<bool>(true, false), 346f), Struct_1(vec2<bool>(true, false), -591f)), Struct_2(4294967295u, Struct_1(vec2<bool>(true, true), 1360f), vec3<u32>(35609u, 60979u, 0u), Struct_1(vec2<bool>(true, true), 888f), Struct_1(vec2<bool>(true, false), -920f)), Struct_2(38089u, Struct_1(vec2<bool>(false, false), -1325f), vec3<u32>(16877u, 1u, 0u), Struct_1(vec2<bool>(false, false), 782f), Struct_1(vec2<bool>(false, true), 2124f)), Struct_2(30000u, Struct_1(vec2<bool>(false, true), 356f), vec3<u32>(4294967295u, 4294967295u, 16646u), Struct_1(vec2<bool>(true, true), -1213f), Struct_1(vec2<bool>(false, false), 1000f)), Struct_2(110636u, Struct_1(vec2<bool>(false, false), -1111f), vec3<u32>(0u, 34985u, 1u), Struct_1(vec2<bool>(false, true), 1000f), Struct_1(vec2<bool>(true, false), -161f)), Struct_2(4294967295u, Struct_1(vec2<bool>(false, true), -564f), vec3<u32>(1230u, 1u, 0u), Struct_1(vec2<bool>(false, true), 165f), Struct_1(vec2<bool>(false, true), 293f)), Struct_2(6370u, Struct_1(vec2<bool>(true, false), -524f), vec3<u32>(43876u, 4294967295u, 85075u), Struct_1(vec2<bool>(true, true), -982f), Struct_1(vec2<bool>(true, false), -458f)), Struct_2(1u, Struct_1(vec2<bool>(false, false), -968f), vec3<u32>(46244u, 4294967295u, 1u), Struct_1(vec2<bool>(true, false), -791f), Struct_1(vec2<bool>(false, false), -409f)), Struct_2(4294967295u, Struct_1(vec2<bool>(true, false), 1124f), vec3<u32>(8064u, 4294967295u, 21865u), Struct_1(vec2<bool>(false, true), -1000f), Struct_1(vec2<bool>(false, true), 470f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    global1 = array<vec2<u32>, 22>();
    global0 = array<i32, 23>();
    var var_0 = Struct_1(!arg_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(679f, _wgslsmith_f_op_f32(abs(arg_0.d.b)), false))), arg_0.b.b));
    var_0 = Struct_1(select(select(!select(arg_0.e.a, arg_0.d.a, arg_0.b.a), select(!vec2<bool>(global2[_wgslsmith_index_u32(5043u, 12u)], arg_0.d.a.x), !arg_0.e.a, select(vec2<bool>(global2[_wgslsmith_index_u32(9820u, 12u)], true), var_0.a, vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)]))), all(vec2<bool>(true, true))), !select(arg_0.e.a, var_0.a, !vec2<bool>(arg_0.e.a.x, false)), select(!(!arg_0.e.a), arg_0.b.a, arg_0.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_0.b)))));
    global0 = array<i32, 23>();
    return -177f;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = true;
    global2 = array<bool, 12>();
    let var_1 = !(!(!(!(!vec4<bool>(false, false, arg_1.a.a.x, arg_1.a.a.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1130f, arg_1.d.b, arg_1.a.b, arg_1.a.b) + vec4<f32>(arg_1.d.b, -2296f, -506f, -312f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1519f, -500f, arg_1.d.b, 1161f))), var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1685f)), _wgslsmith_f_op_f32(-arg_1.a.b), arg_1.d.b, arg_1.d.b) - vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.d.b, arg_1.a.b)), 361f, _wgslsmith_f_op_f32(-arg_1.d.b), arg_1.a.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-313f * arg_1.d.b), -1346f, _wgslsmith_f_op_f32(floor(1415f)), _wgslsmith_f_op_f32(arg_1.d.b - arg_1.a.b)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1426f, arg_1.d.b, 735f, -360f))))))));
    var var_3 = var_1.wz;
    return !select(vec4<bool>(select(!var_3.x, var_3.x, true), !any(vec3<bool>(false, arg_1.d.a.x, true)), var_1.x, any(var_1) & (var_2.x > var_2.x)), select(!vec4<bool>(false, var_3.x, var_3.x, true), select(vec4<bool>(false, false, var_3.x, arg_1.d.a.x), var_1, var_3.x), true), vec4<bool>(true, all(var_1.zx), true, true));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_3 {
    let var_0 = select(~(-abs(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, arg_1, 0i)))), (_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_1, 1872i, 0i, 37559i), vec4<i32>(16454i, 20402i, -14224i, global0[_wgslsmith_index_u32(48937u, 23u)]), false), ~vec4<i32>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 10190i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])) >> (~(vec4<u32>(0u, 90794u, u_input.a.x, 3120u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) | -select(select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -14911i, arg_1, -2147483647i), vec4<i32>(-1i, -21202i, 6991i, 69822i), arg_0), select(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -28389i, 7078i), vec4<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, false, arg_0, true)), true), func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(1u), ~u_input.a.x, 1u, u_input.a.x), ~select(vec4<u32>(u_input.a.x, u_input.a.x, 5107u, 1u), vec4<u32>(u_input.a.x, 50875u, 0u, u_input.a.x), false)), Struct_3(Struct_1(select(vec2<bool>(true, global2[_wgslsmith_index_u32(1361u, 12u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(12289u, 12u)], arg_0)), _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(4294967295u, 13u)], vec4<f32>(2214f, 390f, 260f, -806f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(0u, 23u)]), min(vec2<i32>(-28299i, 0i), vec2<i32>(1i, 26542i))), abs(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] << (0u % 32u)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(19148u, 12u)], global2[_wgslsmith_index_u32(26043u, 12u)]), 269f))));
    var var_1 = (u_input.a.x & 0u) >= 0u;
    global2 = array<bool, 12>();
    var_1 = true;
    let var_2 = vec2<f32>(-118f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-513f, -1644f, false))))), _wgslsmith_f_op_f32(-385f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - 1866f)))));
    return Struct_3(Struct_1(select(vec2<bool>(all(vec3<bool>(arg_0, global2[_wgslsmith_index_u32(40830u, 12u)], true)), func_4(vec4<u32>(11843u, 1u, u_input.a.x, u_input.a.x), Struct_3(Struct_1(vec2<bool>(true, false), var_2.x), -2147483647i, var_0.x, Struct_1(vec2<bool>(true, arg_0), var_2.x))).x), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.x))))), arg_1, -_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(0i, 1i)), ~var_0.ww << (min(u_input.a, global1[_wgslsmith_index_u32(54441u, 22u)]) % vec2<u32>(32u))), Struct_1(vec2<bool>(arg_0, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(trunc(var_2.x))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 0u), 13u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(55454u, var_0.a >> (countOneBits(var_0.c.x) % 32u)) & 10683u, 23u)] & -2147483647i;
    let var_2 = Struct_3(Struct_1(select(vec2<bool>(arg_0.d.a.x & true, true), vec2<bool>(true, u_input.a.x >= u_input.a.x), func_2(false & global2[_wgslsmith_index_u32(4294967295u, 12u)], var_1).a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f + _wgslsmith_div_f32(988f, -1586f)))), func_2(true, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.b, global0[_wgslsmith_index_u32(0u, 23u)], var_1, arg_0.b), -vec4<i32>(var_1, arg_0.b, -86875i, 8929i), !arg_0.a.a.x), _wgslsmith_div_vec4_i32(~vec4<i32>(var_1, global0[_wgslsmith_index_u32(var_0.a, 23u)], var_1, 0i), ~vec4<i32>(32625i, -2147483647i, global0[_wgslsmith_index_u32(21833u, 23u)], 1i)))).c, arg_0.b, arg_0.a);
    let var_3 = ~(~vec2<u32>(u_input.a.x >> (34124u % 32u), 4294967295u));
    var var_4 = vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(4294967295u), _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(~var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c), 0u))), 12u)], !var_0.e.a.x, (true | all(vec2<bool>(false, false))) || all(vec3<bool>(arg_0.a.a.x, true, true)));
    return Struct_2(4294967295u, func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1017f, 511f, true)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~arg_0.c).d, var_0.c, func_2(func_2(arg_0.a.a.x, _wgslsmith_clamp_i32(~var_1, -2147483647i, max(global0[_wgslsmith_index_u32(var_0.a, 23u)], var_1))).d.a.x, 1i).d, Struct_1(!select(select(vec2<bool>(false, var_2.a.a.x), vec2<bool>(false, var_2.a.a.x), vec2<bool>(var_0.d.a.x, var_2.a.a.x)), arg_0.a.a, !vec2<bool>(var_2.d.a.x, global2[_wgslsmith_index_u32(1u, 12u)])), var_2.a.b));
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_2, 13>();
    let var_0 = func_5(func_2(true, ~global0[_wgslsmith_index_u32(firstTrailingBit(~28155u), 23u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) - _wgslsmith_f_op_f32(-198f + 561f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f - -379f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -288f, 776f) + vec3<f32>(2368f, -223f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-581f, -162f, 302f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(246f, 947f, 497f), vec3<f32>(339f, 556f, -1465f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -219f, -689f)))))));
    global0 = array<i32, 23>();
    return Struct_2(0u, func_5(Struct_3(func_5(func_2(false, global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(672f, var_0.d.b))), vec3<f32>(-877f, -876f, -727f)).e, ~29663i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.e), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(419f * var_0.d.b), 1f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.d.b)), _wgslsmith_f_op_f32(-var_0.e.b), _wgslsmith_f_op_f32(-1969f * -573f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.d.b, var_0.b.b) + vec3<f32>(var_0.e.b, var_0.d.b, var_0.d.b))))).d, countOneBits(_wgslsmith_add_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 64155u, var_0.a), var_0.c), ~var_0.c), var_0.c)), func_5(Struct_3(var_0.d, global0[_wgslsmith_index_u32(var_0.c.x, 23u)], i32(-1i) * -65366i, func_2(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i & global0[_wgslsmith_index_u32(u_input.a.x, 23u)]).d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.b, var_0.e.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, var_0.e.b, var_0.b.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, var_0.e.b, -829f) * vec3<f32>(var_0.e.b, -1029f, -1736f))))).e, Struct_1(vec2<bool>(!func_5(Struct_3(var_0.e, global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(var_0.b.a, var_0.b.b)), vec2<f32>(-909f, var_0.d.b), vec3<f32>(-792f, var_0.b.b, -306f)).b.a.x, !all(vec3<bool>(true, true, true))), -802f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let var_0 = func_1();
    let var_1 = -(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)]), vec2<i32>(-16865i, global0[_wgslsmith_index_u32(var_0.a, 23u)])), -2147483647i, firstLeadingBit(global0[_wgslsmith_index_u32(0u, 23u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 23u)]), ~abs(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 2147483647i)), select(-vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(34184u, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(var_0.a, 23u)], -42448i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) ^ vec4<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 14288i), func_4(vec4<u32>(u_input.a.x, u_input.a.x, var_0.c.x, 14596u), Struct_3(var_0.b, 2147483647i, -1774i, Struct_1(var_0.d.a, var_0.d.b))))) << (abs(~(~vec4<u32>(var_0.a, var_0.a, 66796u, u_input.a.x))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-func_2(var_0.b.a.x, firstTrailingBit(0i)).a.b);
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(func_2(!var_0.b.a.x, var_1.x).b, 1i, var_1.x), ~_wgslsmith_mod_u32((114131u ^ u_input.a.x) << (_wgslsmith_clamp_u32(var_0.c.x, var_0.a, 1u) % 32u), 0u), vec4<i32>(var_1.x, -16135i, var_1.x, -(~35650i)) << (_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0.c.x, 33402u, var_0.a, 7576u) ^ vec4<u32>(3017u, 1u, u_input.a.x, 1u)), ~(vec4<u32>(77721u, var_0.a, u_input.a.x, 71433u) ^ vec4<u32>(var_0.a, 133u, 35724u, u_input.a.x))) % vec4<u32>(32u)), ~var_1.x);
}

