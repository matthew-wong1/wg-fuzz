struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(-abs(~global1.a), ~vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), Struct_1(19095i, min((vec3<u32>(48146u, 4294967295u, global2.x) & global1.b) ^ select(vec3<u32>(global1.b.x, 9955u, 33647u), global1.b, true), vec3<u32>(_wgslsmith_dot_vec3_u32(global2.yyw, global2.zyw), 4294967295u, _wgslsmith_div_u32(global1.b.x, u_input.c.x)))), ~firstTrailingBit(max(~u_input.c.x, 0u)));
    var var_1 = -vec4<i32>(_wgslsmith_clamp_i32(global1.a, ~u_input.a, global1.a), 2147483647i, ~_wgslsmith_add_i32(select(2147483647i, u_input.a, true), _wgslsmith_mult_i32(var_0.a.a, u_input.a)), _wgslsmith_sub_i32(u_input.d, min(u_input.d, _wgslsmith_add_i32(global1.a, var_0.b.a))));
    var var_2 = true;
    let var_3 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 1u, 1u, ~113735u), countOneBits(vec4<u32>(global2.x, 1u, global2.x, 7783u)), ~vec4<u32>(u_input.b.x, 0u, 19840u, global2.x)));
    var_2 = false;
    return var_0.a.b.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = 0u;
    let var_0 = arg_0;
    global0 = _wgslsmith_clamp_u32(29729u, 30340u, _wgslsmith_mod_u32(_wgslsmith_div_u32((5789u | global1.b.x) ^ arg_0.c, 40798u), func_3()));
    let var_1 = !vec3<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))));
    var var_2 = var_0.b;
    return arg_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_1.b.xx;
    var var_1 = ~(-15301i);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-946f)), _wgslsmith_f_op_f32(496f * 1000f), -467f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(325f, 2505f, 1085f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1518f, 776f, -916f), vec3<f32>(-971f, 516f, 918f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1411f, _wgslsmith_f_op_f32(f32(-1f) * -1639f), -1125f) + vec3<f32>(1000f, _wgslsmith_div_f32(-231f, -720f), -1000f))), any(select(vec2<bool>(true, all(vec3<bool>(false, false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), true))));
    global0 = ~4294967295u;
    let var_3 = arg_1;
    return global1.b;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec2<i32> {
    global2 = vec4<u32>(_wgslsmith_mult_u32(~global2.x, firstTrailingBit(_wgslsmith_sub_u32(~global1.b.x, ~u_input.b.x))), _wgslsmith_dot_vec3_u32(func_4(~0u, func_2(Struct_2(Struct_1(global1.a, global1.b), Struct_1(34368i, u_input.b), 4294967295u)), Struct_1(0i, vec3<u32>(26414u, u_input.b.x, u_input.c.x))) >> (abs(min(vec3<u32>(global2.x, arg_0, arg_0), u_input.c)) % vec3<u32>(32u)), ~(~_wgslsmith_sub_vec3_u32(u_input.b, u_input.c))), global2.x, ~firstLeadingBit(12847u));
    global2 = vec4<u32>((abs(69965u) >> (global2.x % 32u)) | ~abs(arg_0), ~0u, 69952u, _wgslsmith_add_u32(16140u, _wgslsmith_mod_u32(arg_0, global2.x)));
    let var_0 = u_input.d;
    global1 = Struct_1(u_input.d, vec3<u32>(_wgslsmith_add_u32(~global2.x, 0u), 4294967295u, u_input.c.x) & vec3<u32>(_wgslsmith_add_u32(arg_0, ~24755u), func_2(Struct_2(Struct_1(global1.a, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(-22432i, vec3<u32>(global2.x, 0u, 27652u)), global1.b.x)).b.x << (func_2(Struct_2(Struct_1(-17328i, vec3<u32>(31178u, 34238u, global2.x)), Struct_1(u_input.d, vec3<u32>(0u, arg_0, global2.x)), 36047u)).b.x % 32u), abs(arg_0)));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, countOneBits(_wgslsmith_sub_u32(4294967295u, 1u | global1.b.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 6702u), func_3())), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(func_4(arg_0, Struct_1(-2147483647i, global1.b), Struct_1(-1i, global2.xzx)), global1.b, min(global1.b, global2.yyw)), _wgslsmith_sub_vec3_u32(vec3<u32>(43817u, ~arg_0, ~57400u), func_4(867u, func_2(Struct_2(Struct_1(u_input.a, global1.b), Struct_1(var_0, vec3<u32>(arg_0, 0u, 21980u)), 0u)), func_2(Struct_2(Struct_1(-4449i, vec3<u32>(u_input.b.x, arg_0, u_input.c.x)), Struct_1(-16990i, vec3<u32>(31818u, 4294967295u, 4294967295u)), u_input.b.x))))));
    return vec2<i32>(var_0, global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(func_1(0u, vec2<f32>(-361f, -1777f)), vec2<i32>(1i, 2147483647i) & vec2<i32>(-2147483647i, global1.a)), ~(countOneBits(vec2<i32>(global1.a, -2147483647i)) | (vec2<i32>(global1.a, -21104i) >> (vec2<u32>(u_input.c.x, global1.b.x) % vec2<u32>(32u)))));
    var_0 = vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, 10694i, -2147483647i, 0i), select(vec4<i32>(24896i, 2147483647i, var_0.x, var_0.x), vec4<i32>(2147483647i, u_input.a, global1.a, u_input.a), false))), ~(_wgslsmith_div_i32(-9258i, -2147483647i) ^ select(1i, 1i, false))), 3997i);
    var_0 = _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(-(~vec2<i32>(0i, -1i)), vec2<i32>(-1i) * -vec2<i32>(u_input.d, 1i)), vec2<i32>(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, 1i, var_0.x), -30089i));
    var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(var_0.x, global1.a), -global1.a), min(vec2<i32>(global1.a, -15882i), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(var_0.x, u_input.d, u_input.d)))), 2147483647i);
    var_0 = countOneBits(func_1(1u, vec2<f32>(_wgslsmith_f_op_f32(select(-1349f, _wgslsmith_f_op_f32(trunc(-1000f)), true)), 1230f)));
    global2 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, ~global1.b.x, ~53568u, select(18674u, 47286u, false)), countOneBits(~vec4<u32>(4294967295u, global1.b.x, global2.x, 15642u))) >> (~vec4<u32>(~1u, 4294967295u >> (1u % 32u), min(u_input.c.x, 2344u), 1u) % vec4<u32>(32u)), abs(~((vec4<u32>(global1.b.x, 43960u, 53055u, 55039u) | vec4<u32>(4294967295u, u_input.b.x, 0u, 0u)) >> (~vec4<u32>(1u, global1.b.x, global1.b.x, u_input.b.x) % vec4<u32>(32u)))), false);
    let var_1 = any(!(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1833f, -402f, 957f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -828f, -218f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, 1782f, 585f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, 1620f, -660f)), !vec3<bool>(true, false, var_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, 191f, 1126f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2403f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(301f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1846f))), -1005f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-131f, _wgslsmith_f_op_f32(f32(-1f) * -2048f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(362f, -210f)) - 1f)), !vec2<bool>(var_1, all(vec4<bool>(false, false, var_1, false))))));
}

