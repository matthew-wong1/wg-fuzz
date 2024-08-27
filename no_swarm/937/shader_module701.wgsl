struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -51188i))), Struct_5(Struct_1(vec3<i32>(-27490i, -1i, -10818i))), Struct_5(Struct_1(vec3<i32>(-26035i, -58993i, 17953i))), Struct_5(Struct_1(vec3<i32>(0i, -67068i, i32(-2147483648)))), Struct_5(Struct_1(vec3<i32>(-32273i, -1i, 35646i))), Struct_5(Struct_1(vec3<i32>(2147483647i, -39491i, -1i))), Struct_5(Struct_1(vec3<i32>(-17647i, -23326i, 2147483647i))), Struct_5(Struct_1(vec3<i32>(2395i, 2147483647i, -1i))), Struct_5(Struct_1(vec3<i32>(-27613i, 1i, 26919i))), Struct_5(Struct_1(vec3<i32>(-49620i, 2147483647i, 0i))), Struct_5(Struct_1(vec3<i32>(21070i, 0i, -31122i))), Struct_5(Struct_1(vec3<i32>(1i, 25485i, 14825i))), Struct_5(Struct_1(vec3<i32>(0i, 1i, 12200i))), Struct_5(Struct_1(vec3<i32>(32378i, -22936i, 1i))), Struct_5(Struct_1(vec3<i32>(0i, 2147483647i, -25307i))));

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(12139i, 2147483647i, 12166i)), Struct_1(vec3<i32>(-1i, 27484i, 2147483647i)), Struct_1(vec3<i32>(-1i, 1i, 43098i)), Struct_1(vec3<i32>(6071i, 17734i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 2083i, i32(-2147483648))), Struct_1(vec3<i32>(-21710i, 2919i, 0i)), Struct_1(vec3<i32>(16276i, 16157i, i32(-2147483648))), Struct_1(vec3<i32>(-3968i, 0i, -35376i)));

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    global3 = array<Struct_1, 8>();
    let var_0 = countOneBits(-vec4<i32>(-49990i, _wgslsmith_div_i32(35327i, _wgslsmith_div_i32(2147483647i, u_input.a.x)), _wgslsmith_div_i32(~u_input.b, ~(-60362i)), i32(-1i) * -55302i));
    global3 = array<Struct_1, 8>();
    let var_1 = min(~((min(global4.a, global4.a) ^ 17625u) ^ 74906u), ~arg_0.a);
    let var_2 = firstTrailingBit(1u);
    return vec3<bool>(true | all(vec3<bool>(true, true, true)), !(!any(vec3<bool>(true, true, true))), global4.b <= _wgslsmith_div_f32(arg_1.b, arg_1.b));
}

fn func_2() -> bool {
    var var_0 = select(select(select(vec3<bool>(false, true, true), select(func_3(Struct_2(global4.a, global4.b), Struct_2(1u, global4.b)), func_3(Struct_2(0u, global4.b), Struct_2(60308u, global4.b)), vec3<bool>(true, true, true)), global4.b == -1175f), vec3<bool>(!func_3(Struct_2(global4.a, global4.b), Struct_2(28019u, global4.b)).x, true, true), true), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true)), func_3(Struct_2(min(20900u, global4.a), -1790f), Struct_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.b))))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(2147483647i, u_input.a.x)), ~(-2147483647i), -1i), -1i, 13444i));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_1.a, vec3<i32>(2147483647i, ~var_1.a.x, var_1.a.x)), ~vec3<i32>(-(~u_input.c), -(~(-28856i)), select(2147483647i, -34852i, false) | _wgslsmith_clamp_i32(23922i, u_input.c, var_1.a.x)));
    let var_3 = _wgslsmith_f_op_f32(step(global4.b, -1990f));
    var var_4 = firstLeadingBit(_wgslsmith_mod_vec4_i32(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(4944i, u_input.c, u_input.c, var_2.x), vec4<i32>(var_1.a.x, -26197i, var_1.a.x, -2147483647i))), min(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, var_2.x, -38091i, var_2.x), vec4<i32>(var_1.a.x, var_1.a.x, var_2.x, var_1.a.x)), abs(~vec4<i32>(2147483647i, var_1.a.x, 0i, -1i)))));
    return var_0.x;
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = !func_3(Struct_2(global4.a, global4.b), Struct_2(6956u, global4.b));
    let var_1 = true;
    var var_2 = Struct_4(vec3<u32>(4294967295u, 34525u, ~1u), select(select(!select(var_0, vec3<bool>(false, var_0.x, false), true), select(select(vec3<bool>(arg_0, true, true), var_0, true), !vec3<bool>(var_1, true, false), var_0), all(select(var_0, vec3<bool>(var_0.x, true, var_0.x), var_1))), !select(vec3<bool>(var_1, false, arg_0), select(vec3<bool>(arg_0, var_1, false), vec3<bool>(var_1, true, false), vec3<bool>(var_0.x, false, true)), true), func_3(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 51511u, 16177u, global4.a), vec4<u32>(0u, global4.a, 16964u, global4.a)), global4.b), Struct_2(4294967295u, _wgslsmith_f_op_f32(-612f * global4.b)))), _wgslsmith_div_f32(global4.b, 1613f));
    global3 = array<Struct_1, 8>();
    let var_3 = Struct_3(global4.b, Struct_1(vec3<i32>(-u_input.a.x, ~(7182i | u_input.a.x), u_input.a.x)), Struct_2(~global4.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(492f * global4.b)))), Struct_2(~(~17928u) >> (1u % 32u), _wgslsmith_f_op_f32(-var_2.c)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-u_input.a.x, i32(-1i) * -1i)), _wgslsmith_add_i32(-48536i, u_input.c), u_input.a.x, -(~u_input.c) & _wgslsmith_mult_i32(52194i, -7061i << (global4.a % 32u))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(39042u, ~(var_2.a.x | var_3.d.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 31946u) >> (var_2.a.zx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4.a, 1u), vec2<u32>(34314u, var_2.a.x), var_2.a.xy)), ~0u), _wgslsmith_add_vec4_u32(~(vec4<u32>(32033u, 4294967295u, 0u, 79141u) & _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, var_3.c.a, global4.a), vec4<u32>(4294967295u, 29891u, global4.a, 1u))), vec4<u32>(77217u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1182u, 4294967295u, global4.a, var_2.a.x)), vec4<u32>(35473u, global4.a, var_3.c.a, 7365u)), 48026u, 1u)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    global0 = array<Struct_5, 15>();
    let var_0 = func_4(false & !func_2());
    var var_1 = firstLeadingBit(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(346i, 7560i), arg_1));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - -1009f))) - 1448f), Struct_1(min(u_input.a, u_input.a)), Struct_2(min(global4.a, ~_wgslsmith_mod_u32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-971f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(204f, -1076f)))))), Struct_2(_wgslsmith_dot_vec4_u32(func_4(false), min(func_4(true), ~var_0)), 362f), vec4<i32>(-14761i, arg_2.x << (~(~1u) % 32u), ~arg_1, 1i));
    let var_3 = vec3<i32>(-_wgslsmith_div_i32(u_input.a.x, min(15267i, -17329i)), _wgslsmith_sub_i32(firstTrailingBit(arg_1), var_2.e.x), i32(-1i) * -reverseBits(~var_2.b.a.x));
    return Struct_2(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, 97211u), _wgslsmith_div_u32(~var_2.d.a, 4294967295u)), var_2.c.a), 1488f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(336f, var_0.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1278f, global4.b), vec2<f32>(global4.b, 1940f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b, _wgslsmith_f_op_f32(-var_0.b), -1122f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1511f, 403f, -1248f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, 1000f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b, 747f, 1162f) + vec3<f32>(-1490f, arg_0.b, 229f)), false)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), -229f)), func_1(arg_1.a, min(arg_1.e.x, 14115i), vec2<i32>(-2147483647i, 2448i), _wgslsmith_f_op_f32(f32(-1f) * -631f)).b) - vec3<f32>(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_0.b)))));
    global4 = Struct_2(var_0.a << (arg_0.a % 32u), _wgslsmith_f_op_f32(arg_1.d.b - var_2.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + func_1(arg_1.a, u_input.c, vec2<i32>(-83661i, -62868i), -1124f).b) + var_2.x))), _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-612f * 176f))), !func_2())));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-388f))) - _wgslsmith_f_op_f32(1427f * 309f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(-1000f + var_2.x), true)) * -1000f))));
}

fn func_6(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(global4.b, Struct_1(~(~_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.c, 22695i)))), arg_0, arg_0, -(vec4<i32>(-1i) * -min(vec4<i32>(u_input.b, u_input.a.x, 8761i, 1i), vec4<i32>(u_input.c, u_input.a.x, -14057i, u_input.c))));
    var var_1 = vec2<u32>(firstLeadingBit(global4.a), 4294967295u);
    global0 = array<Struct_5, 15>();
    var var_2 = u_input.c;
    let var_3 = var_0;
    return vec4<i32>(var_3.e.x, 2147483647i, var_3.b.a.x, ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 15>();
    let var_0 = ~global4.a;
    var var_1 = func_6(Struct_2(var_0, _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_f32(step(global4.b, global4.b)), u_input.b, u_input.a.xz, 462f), Struct_3(_wgslsmith_f_op_f32(max(global4.b, 682f)), Struct_1(vec3<i32>(u_input.b, u_input.a.x, -28149i)), Struct_2(global4.a, global4.b), func_1(-1407f, u_input.a.x, vec2<i32>(u_input.a.x, -83902i), global4.b), reverseBits(vec4<i32>(u_input.c, u_input.c, -1i, u_input.b)))))));
    var var_2 = global0[_wgslsmith_index_u32(20356u, 15u)];
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 129087u), vec3<u32>(global4.a, 0u, 65608u))) | global4.a, ~(firstTrailingBit(vec2<u32>(global4.a, var_0) << (vec2<u32>(5286u, global4.a) % vec2<u32>(32u))) ^ vec2<u32>(0u & global4.a, min(0u, var_0))), countOneBits(vec4<u32>(36259u, 55872u, max(global4.a, global4.a) >> (1u % 32u), firstTrailingBit(~26070u))), select(~abs(vec3<u32>(88555u, global4.a, 30013u) ^ vec3<u32>(global4.a, global4.a, var_0)), countOneBits(~min(vec3<u32>(57585u, global4.a, 1u), vec3<u32>(0u, 4294967295u, global4.a))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))), global4.a);
}

