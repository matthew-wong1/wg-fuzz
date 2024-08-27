struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 54680u);

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<u32>(45432u, 0u, 41362u)), vec2<f32>(2354f, 633f), 33028i), 2147483647i, 883f), Struct_4(Struct_2(vec2<u32>(59100u, 36411u), Struct_1(vec3<u32>(4294967295u, 58782u, 0u)), vec2<f32>(844f, -1380f), -13903i), 2147483647i, 535f), Struct_4(Struct_2(vec2<u32>(1u, 58661u), Struct_1(vec3<u32>(94736u, 63984u, 1879u)), vec2<f32>(-1000f, -1278f), 28872i), 15718i, 1051f), Struct_4(Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<u32>(28271u, 4294967295u, 4294967295u)), vec2<f32>(-659f, -1000f), -64730i), -53988i, -1135f), Struct_4(Struct_2(vec2<u32>(8427u, 75780u), Struct_1(vec3<u32>(0u, 1u, 79701u)), vec2<f32>(-199f, 1271f), 1i), 2147483647i, 275f), Struct_4(Struct_2(vec2<u32>(58290u, 73507u), Struct_1(vec3<u32>(1u, 56882u, 1u)), vec2<f32>(1039f, -1986f), -7206i), 1i, -454f), Struct_4(Struct_2(vec2<u32>(1u, 1u), Struct_1(vec3<u32>(75658u, 86504u, 1u)), vec2<f32>(1344f, 844f), -19521i), -29220i, 1288f), Struct_4(Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<u32>(1u, 1u, 0u)), vec2<f32>(907f, -248f), 2147483647i), -1i, 352f), Struct_4(Struct_2(vec2<u32>(1u, 40624u), Struct_1(vec3<u32>(47932u, 18788u, 4294967295u)), vec2<f32>(777f, -1261f), -1i), -1i, 367f), Struct_4(Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<u32>(72021u, 1u, 0u)), vec2<f32>(261f, -1066f), -1i), 23213i, 1229f));

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: array<vec2<f32>, 32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = arg_0.a.b;
    global1 = array<Struct_4, 10>();
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(~firstTrailingBit(_wgslsmith_add_vec2_u32(var_0.a.xx, vec2<u32>(global0.x, var_0.a.x))), max(vec2<u32>(100733u, arg_0.a.a.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.a.x), var_0.a.zz))), Struct_1(vec3<u32>(~(~28212u), ~var_0.a.x, ~_wgslsmith_dot_vec2_u32(global2.b.a.yz, var_0.a.zx))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1069f, arg_0.a.c.x) * _wgslsmith_f_op_f32(-arg_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, 1540f) - arg_1)), _wgslsmith_f_op_f32(-global2.c.x)), -51i);
    let var_2 = min(global2.b.a, var_0.a);
    var var_3 = Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.a.c.x, var_1.c.x) * vec3<f32>(-602f, -1000f, arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(837f, global2.c.x)) - _wgslsmith_f_op_f32(-var_1.c.x)), global2.c.x, _wgslsmith_f_op_f32(max(-1447f, _wgslsmith_div_f32(arg_0.a.c.x, global2.c.x))))), Struct_2(reverseBits(~global2.a & select(vec2<u32>(global2.b.a.x, var_2.x), vec2<u32>(var_2.x, global0.x), vec2<bool>(true, false))), arg_0.a.b, _wgslsmith_f_op_vec2_f32(floor(arg_0.a.c)), max(min(0i >> (global0.x % 32u), var_1.d), var_1.d)), arg_0.a);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(32077i, -var_3.a.d, 2147483647i, 0i)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(max(u_input.c, vec3<i32>(global2.d, u_input.b.x, 17150i)), u_input.c | u_input.c), firstTrailingBit(9877i | u_input.a.x), 1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(33683i, -2147483647i, global2.d, var_1.d), select(vec4<i32>(19760i, 2147483647i, u_input.c.x, global2.d), vec4<i32>(-17732i, arg_0.b, global2.d, global2.d), vec4<bool>(arg_2, false, true, true))) >> (vec4<u32>(55108u, ~arg_0.a.a.x, ~var_1.a.x, 1u) % vec4<u32>(32u))), countOneBits(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-8291i, -10515i, -2448i, 1i)), vec4<i32>(u_input.a.x, var_1.d, -2147483647i, u_input.b.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -45292i, 29224i), vec4<i32>(u_input.b.x, arg_0.a.d, -32525i, var_3.c.d)), -vec4<i32>(u_input.c.x, global2.d, var_3.a.d, u_input.b.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(global2.a, Struct_1(_wgslsmith_sub_vec3_u32(~(global2.b.a ^ global2.b.a), arg_0.zzy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + _wgslsmith_f_op_f32(-1794f - -2512f)) * 1f), -132f), _wgslsmith_clamp_i32(~2147483647i, ~global2.d, u_input.b.x));
    var var_1 = global2.b;
    let var_2 = _wgslsmith_sub_i32(var_0.d, func_3(global1[_wgslsmith_index_u32(~(0u ^ global2.b.a.x), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), any(arg_2.xx)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, global2.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)))));
    global4 = array<vec2<f32>, 32>();
    return _wgslsmith_f_op_f32(step(-1000f, 1064f));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(~_wgslsmith_div_vec2_u32(global2.b.a.zz, ~global2.b.a.zz | global2.b.a.zx), global2.b, _wgslsmith_f_op_vec2_f32(select(global2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_vec2_f32(ceil(global2.c))), vec2<bool>(~global0.x < 1u, arg_2))), _wgslsmith_add_i32(-1i, u_input.a.x));
    global3 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-254f)) - global2.c.x);
    let var_2 = Struct_3(Struct_2(~min(~vec2<u32>(global2.b.a.x, 1u), global2.a), Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.a.x, 1u, var_0.b.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, global2.b.a.x, 1u), vec3<u32>(global0.x, 4192u, 54925u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3))), global2.d), arg_0.wyz, Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(17740u, 32u)] + arg_3), global4[_wgslsmith_index_u32(countOneBits(global2.a.x), 32u)]))), _wgslsmith_mult_i32(-abs(u_input.a.x), max(-2147483647i, global2.d ^ global2.d))), Struct_2(vec2<u32>(28881u, ~abs(35265u)), global2.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(213f, 1058f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c)))), 1i));
    var var_3 = _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(var_0.a.x), var_2.d.b.a.x), firstLeadingBit(~var_0.a)), ~_wgslsmith_add_vec2_u32(var_0.b.a.xy, vec2<u32>(1u, var_0.a.x)), false), abs(vec2<u32>(var_0.b.a.x, 32058u)));
    return select(vec3<bool>(-585f <= _wgslsmith_f_op_f32(-var_2.a.c.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - 589f)) >= _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(step(var_2.a.c.x, arg_3.x)))), !select(vec3<bool>(4294967295u >= global0.x, 226f >= arg_3.x, select(arg_1, true, arg_1)), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec3<bool>(arg_2, true, arg_1))), any(vec3<bool>(true, true, true))), select(select(vec3<bool>(any(vec3<bool>(false, arg_1, false)), select(false, false, arg_1), true), !(!vec3<bool>(arg_1, true, arg_2)), false), select(vec3<bool>(true, true, arg_3.x > arg_3.x), vec3<bool>(true, false, any(vec4<bool>(arg_2, arg_1, arg_2, false))), any(vec4<bool>(false, false, arg_1, arg_1))), vec3<bool>(false, any(vec2<bool>(arg_1, arg_2)) & true, !arg_1)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(vec2<u32>(arg_2.b.a.x, _wgslsmith_mult_u32(53150u, abs(30700u)))), arg_2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.c - vec2<f32>(global2.c.x, 1503f)))), vec2<f32>(_wgslsmith_f_op_f32(func_2(~vec4<u32>(global0.x, 36800u, arg_1.a.a.x, global2.a.x), false, vec3<bool>(false, arg_0.x, arg_0.x))), 640f)), -30271i);
    let var_1 = vec2<u32>(global2.a.x, 1u);
    let var_2 = global2.b.a.yz;
    global0 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(83324u, 50046u) ^ global2.a), vec2<u32>(reverseBits(var_0.a.x), firstLeadingBit(0u))), ~global2.a), _wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 1u, 35868u), vec4<u32>(56084u, 4294967295u, global2.a.x, 0u))), countOneBits(vec2<u32>(0u, var_1.x))) << (var_0.a % vec2<u32>(32u)), true);
    global3 = any(vec2<bool>(true, arg_0.x));
    return Struct_2(_wgslsmith_mult_vec2_u32(firstLeadingBit(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_2.x), arg_2.b.a.yx, vec2<u32>(var_2.x, var_2.x)))), max(min(vec2<u32>(var_1.x, 22671u), ~vec2<u32>(var_2.x, 33217u)), vec2<u32>(1u, 17601u))), Struct_1(arg_2.b.a ^ max(arg_1.d.b.a, global2.b.a)), arg_1.a.c, min(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1187i, -13740i, -14616i)), vec4<i32>(global2.d, abs(-1i), ~var_0.d, -1i)), 1i));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = func_5(func_4(vec4<f32>(-306f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, arg_2.a.x, global0.x, arg_2.a.x), true, vec3<bool>(arg_1, true, false))) * _wgslsmith_f_op_f32(select(-1040f, -414f, true))), _wgslsmith_f_op_f32(step(-1009f, 733f))), arg_1, arg_1, arg_0), Struct_3(Struct_2(~global2.a, Struct_1(vec3<u32>(arg_2.a.x, global2.a.x, 0u)), _wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_mod_i32(global2.d, 0i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, -533f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, -111f)))))), Struct_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, arg_2.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global2.b.a.x), vec2<u32>(0u, global0.x))), global2.b, _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, -428f))), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)))), -5821i), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(30338u, global0.x), global2.b.a.yz), arg_2, global2.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, global2.d, u_input.c.x, global2.d), -vec4<i32>(u_input.c.x, 1201i, global2.d, u_input.c.x)))), Struct_2(select(firstTrailingBit(vec2<u32>(global2.a.x, 61017u) >> (vec2<u32>(1u, global2.a.x) % vec2<u32>(32u))), ~(~vec2<u32>(global2.a.x, arg_2.a.x)), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), arg_1), !vec2<bool>(arg_1, arg_1))), global2.b, arg_0, -abs(global2.d)));
    var var_1 = global2.c.x;
    var var_2 = firstLeadingBit(~(~_wgslsmith_mult_u32(~arg_2.a.x, 69437u << (arg_2.a.x % 32u))));
    return Struct_2(vec2<u32>(~global0.x & ~(arg_2.a.x & 5578u), var_0.a.x), Struct_1(vec3<u32>(37763u, global0.x, _wgslsmith_add_u32(1u, 1u)) >> (~reverseBits(arg_2.a) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-342f, 226f) * _wgslsmith_f_op_f32(f32(-1f) * -1015f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1959f * 415f) * _wgslsmith_f_op_f32(328f + var_0.c.x))), _wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(var_0.c.x * 1441f)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(-58538i, ~global2.d)), 9108i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(0u), ~global0.x, global0.x), 10u)];
    global0 = var_0.a.a;
    let var_1 = u_input.c;
    let var_2 = vec4<bool>(true, true, true, false);
    global2 = func_1(var_0.a.c, _wgslsmith_mod_i32(18238i, ~var_1.x) > 1i, global2.b);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.c.x)) + 547f) - -315f), _wgslsmith_f_op_f32(global2.c.x * global2.c.x)));
    let var_4 = Struct_3(var_0.a, vec3<f32>(var_0.c, global2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global2.c.x) - _wgslsmith_f_op_f32(var_0.a.c.x - 1164f))))), Struct_2(vec2<u32>(33436u, firstTrailingBit(min(10663u, global0.x))), var_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.c.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.c)) * global4[_wgslsmith_index_u32(select(global2.b.a.x, 78921u, var_2.x), 32u)])), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d, var_1.x, 2147483647i, var_0.b), vec4<i32>(-1i, 18361i, var_1.x, 5013i)), ~(-2147483647i), _wgslsmith_add_i32(global2.d, 2147483647i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, 1i, var_0.b), global2.d ^ var_0.b))), func_5(vec3<bool>(any(var_2.xyz), var_2.x, true), Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.c.x, 530f, -880f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2439f, global2.c.x, global2.c.x))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, global2.c.x)), true, func_5(vec3<bool>(false, true, false), Struct_3(Struct_2(global2.a, Struct_1(vec3<u32>(44991u, global2.b.a.x, 0u)), global2.c, 39452i), vec3<f32>(1294f, global2.c.x, var_0.c), var_0.a, Struct_2(var_0.a.b.a.zx, global2.b, vec2<f32>(-479f, var_0.c), 21654i)), Struct_2(var_0.a.a, global2.b, vec2<f32>(-387f, global2.c.x), -2147483647i)).b), func_5(var_2.zzx, Struct_3(Struct_2(vec2<u32>(4294967295u, 1u), var_0.a.b, var_0.a.c, var_0.b), vec3<f32>(-2279f, var_0.c, global2.c.x), var_0.a, var_0.a), Struct_2(global2.a, Struct_1(vec3<u32>(124816u, var_0.a.b.a.x, global2.a.x)), var_0.a.c, 24382i))), var_0.a));
    global1 = array<Struct_4, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_4.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(633f, var_0.c, 158f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, -100f, -1033f), var_4.b, var_2.x))))))), ~countOneBits(~max(vec3<u32>(28480u, var_4.c.b.a.x, var_0.a.a.x), vec3<u32>(var_0.a.a.x, 12524u, var_0.a.a.x))), _wgslsmith_add_u32(~(~var_0.a.b.a.x), var_4.c.b.a.x), 650f);
}

