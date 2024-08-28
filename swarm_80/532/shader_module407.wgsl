struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, vec4<u32>(0u, 4294967295u, 35292u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = Struct_3(select(u_input.a.x, 1547u, true), global0.b);
    global0 = Struct_3(u_input.a.x, ~(~(~global0.b)) >> (~(~(~vec4<u32>(arg_1.b, global0.a, 1u, global0.a))) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-(i32(-1i) * -arg_0.x), -arg_0.x), _wgslsmith_div_i32(1i, u_input.b));
    let var_1 = Struct_2(-2354f, ~arg_0, vec2<f32>(_wgslsmith_f_op_f32(min(-2002f, _wgslsmith_f_op_f32(round(-1401f)))), -136f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_div_f32(1830f, var_1.a)), -3053f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1518f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-690f, -1000f, -1095f, -1059f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2239f, -191f, 407f, var_1.c.x)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))))));
    return abs(arg_1.a.yx) & min(arg_1.a.xy, arg_1.c);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = Struct_3(abs(_wgslsmith_add_u32(global0.b.x, ~4294967295u)), u_input.a);
    let var_0 = -(~(-vec4<i32>(2147483647i, u_input.d, u_input.b, -11903i)) ^ ~vec4<i32>(u_input.d, -2147483647i, 28041i, ~29481i));
    let var_1 = Struct_3(1u, u_input.a);
    global0 = Struct_3(min(countOneBits((var_1.a << (49074u % 32u)) >> (6785u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(func_3(var_0, Struct_1(u_input.a.www, global0.a, var_1.b.yx)), vec2<u32>(global0.b.x, 13986u) >> (var_1.b.yz % vec2<u32>(32u))), ~(~0u))), _wgslsmith_div_vec4_u32(vec4<u32>(76532u, ~(~4294967295u), var_1.b.x, u_input.a.x), ~(vec4<u32>(global0.b.x, 0u, 0u, global0.a) >> (u_input.a % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_dot_vec3_i32(-var_0.zyw, -var_0.wzy);
    return Struct_2(-226f, abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(48020i, -32961i, var_0.x, 68326i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.x, u_input.c), var_0.wxx), -2147483647i ^ var_0.x, 1i, -var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-1000f, 1f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1257f, 1259f)) * vec2<f32>(-555f, 400f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-769f, -568f) + vec2<f32>(-1000f, 1202f)), vec2<f32>(-1853f, 909f), vec2<bool>(true, true))), !(var_0.x > 51249i)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    global0 = arg_2.e;
    global0 = Struct_3(_wgslsmith_clamp_u32(~abs(abs(global0.a)), abs(global0.b.x), min(u_input.a.x, ~(~u_input.a.x))), abs(min(arg_2.e.b, ~vec4<u32>(arg_2.e.a, global0.b.x, 4294967295u, u_input.a.x))));
    let var_0 = func_2(arg_2.e.b.wx);
    var var_1 = Struct_1(global0.b.yzx, abs(_wgslsmith_sub_u32(select(~21287u, ~4294967295u, any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true))), global0.b.x)), u_input.a.zz);
    let var_2 = func_2(~(~u_input.a.xx));
    return Struct_3(~(~u_input.a.x), ~vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(arg_2.e.a, 52390u << (0u % 32u)), var_1.a.x, ~1u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_add_u32(u_input.a.x, global0.b.x), ~(~(~countOneBits(global0.b))));
    var var_1 = func_4(func_2(~arg_1.c), -1346f, Struct_4(true, min(~(vec3<i32>(u_input.d, 0i, -1i) & vec3<i32>(u_input.b, u_input.d, u_input.c)), firstTrailingBit(abs(vec3<i32>(u_input.d, 2147483647i, u_input.b)))), ~func_2(countOneBits(vec2<u32>(arg_1.c.x, 0u))).b.x, func_2(~(~vec2<u32>(global0.a, 0u))), var_0));
    var_1 = func_4(func_2(vec2<u32>(arg_1.b, firstTrailingBit(func_3(vec4<i32>(-37935i, u_input.c, -1i, u_input.d), arg_1).x))), _wgslsmith_f_op_f32(min(-1124f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2357f + -788f) + _wgslsmith_f_op_f32(-839f - -273f)), -1933f)))), Struct_4(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(true, false)), arg_0)), reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.d, -1i, -24410i), vec3<i32>(58909i, u_input.b, 63679i), vec3<i32>(-1i, -1i, u_input.c))), _wgslsmith_clamp_i32(-19068i, 1i, u_input.d), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(566f)) + _wgslsmith_f_op_f32(487f * -242f)), vec4<i32>(~u_input.b, u_input.b, -3695i, u_input.b << (arg_1.a.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, -2068f)))), func_4(Struct_2(-398f, vec4<i32>(-2147483647i, u_input.c, -17235i, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-996f, 739f) + vec2<f32>(192f, 1330f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1405f, 100f, arg_0)) - -1694f), Struct_4(select(arg_0, true, true), vec3<i32>(u_input.b, u_input.c, u_input.c), i32(-1i) * -1i, Struct_2(1215f, vec4<i32>(-18619i, u_input.b, u_input.d, u_input.d), vec2<f32>(-1170f, -445f)), Struct_3(0u, vec4<u32>(1u, 39325u, var_1.b.x, 51991u))))));
    global0 = var_0;
    global0 = var_0;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(_wgslsmith_mod_i32(1857i, u_input.b) < ~u_input.c, Struct_1(vec3<u32>(global0.a, 34717u, u_input.a.x) << (vec3<u32>(12662u, 78136u, u_input.a.x) % vec3<u32>(32u)), 1u, vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(u_input.a) & ~vec4<u32>(u_input.a.x, global0.a, 0u, global0.b.x), _wgslsmith_div_vec4_u32(global0.b, vec4<u32>(1u, ~u_input.a.x, global0.b.x, _wgslsmith_mult_u32(1u, u_input.a.x)))));
    let var_0 = func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, global0.b.x, 79575u), firstTrailingBit(global0.a)), vec2<u32>(4294967295u, 0u) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))) & ~(~vec2<u32>(4294967295u, global0.b.x)));
    let var_1 = Struct_1(u_input.a.xww, 1u, ~u_input.a.xz);
    global0 = Struct_3(47840u & u_input.a.x, vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, global0.b.x), ~vec3<u32>(global0.a, var_1.a.x, 23474u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(func_1(true, var_1), _wgslsmith_dot_vec2_u32(var_1.a.xz, vec2<u32>(u_input.a.x, var_1.c.x))), 15968u), _wgslsmith_clamp_u32(4294967295u, ~var_1.b | func_3(vec4<i32>(-2147483647i, 0i, var_0.b.x, var_0.b.x), Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 1u), var_1.b, global0.b.xy)).x, 4294967295u), global0.a));
    let var_2 = vec4<bool>(true, _wgslsmith_clamp_u32(~u_input.a.x << ((37532u >> (global0.a % 32u)) % 32u), u_input.a.x, ~var_1.b) != _wgslsmith_dot_vec3_u32(~min(var_1.a, vec3<u32>(52951u, global0.a, 1u)), vec3<u32>(853u, countOneBits(12818u), 1u)), false, (-330f != var_0.a) & !(var_1.a.x != (u_input.a.x & var_1.a.x)));
    global0 = Struct_3(0u, (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.c.x, 47155u, var_1.a.x, 33161u), ~vec4<u32>(5640u, var_1.b, var_1.c.x, u_input.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1731u, 1u, u_input.a.x, 65608u) & vec4<u32>(0u, u_input.a.x, 12839u, 16698u), vec4<u32>(var_1.a.x, global0.b.x, 17133u, var_1.b) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) << (min(reverseBits(~global0.b), vec4<u32>(var_1.a.x, 21593u, ~0u, select(4294967295u, 1u, var_2.x))) % vec4<u32>(32u)));
    var var_3 = var_0;
    global0 = Struct_3(0u, vec4<u32>(global0.b.x, ~var_1.a.x, 51572u, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.b.x, global0.a), var_1.c.x, 61516u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.a - -556f), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), 142f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x * var_3.c.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~global0.a, ~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, global0.b.x, u_input.a.x), var_1.a), u_input.a.x, global0.b.x), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global0.b, global0.b), ~vec4<u32>(u_input.a.x, 42647u, 0u, global0.a)), ~(vec4<u32>(u_input.a.x, var_1.c.x, 1u, 4294967295u) | vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)))), u_input.a.x, func_3(~(vec4<i32>(-1i) * -vec4<i32>(u_input.c, var_3.b.x, var_3.b.x, var_0.b.x)), Struct_1(_wgslsmith_mod_vec3_u32(~var_1.a, select(u_input.a.zyx, vec3<u32>(var_1.a.x, 46776u, u_input.a.x), var_2.x)), _wgslsmith_add_u32(var_1.c.x, 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, global0.a), global0.b.ww))).x);
}

