struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = vec4<u32>(1u, abs(34266u), arg_0.a.x, firstTrailingBit(firstLeadingBit(0u)));
    var_1 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(35798u, max(u_input.a, var_1.x) >> (firstTrailingBit(var_0.a.x) % 32u), min(var_1.x, 2020u), _wgslsmith_clamp_u32(min(u_input.a, 59004u), var_1.x, _wgslsmith_mod_u32(var_0.a.x, 41749u))), ~(~firstLeadingBit(vec4<u32>(arg_0.a.x, 0u, u_input.a, 1u)))), vec4<u32>(1u, var_1.x, ~_wgslsmith_mod_u32(0u, u_input.a), var_0.a.x));
    var_1 = max(vec4<u32>(arg_0.a.x, _wgslsmith_add_u32((4294967295u & var_1.x) & var_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(7416u, u_input.a, var_1.x, 0u), reverseBits(vec4<u32>(23159u, u_input.a, 56699u, 58929u)))), arg_0.a.x, ~4294967295u >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, var_1.x), arg_0.a), _wgslsmith_clamp_u32(27378u, var_0.a.x, var_1.x)) % 32u)), ~(~countOneBits(vec4<u32>(0u, var_0.a.x, 32180u, 4294967295u) ^ vec4<u32>(8650u, var_1.x, arg_0.a.x, 27068u))));
    var_1 = select((abs(countOneBits(vec4<u32>(21903u, var_1.x, 4294967295u, 55419u))) & max(~vec4<u32>(4294967295u, arg_0.a.x, 0u, 3352u), vec4<u32>(var_1.x, 1u, var_0.a.x, arg_0.a.x))) & abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10314u, var_0.a.x, 33809u, var_0.a.x), vec4<u32>(19005u, 32512u, arg_0.a.x, var_1.x)), vec4<u32>(var_0.a.x, var_1.x, arg_0.a.x, var_0.a.x) ^ vec4<u32>(77341u, var_1.x, 0u, var_1.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, countOneBits(1581u), firstLeadingBit(1u), var_1.x | 38614u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, arg_0.a.x, var_1.x), vec4<u32>(35735u, 1u, 38026u, 4294967295u))), vec4<u32>(abs(24311u) ^ var_1.x, arg_0.a.x, reverseBits(4294967295u), var_1.x), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(90015u, 1u, 4294967295u, u_input.a), vec4<u32>(9175u, 11531u, 0u, 35784u)) >> (vec4<u32>(arg_0.a.x, u_input.a, 0u, arg_0.a.x) % vec4<u32>(32u)))), vec4<bool>(select(any(!vec4<bool>(var_0.b.x, false, var_0.b.x, true)), true, all(vec4<bool>(true, var_0.b.x, arg_0.b.x, false))), var_0.b.x, false, !arg_0.b.x));
    return vec3<u32>(u_input.a, ~1u, 4294967295u);
}

fn func_2() -> Struct_1 {
    var var_0 = 646f;
    return Struct_1(~func_3(Struct_1(vec3<u32>(0u, u_input.a, u_input.a), vec3<bool>(true, true, true))), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(false, true, false)) || true, true, false), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(false, false, false))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<i32>(4862i, countOneBits(arg_2.x));
    let var_1 = ~(~vec4<u32>(~u_input.a, u_input.a, ~arg_0.a.x, ~countOneBits(0u)));
    var var_2 = 48108u;
    var_2 = func_3(func_2()).x;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(260f, 1f, -781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_1)))))));
    return Struct_1(firstLeadingBit(~vec3<u32>(~arg_0.a.x, _wgslsmith_sub_u32(var_1.x, 35937u), firstLeadingBit(40020u))), vec3<bool>(true, true & arg_0.b.x, arg_0.b.x));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2900f), _wgslsmith_f_op_f32(1000f - -385f))))) - -762f);
    var var_1 = ~abs(_wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, 0u) << (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(81201u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -268f, -1025f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), var_0, 1035f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -444f, 287f) - vec4<f32>(627f, var_0, var_0, 585f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(-856f, -125f)), -945f, -1862f))), func_4(func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1681f, var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) - _wgslsmith_f_op_f32(-var_0)))), ~(-abs(vec2<i32>(-1i, 1i)))), Struct_1(func_4(Struct_1(~vec3<u32>(var_1.x, 1u, 0u), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -290f) * _wgslsmith_f_op_f32(trunc(1340f))), -vec2<i32>(1i, 1i)).a, !vec3<bool>(func_4(Struct_1(vec3<u32>(0u, 1u, 1u), vec3<bool>(true, false, true)), var_0, vec2<i32>(6072i, 0i)).b.x, true, var_0 > var_0)));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = func_2().a.x;
    let var_1 = arg_0.d;
    var_0 = arg_0.d.a.x;
    let var_2 = Struct_1(firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(55429u, arg_0.d.a.x, 1u), vec3<u32>(arg_0.c.a.x, var_1.a.x, u_input.a)))) | func_2().a, vec3<bool>(all(func_4(func_1().d, _wgslsmith_f_op_f32(364f * arg_1), -vec2<i32>(33927i, 0i)).b.yx), true, any(arg_0.d.b.yx)));
    var var_3 = Struct_1(var_2.a, func_1().c.b);
    return ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(24841u, 34453u, u_input.a, 14362u)), ~(vec4<u32>(33326u, var_3.a.x, 1u, var_3.a.x) >> (vec4<u32>(var_3.a.x, var_1.a.x, 4294967295u, arg_0.c.a.x) % vec4<u32>(32u)))) | ~vec4<u32>(_wgslsmith_mod_u32(var_3.a.x, var_2.a.x), var_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a.x, var_1.a.x), ~vec2<u32>(arg_0.d.a.x, var_1.a.x)), var_1.a.x);
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.www, _wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.b.x), var_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(func_1().a.x, var_1.x, 2957f))), var_0.a, !(true || (1u == (u_input.a >> (var_0.c.a.x % 32u))))));
    let var_3 = _wgslsmith_f_op_f32(sign(func_1().b.x));
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(var_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(func_1().a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2, var_2)) - _wgslsmith_div_vec3_f32(var_0.a, var_0.b.yww)))), var_0.b, Struct_1(vec3<u32>(func_3(var_0.d).x, 4294967295u ^ arg_0.x, u_input.a << (~4294967295u % 32u)), var_0.d.b), Struct_1(var_0.c.a, select(vec3<bool>(func_1().d.b.x, true, false), !vec3<bool>(var_0.c.b.x, var_0.d.b.x, var_0.c.b.x), true)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(1006f + var_0.b.x), 214f) - vec3<f32>(var_2.x, 1293f, _wgslsmith_f_op_f32(f32(-1f) * -359f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1449f)), 1263f, func_2().b.x)), var_0.b.x), func_1().d, func_4(func_1().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(round(var_0.b.x))), -(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-21486i, 1i)) >> (reverseBits(vec2<u32>(u_input.a, var_0.d.a.x)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), min(u_input.a, 1u), _wgslsmith_div_u32(u_input.a, u_input.a), 62374u), ~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), func_5(func_1(), -849f)));
    let var_1 = vec4<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-23459i, 0i, 0i), -1439i))), max(2147483647i, _wgslsmith_mod_i32(-2147483647i, -2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -29723i, -53774i), vec3<i32>(2147483647i, -5556i, -27416i), vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x)) << (vec3<u32>(32892u, 107419u, 37837u) % vec3<u32>(32u)), vec3<i32>(-13469i, ~(-1i), ~(-21716i))), 1108i), 1i);
    var_0 = func_1();
    let var_2 = func_6(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.a.x, 0u, 1u, 14679u), vec4<u32>(var_0.c.a.x, 1u, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.a, 46540u, 4294967295u, var_0.c.a.x)), abs(select(vec4<u32>(u_input.a, 58749u, 64367u, u_input.a), vec4<u32>(var_0.d.a.x, 19280u, 78936u, var_0.d.a.x), vec4<bool>(false, true, var_0.c.b.x, var_0.c.b.x))))));
    var var_3 = -45438i;
    var var_4 = func_6(vec4<u32>(10127u, 0u, var_0.c.a.x, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~var_1.wz, vec2<i32>(~_wgslsmith_sub_i32(20130i, var_1.x), firstLeadingBit(-2147483647i))), vec3<u32>(30005u, var_4.d.a.x, 4537u));
}

