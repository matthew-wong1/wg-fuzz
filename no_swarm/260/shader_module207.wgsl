struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-183f, -1000f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: i32, arg_3: f32) -> vec2<f32> {
    var var_0 = 715f;
    global0 = arg_1.c.xy;
    var var_1 = Struct_4(!(!vec3<bool>(false, all(vec4<bool>(true, arg_1.a.x, false, arg_1.a.x)), all(vec3<bool>(true, false, false)))), vec4<i32>(arg_0, abs(countOneBits(-29455i)), u_input.d, _wgslsmith_dot_vec4_i32(arg_1.b, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, arg_0, 42294i, -8355i), arg_1.b)))), Struct_2(Struct_1((arg_1.a.x && arg_1.a.x) || (false || arg_1.a.x), vec3<bool>(true, all(arg_1.a), select(arg_1.a.x, arg_1.a.x, false)), select(select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(arg_1.a.x, arg_1.a.x, false), true), vec3<bool>(true, false, arg_1.a.x), !vec3<bool>(arg_1.a.x, true, false)), true, ~arg_1.b.xy), Struct_1(false || (false & arg_1.a.x), select(select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(arg_1.a.x, false, false), arg_1.a.x), vec3<bool>(true, arg_1.a.x, arg_1.a.x), !arg_1.a.x), vec3<bool>(all(arg_1.a), arg_1.a.x, !arg_1.a.x), true && (arg_3 <= global0.x), vec2<i32>(_wgslsmith_mult_i32(26270i, arg_1.b.x), 1i | arg_2)), 4294967295u, -238f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - arg_3) * _wgslsmith_f_op_f32(sign(131f)))), (abs(reverseBits(u_input.c.xx)) >> (u_input.a % vec2<u32>(32u))) & countOneBits(u_input.e.wx), Struct_3(Struct_1(all(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), !(!vec3<bool>(arg_1.a.x, true, arg_1.a.x)), select(vec3<bool>(true, arg_1.a.x, false), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), select(arg_1.a.x, true, arg_1.a.x)), arg_1.a.x, vec2<i32>(-11582i, _wgslsmith_add_i32(-8758i, arg_1.b.x))), Struct_2(Struct_1(all(vec4<bool>(false, arg_1.a.x, arg_1.a.x, false)), !vec3<bool>(true, arg_1.a.x, arg_1.a.x), select(vec3<bool>(true, true, arg_1.a.x), vec3<bool>(false, true, arg_1.a.x), false), -34499i != arg_0, min(vec2<i32>(-1i, u_input.d), vec2<i32>(20350i, -8250i))), Struct_1(false, select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec3<bool>(true, false, true), arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), global0.x <= 555f, _wgslsmith_sub_vec2_i32(arg_1.b.xw, vec2<i32>(1i, -47594i))), abs(u_input.c.x) << (20412u % 32u), arg_1.a.x), !(!(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, false)))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~1i, firstTrailingBit(31530i) & (i32(-1i) * -1i)) >> (u_input.a.x % 32u), firstTrailingBit(var_1.c.a.e.x));
    var_1 = Struct_4(!vec3<bool>(true, false, !any(vec2<bool>(false, false))), var_1.b, var_1.e.b, var_1.d, Struct_3(Struct_1(var_1.c.a.b.x, vec3<bool>(true, arg_1.a.x, true), select(var_1.e.b.b.b, !var_1.a, var_1.e.a.b), !arg_1.a.x, (var_1.b.zz | vec2<i32>(-1i, var_1.e.a.e.x)) >> (vec2<u32>(0u, var_1.d.x) % vec2<u32>(32u))), Struct_2(Struct_1(false, !vec3<bool>(arg_1.a.x, var_1.c.d, false), !var_1.a, true, ~arg_1.b.xz), var_1.e.a, ~(~u_input.e.x), var_1.c.d), vec4<bool>(false, false, -13323i == arg_0, var_1.e.c.x)));
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(103f, arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, arg_1.c.x)))) - arg_1.c.xy))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-621f * 1135f), global0.x), global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2016f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-692f, global0.x))), _wgslsmith_f_op_vec2_f32(func_3(-2147483647i, Struct_5(vec2<bool>(false, false), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec3<f32>(var_0.x, -477f, 279f)), u_input.d, var_0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -913f));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(962f + 117f), -1201f) * vec2<f32>(global0.x, -836f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-557f, var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(118f, 1000f) + vec2<f32>(var_0.x, var_0.x)))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(344f - var_0.x));
    let var_1 = 53031u;
    return Struct_2(Struct_1(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false)), vec3<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), false), vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 27403i, 19961i), min(vec4<i32>(-1i, -78503i, u_input.d, u_input.d), vec4<i32>(u_input.d, 2147483647i, 255i, 0i))) >= -u_input.d, countOneBits(-vec2<i32>(2147483647i, u_input.d))), Struct_1(all(vec3<bool>(true, true, true)), select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), 0u != u_input.c.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), vec3<bool>(all(vec2<bool>(false, true)), !(76376i == u_input.d), abs(var_1) == ~var_1), _wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.b))) == u_input.a.x, abs(-_wgslsmith_clamp_vec2_i32(vec2<i32>(28617i, -2133i), vec2<i32>(u_input.d, u_input.d), vec2<i32>(33634i, -49877i)))), u_input.e.x, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), true)) || false);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    global0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)))) * global0.x));
    var var_0 = arg_0.b;
    let var_1 = vec3<i32>(arg_0.b.e.x, ~var_0.e.x, 1i);
    let var_2 = !vec4<bool>(arg_1.x >= _wgslsmith_f_op_f32(min(-471f, _wgslsmith_f_op_f32(global0.x * 560f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-415f, global0.x), _wgslsmith_div_f32(arg_1.x, arg_1.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.e.x, Struct_5(var_0.b.yx, vec4<i32>(4072i, arg_0.b.e.x, var_1.x, 1i), vec3<f32>(958f, -705f, -935f)), 2147483647i, global0.x)).x - _wgslsmith_f_op_f32(global0.x - 1588f)), -u_input.d <= arg_0.a.e.x, any(!select(var_0.c.yx, vec2<bool>(false, var_0.c.x), arg_0.a.c.xy)));
    var_0 = arg_0.a;
    return Struct_1(true, select(var_0.b, vec3<bool>(false, false, false), var_0.c.x), !vec3<bool>(true, ~arg_0.b.e.x >= -16632i, true), true | (false & !var_0.a), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-(~var_1.xx), -var_0.e), vec2<i32>(0i, ~abs(var_0.e.x))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_3(func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-419f * 316f), _wgslsmith_f_op_f32(-global0.x), global0.x))), func_2(), !vec4<bool>(select(true, false, true), select(true, 18774u == u_input.b, arg_0.x), any(arg_0), all(arg_0)));
    var var_1 = global0.x;
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_4(Struct_2(var_0.b.b, Struct_1(var_0.b.d, vec3<bool>(true, false, false), var_0.b.a.b, false, vec2<i32>(u_input.d, var_0.b.a.e.x)), 29153u, true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 594f, -342f)))).e.x, 1i, var_0.a.e.x), ~_wgslsmith_add_vec3_i32(vec3<i32>(-24034i, var_0.a.e.x, var_0.a.e.x) >> (vec3<u32>(93198u, var_0.b.c, 4294967295u) % vec3<u32>(32u)), max(vec3<i32>(u_input.d, -20385i, 43950i), vec3<i32>(-1i, u_input.d, -2147483647i)))), -(vec3<i32>(-1i) * -vec3<i32>(-18853i, u_input.d, var_0.a.e.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x), vec2<bool>(false, var_0.b.d))))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -295f) + vec2<f32>(global0.x, 1000f))))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1497f, _wgslsmith_f_op_f32(-global0.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -560f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1730f, 1104f), vec2<f32>(global0.x, global0.x))))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_1, arg_1)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)));
    let var_0 = -515f;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(351f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1094f))), var_0), _wgslsmith_f_op_f32(-global0.x), true));
    var_1 = 448f;
    let var_2 = Struct_3(func_2().a, func_2(), vec4<bool>(false, true, false, u_input.d > u_input.d));
    return all(!select(func_2().b.c, vec3<bool>(all(var_2.a.c), var_2.c.x, func_2().d), var_2.c.zzy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(~vec2<u32>(u_input.c.x, ~1u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, u_input.e.x), vec2<u32>(u_input.a.x, u_input.b)), ~(~vec2<u32>(u_input.b, u_input.e.x))), func_5(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, true)))) + vec2<f32>(_wgslsmith_div_f32(-334f, global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_3(Struct_1(false, select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(u_input.a.x == var_0.x, func_5(403f, vec2<f32>(-499f, global0.x)), true)), vec3<bool>(true, true, true), true & !(u_input.c.x >= var_0.x), (func_4(Struct_2(Struct_1(false, vec3<bool>(true, true, true), vec3<bool>(true, false, false), false, vec2<i32>(0i, 0i)), Struct_1(true, vec3<bool>(true, false, false), vec3<bool>(true, false, false), false, vec2<i32>(u_input.d, u_input.d)), u_input.a.x, true), vec4<f32>(global0.x, 214f, -1567f, 1307f)).e >> (u_input.c.zx % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.d)), func_2().b.e)), Struct_2(func_4(Struct_2(Struct_1(true, vec3<bool>(true, false, true), vec3<bool>(false, false, false), true, vec2<i32>(2147483647i, u_input.d)), Struct_1(false, vec3<bool>(false, true, true), vec3<bool>(false, false, true), false, vec2<i32>(u_input.d, u_input.d)), min(u_input.c.x, u_input.a.x), global0.x == global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -810f) + vec4<f32>(213f, global0.x, -294f, -2044f)))), func_2().b, u_input.b, func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -351f))))), vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), func_5(-1453f, vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x)), false));
    let var_2 = Struct_5(var_1.a.c.xz, vec4<i32>(u_input.d, func_4(var_1.b, vec4<f32>(-551f, global0.x, _wgslsmith_f_op_f32(807f + 908f), _wgslsmith_f_op_f32(-global0.x))).e.x, firstTrailingBit(min(_wgslsmith_sub_i32(var_1.a.e.x, u_input.d), -39969i)), -u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 484f, -951f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1721f, global0.x, 1101f), vec3<f32>(1028f, -182f, -799f)))))));
    var var_3 = _wgslsmith_f_op_f32(step(1000f, global0.x));
    var var_4 = 1u;
    let var_5 = all(vec3<bool>(false, var_2.a.x, var_2.a.x));
    var_0 = vec2<u32>(max(u_input.c.x, _wgslsmith_clamp_u32(4110u, 3639u, var_0.x)), ~(~1u));
    let var_6 = Struct_4(var_1.c.xww, vec4<i32>(var_2.b.x, -51868i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.b.x, var_2.b.x ^ u_input.d), max(u_input.d, _wgslsmith_mult_i32(var_2.b.x, u_input.d))), u_input.d), var_1.b, _wgslsmith_mult_vec2_u32(vec2<u32>(18570u, max(93697u >> (1u % 32u), _wgslsmith_sub_u32(119059u, 0u))), u_input.a ^ abs(u_input.c.yz)), Struct_3(func_4(func_2(), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.c.x, global0.x, 451f, 900f)))), Struct_2(var_1.b.b, func_2().a, _wgslsmith_div_u32(0u, 50366u), any(!var_1.c.xwy)), select(!vec4<bool>(true, var_2.a.x, var_1.a.b.x, false), select(!var_1.c, var_1.c, select(var_1.c, var_1.c, var_5)), !select(vec4<bool>(false, var_2.a.x, false, var_2.a.x), var_1.c, vec4<bool>(var_2.a.x, var_2.a.x, var_1.a.a, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~2147483647i, -var_2.b.x), countOneBits(29845u));
}

