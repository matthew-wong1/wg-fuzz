struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(-2147483647i, arg_3.x, vec2<bool>(arg_0.b.c.x, -46928i == u_input.b), arg_3.x);
    var var_1 = vec4<bool>(false, true, arg_0.b.c.x, !all(!arg_0.b.c));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -603f))) + 1000f)));
    var var_3 = !(!var_1.yyw);
    global0 = var_0;
    return select(var_1.wy, global0.c, var_3.x);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    global0 = Struct_1(u_input.b, 735f, global0.c, _wgslsmith_f_op_f32(-global0.b));
    var var_0 = Struct_1(~global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + global0.b)), func_3(Struct_2(1u, Struct_1(-64168i | u_input.d, _wgslsmith_f_op_f32(abs(global0.b)), vec2<bool>(true, true), global0.b), Struct_1(i32(-1i) * -18123i, global0.d, vec2<bool>(true, true), -254f), min(vec2<i32>(1i, 1i), vec2<i32>(7117i, 2147483647i)), vec2<u32>(101399u, arg_1.x)), vec2<u32>(u_input.e.x << (_wgslsmith_div_u32(17559u, 4294967295u) % 32u), 39711u & arg_1.x), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, 1145f, 328f, global0.b), vec4<f32>(-1166f, -433f, global0.b, global0.d)) * vec4<f32>(global0.d, 1082f, global0.d, -1182f)))), global0.d);
    var var_1 = min(vec2<i32>(37790i, ~4375i), -_wgslsmith_clamp_vec2_i32(abs(firstLeadingBit(vec2<i32>(1i, -1i))), vec2<i32>(firstTrailingBit(-5470i), 0i), -(~vec2<i32>(-18678i, -1i))));
    var var_2 = Struct_1(max(21224i, -reverseBits(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(591f + global0.d)), 794f)))), select(global0.c, !select(vec2<bool>(true, false), vec2<bool>(global0.c.x, true), func_3(Struct_2(arg_1.x, Struct_1(-2147483647i, -302f, var_0.c, global0.d), Struct_1(u_input.b, 1593f, global0.c, 499f), vec2<i32>(arg_0, 0i), vec2<u32>(u_input.e.x, u_input.e.x)), u_input.e, 2147483647i, vec4<f32>(-458f, -154f, -967f, global0.b))), var_0.c.x), 1167f);
    let var_3 = ~arg_1.zz;
    return Struct_2(firstTrailingBit(~countOneBits(u_input.c.x) ^ _wgslsmith_clamp_u32(~1u, arg_1.x >> (u_input.c.x % 32u), _wgslsmith_mult_u32(39606u, 0u))), Struct_1(var_1.x, -514f, vec2<bool>(-1252f < _wgslsmith_f_op_f32(global0.b + -1000f), true), 1390f), Struct_1(u_input.b, -1895f, func_3(Struct_2(~var_3.x, Struct_1(var_0.a, var_0.d, var_0.c, -699f), Struct_1(u_input.d, -948f, vec2<bool>(var_0.c.x, var_2.c.x), 774f), -vec2<i32>(0i, 74337i), vec2<u32>(u_input.a.x, 0u)), abs(vec2<u32>(4294967295u, 4294967295u)) >> (~vec2<u32>(u_input.e.x, arg_1.x) % vec2<u32>(32u)), -30540i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(132f, -534f, -343f, -318f) - vec4<f32>(global0.d, var_2.b, var_2.b, var_0.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(248f, _wgslsmith_f_op_f32(global0.b - 1916f), 685f > var_2.b)), var_2.b))), vec2<i32>(countOneBits(~global0.a), var_1.x) & -_wgslsmith_sub_vec2_i32(min(vec2<i32>(-1i, var_1.x), vec2<i32>(var_0.a, arg_0)), vec2<i32>(arg_0, -5829i)), vec2<u32>(~abs(arg_1.x << (32623u % 32u)), 28761u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.c.d;
    global0 = arg_2.c;
    let var_1 = select(firstLeadingBit(~_wgslsmith_mod_u32(arg_2.a, u_input.a.x)), 1u, !func_3(arg_2, u_input.c.xy, -47653i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.b.d, global0.b, global0.d, 1697f)))).x) >= 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 587f) + _wgslsmith_f_op_f32(f32(-1f) * -1143f)), _wgslsmith_f_op_f32(abs(global0.d))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(340f + -799f), _wgslsmith_f_op_f32(global0.b + arg_2.b.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(749f, global0.b), vec2<f32>(-413f, global0.d))) * vec2<f32>(var_0, 655f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.b, global0.d, false))))), _wgslsmith_f_op_f32(-arg_2.c.d))));
    let var_3 = arg_2;
    return func_2(~(~firstLeadingBit(1i)), vec3<u32>(u_input.e.x ^ 1u, ~1u, (u_input.a.x & max(u_input.c.x, 26325u)) & arg_2.a)).b;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    global0 = Struct_1(-u_input.d, -100f, !global0.c, global0.d);
    global0 = Struct_1(_wgslsmith_mult_i32(-((u_input.d | u_input.b) & u_input.b), u_input.d), 344f, select(!global0.c, vec2<bool>(global0.c.x, !(u_input.c.x != 4324u)), global0.c), global0.b);
    global0 = func_4(any(vec4<bool>(true, true, true, true)), ~u_input.b, func_2(1i, vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.yz, u_input.a.yz | u_input.a.yz), ~u_input.a.x, ~arg_0)));
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(1u)), abs(4294967295u), ~1u << (u_input.e.x % 32u), arg_0 << (79151u % 32u));
    var_0 = max(abs(vec4<u32>(~4294967295u << (1u % 32u), 23154u ^ _wgslsmith_dot_vec3_u32(u_input.a, var_0.xww), 1u << (~var_0.x % 32u), var_0.x)), ~(vec4<u32>(_wgslsmith_mult_u32(arg_0, arg_0), 40926u, var_0.x << (u_input.e.x % 32u), u_input.c.x >> (28168u % 32u)) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0), ~vec4<u32>(2330u, var_0.x, 64580u, arg_0), vec4<u32>(0u, 4294967295u, var_0.x, arg_0) & vec4<u32>(4294967295u, 0u, var_0.x, 4294967295u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.d)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-738f, global0.d, global0.d), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.d, global0.b, -158f)))))), vec3<f32>(global0.d, -551f, -652f))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.d), -484f, -1000f));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1954f));
    var var_1 = select(!(!vec4<bool>(false, global0.c.x, true & arg_3.c.c.x, arg_3.b.c.x || true)), select(!(!select(vec4<bool>(true, true, true, arg_3.c.c.x), vec4<bool>(arg_3.c.c.x, arg_3.c.c.x, arg_3.c.c.x, arg_3.b.c.x), vec4<bool>(global0.c.x, false, global0.c.x, true))), vec4<bool>(func_2(global0.a | u_input.b, vec3<u32>(4294967295u, arg_3.a, arg_3.e.x)).b.c.x, global0.c.x, true, true), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, arg_3.c.c.x, arg_3.c.c.x), arg_3.b.c.x), vec4<bool>(arg_3.b.c.x, global0.c.x, true, arg_3.b.c.x), select(vec4<bool>(true, global0.c.x, global0.c.x, arg_3.b.c.x), vec4<bool>(global0.c.x, false, false, true), vec4<bool>(global0.c.x, arg_3.c.c.x, global0.c.x, global0.c.x))), !(!vec4<bool>(true, true, arg_3.b.c.x, false)), !select(vec4<bool>(arg_3.c.c.x, global0.c.x, global0.c.x, arg_3.c.c.x), vec4<bool>(false, arg_3.b.c.x, global0.c.x, true), vec4<bool>(global0.c.x, true, global0.c.x, arg_3.b.c.x)))), !(!vec4<bool>(arg_3.b.c.x, 1u != arg_3.a, true, all(vec2<bool>(global0.c.x, global0.c.x)))));
    global0 = Struct_1(38333i, _wgslsmith_f_op_f32(func_4(arg_3.b.c.x, arg_1, Struct_2(9493u, func_2(131i, u_input.c).c, Struct_1(arg_2.x, -1000f, vec2<bool>(global0.c.x, false), arg_3.c.b), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.x, global0.a), arg_3.d), abs(u_input.a.zx))).b * _wgslsmith_f_op_f32(-arg_0.x)), arg_3.b.c, func_4(true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, arg_3.d.x, arg_2.x, arg_1), -vec4<i32>(1i, arg_1, 6854i, arg_3.d.x)), abs(-vec4<i32>(global0.a, -50436i, 1i, u_input.b))), func_2(1i, u_input.c)).d);
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(1u))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, -783f, -618f) + vec3<f32>(global0.d, global0.d, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.b, 1943f) + vec3<f32>(784f, 585f, global0.b))))), -u_input.d, vec3<i32>(func_4(global0.c.x, 0i, Struct_2(u_input.e.x, Struct_1(u_input.b, global0.d, global0.c, global0.b), Struct_1(global0.a, global0.b, vec2<bool>(true, true), 847f), ~vec2<i32>(u_input.b, 9558i), countOneBits(u_input.e))).a, _wgslsmith_div_i32(-7385i, u_input.d), min(global0.a, abs(2147483647i))), Struct_2(select(_wgslsmith_clamp_u32(0u, 1u, u_input.a.x) << (~u_input.c.x % 32u), ~firstLeadingBit(103467u), global0.c.x), Struct_1(u_input.d, 1073f, global0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(739f))))), Struct_1(global0.a, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1000f * global0.d)), global0.c, _wgslsmith_f_op_vec3_f32(func_1(~u_input.e.x)).x), -(-vec2<i32>(global0.a, u_input.b) | firstTrailingBit(vec2<i32>(3727i, -1i))), u_input.e ^ select(u_input.e, vec2<u32>(u_input.c.x, 0u), global0.c.x)));
    global0 = Struct_1(abs(u_input.b << (8310u % 32u)), 607f, global0.c, _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(1811f + global0.d))))));
    global0 = func_4(true, ~global0.a, func_2(~(~(-u_input.b)), ~(u_input.a & u_input.a)));
    global0 = func_4(true, abs(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.a, global0.a), -2147483647i)), func_2(u_input.d, u_input.a));
    let var_0 = ~(~u_input.e);
    let var_1 = Struct_2(~_wgslsmith_sub_u32(reverseBits(var_0.x), 40983u), func_4(false, ~_wgslsmith_div_i32(u_input.b, 2147483647i) | -_wgslsmith_mod_i32(-1i, u_input.d), func_2(func_4(func_4(true, -5519i, Struct_2(var_0.x, Struct_1(u_input.d, -1000f, vec2<bool>(false, false), 564f), Struct_1(global0.a, 1000f, vec2<bool>(global0.c.x, global0.c.x), global0.d), vec2<i32>(2147483647i, 37214i), vec2<u32>(4294967295u, 15284u))).c.x, 1i, func_2(-1821i, vec3<u32>(u_input.e.x, var_0.x, var_0.x))).a, firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.c, u_input.a)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 280f, -773f), vec3<f32>(1133f, -1826f, global0.d), vec3<bool>(true, global0.c.x, global0.c.x))) - vec3<f32>(global0.b, 953f, global0.b)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d, 1083f, global0.d)))))), u_input.b, vec3<i32>(-1501i, global0.a, ~(u_input.b << (u_input.c.x % 32u))), Struct_2(func_2(-45810i, u_input.c).a, func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d, -215f, -1304f))), 1i, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 10388i, 6098i), vec3<i32>(42784i, global0.a, u_input.b), vec3<i32>(-1i, 2147483647i, 1i)), func_2(39924i, u_input.a)), Struct_1(u_input.b, global0.d, !vec2<bool>(global0.c.x, global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -689f)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(56866i, 0i, 2147483647i), vec3<i32>(global0.a, -2147483647i, global0.a)), 0i), vec2<u32>(var_0.x, 23504u))), vec2<i32>(~_wgslsmith_mod_i32(abs(-10141i), -global0.a), -24847i), ~var_0);
    global0 = var_1.c;
    global0 = func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.b, 1467f, 1399f), vec3<f32>(503f, 239f, global0.d))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, -827f, -710f), vec3<f32>(var_1.b.d, var_1.b.b, var_1.b.d), vec3<bool>(false, global0.c.x, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-369f, 806f, var_1.c.d))))))), _wgslsmith_dot_vec2_i32(vec2<i32>(13551i, _wgslsmith_sub_i32(global0.a, var_1.c.a)), ~(vec2<i32>(-2147483647i, -2147483647i) | var_1.d)) >> (reverseBits(abs(~u_input.a.x)) % 32u), countOneBits(~vec3<i32>(global0.a, u_input.d, 27656i) | -_wgslsmith_add_vec3_i32(vec3<i32>(-17041i, -4252i, var_1.d.x), vec3<i32>(5080i, -75394i, global0.a))), Struct_2(var_1.e.x, func_2(~_wgslsmith_div_i32(0i, -13487i), countOneBits(vec3<u32>(u_input.c.x, 74361u, 46585u))).c, func_4(false, select(0i, var_1.c.a, !var_1.c.c.x), var_1), -vec2<i32>(_wgslsmith_mult_i32(13676i, 0i), _wgslsmith_clamp_i32(-2147483647i, 88083i, 12631i)), ~(~vec2<u32>(u_input.c.x, 18733u))));
    var var_2 = func_4(-var_1.c.a <= (~abs(-27118i) >> (~_wgslsmith_clamp_u32(78880u, var_0.x, var_1.e.x) % 32u)), ~(-func_4(global0.c.x, func_2(2629i, vec3<u32>(17681u, var_0.x, u_input.e.x)).d.x, Struct_2(1u, var_1.b, var_1.b, var_1.d, vec2<u32>(u_input.c.x, 82387u))).a), Struct_2(var_1.e.x, Struct_1(0i, _wgslsmith_f_op_f32(-global0.b), !(!global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d, 757f, global0.c.x)) * global0.b)), func_2(_wgslsmith_clamp_i32(func_5(vec3<f32>(1308f, var_1.c.d, 1254f), -47265i, vec3<i32>(0i, -2147483647i, -14013i), var_1).a, max(-32621i, -2147483647i), _wgslsmith_mult_i32(global0.a, 51224i)), select(u_input.a >> (vec3<u32>(4294967295u, var_1.e.x, var_1.e.x) % vec3<u32>(32u)), u_input.c, vec3<bool>(false, global0.c.x, true))).b, abs(_wgslsmith_add_vec2_i32(var_1.d ^ var_1.d, vec2<i32>(15488i, -1i))), u_input.c.zz));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a, ~u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1006f, var_1.b.b, 1071f, var_1.b.d))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~var_1.d.x, select(-3179i, var_1.d.x, true)), ~(-vec3<i32>(-9205i, u_input.d, global0.a))), vec3<u32>(_wgslsmith_mult_u32(~var_0.x, 4294967295u), ~0u, ~0u));
}

