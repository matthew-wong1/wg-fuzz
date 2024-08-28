struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<u32, 6>;

var<private> global2: array<Struct_3, 1>;

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(0i, 0i, -1i), vec3<i32>(-12660i, 37319i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(2147483647i, 1i, 27602i), vec3<i32>(0i, 1i, -41652i), vec3<i32>(-45167i, -46876i, 1i), vec3<i32>(-21070i, 1i, 10981i), vec3<i32>(31816i, 5494i, -50894i), vec3<i32>(-49457i, 0i, 1i), vec3<i32>(-7178i, -21454i, 1i), vec3<i32>(-36133i, 23774i, 24781i), vec3<i32>(0i, -56551i, -20782i), vec3<i32>(i32(-2147483648), -13307i, i32(-2147483648)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(33783u, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 52946u), vec3<u32>(1665u, global1[_wgslsmith_index_u32(u_input.c, 6u)], 1u)), u_input.d), u_input.c), _wgslsmith_add_u32(~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.zx)) & ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 6u)]), true), 59421u | (_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(20681u, u_input.c, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 86173u, global1[_wgslsmith_index_u32(0u, 6u)]))) ^ 4294967295u)), 1u)];
    global2 = array<Struct_3, 1>();
    global2 = array<Struct_3, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 1103f), var_0.c, _wgslsmith_f_op_f32(select(arg_0, var_0.e, false)), _wgslsmith_f_op_f32(floor(arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 1f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-391f * -408f))), vec4<f32>(_wgslsmith_div_f32(var_0.e, 1622f), 347f, 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f - 1109f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, -1000f, 743f, var_0.e), vec4<f32>(arg_0, 514f, 1067f, var_0.c), false)) - _wgslsmith_div_vec4_f32(vec4<f32>(-487f, 597f, -903f, arg_0), vec4<f32>(-603f, -402f, arg_0, var_0.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(349f, var_0.e, -764f, arg_0) * vec4<f32>(var_0.c, -2136f, arg_0, 311f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, var_0.c), -273f), 305f, arg_0, _wgslsmith_f_op_f32(-var_0.e))), true));
    var var_2 = u_input.e;
    return vec4<i32>(-var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, countOneBits(-5639i), var_0.b.x, _wgslsmith_mult_i32(2147483647i, u_input.e)), ~vec4<i32>(var_0.b.x, 43925i, -2147483647i, 0i)), ~(-var_0.b.x << (global1[_wgslsmith_index_u32(11086u, 6u)] % 32u)), u_input.e) << (vec4<u32>(1u, abs(_wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(5039u, 6u)], u_input.d.x) << ((var_0.d >> (var_0.d % 32u)) % 32u)), global1[_wgslsmith_index_u32(u_input.d.x ^ _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.d, 6u)], 6u)], global1[_wgslsmith_index_u32(var_0.d, 6u)], global1[_wgslsmith_index_u32(51243u, 6u)]), vec4<u32>(var_0.d, var_0.d, u_input.c, 17114u))), 6u)], ~reverseBits(1u)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = 0i;
    var var_1 = Struct_4(arg_0.xwx);
    global2 = array<Struct_3, 1>();
    global1 = array<u32, 6>();
    let var_2 = !vec3<bool>(true, !(!(32851u >= global1[_wgslsmith_index_u32(0u, 6u)])), true);
    return Struct_2(func_3(301f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = Struct_4(vec3<i32>(~abs(select(0i, -48766i, false)), u_input.b.x, var_0.a.x));
    var var_3 = Struct_4(-(vec3<i32>(~32624i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_0.a.x, 1i), vec3<i32>(-2147483647i, -76728i, var_2.a.x)), _wgslsmith_mod_i32(-1i, -2147483647i)) | select(_wgslsmith_clamp_vec3_i32(var_2.a, var_0.a.xwy, vec3<i32>(-2147483647i, u_input.a, var_0.a.x)), firstLeadingBit(var_2.a), u_input.c > arg_0.x)));
    var_3 = var_2;
    return min(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(~u_input.d.x, 6u)] & _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(u_input.d.x, 6u)])) ^ abs(1u), _wgslsmith_clamp_u32(~countOneBits(_wgslsmith_mult_u32(u_input.d.x, 70455u)), 1u, ~4294967295u));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 9>();
    global2 = array<Struct_3, 1>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], ~_wgslsmith_add_u32(firstTrailingBit(u_input.d.x), global1[_wgslsmith_index_u32(abs(67696u), 6u)]), 4294967295u >> (u_input.d.x % 32u), u_input.c), firstTrailingBit(vec4<u32>(~53548u, 4294967295u, global1[_wgslsmith_index_u32(~(~54811u), 6u)], func_4(vec2<u32>(0u, 5579u), func_2(vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i), u_input.d.xz, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21118u, 6u)], 13u)], -282f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -438f, -2313f))))));
    let var_1 = func_2(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, 22761i, u_input.a, u_input.b.x), vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.b.x, 42417i, 2147483647i)), vec2<u32>(0u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~54781u, ~(u_input.c | 1u)), 6u)]), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(2147483647i), -40687i), vec2<i32>(i32(-1i) * -13453i, -12352i)), _wgslsmith_mod_i32(-u_input.b.x ^ 1i, _wgslsmith_mult_i32(abs(-9669i), u_input.a | 1i)), func_2(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, 138i, u_input.b.x)), firstTrailingBit(vec2<u32>(1u, u_input.c)), global3[_wgslsmith_index_u32(max(u_input.d.x, var_0.x), 13u)], _wgslsmith_f_op_f32(1000f * 2130f)).a.x >> (_wgslsmith_mult_u32(~15629u, u_input.d.x & 0u) % 32u)), 204f);
    global3 = array<vec3<i32>, 13>();
    return 2147483647i;
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = !vec3<bool>(true, any(vec3<bool>(true, select(false, false, true), true)), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1317f, _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(1667f - -596f))), _wgslsmith_f_op_f32(round(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(select(344f, arg_1.e, false))))))));
    var var_2 = func_2(select(vec4<i32>(min(u_input.e & arg_1.a.a.x, -arg_1.a.a.x), arg_0, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(~arg_1.d, 13u)], vec3<i32>(-29352i, -49900i, u_input.e)), arg_0), min(arg_1.a.a, max(vec4<i32>(2147483647i, u_input.a, 2147483647i, arg_1.a.a.x), ~vec4<i32>(-15704i, 2147483647i, 2147483647i, u_input.b.x))), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true)), !(!vec4<bool>(false, false, var_0.x, true)), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true))), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(countOneBits(1u)), ~arg_1.d ^ 96110u), ~vec2<u32>(u_input.d.x, 53291u)), ~func_3(-393f).xzw >> (max(u_input.d, ~_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 26757u, 0u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_0 = !(!vec3<bool>(!var_0.x || var_0.x, any(!vec4<bool>(true, true, var_0.x, false)), false));
    let var_3 = vec4<i32>(var_2.a.x << (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(u_input.d.zy, vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))), u_input.d.yy), 6u)] % 32u), ~2147483647i, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(-19290i, arg_1.b.x), _wgslsmith_div_i32(abs(17243i), -17217i))), abs(1i));
    return arg_1.d;
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(func_4(abs(vec2<u32>(arg_0.a, _wgslsmith_clamp_u32(arg_0.a ^ 1u, ~4294967295u, ~u_input.d.x))), func_2(~(-vec4<i32>(u_input.b.x, -2147483647i, u_input.e, u_input.b.x) << (abs(vec4<u32>(1u, 42865u, u_input.d.x, arg_0.a)) % vec4<u32>(32u))), vec2<u32>(16679u, _wgslsmith_dot_vec2_u32(min(u_input.d.zx, vec2<u32>(4294967295u, 0u)), ~u_input.d.zx)), global3[_wgslsmith_index_u32(u_input.c, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(536f, 1104f) * _wgslsmith_f_op_f32(-781f * -1822f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-555f)) * -1000f), _wgslsmith_f_op_f32(-610f - -1000f), -411f)))), 9u)];
    global1 = array<u32, 6>();
    var_0 = Struct_1(6378u);
    global1 = array<u32, 6>();
    global0 = array<Struct_1, 9>();
    return Struct_3(Struct_2(vec4<i32>(countOneBits(select(u_input.a, 1i, false)), ~(-u_input.e), -_wgslsmith_div_i32(u_input.e, 2147483647i), min(1i, -2147483647i))), -vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, reverseBits(u_input.b.x)), 1116f, 0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1637f, -125f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-865f)) + 1089f), _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(-1174f - 1543f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(func_5(~func_1(), Struct_3(Struct_2(vec4<i32>(u_input.e, u_input.e, u_input.b.x, u_input.b.x)), vec3<i32>(-43739i, -1i, u_input.a), -662f, _wgslsmith_div_u32(u_input.c, 1u), -851f))), ~reverseBits(80803u));
    var var_1 = select(any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), true);
    var var_2 = vec3<u32>(4294967295u, var_0.d, u_input.c);
    let var_3 = ~((var_2.x >> (global1[_wgslsmith_index_u32(func_5(abs(var_0.b.x), var_0), 6u)] % 32u)) >> (func_6(global0[_wgslsmith_index_u32(max(~global1[_wgslsmith_index_u32(62493u, 6u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(28661u, 6u)], global1[_wgslsmith_index_u32(var_2.x, 6u)])), 9u)], 0u).d % 32u));
    global3 = array<vec3<i32>, 13>();
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(26320u ^ _wgslsmith_dot_vec2_u32(~(~var_2.xy), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_3), abs(var_2.yy))), ~(~_wgslsmith_sub_u32(~1u, global1[_wgslsmith_index_u32(~4294967295u, 6u)]))), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-562f)), var_0.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, 1528f) - vec2<f32>(var_0.e, -1711f)) * vec2<f32>(var_0.e, -2052f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(841f, 1100f)))))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.d, 17905u, 24364u), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 6u)], 0u, 1u)) & firstTrailingBit(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_4.a, 6u)], 22336u, 0u)), vec4<u32>(12767u, firstLeadingBit(var_0.d), global1[_wgslsmith_index_u32(var_3, 6u)], 19651u)), _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(7812u, var_0.d, 4294967295u, var_2.x)), vec4<u32>(var_4.a, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), abs(u_input.c), var_3))), var_0.d);
}

