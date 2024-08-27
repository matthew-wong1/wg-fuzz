struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-763f, -1848f), vec3<u32>(57202u, 51373u, 4294967295u), 53786u, 31918u, vec4<i32>(i32(-2147483648), -38097i, 1i, -2636i)), vec3<bool>(true, false, false), -662f, 41892u, Struct_1(vec2<f32>(377f, 291f), vec3<u32>(0u, 526u, 1u), 82895u, 69957u, vec4<i32>(-69312i, -1i, -35457i, 1i)));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-150f, -305f), vec3<u32>(4294967295u, 1u, 0u), 1u, 4294967295u, vec4<i32>(0i, 1i, 1i, 2147483647i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(Struct_1(global0.a.a, firstLeadingBit(vec3<u32>(~global1.d, arg_2.b.a.c & u_input.b.x, 29041u)), abs(~arg_2.a.x), arg_2.a.x, global2.e), !global0.b, _wgslsmith_f_op_f32(1025f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1229f, global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + 864f))))), 334u, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-158f, global1.a.x), _wgslsmith_f_op_vec2_f32(-global2.a))))), _wgslsmith_add_vec3_u32(~vec3<u32>(66478u, 30757u, u_input.b.x), countOneBits(_wgslsmith_sub_vec3_u32(global0.a.b, vec3<u32>(arg_2.c.x, 60476u, global1.b.x)))), ~_wgslsmith_clamp_u32(1u, 1u, 4294967295u), ~(~(1u << (u_input.b.x % 32u))), vec4<i32>(-9035i, _wgslsmith_add_i32(-global0.e.e.x, global0.e.e.x & 20296i), 0i, global1.e.x)));
    var var_1 = 0u;
    global1 = Struct_1(global0.e.a, ~global0.a.b, global1.b.x, _wgslsmith_mod_u32(select(~(var_0.e.d | u_input.b.x), 58915u, any(vec3<bool>(false, arg_2.b.b.x, true))), 68454u), ~vec4<i32>(global2.e.x, reverseBits(arg_2.b.e.e.x), var_0.a.e.x, 0i) & countOneBits(abs(firstLeadingBit(global0.a.e))));
    let var_2 = global0.a.a.x;
    let var_3 = !var_0.b.x && var_0.b.x;
    return var_0.e.c;
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(global0.b, vec3<bool>(false, true, false), any(global0.b.xx)), !vec3<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(22011i, u_input.a.x, global1.e.x), global2.e.wyx) <= _wgslsmith_mult_i32(-1i, global1.e.x), select(global0.a.e.x <= global0.e.e.x, global0.b.x, global0.b.x)), !vec3<bool>(global0.b.x, global0.b.x, global0.b.x));
    var var_1 = select(vec3<u32>(0u, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1472f, global0.a.a.x, -1512f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global1.a.x) + vec3<f32>(global1.a.x, -501f, global1.a.x))), any(select(var_0, vec3<bool>(false, var_0.x, true), global0.b.x)), Struct_3(vec4<u32>(1u, 1u, global0.a.d, 1u), Struct_2(Struct_1(global1.a, vec3<u32>(u_input.b.x, 1u, 49460u), global2.d, 1u, global2.e), global0.b, global2.a.x, global0.d, Struct_1(vec2<f32>(2263f, -1483f), global2.b, 1u, 4294967295u, vec4<i32>(-2147483647i, u_input.a.x, global1.e.x, global1.e.x))), u_input.b.wwy)), ~_wgslsmith_mult_u32(global0.a.c, global1.b.x)), vec3<u32>(~0u, 63846u, abs(1u)), select(var_0, !vec3<bool>(global0.c == global1.a.x, true, all(global0.b)), vec3<bool>(true, false, true)));
    global1 = global0.e;
    return global0.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = -619f;
    var_0 = -456f;
    global1 = func_2();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + global0.e.a.x))))) - _wgslsmith_f_op_f32(261f - 1522f));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1159f, global2.a.x, -737f))))))))));
    return Struct_3(vec4<u32>(12825u, ~_wgslsmith_dot_vec3_u32(global1.b, ~vec3<u32>(0u, 4294967295u, 50613u)), global2.c, 1u), Struct_2(func_2(), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -592f), 20794u, func_2()), func_2().b);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    global0 = Struct_2(arg_3.b.a, func_1(func_1(Struct_2(func_2(), arg_1, _wgslsmith_f_op_f32(2010f * arg_2.a.x), arg_0 & arg_3.b.d, arg_3.b.e), vec4<bool>(all(vec3<bool>(true, true, true)), func_1(arg_3.b, vec4<bool>(arg_3.b.b.x, true, arg_1.x, false), vec2<bool>(false, false)).b.b.x, true, global0.b.x && global0.b.x), func_1(func_1(arg_3.b, vec4<bool>(true, false, false, arg_3.b.b.x), vec2<bool>(false, arg_3.b.b.x)).b, !vec4<bool>(arg_1.x, arg_3.b.b.x, arg_3.b.b.x, true), func_1(arg_3.b, vec4<bool>(arg_3.b.b.x, global0.b.x, true, true), arg_1.yy).b.b.xy).b.b.zy).b, select(vec4<bool>(true, false, !global0.b.x, u_input.a.x == 0i), !(!vec4<bool>(arg_1.x, true, false, global0.b.x)), all(select(arg_1, vec3<bool>(global0.b.x, false, arg_1.x), arg_3.b.b.x))), vec2<bool>(any(func_1(arg_3.b, vec4<bool>(true, arg_3.b.b.x, false, false), vec2<bool>(true, global0.b.x)).b.b.zy), true)).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -475f))))) + -1286f), countOneBits(~u_input.b.x | (u_input.b.x << (u_input.b.x % 32u))) ^ 16723u, func_1(arg_3.b, select(select(select(vec4<bool>(true, arg_1.x, arg_3.b.b.x, arg_1.x), vec4<bool>(arg_1.x, true, global0.b.x, false), true), vec4<bool>(true, global0.b.x, arg_3.b.b.x, false), vec4<bool>(arg_3.b.b.x, true, false, true)), !vec4<bool>(false, arg_3.b.b.x, global0.b.x, global0.b.x), global0.b.x), select(vec2<bool>(!arg_1.x, global0.b.x), vec2<bool>(true, true), select(func_1(Struct_2(Struct_1(global0.e.a, global2.b, 4294967295u, 0u, global1.e), vec3<bool>(false, arg_1.x, false), global0.a.a.x, global0.a.b.x, Struct_1(vec2<f32>(-146f, global0.c), u_input.b.yww, arg_3.b.e.b.x, 0u, arg_3.b.e.e)), vec4<bool>(global0.b.x, false, arg_1.x, arg_1.x), arg_1.xz).b.b.zx, !global0.b.yx, arg_1.yz))).b.a);
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global2.a.x, global0.c)), global1.a.x, _wgslsmith_f_op_f32(max(global1.a.x, -184f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.a.x, global1.a.x, global1.a.x))))));
    global0 = func_1(arg_3.b, vec4<bool>(false, true, !all(vec4<bool>(true, arg_3.b.b.x, false, arg_1.x)) | arg_1.x, global2.c <= (global0.e.c >> (arg_3.b.a.d % 32u))), !arg_3.b.b.yx).b;
    global1 = arg_3.b.e;
    var var_1 = global0.a;
    return vec4<bool>(func_1(Struct_2(func_2(), !arg_3.b.b, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_mult_u32(22085u, _wgslsmith_mult_u32(global0.e.c, arg_3.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(max(global2.a, vec2<f32>(arg_2.a.x, -1000f))), global0.e.b | vec3<u32>(global2.c, 0u, 54380u), 0u & global1.b.x, 1u & var_1.c, vec4<i32>(-40724i, var_1.e.x, global0.a.e.x, -14088i) | vec4<i32>(0i, -6731i, -1i, arg_3.b.a.e.x))), select(!select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_3.b.b.x, false, global0.b.x, arg_1.x), arg_3.b.b.x), select(select(vec4<bool>(true, arg_1.x, false, true), vec4<bool>(global0.b.x, arg_3.b.b.x, false, false), vec4<bool>(arg_3.b.b.x, false, true, arg_1.x)), !vec4<bool>(arg_1.x, true, false, global0.b.x), !arg_1.x), true), vec2<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(global0.b.x, arg_1.x, true, global0.b.x), arg_1.x)), global0.b.x)).b.b.x, true, global0.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, global0.b.x), vec4<bool>(false, global0.b.x, false, global0.b.x)), !vec4<bool>(global0.b.x, global0.b.x, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), global0.b.x, global1.a.x > 1155f), vec4<bool>(global0.b.x, !global0.b.x, true, true)), !func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, global0.d), global1.b.xy), global0.b, Struct_4(vec3<f32>(398f, global1.a.x, 1353f)), func_1(Struct_2(Struct_1(vec2<f32>(165f, global2.a.x), global1.b, 3693u, 58592u, global1.e), vec3<bool>(global0.b.x, false, global0.b.x), global0.e.a.x, 1u, global0.e), vec4<bool>(true, true, global0.b.x, global0.b.x), vec2<bool>(false, global0.b.x)))), func_4(global0.a.d, !select(func_1(Struct_2(global0.e, global0.b, -1000f, 11018u, Struct_1(global1.a, global2.b, u_input.b.x, global1.d, vec4<i32>(global0.e.e.x, global2.e.x, global0.a.e.x, u_input.a.x))), vec4<bool>(true, true, global0.b.x, global0.b.x), vec2<bool>(false, true)).b.b, func_4(global2.c, global0.b, Struct_4(vec3<f32>(-392f, 1232f, -2842f)), Struct_3(vec4<u32>(10758u, 4294967295u, global2.c, global0.d), Struct_2(Struct_1(global1.a, global2.b, global2.b.x, 4294967295u, global1.e), global0.b, 859f, u_input.b.x, Struct_1(vec2<f32>(global1.a.x, -1600f), vec3<u32>(global1.d, u_input.b.x, global1.c), 0u, global2.b.x, vec4<i32>(2147483647i, 6905i, global0.e.e.x, global2.e.x))), global1.b)).wzw, vec3<bool>(false, true, global0.b.x)), Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-296f, global0.e.a.x, 444f), vec3<f32>(-1080f, global0.a.a.x, global1.a.x), global0.b))), Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b), Struct_2(func_2(), vec3<bool>(global0.b.x, global0.b.x, false), _wgslsmith_f_op_f32(trunc(global2.a.x)), 1u, global0.a), global0.e.b)), select(vec4<bool>(true, global2.e.x != firstTrailingBit(global1.e.x), global0.b.x, any(global0.b.xz)), !(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true)), vec4<bool>(!global0.b.x, true, global0.b.x, min(global1.e.x, -16878i) < global1.e.x)));
    global2 = func_1(func_1(Struct_2(func_2(), global0.b, global1.a.x, func_1(Struct_2(global0.e, vec3<bool>(var_0.x, false, true), global1.a.x, u_input.b.x, Struct_1(vec2<f32>(global1.a.x, 403f), vec3<u32>(global2.c, u_input.b.x, 4294967295u), 2521u, u_input.b.x, vec4<i32>(32379i, 28040i, global1.e.x, global0.e.e.x))), vec4<bool>(global0.b.x, var_0.x, true, true), !var_0.xz).c.x, global0.a), func_4(9840u, func_4(global0.e.c, var_0.ywy, Struct_4(vec3<f32>(-2413f, global1.a.x, global2.a.x)), Struct_3(vec4<u32>(global0.a.b.x, 1u, 0u, 0u), Struct_2(Struct_1(vec2<f32>(-411f, global1.a.x), vec3<u32>(9353u, 0u, u_input.b.x), global0.e.b.x, 5890u, vec4<i32>(0i, 24439i, 2147483647i, -1i)), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.e.a.x, global1.b.x, Struct_1(vec2<f32>(global0.c, -2060f), u_input.b.yyz, u_input.b.x, 1u, global0.e.e)), global0.e.b)).zyz, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.a.x, global1.a.x, global0.c))), Struct_3(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(u_input.b.x, global2.c, 112785u, 4294967295u)), Struct_2(global0.e, global0.b, global0.e.a.x, global1.c, global0.a), _wgslsmith_mod_vec3_u32(u_input.b.zzx, global0.a.b))), func_4(func_2().c, select(select(vec3<bool>(false, true, global0.b.x), vec3<bool>(global0.b.x, var_0.x, true), var_0.wzy), func_1(Struct_2(global0.a, vec3<bool>(false, true, false), global0.e.a.x, 38255u, global0.e), vec4<bool>(true, var_0.x, global0.b.x, global0.b.x), vec2<bool>(false, true)).b.b, vec3<bool>(false, var_0.x, global0.b.x)), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global2.a.x, -803f))), func_1(Struct_2(global0.e, global0.b, -1176f, 2465u, Struct_1(vec2<f32>(global1.a.x, 1223f), vec3<u32>(1u, u_input.b.x, global1.b.x), 35932u, global2.d, global2.e)), vec4<bool>(false, var_0.x, false, false), func_4(global0.d, global0.b, Struct_4(vec3<f32>(975f, global0.c, 142f)), Struct_3(u_input.b, Struct_2(global0.a, vec3<bool>(var_0.x, true, global0.b.x), -627f, 1426u, global0.e), global1.b)).xw)).yw).b, !vec4<bool>(true, var_0.x, var_0.x, true), global0.b.xx).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(121281u, 30114u, u_input.b.x), 19787u);
}

