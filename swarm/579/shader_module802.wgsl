struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<i32>(arg_0.d.x, 0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 568f) * vec2<f32>(-1593f, 913f)) - _wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(arg_0.c.x, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + _wgslsmith_div_vec2_f32(arg_0.c, arg_0.c)))))));
    var var_2 = ~vec4<i32>(u_input.a.x, -var_0.x, -_wgslsmith_div_i32(56611i, u_input.e.x), ~u_input.e.x | ~28986i);
    var var_3 = arg_0.a.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -847f);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(!all(vec4<bool>(true, true, true, true)), -(~(~(-vec2<i32>(u_input.a.x, 0i)))));
    var_0 = Struct_3(all(!(!select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), false))), ~select(vec2<i32>(-u_input.a.x, _wgslsmith_mod_i32(-1119i, 112245i)), select(var_0.b, _wgslsmith_sub_vec2_i32(var_0.b, var_0.b), true), true));
    var_0 = Struct_3(var_0.a, min(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(14132i, -15265i, 58942i), u_input.a)), -1i), -u_input.e));
    var_0 = Struct_3(var_0.a, ~var_0.b);
    let var_1 = any(!(!vec3<bool>(var_0.a, var_0.a, var_0.a))) | all(vec3<bool>(!(false == var_0.a), false, true || (u_input.d.x < 1u)));
    return ~_wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.d.wzy >> (vec3<u32>(1u, 4294967295u, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.c.x, 97954u))), u_input.d.wyz);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(arg_1.b.a.x, true, _wgslsmith_f_op_f32(func_1(arg_1.b)) < -428f), arg_1.b.b, vec2<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c.x, -1322f))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-arg_3, ~arg_3, -10777i), countOneBits(select(arg_1.c.d, vec3<i32>(arg_1.b.d.x, 31123i, u_input.a.x), true)))), arg_1.c.e);
    var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.c.x)));
    var_1 = _wgslsmith_f_op_f32(885f + var_0.b.x);
    var_1 = 1000f;
    return !(!select(arg_1.b.a, !arg_1.b.a, arg_1.b.a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_1(select(arg_3.b.a, arg_1.a, func_4(Struct_3(true, u_input.a.yx), arg_3, func_3(), arg_0)), arg_1.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(435f, -475f), arg_3.b.a.x))))))), arg_3.c.d, vec4<u32>(arg_3.c.e.x, _wgslsmith_mult_u32(~(~arg_3.b.e.x), select(3335u, u_input.c.x, arg_1.a.x) | arg_1.e.x), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, 18868u), select(arg_3.b.e.x, arg_1.e.x, true) >> (arg_2.x % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(78599u), 40267u), 30620u)));
    var_0 = arg_3.c;
    var var_1 = arg_2.wz;
    var var_2 = arg_1.a.x;
    var_1 = vec2<u32>(arg_1.e.x, min(var_1.x, ~arg_2.x & arg_1.e.x) & arg_1.e.x);
    return _wgslsmith_f_op_f32(func_1(arg_3.b));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_u32(arg_2.c.e.yyz, max(vec3<u32>(_wgslsmith_div_u32(arg_2.c.e.x, _wgslsmith_mod_u32(u_input.b.x, arg_2.b.e.x)), ~u_input.d.x << (arg_2.b.e.x % 32u), ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 1u))), _wgslsmith_mult_vec3_u32(~select(u_input.c, u_input.d.zzw, arg_2.c.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(12353u, 6902u, 0u), vec3<u32>(1u, 4294967295u, 0u) | arg_2.b.e.zyw))));
    var var_1 = ~(~var_0.zz);
    let var_2 = ~u_input.d;
    let var_3 = Struct_3(true, vec2<i32>(arg_2.a.x, -_wgslsmith_div_i32(arg_2.a.x, arg_2.a.x)));
    var var_4 = abs(var_0);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, false), vec2<f32>(772f, -573f), vec2<f32>(-1000f, 1213f), vec3<i32>(u_input.a.x, u_input.a.x, 41323i), u_input.d)))), 1f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(580f)) + _wgslsmith_f_op_f32(f32(-1f) * -955f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-365f)) * _wgslsmith_f_op_f32(ceil(-2132f)))), -405f, -1000f), vec3<bool>(true, true, true), Struct_2(-vec3<i32>(-5847i, u_input.a.x, -2147483647i) >> (select(_wgslsmith_mod_vec3_u32(u_input.c, u_input.c), vec3<u32>(u_input.c.x, 0u, 1u), vec3<bool>(true, true, true)) % vec3<u32>(32u)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1205f, -815f))), vec2<f32>(-593f, -2249f)), vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1970f, 378f), vec2<f32>(1108f, 693f), vec3<i32>(-57462i, u_input.e.x, -35773i), u_input.d), vec4<u32>(4294967295u, 38072u, 4294967295u, u_input.c.x), Struct_2(vec3<i32>(48123i, -1i, 43985i), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1024f, -280f), vec2<f32>(-1326f, -1920f), u_input.a, u_input.d), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1068f, -305f), vec2<f32>(1324f, 615f), u_input.a, u_input.d)))), _wgslsmith_f_op_f32(f32(-1f) * -674f)), vec3<i32>(select(u_input.e.x, -18587i, true), u_input.a.x, -2472i), ~vec4<u32>(4294967295u, u_input.c.x, 69246u, 29055u)), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1560f, -440f), vec2<f32>(-3343f, -2120f), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1115f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, -780f)))), vec3<i32>(u_input.e.x, _wgslsmith_div_i32(-48407i, 14110i), _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), select(firstTrailingBit(u_input.d), abs(u_input.d), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))))));
    var var_1 = Struct_3(!(!(!func_5(vec4<f32>(var_0.b.b.x, 1270f, -1473f, var_0.c.b.x), var_0.b.a, Struct_2(var_0.c.d, var_0.b, var_0.b)).b.a.x)), -vec2<i32>(1i, u_input.e.x));
    var var_2 = Struct_3(var_0.b.b.x == _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(var_1.a, var_1.a, false), _wgslsmith_div_vec2_f32(var_0.c.b, var_0.b.b), vec2<f32>(501f, var_0.c.c.x), -u_input.a, abs(var_0.c.e)))), firstTrailingBit(var_1.b));
    var_1 = Struct_3(true, _wgslsmith_sub_vec2_i32(var_0.b.d.zz, max(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_0.a.x), _wgslsmith_clamp_vec2_i32(var_2.b, vec2<i32>(u_input.e.x, 1766i), vec2<i32>(var_1.b.x, u_input.a.x)), var_2.b), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, var_2.b.x))));
    var_1 = Struct_3(true & !any(var_0.b.a), -var_2.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2079f, _wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.x, 885f) - var_0.c.c.x)), var_0.b.c.x)));
    let var_4 = Struct_3(any(!vec3<bool>(var_0.c.a.x, false, true)) == all(var_0.b.a.xy), _wgslsmith_div_vec2_i32(-var_2.b, select(~_wgslsmith_div_vec2_i32(vec2<i32>(-2262i, 38550i), var_2.b), -countOneBits(var_1.b), !var_0.b.a.xy)));
    let var_5 = func_5(vec4<f32>(-872f, var_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b.b.x, var_3.x), _wgslsmith_f_op_f32(1990f * 245f)))), var_0.b.c.x), func_4(Struct_3(var_0.b.a.x, vec2<i32>(1i << (u_input.c.x % 32u), -2147483647i)), var_0, ~(var_0.c.e.zxx ^ ~vec3<u32>(u_input.c.x, 23432u, u_input.b.x)), _wgslsmith_dot_vec3_i32(var_0.a, reverseBits(abs(u_input.a)))), var_0).b;
    var_2 = Struct_3(var_5.a.x, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(var_2.b), firstTrailingBit(-vec2<i32>(var_4.b.x, var_4.b.x))), abs(~var_0.b.d.yx >> ((vec2<u32>(0u, var_0.b.e.x) | var_5.e.wy) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b.d.x, -abs(abs(var_4.b)));
}

