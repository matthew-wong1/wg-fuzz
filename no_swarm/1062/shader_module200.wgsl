struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, ~u_input.d >> (_wgslsmith_mod_u32(48135u ^ u_input.a.x, 13019u) % 32u)), ~_wgslsmith_clamp_u32(4294967295u, u_input.d << (53695u % 32u), max(u_input.d, u_input.d)) & (~78636u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), select(vec2<u32>(u_input.d, u_input.d), u_input.a.yx, vec2<bool>(false, false))))), 27u)];
    var_0 = ~abs(~u_input.a.xz);
    let var_1 = u_input.d;
    let var_2 = firstLeadingBit(firstLeadingBit(~(~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 27u)]))));
    var var_3 = Struct_2(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), false | (u_input.c.x != _wgslsmith_sub_i32(u_input.c.x, arg_0))), vec2<u32>(4294967295u, _wgslsmith_sub_u32(33084u & var_2.x, 18667u) & ~_wgslsmith_add_u32(var_0.x, u_input.a.x)), vec2<bool>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.x, 40338u, 30577u, u_input.d)) != abs(var_1), abs(arg_0 >> (var_0.x % 32u)) != -u_input.b.x), Struct_1(-vec3<i32>(min(arg_0, 5053i), -20644i, u_input.c.x), select(-u_input.b, vec2<i32>(~(-20610i), arg_0 & arg_0), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), ~u_input.d, vec3<i32>(-2147483647i, _wgslsmith_sub_i32(~arg_0, _wgslsmith_sub_i32(arg_0, u_input.b.x)), -30561i)), var_2);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> vec3<f32> {
    global0 = array<vec2<u32>, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), -966f), _wgslsmith_f_op_f32(-2752f * _wgslsmith_f_op_f32(func_3(countOneBits(33601i)))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-809f, _wgslsmith_f_op_f32(var_0.x + -108f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(var_0.x - var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(625f, var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-123f)), _wgslsmith_f_op_f32(select(-1824f, var_0.x, false)))))));
    var var_2 = Struct_2(!vec3<bool>(all(vec4<bool>(false, false, true, true)) & true, true, !all(vec4<bool>(false, false, true, false))), u_input.a.zx, vec2<bool>(false, any(vec4<bool>(true, true, true, true)) & true), Struct_1(~vec3<i32>(~u_input.b.x, ~(-41210i), -31938i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -26897i) & ~u_input.b, vec2<i32>(33874i, 1i | u_input.b.x)), max(abs(~u_input.a.x), ~u_input.a.x), vec3<i32>(-1i) * -abs(vec3<i32>(-1i, u_input.c.x, u_input.c.x))), select(select(min(u_input.a.yy, vec2<u32>(u_input.d, u_input.d)) ^ firstLeadingBit(vec2<u32>(u_input.d, 4294967295u)), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(ceil(-506f)) >= _wgslsmith_f_op_f32(2165f * var_1)), _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 12811u, 22300u), vec3<u32>(4296u, u_input.a.x, 0u)), 27u)], _wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.yy)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(12363u, u_input.a.x), ~u_input.a.yy) % vec2<u32>(32u)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))));
    let var_3 = var_2.d;
    return vec3<f32>(490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1191f - _wgslsmith_f_op_f32(-var_0.x)) * var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, ~u_input.d), ~u_input.a.xz), vec2<u32>(~firstTrailingBit(~arg_1.e.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(19854u, 0u)), ~reverseBits(vec2<u32>(var_0.b.x, u_input.a.x)))));
    global0 = array<vec2<u32>, 27>();
    let var_2 = Struct_2(vec3<bool>(true, !(!select(var_0.a.x, false, true)), all(select(select(vec4<bool>(true, true, false, arg_3.x), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_3.x, arg_3.x), vec4<bool>(true, var_0.a.x, true, var_0.a.x)), !vec4<bool>(arg_3.x, var_0.c.x, false, false), arg_1.a.x))), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(40751u, u_input.a.x), vec2<u32>(44879u, 1u)) ^ vec2<u32>(18385u, 1u), u_input.a.zz), arg_1.c, Struct_1(~vec3<i32>(firstTrailingBit(var_0.d.a.x), arg_0, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), arg_1.d.d.zy & vec2<i32>(2147483647i, -10262i), reverseBits(~(4294967295u >> (u_input.a.x % 32u))), min(vec3<i32>(arg_0, -24212i, var_0.d.d.x) & ~var_0.d.a, vec3<i32>(i32(-1i) * -2147483647i, var_0.d.b.x, 2147483647i))), _wgslsmith_mod_vec2_u32(~var_0.b, vec2<u32>(~3946u & _wgslsmith_mod_u32(u_input.d, u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(59410u, 6230u, 14309u, 65915u), u_input.a))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, arg_2.x)))) * arg_2.x), _wgslsmith_div_f32(506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(139f, arg_2.x))), -1244f))), 768f);
    return Struct_2(var_0.a, u_input.a.wy & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.e.x, var_0.d.c) >> (vec4<u32>(arg_1.b.x, arg_1.d.c, u_input.a.x, var_2.d.c) % vec4<u32>(32u)), u_input.a), countOneBits(~611u)), vec2<bool>(any(vec3<bool>(any(arg_3), false, all(arg_1.a))), arg_1.a.x), var_0.d, _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(var_2.d.c, 27u)], arg_1.b));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = array<vec2<u32>, 27>();
    var var_0 = -u_input.c.x;
    var_0 = ~(i32(-1i) * -1i);
    var var_1 = arg_0;
    let var_2 = func_4(_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(7494i, 2147483647i), vec2<i32>(u_input.b.x, u_input.c.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), u_input.a.zx, arg_0.b) % vec2<u32>(32u)), arg_0.d.b, vec2<bool>(false, true)), var_1.d.d.xx), Struct_2(arg_0.a, abs(countOneBits(_wgslsmith_add_vec2_u32(arg_0.b, u_input.a.zz))), func_4(0i, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1628f, -223f, 460f), vec3<f32>(-1912f, -1113f, 900f)))), arg_0.a).c, Struct_1(vec3<i32>(u_input.c.x, -arg_0.d.b.x, 5964i ^ u_input.b.x), -vec2<i32>(arg_0.d.a.x, -2147483647i), 4380u, countOneBits(abs(arg_0.d.a))), var_1.b), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(686f, 1928f))))), 1931f), arg_0.a).d;
    return ~(~(~u_input.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = vec2<i32>(arg_1.d.d.x, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2.d.a, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_1.d.b.x, arg_1.d.d.x), arg_1.d.a), vec3<i32>(0i, arg_0.d.b.x, arg_1.d.a.x) << (u_input.a.zyz % vec3<u32>(32u))), arg_0.d.a)));
    let var_1 = func_5(func_4(~arg_0.d.a.x, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, -561f, -764f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, 727f, 1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(792f, 1445f, 811f), vec3<f32>(-1930f, 861f, -190f)), _wgslsmith_f_op_vec3_f32(func_2()))), vec3<bool>(true, true && all(vec2<bool>(arg_0.a.x, arg_2.c.x)), all(!vec2<bool>(true, arg_2.c.x)))), arg_1.e.x);
    let var_2 = arg_2.e.x;
    global0 = array<vec2<u32>, 27>();
    var var_3 = Struct_1(max(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 21890i, arg_2.d.d.x), -vec3<i32>(arg_1.d.b.x, 1i, 22264i)), abs(u_input.c.yzw) << (u_input.a.ywy % vec3<u32>(32u))), u_input.c.xxz), vec2<i32>(1i, u_input.b.x), min(countOneBits(arg_2.d.c), arg_2.e.x), vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_1.d.a.yz, arg_2.d.a.zy)), _wgslsmith_div_i32(-21298i, arg_2.d.a.x >> (var_1 % 32u)), max(arg_2.d.b.x | u_input.c.x, var_0.x)), -firstTrailingBit(~(-21169i)), arg_2.d.b.x));
    return 928f;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = func_4(-26051i, func_4(-7904i, Struct_2(!func_4(27185i, Struct_2(vec3<bool>(true, false, false), u_input.a.yx, vec2<bool>(true, true), Struct_1(u_input.c.yyy, u_input.c.xz, 4294967295u, vec3<i32>(0i, -54615i, -51078i)), vec2<u32>(28176u, u_input.d)), arg_0, vec3<bool>(false, true, true)).a, vec2<u32>(u_input.a.x, select(35218u, u_input.d, false)), vec2<bool>(true, true), Struct_1(u_input.c.yxz, u_input.b, ~u_input.d, vec3<i32>(33507i, u_input.c.x, u_input.c.x)), firstTrailingBit(global0[_wgslsmith_index_u32(func_4(u_input.b.x, Struct_2(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.c.x, -44670i, u_input.b.x), vec2<i32>(u_input.b.x, -1i), u_input.a.x, u_input.c.zyw), vec2<u32>(u_input.d, u_input.a.x)), arg_0, vec3<bool>(true, false, false)).b.x, 27u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, arg_2)), _wgslsmith_f_op_vec3_f32(step(arg_0, vec3<f32>(-522f, -670f, 1648f)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_f32(arg_0.x, arg_2.x), arg_1.x)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, _wgslsmith_div_f32(-849f, arg_0.x), _wgslsmith_f_op_f32(-1000f - 803f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, arg_0.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, 1720f)), _wgslsmith_f_op_f32(-1150f - arg_2.x), arg_2.x)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !func_4(0i, Struct_2(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 19540u), vec2<bool>(false, true), Struct_1(u_input.c.wzx, vec2<i32>(u_input.c.x, -2147483647i), u_input.d, vec3<i32>(78189i, -18601i, -1i)), global0[_wgslsmith_index_u32(31743u, 27u)]), vec3<f32>(-376f, arg_1.x, arg_1.x), vec3<bool>(false, true, true)).a));
    let var_1 = func_4(_wgslsmith_sub_i32(var_0.d.b.x, _wgslsmith_mult_i32(abs(var_0.d.b.x << (u_input.d % 32u)), var_0.d.a.x)), func_4(firstLeadingBit(~(~1i)), func_4(-2147483647i, func_4(var_0.d.a.x, func_4(0i, Struct_2(vec3<bool>(true, false, var_0.c.x), vec2<u32>(u_input.d, u_input.d), var_0.c, var_0.d, u_input.a.wy), arg_2, vec3<bool>(false, true, false)), _wgslsmith_f_op_vec3_f32(-arg_0), func_4(19949i, Struct_2(vec3<bool>(false, var_0.a.x, false), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.c, Struct_1(vec3<i32>(u_input.c.x, var_0.d.b.x, 1i), vec2<i32>(-2147483647i, var_0.d.a.x), 36378u, u_input.c.wxw), vec2<u32>(40821u, var_0.d.c)), vec3<f32>(arg_0.x, 1000f, -558f), vec3<bool>(var_0.a.x, var_0.a.x, false)).a), arg_2, var_0.a), _wgslsmith_f_op_vec3_f32(round(arg_0)), vec3<bool>(true, !(!var_0.a.x), var_0.a.x | (arg_1.x < -724f))), arg_2, vec3<bool>(var_0.a.x, abs(abs(-16089i)) >= var_0.d.b.x, var_0.c.x)).d;
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * -2074f), 154f, -1324f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(769f * arg_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(515f, arg_0.x, arg_2.x, arg_1.x))))) + vec4<f32>(arg_1.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(func_3(26277i)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 27>();
    var var_0 = Struct_2(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), global0[_wgslsmith_index_u32(u_input.d, 27u)], select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(!select(true, true, false), false), all(vec3<bool>(true, true, true))), func_6(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1356f, -301f))), 968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(true, false, false), vec2<u32>(67489u, u_input.a.x), vec2<bool>(true, true), Struct_1(vec3<i32>(2147483647i, 8999i, u_input.b.x), vec2<i32>(u_input.b.x, 25736i), u_input.a.x, u_input.c.xwx), u_input.a.wx), Struct_2(vec3<bool>(false, false, false), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), Struct_1(u_input.c.www, u_input.c.xx, u_input.d, vec3<i32>(-41921i, u_input.c.x, 0i)), global0[_wgslsmith_index_u32(u_input.d, 27u)]), Struct_2(vec3<bool>(false, true, false), vec2<u32>(25467u, u_input.d), vec2<bool>(false, false), Struct_1(u_input.c.yxx, u_input.c.yz, u_input.a.x, vec3<i32>(u_input.b.x, u_input.b.x, -5362i)), vec2<u32>(u_input.a.x, 13258u)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(550f, -421f) - vec2<f32>(856f, 320f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-687f, 1910f, -1154f) * vec3<f32>(-1376f, -126f, 1000f)))))), u_input.a.wx);
    let var_1 = func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, -1103f, 198f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(842f, -472f, -663f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1062f, -446f, 648f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, 1357f, 409f) * vec3<f32>(-1206f, -1217f, 347f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1063f, -627f, 2710f) * vec3<f32>(-458f, 1511f, -1386f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-321f, -323f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(936f, 1617f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2281f, -715f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1296f * -1149f), _wgslsmith_f_op_f32(-1369f * -558f), _wgslsmith_f_op_f32(196f + -599f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1248f, -1914f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, 1000f, 378f))))));
    var var_2 = u_input.a;
    var_2 = ~(u_input.a >> (_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(73619u, 4294967295u, 1u, 75716u), vec4<u32>(var_1.c, u_input.d, var_0.b.x, var_2.x)), ~u_input.a, var_0.c.x), min(vec4<u32>(49420u, 48261u, u_input.d, 33860u), u_input.a >> (u_input.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_3 = var_2.wzz;
    var var_4 = Struct_1(vec3<i32>(-1i) * -(~(~var_1.d)), u_input.b, 4294967295u, -vec3<i32>(_wgslsmith_div_i32(~var_1.d.x, i32(-1i) * -2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.b.x, var_1.d.x, u_input.b.x, var_1.b.x), u_input.c), var_0.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1104f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(398f * _wgslsmith_f_op_f32(-215f + -508f))))), ~var_0.e);
}

