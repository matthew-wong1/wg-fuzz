struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(9993u, 1u, 20136u, 10945u);

var<private> global1: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(~1u, 12451u >> (0u % 32u), arg_0.a.b.b, 0u), reverseBits(vec4<u32>(abs(arg_0.a.b.b), ~arg_0.a.b.b, 4294967295u, 77282u) >> (~select(vec4<u32>(17715u, arg_0.a.b.b, 4294967295u, global0.x), vec4<u32>(16759u, 83239u, global0.x, 67967u), vec4<bool>(arg_1.x, false, false, false)) % vec4<u32>(32u))));
    global1 = countOneBits(~_wgslsmith_add_u32(~23387u, firstLeadingBit(~global0.x)));
    return -10925i <= ~(~u_input.d);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    global1 = arg_1;
    global1 = 4294967295u;
    var var_0 = Struct_2(select(vec4<bool>(false, arg_3.x, true, arg_3.x), select(vec4<bool>(true, arg_0.a.b.a, arg_2.a.x & false, any(vec4<bool>(false, false, true, false))), vec4<bool>(all(vec3<bool>(true, true, true)), func_3(arg_0, arg_2.a), false, arg_3.x), select(select(vec4<bool>(true, true, false, arg_0.a.b.a), vec4<bool>(arg_3.x, true, arg_3.x, arg_2.a.x), arg_2.b.a), vec4<bool>(true, false, true, arg_3.x), select(arg_0.a.a, arg_0.a.a, arg_3))), vec4<bool>(arg_2.a.x, !arg_2.b.a & arg_0.a.a.x, true, false)), arg_2.b);
    var var_1 = arg_0.a.b;
    var var_2 = -_wgslsmith_div_i32(u_input.d, u_input.c);
    return arg_2.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = ~(~arg_1.b);
    global0 = ~firstLeadingBit(vec4<u32>(53540u, _wgslsmith_dot_vec4_u32(vec4<u32>(60939u, arg_1.b, arg_1.b, 1u), vec4<u32>(39818u, arg_1.b, 87954u, 4294967295u)), func_2(Struct_3(Struct_2(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a), Struct_1(arg_2.a, 46025u, arg_0.x))), 30003u, Struct_2(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), Struct_1(true, 24384u, 602f)), vec4<bool>(false, arg_2.a, arg_2.a, false)).b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 108890u), global0.wy))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, arg_1.b, 20667u, countOneBits(global0.x)), abs(vec4<u32>(4294967295u, 4294967295u, arg_1.b, global0.x))) >> (((vec4<u32>(1u, 41128u, arg_2.b, arg_1.b) & _wgslsmith_mult_vec4_u32(vec4<u32>(48006u, 1u, arg_2.b, 104619u), vec4<u32>(19276u, arg_1.b, arg_1.b, 4294967295u))) << (vec4<u32>(4294967295u >> (arg_1.b % 32u), 55397u, ~8288u, ~arg_1.b) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = ~(~(~50453u << (0u % 32u))) ^ global0.x;
    global0 = vec4<u32>(0u, 0u, _wgslsmith_clamp_u32(arg_1.b, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b, 82715u, arg_2.b), vec4<u32>(arg_1.b, arg_1.b, 69765u, 0u)), arg_1.b, 4294967295u), select(_wgslsmith_div_u32(arg_1.b, 1u) << (_wgslsmith_dot_vec2_u32(global0.zw, vec2<u32>(arg_2.b, 1u)) % 32u), ~firstLeadingBit(34476u), any(vec4<bool>(arg_1.a, true, false, arg_2.a)))), ~1u);
    global1 = 4294967295u;
    return arg_2.a;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    return Struct_2(vec4<bool>(false, arg_1.x && true, global0.x == abs(~global0.x), true), func_2(Struct_3(Struct_2(!vec4<bool>(false, arg_0, arg_1.x, arg_1.x), Struct_1(arg_1.x, global0.x, -1000f))), global0.x, Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0, false, arg_1.x, true), vec4<bool>(arg_1.x, arg_0, false, arg_0), false), vec4<bool>(arg_0, true, arg_0, arg_0)), func_2(Struct_3(Struct_2(vec4<bool>(arg_1.x, arg_0, false, arg_0), Struct_1(arg_0, global0.x, -1000f))), abs(12262u), Struct_2(vec4<bool>(arg_0, false, true, arg_1.x), Struct_1(arg_1.x, 44692u, 473f)), !vec4<bool>(arg_0, arg_1.x, arg_1.x, true))), vec4<bool>(true || arg_0, true, true, any(vec2<bool>(true, false)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    global0 = ~(~vec4<u32>(arg_0, 1u, ~global0.x, max(arg_0, 101436u)) | ~(~abs(vec4<u32>(65898u, arg_0, global0.x, 24818u))));
    global1 = 74106u;
    let var_0 = func_5(all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), select(vec3<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1188f, -1579f, 1447f)), func_2(Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(false, global0.x, -653f))), global0.x, Struct_2(vec4<bool>(false, true, true, false), Struct_1(false, global0.x, 620f)), vec4<bool>(false, false, true, false)), Struct_1(false, global0.x, 1049f))), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), false));
    global0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0, min(var_0.b.b, global0.x), ~(arg_0 << (global0.x % 32u))), select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, var_0.b.b, 3132u), vec4<u32>(10145u, arg_0, 4294967295u, global0.x)) >> (abs(vec4<u32>(1u, 16265u, global0.x, arg_0)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_0.b.b, arg_0, global0.x, 23105u)), ~vec4<u32>(arg_0, 1u, global0.x, 4294967295u)), vec4<bool>(var_0.a.x, true, !var_0.a.x, var_0.a.x)), ~(~firstLeadingBit(vec4<u32>(arg_0, 1u, 1u, 37456u))), var_0.a));
    global0 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 47608u, global0.x, _wgslsmith_sub_u32(~76333u, global0.x)), ~vec4<u32>(firstTrailingBit(var_0.b.b), 1u, ~global0.x, var_0.b.b)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.c)) + _wgslsmith_f_op_f32(-1109f + var_0.b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-57092i << (global0.x % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.ww, ~(vec2<u32>(global0.x, 21990u) | vec2<u32>(global0.x, global0.x))), 0u) % 32u);
    var var_1 = Struct_2(!select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(true, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1344f + _wgslsmith_f_op_f32(step(1099f, 1325f))) * _wgslsmith_f_op_f32(func_1(select(global0.x, global0.x, false), ~31290i)))));
    let var_2 = var_1.b.b;
    global0 = vec4<u32>(0u, 1u, func_5(15783i > _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.c, 16004i, 0i), vec4<i32>(-18617i, 2147483647i, 2147483647i, u_input.c), var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -22845i, u_input.a.x, 19775i), vec4<i32>(-14952i, 17908i, u_input.c, 2147483647i))), select(!vec3<bool>(true, false, var_1.a.x), func_5(var_1.a.x, !vec3<bool>(var_1.b.a, var_1.b.a, false)).a.yzw, select(vec3<bool>(var_1.a.x, var_1.b.a, var_1.b.a), !var_1.a.xwz, !vec3<bool>(var_1.b.a, var_1.b.a, false)))).b.b, ~(~var_1.b.b));
    global0 = min(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.b, 19939u, global0.x, 0u), vec4<u32>(10881u, var_1.b.b, var_1.b.b, 34962u)), func_5(var_1.a.x, var_1.a.xxz).b.b), ~firstLeadingBit(0u), var_1.b.b, 4294967295u) & firstLeadingBit(select(abs(vec4<u32>(var_1.b.b, 53827u, 13133u, global0.x)), vec4<u32>(17348u, var_1.b.b, global0.x, global0.x), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(79682u, var_1.b.b), 1u, ~global0.x, 3046u), ~(~(~vec4<u32>(1u, var_1.b.b, global0.x, 0u))), ~vec4<u32>(~var_1.b.b, 48168u, 60090u, global0.x)));
    var_1 = func_5(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1020f, 757f, false))) == var_1.b.c), var_1.a.xyx);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c, var_1.b.c, 702f, var_1.b.c), vec4<f32>(-1214f, 1218f, -1726f, var_1.b.c)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c, -1163f, var_1.b.c, -827f), vec4<f32>(117f, var_1.b.c, var_1.b.c, -326f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, -325f, var_1.b.c, 2462f) + vec4<f32>(var_1.b.c, var_1.b.c, -1000f, var_1.b.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, var_1.b.c, -1000f, -1366f) - vec4<f32>(1000f, -501f, var_1.b.c, 300f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~vec2<i32>(0i, _wgslsmith_mult_i32(-1i, u_input.b.x) >> (0u % 32u)), -786f, countOneBits(-u_input.b.xx));
}

