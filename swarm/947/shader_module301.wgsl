struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_clamp_i32(~0i ^ _wgslsmith_sub_i32(u_input.a.x, 2147483647i), u_input.a.x, -2147483647i), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)) >> (vec2<u32>(~_wgslsmith_mult_u32(19458u, 32078u), select(4294967295u, _wgslsmith_clamp_u32(54596u, 4294967295u, 22562u), true)) % vec2<u32>(32u)), vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 4294967295u)), ~1u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 35959u), vec3<u32>(0u, 51428u, 980u)) % 32u)), -vec3<i32>(2147483647i, ~37914i & (u_input.a.x << (4294967295u % 32u)), -2147483647i));
    var var_1 = Struct_1(~u_input.a.x << (var_0.c.x % 32u), var_0.b << (~min(var_0.c.zx, var_0.b) % vec2<u32>(32u)), var_0.c, vec3<i32>(54049i, _wgslsmith_clamp_i32(~(-1i), u_input.a.x, -12372i), abs(var_0.a)));
    var var_2 = Struct_1(-var_0.a, select(_wgslsmith_clamp_vec2_u32(~var_1.b ^ min(vec2<u32>(12185u, var_1.b.x), var_1.b), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, 0u), var_1.b, true), vec2<u32>(var_0.c.x, 20287u) & var_1.b, abs(vec2<u32>(25086u, var_1.c.x))), vec2<u32>(var_1.b.x << (var_1.c.x % 32u), 32801u)), countOneBits(vec2<u32>(0u, 4294967295u) & (vec2<u32>(4294967295u, var_1.c.x) >> (vec2<u32>(var_1.c.x, 0u) % vec2<u32>(32u)))), vec2<bool>(true, true)), abs(var_1.c), -vec3<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-27816i, u_input.a.x), _wgslsmith_mult_i32(-1i, 8793i)), ~abs(0i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(708f, _wgslsmith_f_op_f32(abs(-2742f)))))), -1489f, 323f));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -279f)))));
    return ~((61050u | var_0.c.x) & _wgslsmith_clamp_u32(var_2.c.x, var_2.c.x, countOneBits(0u | var_2.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(true, true, true)), true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    global0 = ((i32(-1i) * -(~arg_0.d.x)) >= _wgslsmith_mod_i32(~(-arg_0.a), (-14531i | u_input.a.x) & -23121i)) & true;
    let var_0 = arg_1;
    global0 = true;
    let var_1 = select(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), any(vec4<bool>(false, true, true, true))), true), select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true))), vec3<bool>(any(vec2<bool>(true, false)), true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), false), false), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), (select(arg_1.a, -18579i, true) & arg_0.d.x) >= -6482i), vec3<bool>(select(false, true, true), true, true));
    return ~arg_1.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = !all(vec2<bool>(false, true));
    var var_0 = Struct_1(func_4(Struct_1(u_input.a.x, vec2<u32>(4294967295u, ~4294967295u), vec3<u32>(select(75104u, 1u, true), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(14097u, 3083u))), select(-vec3<i32>(u_input.a.x, 5811i, -11222i), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -1i), vec2<u32>(abs(1u), ~60689u), vec3<u32>(8504u, 97284u << (1u % 32u), func_3()), -firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), reverseBits(_wgslsmith_mod_vec2_u32(select(vec2<u32>(32487u, 31008u), vec2<u32>(1u, 1u), vec2<bool>(true, false)), ~vec2<u32>(49506u, 1u))) << (abs(vec2<u32>(~25864u, 1u)) % vec2<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 39665u, 0u, 18304u)), vec4<u32>(1u, 47482u, 1u, 0u)), 0u, 1u) | vec3<u32>(min(max(28387u, 1u), _wgslsmith_div_u32(4294967295u, 6783u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(56508u, 46038u, 4294967295u, 0u))), 1u), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(firstTrailingBit(24638i), _wgslsmith_div_i32(i32(-1i) * -1i, abs(u_input.a.x))), u_input.a.x));
    let var_1 = var_0.a;
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(var_0.d.yx, _wgslsmith_add_vec2_i32(abs(vec2<i32>(1i, -16977i)), _wgslsmith_clamp_vec2_i32(var_0.d.zx, vec2<i32>(-1i, var_0.a), vec2<i32>(u_input.a.x, u_input.a.x)))) >> (~(~reverseBits(91367u)) % 32u), var_0.b, var_0.c, vec3<i32>(-28747i, var_0.a, var_0.a & _wgslsmith_mod_i32(var_0.a, u_input.a.x)));
    var var_3 = Struct_1(2147483647i, ~firstTrailingBit(~var_2.b >> (var_2.c.zx % vec2<u32>(32u))), var_0.c, reverseBits(firstLeadingBit(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(-33544i, var_2.a, var_0.a), -11516i))));
    return reverseBits(~(_wgslsmith_clamp_i32(u_input.a.x, -49735i, 2147483647i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, var_2.c.x, var_3.b.x, 24429u), vec4<u32>(3927u, 81814u, var_0.c.x, 0u)) % 32u)) << (~4294967295u % 32u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))) <= _wgslsmith_sub_i32(0i, -_wgslsmith_add_i32(-u_input.a.x, -1i));
    let var_0 = -250f;
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1803i, 58545i, -1i, -31708i), -vec4<i32>(20306i, u_input.a.x, -2147483647i, 1i)) & vec4<i32>(-14417i, max(u_input.a.x, 29955i), 1i, 0i)));
    var_2 = vec4<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x), -(~(-2147483647i) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 28061u), vec4<u32>(arg_0, 60979u, arg_0, 99494u))) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-85979i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -16850i), select(select(var_2.wxy, var_2.yxx, vec3<bool>(true, true, true)), var_2.wyy, true)) & var_2.x, u_input.a.x);
    return Struct_1(1i, max(~(vec2<u32>(arg_0, 0u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0) ^ vec2<u32>(54708u, 1u)), min(vec2<u32>(arg_0 << (1u % 32u), arg_0), vec2<u32>(~21015u, arg_0))), _wgslsmith_mod_vec3_u32(max(countOneBits(vec3<u32>(4294967295u, 4294967295u, 37763u)), _wgslsmith_add_vec3_u32(~vec3<u32>(62899u, 0u, arg_0), ~vec3<u32>(1u, arg_0, 4294967295u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(4294967295u, 57071u, arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, 4294967295u, 0u), vec3<u32>(arg_0, arg_0, 4294967295u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 9832u, 4294967295u), vec3<u32>(arg_0, arg_0, arg_0))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_2.yxw, var_2.xzy), select(vec3<i32>(-40623i, u_input.a.x, u_input.a.x), var_2.xzy, true)), -vec3<i32>(9944i, var_2.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~4294967295u);
    let var_1 = !vec3<bool>(~1u <= _wgslsmith_add_u32(_wgslsmith_mod_u32(19918u, 4294967295u), var_0.c.x), !(any(vec4<bool>(true, true, false, false)) && true), !any(vec2<bool>(false, true)));
    var var_2 = var_0;
    global0 = var_1.x;
    let var_3 = 976f;
    var_2 = Struct_1(-(~(-firstLeadingBit(14248i))), firstLeadingBit(vec2<u32>(func_3(), ~var_2.b.x | _wgslsmith_sub_u32(var_0.b.x, var_2.c.x))), min(vec3<u32>(_wgslsmith_mult_u32(var_0.c.x, var_0.c.x), ~countOneBits(4294967295u), 1u), ~(~var_2.c)), var_0.d);
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u & var_2.b.x, abs(var_2.c.x), var_0.c.x & var_0.c.x, 4294967295u | var_0.c.x), countOneBits(vec4<u32>(46462u, 63184u, 4294967295u, 1u))) & abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, var_2.b.x, 15857u), vec4<u32>(93028u, var_2.b.x, var_2.b.x, var_0.b.x)), 0u)), var_0.b);
}

