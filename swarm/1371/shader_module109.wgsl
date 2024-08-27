struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(i32(-2147483648), true, vec4<bool>(false, true, false, true), -1265f, vec2<i32>(-21518i, -34944i)), Struct_1(17406i, true, vec4<bool>(true, true, false, true), 269f, vec2<i32>(1292i, 0i)), Struct_1(-17751i, false, vec4<bool>(false, false, true, true), 1530f, vec2<i32>(i32(-2147483648), 35077i)), Struct_1(1i, true, vec4<bool>(true, true, true, false), -1039f, vec2<i32>(-59963i, 1i)), Struct_1(28465i, true, vec4<bool>(true, false, false, false), 518f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(-46505i, false, vec4<bool>(true, true, true, false), 1247f, vec2<i32>(15799i, 5071i)), Struct_1(-1i, true, vec4<bool>(false, true, false, false), -788f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(1i, true, vec4<bool>(false, false, true, false), 131f, vec2<i32>(-1i, -33724i)), Struct_1(i32(-2147483648), false, vec4<bool>(true, true, false, true), -1000f, vec2<i32>(1i, -17153i)));

var<private> global1: array<Struct_3, 23>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(34927u, 89755u, 4294967295u), vec3<u32>(53493u, 4294967295u, 1u), vec3<u32>(1u, 0u, 35309u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(63243u, 50189u, 28550u), vec3<u32>(1u, 4294967295u, 8069u), vec3<u32>(19189u, 4294967295u, 57430u), vec3<u32>(0u, 1u, 0u), vec3<u32>(15475u, 119826u, 1u), vec3<u32>(5717u, 5220u, 0u), vec3<u32>(61134u, 6743u, 1u), vec3<u32>(4294967295u, 3137u, 4294967295u), vec3<u32>(0u, 1u, 55544u), vec3<u32>(1u, 20505u, 1u), vec3<u32>(41131u, 0u, 4294967295u), vec3<u32>(6871u, 14732u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 37031u, 74142u), vec3<u32>(0u, 1u, 3069u));

var<private> global4: array<bool, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1306f + arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + 536f))) * arg_1.x)))));
    var var_1 = true || all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 22u)], true, any(vec2<bool>(global2.x, false)), global4[_wgslsmith_index_u32(~u_input.d << (28717u % 32u), 22u)]));
    let var_2 = (global4[_wgslsmith_index_u32(~u_input.d, 22u)] == !(!(-253f == arg_0))) || all(!vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 22u)], true, true, global2.x)), -16129i < u_input.c.x, false));
    var var_3 = vec4<i32>(-6447i, 1i, ~(-34868i) & u_input.c.x, _wgslsmith_mod_i32(-53257i, countOneBits(~u_input.a.x))) >> (~vec4<u32>(_wgslsmith_mult_u32(u_input.d, ~49770u), 4294967295u, _wgslsmith_clamp_u32(~9971u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(17743u, u_input.d, 6375u, 37509u), vec4<u32>(51694u, 0u, u_input.d, u_input.d))), countOneBits(u_input.d)) % vec4<u32>(32u));
    return u_input.d;
}

fn func_2() -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_mult_u32(1585u, min(1u, 57882u)), u_input.d)), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(1u, u_input.d), func_3(992f, vec3<f32>(664f, -333f, 1634f))), ~abs(abs(vec2<u32>(u_input.d, 0u))))), 23u)];
    let var_1 = reverseBits(vec3<i32>(min(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(44495i, u_input.b, u_input.c.x, u_input.b), vec4<i32>(u_input.b, -23664i, u_input.a.x, 48988i))), ~max(u_input.a.x, var_0.a.c.x), firstLeadingBit(abs(0i))) << (_wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(var_0.a.a.x, 4294967295u, 12955u), global3[_wgslsmith_index_u32(u_input.d, 20u)])), global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.d), 20u)]) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1397f, -1230f)) - _wgslsmith_div_f32(-1343f, 2992f)), 257f, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1045f)) + _wgslsmith_f_op_f32(1088f - -688f)) * _wgslsmith_f_op_f32(f32(-1f) * -1266f)), 1191f, 1000f));
    let var_3 = var_0.a;
    let var_4 = var_0.a;
    return global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(abs(-797f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_2.xzx, var_2.xwz)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -128f), var_2.zxz), false)))))), 23u)];
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = ~(~(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0.a.c.x, arg_0.a.c.x, -2147483647i), vec4<i32>(-1i, arg_0.a.c.x, -3929i, u_input.b)), firstTrailingBit(vec4<i32>(-2147483647i, 1i, u_input.b, -59834i)))));
    var var_1 = u_input.d;
    var var_2 = -1000f;
    let var_3 = ~12159u;
    global0 = array<Struct_1, 9>();
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1.c;
    var var_1 = Struct_3(arg_0.a);
    let var_2 = var_1.a;
    global0 = array<Struct_1, 9>();
    let var_3 = select(!vec3<bool>(any(vec2<bool>(true, false)), var_2.b, func_2().a.b), select(var_0.wxy, var_0.zwz, false & arg_0.a.b), var_0.xzx);
    return Struct_2(~(~abs(var_1.a.a)) >> (vec2<u32>(u_input.d, ~(var_1.a.a.x >> (u_input.d % 32u))) % vec2<u32>(32u)), true, firstLeadingBit(_wgslsmith_div_vec2_i32(-arg_1.e, -vec2<i32>(var_2.c.x, 1i)) ^ var_2.c));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    global3 = array<vec3<u32>, 20>();
    var var_0 = func_4(Struct_3(Struct_2(func_4(global1[_wgslsmith_index_u32(64274u, 23u)]).a.a >> (_wgslsmith_clamp_vec2_u32(arg_3.a.a, vec2<u32>(0u, u_input.d), vec2<u32>(arg_3.a.a.x, arg_3.a.a.x)) % vec2<u32>(32u)), true, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.e, vec2<i32>(-2147483647i, arg_2.a)), reverseBits(vec2<i32>(arg_3.a.c.x, 27175i)))))).a;
    let var_1 = arg_3.a;
    let var_2 = var_1.a;
    let var_3 = var_0.b;
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    global3 = array<vec3<u32>, 20>();
    let var_0 = ~reverseBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, -2147483647i, -40410i), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b))), ~(vec4<i32>(2147483647i, -41067i, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, arg_3.x, u_input.d, arg_3.x) % vec4<u32>(32u)))));
    global1 = array<Struct_3, 23>();
    let var_1 = func_6(func_5(func_4(func_2()), Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, 2147483647i), min(-1i, -26210i)), arg_0, vec4<bool>(-2719i <= u_input.a.x, select(global4[_wgslsmith_index_u32(arg_1, 22u)], global4[_wgslsmith_index_u32(26395u, 22u)], arg_0), all(vec4<bool>(global4[_wgslsmith_index_u32(arg_3.x, 22u)], false, arg_0, global2.x)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-3312f, 1489f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_mod_vec2_i32(u_input.a, abs(u_input.a)))), !(!vec2<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(arg_3.x, 22u)], false, global2.x, arg_0)), any(vec3<bool>(false, global2.x, true)))), Struct_1(~(-27020i), any(!select(vec2<bool>(false, arg_0), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_1, 22u)]), vec2<bool>(true, false))), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(arg_0, global4[_wgslsmith_index_u32(arg_3.x, 22u)], false, false), vec4<bool>(global4[_wgslsmith_index_u32(33715u, 22u)], global2.x, true, global2.x), vec4<bool>(true, global4[_wgslsmith_index_u32(arg_1, 22u)], global2.x, true)), func_2().a.b), -641f, vec2<i32>(23300i ^ var_0, -18257i) >> (max(vec2<u32>(70283u, arg_3.x), ~vec2<u32>(arg_3.x, 1u)) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(arg_1, 23u)]);
    global2 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, global4[_wgslsmith_index_u32(4645u, 22u)]), global2.x))));
    return select(!(!vec4<bool>(true, !global2.x, global2.x, var_0 != 66542i)), !vec4<bool>(true, true, true, global2.x), select(!vec4<bool>(global2.x, var_0 <= var_0, all(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 22u)], global2.x, false, global4[_wgslsmith_index_u32(14211u, 22u)])), func_6(var_1.a, vec2<bool>(arg_0, false), global0[_wgslsmith_index_u32(arg_3.x, 9u)], var_1).a.b), !select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 22u)], false, global4[_wgslsmith_index_u32(arg_1, 22u)], true), select(vec4<bool>(global2.x, false, false, false), vec4<bool>(true, true, arg_0, false), global4[_wgslsmith_index_u32(4294967295u, 22u)]), all(vec2<bool>(arg_0, global2.x))), false));
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(-1726f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, arg_1.d)))), arg_1.d)), arg_1.c.x));
    global0 = array<Struct_1, 9>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-22539i, arg_1.e.x, arg_1.e.x, arg_1.a) >> (vec4<u32>(arg_0, 78165u, 3406u, 49502u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, 0i, u_input.c.x, arg_1.a), select(vec4<i32>(u_input.a.x, arg_1.e.x, 43217i, 1i), vec4<i32>(u_input.b, arg_1.a, u_input.a.x, arg_1.e.x), arg_1.c.x)), _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(1i, arg_1.e.x, u_input.b, -2147483647i)), vec4<i32>(8707i, select(u_input.c.x, -2147483647i, false), countOneBits(1i), 1i))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 36879u >> (u_input.d % 32u)), u_input.d) >= 59737u, select(arg_1.c, func_1(func_1(func_1(false, 2904u, 7297u, global3[_wgslsmith_index_u32(0u, 20u)]).x, reverseBits(34422u), _wgslsmith_mod_u32(17634u, arg_0), vec3<u32>(1u, 0u, 11130u) >> (global3[_wgslsmith_index_u32(arg_0, 20u)] % vec3<u32>(32u))).x, ~1u, u_input.d, ~vec3<u32>(4294967295u, 1u, u_input.d)), func_2().a.b), arg_1.d, (vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -35573i, -1i), vec3<i32>(1i, u_input.c.x, arg_1.e.x)), u_input.b) & (vec2<i32>(-1i) * -arg_1.e)) << ((func_5(global1[_wgslsmith_index_u32(1u, 23u)], Struct_1(arg_1.e.x, global2.x, arg_1.c, 293f, u_input.c)).a << (_wgslsmith_div_vec2_u32(func_6(Struct_2(vec2<u32>(arg_0, 4294967295u), arg_1.b, vec2<i32>(u_input.c.x, u_input.b)), vec2<bool>(false, false), global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_3(Struct_2(vec2<u32>(u_input.d, 0u), true, u_input.c))).a.a, vec2<u32>(u_input.d, 19308u) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - var_1.d) * var_1.d), _wgslsmith_div_f32(var_1.d, _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(-var_1.d))));
    var var_3 = _wgslsmith_f_op_f32(1000f * var_2.x);
    return Struct_2(vec2<u32>(~arg_0, ~1u), global2.x && !(-var_1.a != -24553i), countOneBits(var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f * 641f);
    let var_1 = func_7(50656u, Struct_1(u_input.b, !global2.x, select(select(func_1(global4[_wgslsmith_index_u32(1u, 22u)], u_input.d, u_input.d, global3[_wgslsmith_index_u32(u_input.d, 20u)]), !vec4<bool>(global4[_wgslsmith_index_u32(82971u, 22u)], false, true, false), select(vec4<bool>(global4[_wgslsmith_index_u32(10301u, 22u)], global2.x, global2.x, global4[_wgslsmith_index_u32(35432u, 22u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 22u)], true, global4[_wgslsmith_index_u32(1u, 22u)], global2.x), vec4<bool>(global2.x, global4[_wgslsmith_index_u32(4016u, 22u)], global4[_wgslsmith_index_u32(u_input.d, 22u)], global2.x))), !(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 22u)], global4[_wgslsmith_index_u32(u_input.d, 22u)], true, false)), !(!vec4<bool>(true, global2.x, global4[_wgslsmith_index_u32(u_input.d, 22u)], false))), 1f, _wgslsmith_clamp_vec2_i32(~u_input.a, -(vec2<i32>(u_input.b, 1i) & vec2<i32>(1i, u_input.a.x)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, -2147483647i), -vec2<i32>(u_input.c.x, u_input.a.x)))));
    let var_2 = ~(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 70885u, var_1.a.x, 4294967295u)), ~vec4<u32>(20185u, u_input.d, 1u, u_input.d)), ~u_input.d, u_input.d, 52842u) >> (~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d, 5253u, 26435u), vec4<u32>(u_input.d, 57793u, 1u, 2083u))) % vec4<u32>(32u)));
    let var_3 = global0[_wgslsmith_index_u32(1u, 9u)];
    global3 = array<vec3<u32>, 20>();
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), var_1.c);
    let var_5 = vec4<bool>(false, all(var_3.c), global2.x, var_3.c.x);
    let var_6 = abs(vec2<u32>(~(~u_input.d), _wgslsmith_mod_u32(6906u, u_input.d >> (27035u % 32u)) >> (var_2.x % 32u)));
    let var_7 = func_4(Struct_3(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, func_5(Struct_3(Struct_2(reverseBits(var_6), true, func_4(Struct_3(Struct_2(vec2<u32>(var_1.a.x, 6554u), var_3.b, vec2<i32>(u_input.c.x, -15985i)))).a.c)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(min(vec3<u32>(var_1.a.x, 1u, var_6.x), var_2.yzw)), ~(~global3[_wgslsmith_index_u32(var_2.x, 20u)])), 9u)]).c.x, -(1i & ~var_4.x), vec2<u32>(var_1.a.x, ~_wgslsmith_div_u32(8298u, var_2.x)), ~(var_2.xyx << (firstTrailingBit(~var_2.xxw) % vec3<u32>(32u))));
}

