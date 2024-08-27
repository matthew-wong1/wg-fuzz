struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 71368u), true, vec3<bool>(true, false, false), -176f);

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-45030i, u_input.a.x), abs(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.a.a, 11128i), arg_0.a.a | arg_0.a.a))), u_input.a, _wgslsmith_clamp_vec2_i32(countOneBits(u_input.a), u_input.a, _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.a.a, 16277i), vec3<i32>(arg_0.a.a, -34763i, u_input.d)), -2147483647i))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.a.a, var_0.x ^ u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-3384i, 48859i, u_input.a.x, u_input.a.x) & vec4<i32>(-1i, -35549i, arg_0.a.a, -2147483647i), vec4<i32>(22599i, 1i, 1697i, -48843i)))), Struct_3(Struct_2(_wgslsmith_mod_vec2_u32(u_input.e.xz, _wgslsmith_mod_vec2_u32(u_input.e.xx, vec2<u32>(u_input.b, u_input.c.x))), global1.c.x | global1.c.x, global1.c, _wgslsmith_f_op_f32(-global1.d))), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(0u, 0u), u_input.e.x & global1.a.x, max(global1.a.x, global1.a.x))) << (~(u_input.e | (u_input.e >> (vec3<u32>(u_input.e.x, 1u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(global1.d)));
    var_0 = -abs(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_0.a.a), vec2<i32>(-1i, -87909i))));
    global2 = array<vec2<bool>, 6>();
    global0 = ~(~reverseBits(1u));
    return _wgslsmith_clamp_u32(global1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_mult_vec3_u32(u_input.e, ~vec3<u32>(global1.a.x, var_1.c.x, 27663u))), global1.a.x), 1u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_4) -> u32 {
    let var_0 = vec4<u32>(func_3(Struct_5(arg_3.a)), 50390u, 4294967295u, u_input.c.x) | ~u_input.c;
    var var_1 = vec2<f32>(arg_0.d, arg_0.d);
    var var_2 = arg_3.b.a;
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * arg_2.x))))));
    let var_3 = arg_3;
    return _wgslsmith_mod_u32(67422u, _wgslsmith_mod_u32(25082u, ~(~var_2.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_4(arg_0, Struct_3(Struct_2(u_input.e.yz, true, vec3<bool>(select(global1.b, true, global1.b), global1.d < 698f, false), _wgslsmith_f_op_f32(ceil(2448f)))), vec3<u32>(arg_2, _wgslsmith_mult_u32(abs(~0u), _wgslsmith_mod_u32(func_3(Struct_5(Struct_1(3296i))), max(arg_1, 1u))), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -2043f))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2249f), _wgslsmith_f_op_f32(floor(var_0.d))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(886f, arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(648f, global1.d) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, global1.d) - vec2<f32>(arg_3, global1.d)))), !vec2<bool>(!var_0.b.a.b, var_0.b.a.c.x || global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(1000f + 887f))), 721f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3, -530f), vec2<f32>(-3205f, -593f))) * vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -262f) * vec2<f32>(821f, arg_3)))))));
    var_1 = vec2<f32>(-1599f, 263f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global1.d, 1303f, global1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -909f, 672f, 519f) + vec4<f32>(var_0.b.a.d, var_1.x, var_0.b.a.d, var_1.x)))))));
    var var_3 = vec4<f32>(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, _wgslsmith_div_f32(458f, 172f))), -126f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3, 935f)) + arg_3), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(step(-1843f, -340f)))), global1.d);
    return Struct_2(vec2<u32>(global1.a.x, arg_1), var_0.b.a.b, var_0.b.a.c, 214f);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    global1 = func_4(Struct_1(0i), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(reverseBits(12368u), reverseBits(u_input.e.x), abs(36278u), 0u)), vec4<u32>(35348u, ~_wgslsmith_mod_u32(global1.a.x, u_input.b), _wgslsmith_clamp_u32(4294967295u, global1.a.x & 53343u, arg_0.x), abs(func_2(Struct_2(vec2<u32>(0u, 42113u), false, global1.c, arg_2.x), false, arg_2.zyx, Struct_4(Struct_1(u_input.d), Struct_3(Struct_2(vec2<u32>(arg_1, global1.a.x), global1.b, global1.c, 717f)), vec3<u32>(1u, 34030u, global1.a.x), 766f))))), select(_wgslsmith_sub_u32(reverseBits(1u >> (u_input.e.x % 32u)), _wgslsmith_mult_u32(~global1.a.x, ~21720u)), _wgslsmith_mod_u32(func_3(Struct_5(Struct_1(u_input.d))), u_input.e.x >> (u_input.c.x % 32u)) ^ min(~4294967295u, u_input.e.x ^ 0u), !((global1.c.x && true) && true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1285f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f * 856f) + global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(abs(772f)))))));
    let var_0 = ~vec3<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global1.a.x, arg_1, 52780u), vec4<u32>(arg_0.x, 4294967295u, 0u, 0u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(min(arg_1, arg_0.x), _wgslsmith_mult_u32(14837u, 1u)), 25806u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_1) ^ vec2<u32>(arg_0.x, 39278u), global1.a)));
    global1 = Struct_2(vec2<u32>(global1.a.x, ~1u), _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.c.x, global1.a.x, u_input.c.x, 4294967295u)), ~vec4<u32>(23898u, u_input.c.x, 1u, 67176u)) > 130654u, select(global1.c, global1.c, global1.c), 421f);
    global0 = func_3(Struct_5(Struct_1(u_input.a.x)));
    global1 = func_4(Struct_1(~countOneBits(78938i)), (~select(var_0.x, u_input.c.x, true) << (select(firstTrailingBit(arg_1), ~16459u, any(vec3<bool>(global1.b, global1.c.x, true))) % 32u)) >> (~_wgslsmith_dot_vec2_u32(min(var_0.yy, vec2<u32>(74168u, arg_1)), ~var_0.yx) % 32u), ~(~(arg_0.x | 45807u)) ^ ~(~global1.a.x), _wgslsmith_f_op_f32(-arg_2.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(553f, _wgslsmith_f_op_f32(-arg_2.x)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = global1.c.yz;
    let var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.e.x, global1.a.x)), vec2<u32>(9892u, global1.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), false, global1.c, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(round(-1130f)))));
    let var_2 = u_input.a.x;
    let var_3 = (_wgslsmith_add_u32(select(var_1.a.a.x, 1u, global1.b) << (53659u % 32u), 9416u) == _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x ^ 20993u, ~var_1.a.a.x), vec2<u32>(u_input.b, ~global1.a.x))) && !(all(vec2<bool>(true, global1.b)) & true);
    var var_4 = vec4<i32>(-_wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_add_i32(0i, u_input.a.x)) >> ((var_1.a.a.x & min(1u, arg_0.x | 4294967295u)) % 32u), abs(countOneBits(-1197i)) << (_wgslsmith_mult_u32(~_wgslsmith_div_u32(1u, 14215u), select(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(var_1.a.a.x, u_input.c.x, global1.a.x, var_1.a.a.x)), _wgslsmith_dot_vec3_u32(arg_0.xyw, u_input.c.ywy), all(global2[_wgslsmith_index_u32(global1.a.x, 6u)]))) % 32u), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(4791i, 1i, 2147483647i, u_input.d), -vec4<i32>(-1i, 8883i, var_2, u_input.d)), u_input.d), firstLeadingBit(abs(firstLeadingBit(1i)))), 2147483647i);
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(global1.a >> (reverseBits(~u_input.c.yw) % vec2<u32>(32u)), false, !global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1543f), global1.d)), -1543f))));
    global2 = array<vec2<bool>, 6>();
    var_0 = func_5(u_input.c, vec2<f32>(_wgslsmith_f_op_f32(func_1(~firstTrailingBit(u_input.c), _wgslsmith_sub_u32(reverseBits(global1.a.x), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-965f, 1097f, global1.d, -822f) - vec4<f32>(global1.d, 1087f, var_0.a.d, 876f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1710f))));
    var var_1 = Struct_4(Struct_1(-8109i), func_5(~vec4<u32>(0u, u_input.c.x, u_input.b, 4294967295u), vec2<f32>(var_0.a.d, -1423f)), u_input.e ^ ~firstLeadingBit(vec3<u32>(25403u, u_input.c.x, 0u)), _wgslsmith_f_op_f32(floor(func_4(Struct_1(-2147483647i), ~u_input.c.x, ~abs(var_0.a.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.d)))).d)));
    var var_2 = var_0.a;
    var var_3 = countOneBits(-var_1.a.a) & u_input.a.x;
    let var_4 = any(!select(vec4<bool>(var_0.a.c.x, var_1.b.a.a.x == 14728u, true, var_0.a.b), !(!vec4<bool>(false, var_0.a.c.x, false, global1.c.x)), !vec4<bool>(var_2.c.x, var_0.a.c.x, var_0.a.b, true)));
    global1 = func_4(Struct_1((53157i & (u_input.a.x | 36296i)) & var_1.a.a), ~(~(global1.a.x ^ firstTrailingBit(4294967295u))), ~firstLeadingBit(global1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(-func_5(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, global1.a.x, 0u, var_1.b.a.a.x), u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, var_0.a.d) * vec2<f32>(var_0.a.d, var_2.d))).a.d))));
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_0.a.d, var_2.d, var_2.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, var_0.a.d, 497f, var_0.a.d)))))), select(~(~(~vec2<u32>(var_0.a.a.x, var_2.a.x))), ~u_input.c.zx, func_5(u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, var_2.d) - _wgslsmith_f_op_vec2_f32(vec2<f32>(632f, global1.d) + vec2<f32>(-396f, -1184f)))).a.c.zz), _wgslsmith_f_op_f32(f32(-1f) * -323f), ~var_1.b.a.a.x);
}

