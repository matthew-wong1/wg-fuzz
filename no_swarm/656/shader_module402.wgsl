struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 31>;

var<private> global2: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec4<i32>(34341i, -1i, 1i, 1i), Struct_1(vec4<u32>(24532u, 8668u, 77029u, 21271u), vec3<u32>(0u, 75338u, 4294967295u)), true, Struct_1(vec4<u32>(1u, 13892u, 4294967295u, 17234u), vec3<u32>(16230u, 10381u, 62931u))), Struct_4(vec4<i32>(0i, i32(-2147483648), -222i, -9391i), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 45786u), vec3<u32>(35258u, 4294967295u, 14614u)), false, Struct_1(vec4<u32>(0u, 1u, 0u, 23147u), vec3<u32>(4294967295u, 0u, 3759u))), Struct_4(vec4<i32>(34180i, i32(-2147483648), -35080i, 39401i), Struct_1(vec4<u32>(64072u, 12617u, 0u, 0u), vec3<u32>(55549u, 19937u, 0u)), false, Struct_1(vec4<u32>(0u, 1u, 72140u, 0u), vec3<u32>(0u, 41512u, 0u))), Struct_4(vec4<i32>(17518i, -44404i, 5430i, -9624i), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 66284u, 1u)), true, Struct_1(vec4<u32>(4874u, 1u, 1u, 1u), vec3<u32>(45231u, 10647u, 52599u))), Struct_4(vec4<i32>(-917i, -12060i, 1i, 0i), Struct_1(vec4<u32>(10817u, 0u, 29809u, 1u), vec3<u32>(1u, 51940u, 24272u)), true, Struct_1(vec4<u32>(0u, 4294967295u, 59462u, 1u), vec3<u32>(140613u, 86145u, 1u))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1211f, -1313f, 1756f), vec3<f32>(-788f, 1719f, -642f), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, 222f, 356f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-167f, -295f, 1000f), vec3<f32>(-998f, 126f, 1426f)))))), Struct_2(any(vec4<bool>(true, select(true, false, false), false, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1454f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(460f, -1059f))))));
    global2 = array<Struct_4, 5>();
    global1 = array<vec2<u32>, 31>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x + var_0.b.b))), -2040f, _wgslsmith_div_f32(689f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(157f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1827f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(var_0.b.b - -351f))), 205f));
    let var_2 = var_0.a.x;
    return select(select(vec2<bool>(var_0.b.a, !var_0.b.a | var_0.b.a), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(false, var_0.b.a), vec2<bool>(var_0.b.a, var_0.b.a)), select(vec2<bool>(var_0.b.a, false), vec2<bool>(var_0.b.a, var_0.b.a), var_0.b.a)), var_0.b.a), !(!(!select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(var_0.b.a, var_0.b.a)))), select(vec2<bool>(select(var_0.b.a, true, any(vec4<bool>(true, var_0.b.a, var_0.b.a, var_0.b.a))), any(!vec3<bool>(false, var_0.b.a, var_0.b.a))), select(select(select(vec2<bool>(true, var_0.b.a), vec2<bool>(var_0.b.a, false), vec2<bool>(false, var_0.b.a)), !vec2<bool>(var_0.b.a, var_0.b.a), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.b.a)), select(vec2<bool>(false, false), !vec2<bool>(var_0.b.a, true), vec2<bool>(true, true)), !select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(false, var_0.b.a), vec2<bool>(var_0.b.a, var_0.b.a))), (_wgslsmith_f_op_f32(trunc(var_1.x)) == _wgslsmith_f_op_f32(-var_1.x)) && true));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)));
    let var_1 = 0u;
    global1 = array<vec2<u32>, 31>();
    var var_2 = Struct_2(any(select(func_3(Struct_1(vec4<u32>(4294967295u, 0u, u_input.c, var_1), vec3<u32>(u_input.a, 4294967295u, var_1))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), u_input.b < _wgslsmith_div_i32(-52663i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 762f))));
    let var_3 = vec3<i32>(min(u_input.b, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(11487i, -5130i, u_input.b, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-30393i, 1i, u_input.b, -49059i), vec4<i32>(-3390i, -14272i, 1i, -33027i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(84260u, var_1, 82684u, 18915u), vec4<u32>(30616u, var_1, u_input.a, u_input.a)) % vec4<u32>(32u)))), -abs(_wgslsmith_mult_i32(-u_input.b, u_input.b)), 0i);
    return var_2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<bool>(true, any(select(vec2<bool>(func_2(), false), vec2<bool>(arg_2 || false, arg_2), vec2<bool>(false, !arg_1.c))), arg_1.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(1000f, -495f))))) - arg_0.x);
    let var_2 = Struct_4(vec4<i32>(-1i) * -arg_1.a, arg_1.b, true, Struct_1(~firstTrailingBit(select(arg_1.b.a, arg_1.b.a, arg_1.c)), firstLeadingBit(_wgslsmith_mult_vec3_u32(arg_1.b.a.zzz | arg_1.d.a.zxz, firstLeadingBit(vec3<u32>(4294967295u, 26241u, u_input.d))))));
    global0 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, var_2.b.a.x), 43986u);
    let var_3 = Struct_2(any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_1.c, true, var_0.x), select(vec4<bool>(arg_1.c, true, false, var_0.x), vec4<bool>(var_2.c, true, true, false), vec4<bool>(var_0.x, true, var_2.c, var_2.c)))), -172f);
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, arg_3, arg_3))), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3)), _wgslsmith_div_f32(888f, arg_3), _wgslsmith_f_op_f32(297f + -265f)), !select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, false), arg_2))) + vec3<f32>(-851f, 266f, 529f)), Struct_2(~_wgslsmith_add_i32(2147483647i, u_input.b) != ~u_input.b, arg_3));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(select(var_0.b.b, arg_3, var_0.b.a)))), -379f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), var_0.b);
    var var_2 = u_input.b;
    var var_3 = arg_0.b;
    var_3 = arg_0.b;
    return vec4<i32>(-2147483647i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-6426i, u_input.b), -abs(u_input.b), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i))), -vec3<i32>(0i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-20787i, 2147483647i), vec2<i32>(u_input.b, u_input.b)))), u_input.b);
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(198f + -2256f), _wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(f32(-1f) * -720f))), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(604f, _wgslsmith_f_op_f32(floor(-1431f)), all(vec3<bool>(true, arg_1.x, arg_1.x))))))), Struct_2(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-755f)), _wgslsmith_f_op_f32(f32(-1f) * -542f), true)))));
    global1 = array<vec2<u32>, 31>();
    global0 = _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(0u, 1u), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.c, func_1(vec2<f32>(var_0.b.b, -2361f), global2[_wgslsmith_index_u32(19136u, 5u)], arg_0).a.x), _wgslsmith_sub_u32(~u_input.d, u_input.c)), u_input.a);
    var var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), 1386f), Struct_4(~(~(arg_2 ^ arg_2)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, -395f) - vec2<f32>(-1621f, 1122f)), Struct_4(func_4(Struct_1(vec4<u32>(57520u, u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.c, 100954u, u_input.d)), vec2<u32>(4294967295u, 9208u), false, -2097f), Struct_1(vec4<u32>(1u, u_input.d, u_input.c, 66586u), vec3<u32>(u_input.d, u_input.a, u_input.d)), func_2(), func_1(vec2<f32>(1648f, 355f), Struct_4(vec4<i32>(-27159i, arg_3.x, -1i, arg_3.x), Struct_1(vec4<u32>(u_input.d, 21665u, 25938u, u_input.c), vec3<u32>(u_input.a, 3412u, 42816u)), true, Struct_1(vec4<u32>(1u, u_input.d, u_input.c, u_input.c), vec3<u32>(0u, 57291u, u_input.c))), true)), true == arg_1.x), any(!select(vec2<bool>(false, false), vec2<bool>(false, arg_1.x), false)), Struct_1(abs(vec4<u32>(u_input.d, 4294967295u, u_input.a, 4294967295u)) & ~vec4<u32>(u_input.a, u_input.c, 114605u, u_input.a), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(5429u, u_input.d, u_input.a))))), var_0.b.a);
    global2 = array<Struct_4, 5>();
    return 117f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(select(true, true, u_input.d <= u_input.a), _wgslsmith_mod_u32(4294967295u, u_input.a) <= u_input.c, u_input.b < 1i), vec2<bool>(true, true), func_4(func_1(vec2<f32>(923f, 1424f), global2[_wgslsmith_index_u32(min(2744u, u_input.d), 5u)], true), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u) | vec2<u32>(0u, 4294967295u), global1[_wgslsmith_index_u32(0u, 31u)]), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) - -2040f)), select(~(~vec3<i32>(-6037i, u_input.b, -25728i)), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, 0i, -2147483647i), vec3<i32>(u_input.b, 1i, u_input.b), true), reverseBits(vec3<i32>(51185i, -1i, -46654i))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)))) - _wgslsmith_f_op_f32(f32(-1f) * -149f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, _wgslsmith_f_op_f32(var_0 * var_0), 1129f))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(abs(-824f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, 302f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -971f))))));
    let var_2 = Struct_1(~(~(~vec4<u32>(u_input.a, 30410u, 24949u, 12222u))), _wgslsmith_mod_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.d, 15143u) & vec3<u32>(1u, u_input.c, 76129u), vec3<u32>(u_input.c, 29338u, 70691u)), select(vec3<u32>(u_input.c, 9632u, u_input.a), vec3<u32>(u_input.a, 24750u, 1u), vec3<bool>(true, true, true))), (~vec3<u32>(4291u, u_input.a, 4294967295u) ^ vec3<u32>(u_input.c, 4294967295u, 71881u)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(26829u, 31u)], vec2<u32>(u_input.d, 1u)), select(4294967295u, 62009u, false), abs(1u)) % vec3<u32>(32u))));
    var var_3 = (vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -56623i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(5908i, -31011i))), -(~u_input.b), max(u_input.b, u_input.b)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(33214u, u_input.d, var_2.b.x)), ~var_2.a.yxz), 22474u, _wgslsmith_add_u32(~47225u, var_2.a.x)) % vec3<u32>(32u))) << (var_2.a.xxx % vec3<u32>(32u));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -1046f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-1000f + 770f))))));
    let var_4 = Struct_2(true, _wgslsmith_f_op_f32(var_1.x + var_0));
    let var_5 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_4.b, var_0), Struct_2(all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)) & true, _wgslsmith_f_op_f32(503f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) * -197f))));
    let var_6 = _wgslsmith_clamp_vec3_i32(abs(~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, -3166i, var_3.x), vec3<i32>(-2147483647i, var_3.x, var_3.x) & vec3<i32>(2147483647i, 6239i, 48710i))), firstLeadingBit(~vec3<i32>(2147483647i, u_input.b & u_input.b, func_4(Struct_1(vec4<u32>(u_input.c, 0u, var_2.a.x, 4294967295u), vec3<u32>(u_input.a, var_2.a.x, 1u)), vec2<u32>(u_input.d, u_input.d), false, 1642f).x)), abs(vec3<i32>(var_3.x, ~var_3.x | u_input.b, max(u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_i32(abs(-21229i), select(_wgslsmith_dot_vec3_i32(var_6, var_6), 1i, true)), -1i), _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(-2147483647i, var_3.x, var_6.x, 20958i))), -vec4<i32>(var_3.x, var_6.x, 2147483647i, var_3.x) | (vec4<i32>(1i, var_3.x, u_input.b, 1i) & vec4<i32>(var_3.x, u_input.b, var_6.x, -4559i))) & vec4<i32>(_wgslsmith_mult_i32(var_6.x | 1i, var_3.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_6.x, -1i, 22553i), vec4<i32>(10259i, -1i, u_input.b, 49591i)), u_input.b & -var_6.x, -2147483647i), 0u, ~(~vec3<i32>(countOneBits(3606i), ~(-1i), _wgslsmith_clamp_i32(36921i, 2147483647i, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 1000f, all(vec3<bool>(var_4.a, true, var_5.b.a)))))));
}

