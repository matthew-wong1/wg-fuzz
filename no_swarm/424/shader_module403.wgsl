struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2012f;

var<private> global1: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = select(vec2<bool>(all(vec4<bool>(true, true, true, false)), any(arg_0.xyw)), vec2<bool>(true, any(select(vec4<bool>(global2.d, false, global2.b.d, global2.b.d), !arg_0, !vec4<bool>(arg_0.x, true, false, false)))), select(true, false, any(arg_0)));
    let var_1 = -vec2<i32>(reverseBits(~(-1963i)), -2147483647i);
    let var_2 = global2.b.b;
    let var_3 = global2.c >> ((_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.c.x, global2.c.x, 2292u) & (vec4<u32>(4294967295u, global2.c.x, 1u, global2.c.x) & global2.c), global2.c) ^ ~max(global2.c, _wgslsmith_div_vec4_u32(global2.c, global2.c))) % vec4<u32>(32u));
    let var_4 = !vec2<bool>(all(arg_0.xww), any(select(arg_0, vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_0.x, false, false, true))) || arg_0.x);
    return ~firstLeadingBit(~abs(_wgslsmith_mult_vec4_u32(var_3, global2.c)));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    global2 = Struct_2(global1.x, global2.b, vec4<u32>(_wgslsmith_dot_vec3_u32(global2.c.wyy, _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(0u, 1u, 21019u))), arg_0, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(~global2.c, select(global2.c, global2.c, vec4<bool>(global2.d, global2.d, global2.d, global2.b.b)))), 0u), global2.d, -15303i);
    global1 = max(global2.b.a.zy, vec2<i32>(0i, -15552i) | vec2<i32>(global1.x, u_input.a));
    global1 = _wgslsmith_sub_vec2_i32(~global2.b.a.xz, global2.b.a.zz);
    global0 = global2.b.c.x;
    let var_0 = Struct_4(global2.b.c.x, Struct_2(global2.e, Struct_1(min(vec3<i32>(global2.e, 0i, 26016i), -vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a != u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.b.c), global2.b.c, global2.b.d)), global2.d), func_3(!vec4<bool>(true, global2.d, global2.d, global2.b.d)), false, _wgslsmith_add_i32(~(-7300i), -(~u_input.a))), Struct_3(Struct_2(_wgslsmith_sub_i32(1i, -global1.x), Struct_1(firstTrailingBit(vec3<i32>(-1i, global2.e, 7084i)), any(vec3<bool>(false, true, global2.b.b)), _wgslsmith_f_op_vec3_f32(global2.b.c + global2.b.c), false), _wgslsmith_mod_vec4_u32(global2.c, global2.c), max(0u, arg_0) != global2.c.x, i32(-1i) * -u_input.a), Struct_1(~firstTrailingBit(vec3<i32>(u_input.a, 1i, 0i)), all(!vec4<bool>(false, global2.d, global2.b.b, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.c.x, -2487f, 449f) - _wgslsmith_f_op_vec3_f32(-global2.b.c)), all(!vec3<bool>(global2.d, true, false))), vec4<i32>(~(u_input.a >> (global2.c.x % 32u)), select(global2.b.a.x, global1.x, global2.d), 0i, -2147483647i), 1000f, Struct_2(-1i, Struct_1(select(vec3<i32>(global2.e, -2147483647i, global2.e), vec3<i32>(-10467i, global1.x, 0i), global2.d), false, vec3<f32>(-670f, global2.b.c.x, global2.b.c.x), global2.d != global2.b.d), global2.c >> (vec4<u32>(4294967295u, global2.c.x, global2.c.x, global2.c.x) % vec4<u32>(32u)), global2.b.b, u_input.a)), 1036f);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b.c.x, -897f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f * 647f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-655f, 1000f), var_0.d), global2.b.c.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = vec2<i32>(global2.e << ((abs(_wgslsmith_dot_vec3_u32(arg_1.c.zyw, vec3<u32>(1u, 0u, global2.c.x))) & (_wgslsmith_mod_u32(746u, global2.c.x) >> (select(38494u, global2.c.x, true) % 32u))) % 32u), _wgslsmith_add_i32(~global2.b.a.x << (~arg_1.c.x % 32u), _wgslsmith_div_i32(~(-5271i), global1.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(min(global2.c.x, arg_1.c.x), 4294967295u, ~46322u), ~vec3<u32>(arg_1.c.x, arg_1.c.x, 1u)) % 32u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.c.x), _wgslsmith_f_op_f32(756f + _wgslsmith_f_op_f32(trunc(1000f))));
    let var_2 = any(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.b.c.x) >= arg_0.x, false, var_1.x >= _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(775f, global2.b.c.x))), any(select(!vec4<bool>(true, global2.d, true, true), !vec4<bool>(global2.b.b, arg_1.d, true, global2.d), !global2.d))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(abs(-arg_1.b.a.yy), vec2<i32>(_wgslsmith_div_i32(u_input.a, global1.x), abs(0i))), Struct_1(arg_1.b.a, var_2, global2.b.c, arg_1.b.d), global2.c, true, global2.b.a.x), global2.b, ~vec4<i32>(var_0.x, abs(global1.x), _wgslsmith_div_i32(-1i, 1i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(23865i, -993i, u_input.a, arg_1.a), vec4<i32>(global2.a, global2.e, 72122i, u_input.a), vec4<bool>(true, false, true, var_2)), vec4<i32>(-1i, arg_1.a, -10231i, global1.x) >> (vec4<u32>(global2.c.x, arg_1.c.x, global2.c.x, arg_1.c.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(global2.b.c.x - global2.b.c.x), arg_1);
    return Struct_1(~global2.b.a, true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(4294967295u)), vec3<f32>(var_3.e.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c.x * var_3.e.b.c.x)), global2.b.c.x))), all(select(vec4<bool>(global2.d, 1869f < arg_0.x, !var_3.e.b.b, true), vec4<bool>(all(vec2<bool>(true, false)), 2147483647i <= var_3.c.x, all(vec2<bool>(var_3.a.d, false)), any(vec4<bool>(global2.b.d, var_3.a.b.d, true, false))), !arg_1.b.d)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, -639f, 1499f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(global2.c.x)), global2.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b.c.x, arg_2.b.b.c.x, -609f), vec3<f32>(arg_2.b.b.c.x, arg_2.c.b.c.x, arg_2.b.b.c.x)))))), arg_2.b, 0i);
    let var_1 = arg_2.c;
    let var_2 = global2.c.yzx;
    return _wgslsmith_mult_vec2_u32(abs(~var_1.a.c.xy ^ min(vec2<u32>(arg_2.b.c.x, arg_1), _wgslsmith_clamp_vec2_u32(var_1.e.c.yz, vec2<u32>(0u, arg_2.b.c.x), var_2.xx))), abs(global2.c.yy) >> (arg_2.c.e.c.zy % vec2<u32>(32u)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = select(vec4<bool>(true, global2.d, global2.d, !any(vec3<bool>(true, false, true))), select(!select(vec4<bool>(false, true, true, global2.b.b), !vec4<bool>(false, global2.d, global2.b.b, false), !vec4<bool>(global2.b.d, false, true, global2.b.b)), !select(!vec4<bool>(global2.b.d, true, false, global2.d), vec4<bool>(false, true, global2.d, false), select(vec4<bool>(false, global2.b.b, true, true), vec4<bool>(false, false, true, global2.d), global2.b.d)), vec4<bool>(true, false, global2.b.d, all(select(vec3<bool>(true, false, false), vec3<bool>(global2.d, false, false), global2.d)))), false);
    global2 = Struct_2(abs(i32(-1i) * -(2798i ^ arg_2.x)), func_4(_wgslsmith_div_vec3_f32(global2.b.c, vec3<f32>(_wgslsmith_f_op_f32(854f - global2.b.c.x), func_4(vec3<f32>(arg_1, arg_0, -479f), Struct_2(2147483647i, Struct_1(global2.b.a, var_0.x, global2.b.c, global2.b.d), global2.c, global2.d, arg_2.x), u_input.a).c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(-1i, Struct_1(vec3<i32>(global1.x, -2147483647i, arg_2.x), !global2.b.d, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-145f, -1543f, -514f))), global2.c.x <= global2.c.x), select(vec4<u32>(global2.c.x, global2.c.x, 30026u, global2.c.x), _wgslsmith_div_vec4_u32(global2.c, vec4<u32>(0u, 32153u, 67176u, 4294967295u)), vec4<bool>(true, var_0.x, global2.b.d, global2.d)), func_4(global2.b.c, Struct_2(1i, Struct_1(vec3<i32>(-2147483647i, 9272i, -9848i), global2.b.b, global2.b.c, var_0.x), global2.c, true, -1i), 0i).b, 8538i), select(_wgslsmith_mod_i32(-39886i, arg_2.x << (45435u % 32u)), global2.a, true)), vec4<u32>(0u, 0u, global2.c.x, _wgslsmith_div_u32(0u, abs(global2.c.x)) >> (func_3(vec4<bool>(var_0.x, var_0.x, global2.d, global2.b.d)).x % 32u)), true, 6071i);
    let var_1 = Struct_4(arg_1, Struct_2(_wgslsmith_add_i32(u_input.a, ~global2.e & abs(-26851i)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_2.x), global2.b.a.yy), u_input.a & global2.e, -2147483647i), !all(vec3<bool>(var_0.x, global2.b.d, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.c) * func_4(vec3<f32>(1428f, global2.b.c.x, arg_0), Struct_2(global2.e, Struct_1(vec3<i32>(u_input.a, u_input.a, global2.e), global2.b.b, global2.b.c, true), vec4<u32>(1u, 31010u, global2.c.x, global2.c.x), var_0.x, 1i), 2147483647i).c), func_4(vec3<f32>(1171f, -193f, 328f), Struct_2(2147483647i, Struct_1(vec3<i32>(-2147483647i, 0i, global2.a), global2.b.d, global2.b.c, false), vec4<u32>(global2.c.x, global2.c.x, 4294967295u, global2.c.x), global2.d, 20071i), _wgslsmith_mod_i32(global2.a, -45269i)).b), global2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, global1.x), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, global1.x, arg_2.x), global2.b.a)) <= -98648i, arg_2.x), Struct_3(Struct_2(global2.e, global2.b, global2.c, false, (-8649i | global1.x) ^ 46437i), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0, global2.b.c.x) + vec3<f32>(arg_1, -1122f, 1581f)), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -1676i), vec2<i32>(global2.a, global2.a)), global2.b, global2.c, var_0.x, abs(-36853i)), -1i), vec4<i32>(~50729i, _wgslsmith_clamp_i32(~global1.x, -4070i, reverseBits(-10474i)), 24809i, firstLeadingBit(0i)), arg_1, Struct_2(66389i, global2.b, select(vec4<u32>(global2.c.x, 12877u, global2.c.x, global2.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2.c.x, global2.c.x, global2.c.x), global2.c), select(vec4<bool>(true, false, global2.b.b, false), vec4<bool>(var_0.x, global2.b.d, global2.d, global2.d), vec4<bool>(var_0.x, var_0.x, global2.b.d, global2.d))), all(vec4<bool>(global2.b.d, false, true, var_0.x)), 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b.c.x * -807f))))), arg_1));
    global1 = -abs(vec2<i32>(~_wgslsmith_sub_i32(1i, var_1.c.c.x), _wgslsmith_mod_i32(1i, global1.x >> (4203u % 32u))));
    let var_2 = var_1;
    return StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.b.c.xz)))), _wgslsmith_f_op_vec2_f32(-global2.b.c.yy))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.b.c)), var_2.b, var_2.b.a).c.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2.d | global2.b.d);
    var var_1 = -196f;
    var var_2 = global2.b.c.x;
    var var_3 = abs(global2.c.yxw);
    global0 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-global2.b.c.x)));
    let x = u_input.a;
    s_output = func_5(global2.b.c.x, global2.b.c.x, global2.b.a.xz << ((func_1(!vec4<bool>(true, global2.b.b, var_0, var_0), ~global2.c.x, Struct_4(501f, Struct_2(u_input.a, Struct_1(vec3<i32>(u_input.a, u_input.a, -2147483647i), global2.d, global2.b.c, global2.d), vec4<u32>(0u, var_3.x, 4294967295u, var_3.x), var_0, global2.a), Struct_3(Struct_2(global1.x, Struct_1(global2.b.a, false, vec3<f32>(global2.b.c.x, 1194f, global2.b.c.x), var_0), global2.c, var_0, 46052i), global2.b, vec4<i32>(-1i, global1.x, 7568i, 25615i), 759f, Struct_2(1i, global2.b, global2.c, global2.b.b, global2.b.a.x)), global2.b.c.x)) & _wgslsmith_sub_vec2_u32(countOneBits(global2.c.wy), func_1(vec4<bool>(false, global2.d, global2.d, false), 1u, Struct_4(global2.b.c.x, Struct_2(0i, global2.b, vec4<u32>(1u, 0u, var_3.x, global2.c.x), false, u_input.a), Struct_3(Struct_2(3819i, Struct_1(global2.b.a, true, vec3<f32>(global2.b.c.x, 1167f, global2.b.c.x), global2.d), vec4<u32>(var_3.x, global2.c.x, 1u, var_3.x), global2.d, -2147483647i), Struct_1(global2.b.a, false, global2.b.c, false), vec4<i32>(15055i, 2147483647i, 5555i, global1.x), 230f, Struct_2(u_input.a, Struct_1(global2.b.a, var_0, vec3<f32>(global2.b.c.x, global2.b.c.x, global2.b.c.x), true), vec4<u32>(7090u, var_3.x, var_3.x, var_3.x), var_0, u_input.a)), global2.b.c.x)))) % vec2<u32>(32u)));
}

