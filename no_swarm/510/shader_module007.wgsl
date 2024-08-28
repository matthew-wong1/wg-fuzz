struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: f32 = -755f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> vec4<i32> {
    global1 = arg_1.b;
    let var_0 = _wgslsmith_dot_vec2_u32(~(~u_input.b), u_input.b);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    return vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-2147483647i, countOneBits(u_input.a.x), _wgslsmith_mod_i32(15528i, 1i)), (1i << (countOneBits(25543u) % 32u)) >> (0u % 32u)), -max(~0i, 1i), u_input.a.x, firstTrailingBit(-firstTrailingBit(firstLeadingBit(arg_0.b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(73721u, 23u)]), Struct_2(~(2147483647i << (u_input.b.x % 32u)), global0[_wgslsmith_index_u32(arg_1, 23u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, -534f, 1000f, 888f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1401f, -933f, 208f, -842f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1068f, -304f, 755f)))), global0[_wgslsmith_index_u32(arg_1, 23u)]), vec2<i32>(select(arg_0.x, 1i, _wgslsmith_f_op_f32(491f * 309f) == _wgslsmith_f_op_f32(sign(1000f))), -14876i), arg_2.yw);
    var var_1 = func_3(Struct_1(true, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.b.a, u_input.a.x), _wgslsmith_div_i32(-1i, -2147483647i)), -2147483647i), arg_2, _wgslsmith_clamp_u32(1u, 11058u, 5338u), _wgslsmith_mod_vec2_u32(u_input.b, var_0.d)), Struct_5(-1i, var_0.b.c.x));
    var_1 = arg_0;
    var var_2 = !var_0.a.a.a;
    var var_3 = Struct_2(var_1.x, Struct_1(true, -1i, var_0.a.a.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b ^ vec2<u32>(1u, u_input.b.x)), abs(arg_2.zx) ^ u_input.b), arg_2.wz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1489f, _wgslsmith_f_op_f32(-var_0.b.c.x), 119f, _wgslsmith_f_op_f32(var_0.b.c.x + 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x - var_0.b.c.x)), -568f, _wgslsmith_f_op_f32(352f + var_0.b.c.x), _wgslsmith_f_op_f32(sign(534f)))), Struct_1(!(!(!var_0.b.d.a)), abs(~(i32(-1i) * -12700i)), vec4<u32>(0u, ~max(43582u, u_input.b.x), abs(firstTrailingBit(0u)), min(abs(19431u), 1u)), 1u, countOneBits(vec2<u32>(153513u, var_0.d.x))));
    return select(vec3<bool>(true, var_0.b.d.a, all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(var_0.a.a.a, var_3.b.a), select(vec2<bool>(true, true), vec2<bool>(var_3.d.a, var_0.a.a.a), vec2<bool>(var_3.d.a, true))))), vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.c.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) + _wgslsmith_f_op_f32(-181f + var_0.b.c.x)), true, true), vec3<bool>(false, true, !any(select(vec2<bool>(true, var_0.b.d.a), vec2<bool>(var_0.a.a.a, var_0.a.a.a), vec2<bool>(true, true)))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_5(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(677f - _wgslsmith_f_op_f32(-2259f * _wgslsmith_div_f32(804f, -441f))) + -393f));
    let var_1 = vec3<u32>(firstLeadingBit(u_input.b.x), 0u, 49623u);
    return Struct_4(Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, 0u, u_input.b.x, var_1.x)) ^ 0u, 23u)]), Struct_2(arg_1.x, Struct_1(arg_2, firstTrailingBit(~(-2147483647i)), firstLeadingBit(vec4<u32>(var_1.x, 130471u, 3404u, 84112u) | vec4<u32>(28556u, 1u, 39194u, u_input.b.x)), countOneBits(1u), min(var_1.zx, vec2<u32>(40976u, var_1.x) >> (u_input.b % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1172f, var_0.b, var_0.b, 225f), vec4<f32>(-861f, var_0.b, var_0.b, var_0.b))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, -365f, var_0.b), vec4<f32>(var_0.b, -499f, var_0.b, -351f), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, 2212f, var_0.b), vec4<f32>(var_0.b, var_0.b, 1622f, -508f), arg_2))))), Struct_1(arg_2, firstLeadingBit(~arg_1.x), select(vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, 76035u), vec4<u32>(4294967295u, u_input.b.x, 87449u, var_1.x), vec4<bool>(true, arg_2, arg_2, true)) >> (abs(vec4<u32>(var_1.x, 42738u, var_1.x, u_input.b.x)) % vec4<u32>(32u)), 53535u, var_1.zx)), func_3(Struct_1(arg_2, u_input.a.x, vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~var_1.x, _wgslsmith_mult_u32(1u, var_1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.zz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.x), var_1.xy)), Struct_5(_wgslsmith_div_i32(~var_0.a, _wgslsmith_add_i32(2147483647i, -1i)), _wgslsmith_f_op_f32(-var_0.b))).xz, u_input.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0.d.x, _wgslsmith_div_u32(arg_0.b.b.c.x, abs(1u)), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.c.x, 57933u), _wgslsmith_mult_u32(arg_0.a.a.e.x, 1u)), 43549u), vec4<u32>(1u, arg_3.c.x, arg_0.b.d.d | 1u, arg_0.a.a.d)), reverseBits(_wgslsmith_mod_vec4_u32((vec4<u32>(arg_0.d.x, arg_3.d, arg_3.c.x, arg_3.e.x) & arg_0.b.d.c) ^ vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 17803u), ~(~arg_3.c))));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~0u), ~4294967295u, var_0.x, ~(0u << (arg_3.d % 32u))), ~(~arg_0.b.b.c)) & ~arg_0.b.d.c;
    let var_1 = select(select(vec4<bool>((arg_0.b.b.a || arg_3.a) | (arg_2.b < arg_1.x), arg_3.a, arg_3.a, select(true, true, arg_2.b >= arg_2.b)), !vec4<bool>(arg_2.b != 1597f, true, true, arg_0.a.a.a), select(!vec4<bool>(arg_0.b.d.a, arg_0.a.a.a, arg_3.a, arg_0.b.d.a), select(select(vec4<bool>(arg_0.a.a.a, arg_3.a, arg_3.a, arg_0.b.b.a), vec4<bool>(true, arg_3.a, arg_3.a, arg_0.b.b.a), vec4<bool>(arg_0.b.b.a, arg_3.a, false, false)), select(vec4<bool>(arg_0.a.a.a, true, true, true), vec4<bool>(false, true, arg_3.a, arg_3.a), false), vec4<bool>(false, arg_0.a.a.a, arg_0.a.a.a, arg_0.b.d.a)), arg_3.a)), vec4<bool>(all(vec3<bool>(true, true, true)), func_4(-abs(arg_0.b.d.b), (vec3<i32>(-2147483647i, 56402i, -34266i) & vec3<i32>(11836i, u_input.a.x, 21862i)) & vec3<i32>(-14011i, 12023i, 0i), true).b.b.a, any(vec2<bool>(any(vec4<bool>(arg_3.a, arg_3.a, arg_0.a.a.a, false)), true)), true), false || any(select(select(vec4<bool>(true, true, arg_3.a, arg_3.a), vec4<bool>(true, true, arg_0.b.d.a, true), arg_3.a), select(vec4<bool>(arg_3.a, arg_0.b.b.a, true, false), vec4<bool>(arg_0.a.a.a, true, arg_0.a.a.a, false), vec4<bool>(false, arg_0.a.a.a, arg_3.a, false)), !vec4<bool>(arg_0.b.b.a, true, true, true))));
    var var_2 = Struct_4(func_4(-1i >> (~(~var_0.x) % 32u), vec3<i32>(-2147483647i, 11674i, u_input.a.x), (true || arg_3.a) == false).a, Struct_2(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, 102i, 1i), -15570i)), arg_3, _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.c)), arg_3), u_input.a.xy, vec2<u32>(u_input.b.x, ~0u));
    let var_3 = 2414f;
    return func_4(var_2.c.x, countOneBits(min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a, arg_2.a, 32461i), vec3<i32>(-8904i, 1200i, -2147483647i)), u_input.a >> (vec3<u32>(var_2.d.x, var_0.x, u_input.b.x) % vec3<u32>(32u)))), !any(select(!var_1.xyz, !var_1.wzy, select(var_1.wyx, var_1.wyz, vec3<bool>(arg_3.a, true, false))))).a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = -(~(-countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_1.a.b), u_input.a.xy))));
    var_0 = vec2<i32>(-min(~40129i, u_input.a.x), ~firstLeadingBit(~1i));
    let var_1 = arg_0;
    global1 = arg_2.x;
    var_0 = ~u_input.a.yx;
    return Struct_3(Struct_1(false, ~arg_0.a.b, arg_0.a.c, firstTrailingBit(arg_1.a.e.x), arg_0.a.e));
}

fn func_1() -> f32 {
    let var_0 = func_6(Struct_3(global0[_wgslsmith_index_u32(~2013u, 23u)]), func_5(func_4(~(-u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x), any(func_2(vec4<i32>(-731i, u_input.a.x, 662i, -7681i), 10584u, vec4<u32>(u_input.b.x, 15470u, 15530u, 0u)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2863f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(420f)) - -321f)), Struct_5(~(-u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))), Struct_1(true, i32(-1i) * -54287i, ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 16386u) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), (3474u & u_input.b.x) | _wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x), vec2<u32>(5629u, ~10111u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1288f, 1054f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1116f, 351f, 796f))))));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_1 = select(select(vec3<bool>(var_0.a.a, var_0.a.a, false), vec3<bool>(false, func_4(u_input.a.x & var_0.a.b, -vec3<i32>(2147483647i, var_0.a.b, var_0.a.b), true).a.a.a, true), select(vec3<bool>(!var_0.a.a, var_0.a.a, !var_0.a.a), vec3<bool>(-22409i <= var_0.a.b, true, false), !vec3<bool>(var_0.a.a, var_0.a.a, true))), vec3<bool>(true, !any(!vec2<bool>(true, var_0.a.a)), 0u > u_input.b.x), func_2(-countOneBits(vec4<i32>(u_input.a.x, var_0.a.b, var_0.a.b, -2147483647i) & vec4<i32>(0i, 25563i, -2147483647i, -37391i)), func_5(func_4(-2147483647i, ~u_input.a, var_0.a.a), vec3<f32>(_wgslsmith_f_op_f32(-385f * -503f), _wgslsmith_f_op_f32(ceil(2417f)), 599f), Struct_5(max(45010i, -2147483647i), -1358f), var_0.a).a.d, select(~var_0.a.c, func_6(Struct_3(global0[_wgslsmith_index_u32(1u, 23u)]), Struct_3(var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -1873f))).a.c, select(vec4<bool>(false, false, var_0.a.a, var_0.a.a), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, true), vec4<bool>(var_0.a.a, true, var_0.a.a, false)), func_2(vec4<i32>(45465i, var_0.a.b, var_0.a.b, u_input.a.x), 0u, vec4<u32>(u_input.b.x, var_0.a.e.x, u_input.b.x, 46682u)).x))).x);
    var var_2 = (~abs(var_0.a.c.xzz) >> ((~reverseBits(vec3<u32>(u_input.b.x, var_0.a.d, 1u)) >> (vec3<u32>(1u, 4294967295u, u_input.b.x << (0u % 32u)) % vec3<u32>(32u))) % vec3<u32>(32u))) & (min(var_0.a.c.yyz | _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.e.x, 45306u, u_input.b.x), vec3<u32>(var_0.a.d, var_0.a.c.x, u_input.b.x)), ~vec3<u32>(0u, 70162u, u_input.b.x)) | (select(vec3<u32>(22462u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.d, var_0.a.d, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 6607u), vec3<u32>(0u, var_0.a.e.x, 83120u)), func_2(vec4<i32>(-2147483647i, 31412i, -15256i, -1i), 12410u, var_0.a.c)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(30108u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 2106u))));
    return 720f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_i32(-1i, u_input.a.x), global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 4294967295u)) ^ u_input.b.x, 23u)], vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-448f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f * 1480f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(654f, -653f), -763f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * -322f)))), global0[_wgslsmith_index_u32(u_input.b.x, 23u)]);
    let var_1 = Struct_1(var_0.d.a, 2147483647i ^ var_0.a, ~var_0.b.c, _wgslsmith_mod_u32(abs(select(31066u, min(4294967295u, u_input.b.x), !var_0.b.a)), 1u << (~_wgslsmith_add_u32(u_input.b.x, 5191u) % 32u)), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_div_vec2_u32(min(u_input.b, u_input.b), ~vec2<u32>(1u, u_input.b.x))), var_0.d.e));
    global1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = all(!(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.b.a), select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(var_1.a, var_0.d.a), var_1.a))));
    global1 = var_0.c.x;
    var var_3 = func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(~(~u_input.a.x), 0i, -33795i), -u_input.a), u_input.a & (min(~vec3<i32>(50456i, -1i, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.b, var_1.b), vec3<i32>(-37796i, 0i, var_0.a))) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d.b, 0i, u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.a, u_input.a))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c >> (func_6(func_5(Struct_4(Struct_3(var_3.a.a), var_0, u_input.a.xx, var_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, 1000f, var_3.b.c.x)), Struct_5(-39358i, var_3.b.c.x), var_1), func_5(Struct_4(var_3.a, Struct_2(1i, Struct_1(false, 41734i, vec4<u32>(var_1.d, var_0.d.d, var_3.d.x, var_1.d), var_1.e.x, var_0.d.c.ww), var_0.c, Struct_1(var_1.a, 22369i, var_1.c, var_0.d.d, vec2<u32>(var_3.b.d.e.x, 37625u))), vec2<i32>(var_0.a, var_3.a.a.b), vec2<u32>(44577u, var_3.b.b.c.x)), var_0.c.ywy, Struct_5(u_input.a.x, var_0.c.x), func_6(Struct_3(var_0.d), Struct_3(var_0.d), var_0.c.yzy).a), _wgslsmith_f_op_vec3_f32(min(var_3.b.c.zxx, var_3.b.c.yww))).a.e % vec2<u32>(32u)), _wgslsmith_div_f32(1359f, func_4(var_3.a.a.b, select(countOneBits(vec3<i32>(var_3.c.x, 27575i, u_input.a.x)), vec3<i32>(-2147483647i, var_0.a, u_input.a.x), func_5(Struct_4(Struct_3(Struct_1(var_3.a.a.a, var_3.c.x, vec4<u32>(var_1.d, 4294967295u, 79082u, 4294967295u), var_3.a.a.d, vec2<u32>(var_3.b.d.c.x, var_3.b.d.c.x))), var_0, var_3.c, vec2<u32>(var_1.c.x, var_1.e.x)), vec3<f32>(var_0.c.x, 795f, var_3.b.c.x), Struct_5(var_1.b, var_3.b.c.x), Struct_1(true, var_0.b.b, vec4<u32>(var_3.d.x, 9644u, u_input.b.x, 1u), var_0.d.d, vec2<u32>(62698u, u_input.b.x))).a.a), var_0.d.a).b.c.x), select(var_3.c, var_3.c, vec2<bool>(true, func_4(-16454i, u_input.a, var_3.b.d.a).b.c.x != _wgslsmith_f_op_f32(floor(var_3.b.c.x)))), ~vec2<i32>(8884i, 1i));
}

