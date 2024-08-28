struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = select(select(select(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(global0[_wgslsmith_index_u32(u_input.a, 2u)]))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, true, false)), any(global0[_wgslsmith_index_u32(u_input.d, 2u)]), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true)), vec4<bool>(true && any(vec2<bool>(true, false)), !any(vec2<bool>(false, true)), select(-1i >= u_input.e.x, any(vec4<bool>(true, true, true, true)), true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(408f, -1514f)) * _wgslsmith_f_op_f32(round(-1256f))), -1140f) == -1183f);
    var_0 = vec4<bool>(var_0.x, all(vec3<bool>(true, all(vec4<bool>(false, true, true, var_0.x)), ~u_input.d >= ~43597u)), !(4294967295u == (u_input.d & 14555u)), true);
    return !var_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = 876f;
    var var_1 = u_input.c.x;
    var_1 = ~u_input.e.x;
    let var_2 = Struct_4(!(!vec2<bool>(true, arg_1)), Struct_2(arg_0.c.e, Struct_1(-298f, 9210i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1360f + arg_0.d.x) * _wgslsmith_f_op_f32(exp2(arg_0.b.a))), vec2<u32>(_wgslsmith_clamp_u32(30723u, u_input.a, 4294967295u), arg_0.a.d.x)), false, arg_0.a.b, arg_0.a));
    var var_3 = u_input.b.x;
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.b.d.x, select(u_input.a, u_input.a, var_2.b.c)), 65598u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zz << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), vec2<u32>(arg_0.b.d.x, arg_0.b.d.x) << (arg_0.b.d % vec2<u32>(32u))), var_2.b.e.d)), 0u);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = arg_2.c.b.a;
    var var_1 = ~select(arg_2.c.b.d, _wgslsmith_add_vec2_u32(~(~arg_0.b.d), select(_wgslsmith_sub_vec2_u32(arg_2.c.b.d, vec2<u32>(arg_2.b.d.x, arg_0.a.d.x)), arg_2.c.b.d, vec2<bool>(false, false))), select(vec2<bool>(arg_0.c.c, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 35458u), vec3<u32>(arg_0.b.d.x, u_input.a, arg_0.c.e.d.x)), 2u)], !(!global0[_wgslsmith_index_u32(u_input.b.x, 2u)])));
    var var_2 = 15897u;
    var var_3 = arg_2.c;
    let var_4 = vec2<i32>(_wgslsmith_clamp_i32(-1i ^ arg_0.a.b, min(1i << ((arg_2.b.d.x >> (var_3.e.d.x % 32u)) % 32u), -2147483647i), arg_0.a.b), -1i);
    return ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.b.b, _wgslsmith_div_i32(reverseBits(-1i), -arg_2.c.d)), vec2<i32>(_wgslsmith_mult_i32(-1i, u_input.c.x), abs(arg_2.c.e.b)) >> (vec2<u32>(_wgslsmith_sub_u32(40026u, var_1.x), ~51878u) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(i32(-1i) * -9994i, 1i);
    var_0 = u_input.c;
    var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(~(-2497i), u_input.c.x) ^ (_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i) ^ u_input.c, vec2<i32>(u_input.e.x, -6360i)) << (u_input.b.zw % vec2<u32>(32u))), func_5(Struct_3(arg_0, arg_0, Struct_2(arg_0, Struct_1(arg_0.a, var_0.x, -1284f, u_input.b.zw), true, firstTrailingBit(2147483647i), Struct_1(arg_0.a, u_input.e.x, 1197f, arg_0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec3<f32>(824f, 1003f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(568f, arg_0.a, arg_0.a) - vec3<f32>(-433f, arg_0.a, 1000f)))), func_4(Struct_3(arg_0, Struct_1(arg_0.c, arg_0.b, -497f, vec2<u32>(u_input.a, 38130u)), Struct_2(Struct_1(495f, 1i, arg_0.a, vec2<u32>(1u, 3597u)), Struct_1(arg_0.a, 0i, arg_0.c, arg_0.d), true, var_0.x, Struct_1(-259f, var_0.x, -145f, arg_0.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c, -751f, -1350f), vec3<f32>(arg_0.c, -1360f, arg_0.c), false))), func_3() || true), Struct_3(Struct_1(258f, 24658i, _wgslsmith_f_op_f32(-arg_0.a), arg_0.d), Struct_1(arg_0.a, u_input.e.x, arg_0.a, ~u_input.b.zw), Struct_2(arg_0, arg_0, true, select(-2147483647i, u_input.c.x, false), arg_0), vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -620f)))));
    var var_1 = u_input.b;
    var_1 = u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.c)), ~select(-15268i, arg_0.b, true), arg_0.c, reverseBits(vec2<u32>(var_1.x, _wgslsmith_clamp_u32(var_1.x, 0u, var_1.x) & ~7403u)));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = max(-1i, 1157i);
    let var_1 = vec3<bool>(true, arg_1.c.b.d.x <= _wgslsmith_div_u32(~arg_1.b.d.x, ~0u), !(_wgslsmith_add_i32(2147483647i, arg_2.b.e.b) < 0i) || false);
    return Struct_3(arg_1.c.b, Struct_1(_wgslsmith_f_op_f32(select(-145f, arg_2.b.e.c, -823f > arg_1.a.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(53231i, -1624i, -55213i, 46647i), vec4<i32>(0i, 2147483647i, -50607i, arg_1.a.b)) & _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(14482i, 1i, arg_2.b.d)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b.d, u_input.c.x, 1i), vec3<i32>(arg_2.b.b.b, u_input.e.x, -1i))), 736f, arg_3.yz), Struct_2(func_2(func_2(func_2(arg_2.b.e))), arg_1.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -867f))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-687f, -1257f)), abs(u_input.e.x) | u_input.e.x, func_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.b.a), firstTrailingBit(98i), 378f, _wgslsmith_mod_vec2_u32(arg_3.zy, vec2<u32>(0u, u_input.b.x))))), arg_1.d);
}

fn func_1() -> Struct_3 {
    global0 = array<vec2<bool>, 2>();
    let var_0 = func_6(select(u_input.a & 1u, u_input.d, !(2147483647i < _wgslsmith_div_i32(u_input.e.x, u_input.c.x))), Struct_3(Struct_1(-178f, _wgslsmith_add_i32(-u_input.e.x, 1i), 1000f, ~(~vec2<u32>(42933u, 2142u))), func_2(Struct_1(_wgslsmith_f_op_f32(1000f - -1502f), u_input.e.x, 1036f, ~u_input.b.wx)), Struct_2(func_2(func_2(Struct_1(-1624f, 1404i, 2690f, vec2<u32>(u_input.b.x, u_input.d)))), Struct_1(_wgslsmith_div_f32(-1177f, -720f), u_input.c.x, _wgslsmith_f_op_f32(1098f * -560f), u_input.b.xw | u_input.b.wy), all(vec2<bool>(true, true)), max(~u_input.e.x, ~(-60127i)), func_2(Struct_1(-302f, u_input.e.x, -859f, vec2<u32>(u_input.d, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1324f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -355f))))), Struct_4(global0[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_f32(235f + 562f), -1609i, _wgslsmith_f_op_f32(930f * -303f), vec2<u32>(9368u, u_input.b.x))).d.x, 2u)], Struct_2(Struct_1(777f, -32136i, 1f, _wgslsmith_sub_vec2_u32(vec2<u32>(23895u, u_input.a), vec2<u32>(1u, u_input.d))), Struct_1(-936f, u_input.e.x, _wgslsmith_f_op_f32(select(633f, -897f, false)), vec2<u32>(4294967295u, u_input.a) | u_input.b.xw), true != any(vec3<bool>(true, true, false)), -u_input.c.x, Struct_1(func_2(Struct_1(-427f, 17407i, -900f, vec2<u32>(1u, u_input.a))).c, _wgslsmith_sub_i32(1i, u_input.e.x), 2052f, vec2<u32>(u_input.a, u_input.b.x)))), ~u_input.b.zxx << (~(vec3<u32>(u_input.a, u_input.a, 25966u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(94443u, 1u, 4294967295u), vec3<u32>(0u, u_input.a, 51308u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = array<vec2<bool>, 2>();
    let var_1 = func_6(func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(56061u, 4294967295u, ~0u), ~vec3<u32>(var_0.a.d.x, 26173u, 38223u)), Struct_3(var_0.b, Struct_1(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 0i)), -210f, abs(vec2<u32>(u_input.d, var_0.a.d.x))), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(var_0.b.c, 703f, -1403f)))), Struct_4(!global0[_wgslsmith_index_u32(4294967295u, 2u)], Struct_2(Struct_1(var_0.a.c, 58745i, var_0.a.c, var_0.a.d), func_2(var_0.b), var_0.c.c, -u_input.e.x, func_6(4294967295u, var_0, Struct_4(global0[_wgslsmith_index_u32(var_0.a.d.x, 2u)], var_0.c), u_input.b.wxz).b)), abs(u_input.b.zzx)).b.d.x, var_0, Struct_4(!(!select(global0[_wgslsmith_index_u32(0u, 2u)], vec2<bool>(false, var_0.c.c), global0[_wgslsmith_index_u32(64464u, 2u)])), Struct_2(Struct_1(var_0.b.c, min(var_0.a.b, u_input.e.x), _wgslsmith_f_op_f32(var_0.d.x - var_0.c.b.a), ~u_input.b.yz), var_0.b, var_0.c.c, -94192i, var_0.b)), u_input.b.wwz);
    var var_2 = var_0.a.c;
    return func_6(~u_input.b.x ^ ~(~0u), var_1, Struct_4(!select(!global0[_wgslsmith_index_u32(25845u, 2u)], vec2<bool>(var_0.c.c, false), true), Struct_2(var_0.c.e, var_0.b, var_0.c.c, func_6(4170u, func_6(4382u, Struct_3(var_0.b, Struct_1(var_1.b.a, 10970i, var_1.c.b.c, vec2<u32>(80329u, 50773u)), Struct_2(var_1.b, Struct_1(-188f, 28281i, -623f, vec2<u32>(u_input.a, var_1.c.e.d.x)), true, 41789i, Struct_1(var_1.a.c, 65717i, var_0.c.b.c, u_input.b.wz)), var_0.d), Struct_4(vec2<bool>(var_1.c.c, false), Struct_2(Struct_1(var_0.b.a, -2147483647i, 717f, vec2<u32>(u_input.b.x, var_0.a.d.x)), var_1.c.a, true, -1i, Struct_1(var_0.a.a, -1i, -1000f, var_1.a.d))), u_input.b.xyw), Struct_4(global0[_wgslsmith_index_u32(var_0.a.d.x, 2u)], var_1.c), vec3<u32>(var_0.a.d.x, var_0.b.d.x, 30736u)).a.b, Struct_1(450f, ~var_0.c.d, var_1.a.c, var_0.a.d))), select(~u_input.b.xxw, ~max(~vec3<u32>(4294967295u, 0u, u_input.b.x), abs(u_input.b.xyz)), false));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(select(arg_1.a.b.d.x, _wgslsmith_mod_u32(arg_1.d ^ 4294967295u, reverseBits(arg_1.d)), arg_1.a.c.c), arg_1.a.b.d.x << (~(arg_1.d >> (9987u % 32u)) % 32u), arg_1.a.a.d.x), u_input.b.www);
    global0 = array<vec2<bool>, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_6(arg_1.d, arg_1.a, Struct_4(!vec2<bool>(false, arg_1.a.c.c), func_1().c), vec3<u32>(~94035u, firstLeadingBit(1u), firstTrailingBit(arg_1.d))).d, arg_1.a.d));
    let var_2 = true;
    global0 = array<vec2<bool>, 2>();
    return Struct_4(vec2<bool>(select(_wgslsmith_dot_vec2_u32(arg_1.a.c.b.d, u_input.b.xy), u_input.b.x, true) >= 4294967295u, true), func_1().c);
}

fn func_8(arg_0: u32, arg_1: Struct_4) -> bool {
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    let var_0 = func_6(~(~u_input.a) & 42895u, Struct_3(arg_1.b.b, func_1().a, arg_1.b, _wgslsmith_f_op_vec3_f32(func_1().d - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.a.a, -1000f, arg_1.b.e.c), vec3<f32>(-401f, arg_1.b.e.c, 1767f)) * vec3<f32>(1807f, arg_1.b.b.a, -262f)))), func_7(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.a.b, 0i, u_input.c.x), ~vec3<i32>(-2147483647i, -14120i, 1i))), Struct_5(Struct_3(Struct_1(arg_1.b.e.a, arg_1.b.a.b, arg_1.b.b.a, vec2<u32>(54415u, arg_0)), Struct_1(arg_1.b.e.a, u_input.c.x, -993f, arg_1.b.b.d), func_1().c, vec3<f32>(354f, -604f, -949f)), !(!vec4<bool>(arg_1.b.c, true, true, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1006f)), arg_1.b.a.a, true)), firstTrailingBit(41004u))), firstTrailingBit(u_input.b.zyw));
    global0 = array<vec2<bool>, 2>();
    return arg_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, -(~3872i) >= u_input.e.x));
    var_0 = func_8(u_input.a, func_7(~vec3<i32>(2147483647i, -36579i, -1i) | firstTrailingBit(vec3<i32>(u_input.e.x, u_input.c.x, 34949i)), Struct_5(func_1(), vec4<bool>(true, true, true, true), -535f, _wgslsmith_dot_vec4_u32(vec4<u32>(40263u, 95440u, 0u, 2440u), u_input.b)))) && ((~(u_input.e.x << (0u % 32u)) != 29525i) | false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_7(vec3<i32>(u_input.e.x, u_input.e.x, u_input.c.x), Struct_5(Struct_3(Struct_1(1210f, u_input.c.x, 1021f, u_input.b.wy), Struct_1(-291f, -1i, 1626f, vec2<u32>(0u, u_input.b.x)), Struct_2(Struct_1(-470f, u_input.e.x, 861f, u_input.b.xy), Struct_1(473f, -11054i, 856f, u_input.b.wy), false, u_input.e.x, Struct_1(-710f, u_input.c.x, 198f, vec2<u32>(u_input.d, 0u))), vec3<f32>(-883f, 1326f, -2162f)), vec4<bool>(true, false, false, true), 115f, 0u)).b.e.a, _wgslsmith_f_op_f32(-1000f * 316f), -6829i < u_input.c.x)), _wgslsmith_div_f32(-222f, _wgslsmith_f_op_f32(round(-1144f)))) - -430f), -vec3<i32>(-firstLeadingBit(-33470i), u_input.e.x, 1i));
}

