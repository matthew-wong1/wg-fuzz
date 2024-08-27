struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(select(firstLeadingBit(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65629u, 56596u, 0u), vec4<u32>(18937u, 64396u, 95213u, 1u)), ~54383u), vec2<u32>(1u, 1u), !vec2<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false)))), 38653u, Struct_2(~(~u_input.a), Struct_1(vec3<bool>(true, true, true), ~abs(vec4<u32>(71135u, 23771u, 3690u, 5952u))), Struct_1(vec3<bool>(true, true, true), vec4<u32>(~1u, abs(1u), ~4294967295u, 4294967295u))), Struct_3(Struct_2(min(u_input.a, vec2<i32>(58426i, -2147483647i)) ^ vec2<i32>(-11459i, u_input.a.x), Struct_1(vec3<bool>(true, true, true), ~vec4<u32>(4294967295u, 144185u, 4294967295u, 6338u)), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24487u, 1u, 0u), vec4<u32>(30489u, 4294967295u, 37583u, 1u)))), Struct_1(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), true), firstTrailingBit(vec4<u32>(0u, 70113u, 0u, 38722u)) & vec4<u32>(1u, 1u, 1u, 1u)), select(vec3<bool>(all(vec3<bool>(true, false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, true)))), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), ~vec3<u32>(0u, 9953u, 1u)), min(firstTrailingBit(4294967295u), firstLeadingBit(1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-628f)), _wgslsmith_f_op_f32(trunc(-1040f)), select(all(vec3<bool>(false, true, false)), true, true)))), Struct_2(~vec2<i32>(13005i, 1i), Struct_1(vec3<bool>(true, true, false), ~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), u_input.a.x <= 2147483647i), select(min(vec4<u32>(48584u, 62912u, 1u, 1877u), vec4<u32>(1012u, 1u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), all(vec3<bool>(false, false, true))))));
    var_0 = Struct_4(~vec2<u32>(101446u, var_0.e.c.b.x), var_0.d.a.b.b.x >> (~(~var_0.c.c.b.x) % 32u), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-54937i << (var_0.e.b.b.x % 32u), _wgslsmith_mult_i32(5244i, u_input.a.x)), _wgslsmith_mod_vec2_i32(var_0.c.a | vec2<i32>(u_input.a.x, 21274i), var_0.c.a)), var_0.e.b, Struct_1(vec3<bool>(var_0.d.c.x, true, !var_0.e.c.a.x), var_0.c.c.b)), var_0.d, var_0.c);
    var var_1 = Struct_2(u_input.a, var_0.d.b, var_0.e.b);
    let var_2 = var_0.d.c.x;
    global0 = any(vec2<bool>((var_0.d.c.x && false) | true, any(select(vec3<bool>(var_0.d.a.b.a.x, var_1.c.a.x, true), vec3<bool>(var_0.d.a.c.a.x, true, false), true)))) & true;
    return firstTrailingBit(~var_1.b.b.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_4(arg_0.a.c.b.xz, 18930u, Struct_2((_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_1.a.x), vec2<i32>(u_input.a.x, 1i)) ^ -arg_0.a.a) & ~reverseBits(vec2<i32>(2147483647i, u_input.a.x)), Struct_1(arg_2.xzy, vec4<u32>(arg_1.b.b.x ^ 0u, arg_0.b.b.x & 0u, abs(4294967295u), func_3())), arg_1.c), arg_0, arg_0.a);
    global1 = !any(arg_2.yw);
    global0 = all(vec4<bool>(true, !arg_0.c.x, false, !arg_1.b.a.x));
    global0 = arg_0.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e)))) * _wgslsmith_f_op_f32(f32(-1f) * -734f));
    return arg_0.b.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = i32(-1i) * -16354i;
    global1 = arg_0.x;
    let var_1 = Struct_4(~_wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(0u, 23653u)), vec2<u32>(4294967295u, 25534u)), select(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 49515u), 0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(9536u, 4294967295u, 4294967295u), vec3<u32>(858u, 4294967295u, 4294967295u)), vec3<u32>(~14676u, abs(116249u), 0u)), false), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x) | ~(~u_input.a), Struct_1(select(func_2(Struct_3(Struct_2(vec2<i32>(u_input.a.x, 0i), Struct_1(vec3<bool>(true, false, true), vec4<u32>(40869u, 27093u, 4294967295u, 1u)), Struct_1(vec3<bool>(arg_0.x, true, false), vec4<u32>(42876u, 0u, 1u, 126710u))), Struct_1(arg_1.xzy, vec4<u32>(0u, 4294967295u, 1u, 65194u)), vec3<bool>(arg_0.x, false, true), 23085u, -768f), Struct_2(u_input.a, Struct_1(arg_1.xwx, vec4<u32>(17746u, 78907u, 1970u, 1u)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(16555u, 0u, 12875u, 37534u))), vec4<bool>(true, arg_1.x, true, arg_0.x)), arg_1.yzz, arg_1.x != arg_0.x), min(select(vec4<u32>(10279u, 4294967295u, 18669u, 13482u), vec4<u32>(4294967295u, 0u, 4294967295u, 23654u), false), vec4<u32>(43608u, 1u, 25274u, 49163u))), Struct_1(vec3<bool>(all(arg_1.xx), !arg_1.x, true), _wgslsmith_add_vec4_u32(vec4<u32>(17992u, 94893u, 0u, 0u), vec4<u32>(0u, 0u, 101255u, 0u)))), Struct_3(Struct_2(firstTrailingBit(vec2<i32>(19054i, u_input.a.x)), Struct_1(arg_1.yxy, ~vec4<u32>(4294967295u, 20516u, 31742u, 1u)), Struct_1(arg_1.zxy, ~vec4<u32>(55558u, 0u, 0u, 50455u))), Struct_1(arg_1.xzz, vec4<u32>(1u, 1u, 1u, 1u)), select(vec3<bool>(arg_1.x, true, any(vec4<bool>(arg_1.x, true, arg_1.x, false))), func_2(Struct_3(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(arg_1.zyz, vec4<u32>(0u, 9776u, 45446u, 0u)), Struct_1(vec3<bool>(arg_1.x, arg_0.x, arg_1.x), vec4<u32>(16482u, 48369u, 1u, 60078u))), Struct_1(vec3<bool>(true, arg_0.x, arg_1.x), vec4<u32>(11291u, 66109u, 0u, 1u)), arg_1.zyw, 11972u, -918f), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(arg_1.zzw, vec4<u32>(1u, 1487u, 4294967295u, 1u)), Struct_1(vec3<bool>(arg_0.x, true, true), vec4<u32>(20446u, 43997u, 0u, 1907u))), arg_1), arg_1.xxz), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(67228u, 1u)), _wgslsmith_clamp_u32(func_3(), 4294967295u, min(41087u, 4294967295u)), _wgslsmith_mod_u32(~20762u, min(15423u, 1u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-300f - _wgslsmith_f_op_f32(f32(-1f) * -1528f)), -1000f))), Struct_2(u_input.a, Struct_1(vec3<bool>(arg_0.x, arg_1.x, true), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(arg_1.xyw, abs(abs(vec4<u32>(1u, 0u, 17505u, 82211u))))));
    global1 = true;
    var var_2 = Struct_5(vec4<f32>(-105f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.e), _wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(var_1.d.e + var_1.d.e))), _wgslsmith_f_op_f32(var_1.d.e - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.d.e)), _wgslsmith_f_op_f32(-1258f + var_1.d.e), var_1.e.b.a.x))), var_1.d.e), var_1.d.e, var_1.e, _wgslsmith_div_i32(~var_0, var_1.c.a.x), ~vec2<i32>(i32(-1i) * -2147483647i, 2147483647i) ^ vec2<i32>(_wgslsmith_mod_i32(countOneBits(-1i), -u_input.a.x), _wgslsmith_add_i32(u_input.a.x, 5831i) >> (max(54864u, 1u) % 32u)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(812f * 1855f), 1f, 739f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1417f, 107f, -1000f, -1059f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-1f), 1134f, -563f));
    var_0 = ~select(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x) >> (vec2<u32>(116107u, 699u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.a.x)), -2147483647i ^ u_input.a.x, !(-25213i > -u_input.a.x));
    global0 = true;
    let var_2 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 266f) - _wgslsmith_f_op_f32(f32(-1f) * -801f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f - var_1.x)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1929f, var_1.x) * var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -607f, -1768f, var_1.x)), vec4<bool>(true, false, true, true))))), -592f, Struct_2(~vec2<i32>(u_input.a.x, 1i), Struct_1(!(!vec3<bool>(var_2, false, var_2)), ~vec4<u32>(0u, 54609u, 56740u, 9125u)), Struct_1(vec3<bool>(true, true, true), min(~vec4<u32>(1u, 28053u, 4294967295u, 5711u), abs(vec4<u32>(0u, 1u, 80119u, 0u))))), ~reverseBits(-(i32(-1i) * -14356i)), abs(~u_input.a));
    let var_4 = !vec3<bool>(false, var_2, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(firstTrailingBit(var_3.c.b.b), max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.c.c.b.x, 1u, var_3.c.b.b.x, 0u), select(vec4<u32>(0u, var_3.c.b.b.x, var_3.c.b.b.x, var_3.c.b.b.x), var_3.c.c.b, vec4<bool>(var_2, false, false, var_2))), _wgslsmith_div_vec4_u32(~var_3.c.b.b, ~vec4<u32>(51573u, 1u, 44046u, 4294967295u)))), vec4<u32>(12856u, abs(func_3()), abs(abs(~var_3.c.b.b.x)), ~countOneBits(4294967295u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_3.c.b.b.x, ~var_3.c.b.b.x), 11140u));
}

