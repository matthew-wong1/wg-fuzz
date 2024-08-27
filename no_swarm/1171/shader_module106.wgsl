struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(101424u, u_input.a, u_input.a), vec3<u32>(2230u, 89568u, 0u)), 1u), ~_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 64756u), vec2<u32>(u_input.a, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(41417u, u_input.a))));
    let var_2 = vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(arg_2 < 0i, true))), false, true, true);
    var var_3 = ~4294967295u;
    let var_4 = var_2.x;
    return ~(~(~4294967295u));
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_4(select(!vec4<bool>(any(vec3<bool>(true, true, false)), true, select(false, false, false), true), vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), select(true, false, true), false), select(func_3(Struct_1(vec3<i32>(-1i, 7345i, 8105i), 1i), 16395i, 2147483647i) >= 5349u, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true)), Struct_3(~(~vec4<i32>(2147483647i, -2147483647i, -1i, 1i)) >> (arg_0 % vec4<u32>(32u)), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 15787i), 2147483647i), _wgslsmith_sub_vec4_u32(arg_0, arg_0)), Struct_3(vec4<i32>(26556i, _wgslsmith_clamp_i32(1i, 0i, 29018i), i32(-1i) * -15210i, -30959i) & vec4<i32>(1i, firstLeadingBit(-32668i), 62632i, 6059i), countOneBits(_wgslsmith_add_i32(~(-17902i), 34137i)), _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(arg_0, arg_0)), arg_0)));
    let var_1 = Struct_1(-vec3<i32>(var_0.b.a.x & _wgslsmith_add_i32(-12910i, -1i), _wgslsmith_add_i32(var_0.c.b, var_0.c.b), _wgslsmith_div_i32(var_0.b.a.x, abs(-1i))), ~_wgslsmith_clamp_i32(15166i, 29264i | var_0.c.b, 41647i ^ var_0.b.b) | (_wgslsmith_add_i32(var_0.c.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-32718i, -2147483647i, var_0.b.a.x, -88953i), vec4<i32>(var_0.c.a.x, var_0.c.a.x, 0i, 21697i))) ^ ~(-2147483647i)));
    let var_2 = 1u;
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    return vec3<u32>(1u, _wgslsmith_mod_u32(countOneBits(var_0.c.c.x), ~0u), 1u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_4 {
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    let var_0 = Struct_3(_wgslsmith_div_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(4884i, arg_2.a.x, arg_2.b, -37196i)) | (vec4<i32>(21945i, 2147483647i, arg_2.a.x, 2147483647i) | vec4<i32>(17711i, -2147483647i, 19418i, arg_2.a.x)), vec4<i32>(min(select(arg_2.a.x, arg_2.a.x, arg_0), ~arg_2.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_2.a.xx, arg_2.a.yz), -arg_2.a.x), firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2.a, vec3<i32>(-2147483647i, 0i, 51263i))), -2147483647i | _wgslsmith_clamp_i32(arg_2.b, arg_2.b, arg_2.a.x))), arg_2.b, vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), ~vec4<u32>(arg_3.x, 4294967295u, 4294967295u, 0u)), min(min(u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(42707u, 60736u, 0u, 4294967295u)), min(vec4<u32>(27674u, u_input.a, 162972u, 4294967295u), vec4<u32>(0u, arg_3.x, 63774u, 0u)))), _wgslsmith_mod_u32(abs(u_input.a) >> (~0u % 32u), arg_3.x), 1845u));
    var var_1 = vec3<bool>(true, !any(vec4<bool>(!arg_0, any(global0[_wgslsmith_index_u32(u_input.a, 32u)]), arg_0, arg_0)), true);
    global0 = array<vec4<bool>, 32>();
    return Struct_4(!global0[_wgslsmith_index_u32(firstLeadingBit(abs(603u << (arg_3.x % 32u))), 32u)], var_0, var_0);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1347f - -829f)), Struct_1(vec3<i32>(1679i, arg_0, 1i), -arg_0), _wgslsmith_mult_vec3_u32(max(func_2(vec4<u32>(4294967295u, u_input.a, 1u, 48205u)), vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(1u, u_input.a, 65112u)) | countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(45565u, u_input.a, 0u), vec3<u32>(u_input.a, 6107u, 53430u))), vec3<u32>(max(1u, firstLeadingBit(u_input.a)), ~(~u_input.a), u_input.a)));
    global0 = array<vec4<bool>, 32>();
    let var_1 = -(~_wgslsmith_add_i32(var_0.b.a.x, 2147483647i)) >= _wgslsmith_add_i32(29639i, -arg_0 | ~(var_0.b.b >> (u_input.a % 32u)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-602f))) * 1f)) * -292f);
    return Struct_2(Struct_1(max(_wgslsmith_clamp_vec3_i32(select(var_0.c.a.wwz, vec3<i32>(arg_0, var_2, 56655i), var_1), var_0.b.a.zzx, ~vec3<i32>(var_2, 2147483647i, arg_0)), firstLeadingBit(vec3<i32>(-3462i, var_2, 14944i)) & (var_0.c.a.ywy >> (var_0.c.c.wxx % vec3<u32>(32u)))), select(max(29568i, ~0i), 0i, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-744f, -1000f), 441f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1282f + 997f), 146f)), _wgslsmith_f_op_f32(floor(1f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -133f))), _wgslsmith_div_f32(-958f, _wgslsmith_f_op_f32(max(-389f, 887f)))), -880f), _wgslsmith_div_vec3_u32(var_0.c.c.yzz, _wgslsmith_sub_vec3_u32(~var_0.b.c.yyy, var_0.b.c.wxy)));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~arg_3.d, vec3<u32>(arg_3.d.x, arg_3.d.x, _wgslsmith_mod_u32(arg_2.d.x, 99626u)))), 32u)], Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.a.x, arg_3.a.a.x, 33314i), vec3<i32>(arg_2.a.b, -2989i, arg_3.a.a.x)), ~_wgslsmith_sub_i32(arg_2.a.b, arg_2.a.b), reverseBits(0i << (arg_2.d.x % 32u)), _wgslsmith_mod_i32(1i >> (1u % 32u), 1i)), arg_2.a.a.x, min(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, arg_2.d.x, arg_3.d.x), vec4<u32>(72164u, u_input.a, arg_3.d.x, u_input.a)), vec4<u32>(arg_2.d.x, arg_3.d.x, arg_2.d.x, 94445u) ^ vec4<u32>(13776u, 1u, 20667u, 1u), countOneBits(vec4<u32>(arg_3.d.x, 0u, u_input.a, arg_3.d.x))), max(vec4<u32>(13808u, arg_3.d.x, 15609u, 1u), ~vec4<u32>(1u, 20893u, 1u, 40052u)))), Struct_3(~(~vec4<i32>(2147483647i, -40564i, arg_3.a.a.x, arg_3.a.a.x)), arg_3.a.b << (61928u % 32u), max(~vec4<u32>(0u, arg_2.d.x, u_input.a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(40799u, 17071u, 1941u, 1u) ^ vec4<u32>(97010u, 1u, arg_3.d.x, u_input.a), ~vec4<u32>(arg_2.d.x, arg_3.d.x, 12055u, arg_3.d.x)))));
    var var_1 = Struct_2(Struct_1(~abs(vec3<i32>(var_0.b.b, arg_2.a.b, arg_2.a.b)) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(8586i, arg_3.a.b), arg_2.a.a.xx), 1i, -arg_2.a.b), _wgslsmith_dot_vec4_i32(var_0.b.a, _wgslsmith_mult_vec4_i32(var_0.c.a, var_0.b.a) ^ (var_0.b.a & var_0.b.a))), arg_2.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-317f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(991f, arg_3.b, true))))))), ~abs(abs(select(arg_2.d, arg_3.d, vec3<bool>(false, false, true)))));
    var_1 = Struct_2(var_1.a, 1168f, arg_3.c, var_0.b.c.xyx);
    let var_2 = false;
    var var_3 = ~firstLeadingBit(countOneBits(~(arg_2.d & vec3<u32>(35784u, 18551u, var_1.d.x))));
    return _wgslsmith_f_op_f32(-411f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * 676f) + _wgslsmith_f_op_f32(abs(-1000f)))))));
}

fn func_6(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_1 = ~abs(vec2<u32>(abs(1u), ~u_input.a) ^ (vec2<u32>(u_input.a, 29138u) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 63805u), vec2<u32>(36341u, 5027u)) % vec2<u32>(32u))));
    var_0 = arg_0.x;
    var var_2 = func_1(-15027i).a;
    let var_3 = var_2.a.yz | min(var_2.a.yx ^ var_2.a.zx, var_2.a.yz);
    return func_4(true, 182f, Struct_1(var_2.a, var_2.a.x), vec3<u32>(u_input.a, u_input.a, 42826u) >> (~(~select(vec3<u32>(54492u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_1.x, 1u), true)) % vec3<u32>(32u))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_5(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true, Struct_2(Struct_1(vec3<i32>(-14134i, 28983i, 105094i), 2147483647i), 884f, vec2<f32>(2253f, -407f), vec3<u32>(u_input.a, 12815u, u_input.a)), func_1(-17938i))), _wgslsmith_f_op_f32(-1f)))));
    let var_1 = func_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<bool>(true, all(vec3<bool>(true, false, false)), var_0.b < 1i), true, func_1(var_0.b), func_1(-41931i << (var_0.c.x % 32u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-617f + -649f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f + -548f) * _wgslsmith_f_op_f32(f32(-1f) * -117f)))), Struct_1(-(abs(vec3<i32>(var_0.a.x, 0i, var_0.b)) << (vec3<u32>(14570u, var_0.c.x, u_input.a) % vec3<u32>(32u))), select(_wgslsmith_sub_i32(53810i & var_0.b, 1i), var_0.b | func_6(vec2<f32>(-491f, -1249f)).b, min(var_0.b, var_0.b) > -10160i)), _wgslsmith_add_vec3_u32(~vec3<u32>(~u_input.a, 1u >> (1u % 32u), 16433u), vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_0.c.x, var_0.c.x), ~u_input.a) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, 0u, var_0.c.x), ~vec3<u32>(u_input.a, 10109u, 35910u)))).c;
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    let var_2 = _wgslsmith_mod_u32(~(~var_1.c.x), u_input.a);
    let var_3 = (~func_2(max(var_1.c, vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, var_2))).zy & var_0.c.xy) & vec2<u32>(firstLeadingBit(~_wgslsmith_mult_u32(var_0.c.x, 54640u)), 1u);
    let var_4 = 63387u;
    global0 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(4553i, ~4294967295u, var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f + 228f)), _wgslsmith_f_op_f32(select(216f, -242f, true))));
}

