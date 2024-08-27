struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    var var_0 = ((((1i & u_input.a.x) < arg_1.x) | true) & (true || any(vec2<bool>(true, true)))) & !(u_input.b.x < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 26405u, u_input.e), select(vec3<u32>(u_input.c, u_input.e, u_input.b.x), vec3<u32>(37827u, u_input.b.x, u_input.b.x), vec3<bool>(false, false, true))));
    global0 = !(!all(vec2<bool>(true, true)));
    global0 = false;
    var var_1 = true;
    var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b.zy, vec2<u32>(~116281u, _wgslsmith_mod_u32(80433u, u_input.c))), 4294967295u) <= reverseBits(u_input.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-510f, 441f)))) * 1000f);
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_1.c.b.c.x));
    var var_1 = u_input.b.x;
    global0 = arg_0;
    let var_2 = _wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(func_3(~arg_1.a.b, _wgslsmith_sub_vec4_i32(u_input.a, countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-16007i, u_input.d, u_input.a.x, 2147483647i), u_input.a))))));
    var var_3 = -386f;
    return Struct_3(vec2<i32>(abs(max(abs(arg_1.b), 1i)), u_input.d), Struct_2(4294967295u, vec2<u32>(u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, arg_1.c.b.c.x), vec2<f32>(var_2, var_0)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(f32(-1f) * -752f))), min(u_input.a.x, arg_1.c.c), arg_1.c.b.e), 2147483647i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    global0 = all(!arg_1.b.e);
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.c.x), -1295f, arg_1.b.c.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c.x, arg_1.b.c.x, -147f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, -1142f, arg_1.b.c.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b.c.x, -533f, arg_1.b.c.x))))))))), true & (5845i == _wgslsmith_add_i32(-2147483647i, countOneBits(u_input.d)))));
    global0 = any(arg_1.b.e);
    var var_1 = !arg_1.b.e.zx;
    return vec3<bool>(var_1.x, any(select(select(!vec3<bool>(var_1.x, arg_1.b.e.x, true), !vec3<bool>(true, var_1.x, arg_1.b.e.x), arg_1.b.e.xzw), !(!vec3<bool>(arg_1.b.e.x, arg_1.b.e.x, false)), true)), true);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    global0 = any(vec4<bool>(arg_2.e.x, arg_2.e.x, any(select(!arg_2.e.xyw, !vec3<bool>(true, arg_2.e.x, false), false & arg_2.e.x)), false));
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = false;
    var var_1 = !(arg_1 && var_0);
    var var_2 = max(arg_0.b.b.x, ~max(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(119405u, 13962u, 5484u, 11472u), vec4<u32>(58740u, arg_0.b.b.x, arg_2, u_input.e)), select(vec4<u32>(arg_0.b.b.x, arg_2, arg_2, arg_0.b.a), vec4<u32>(17706u, 0u, u_input.c, arg_2), arg_1)), ~18356u));
    let var_3 = func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a, 4294967295u, 51186u, 21873u), vec4<u32>(9174u, 81660u, 21594u, arg_0.b.a)), ~106068u, _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(1u, 84748u, 1u)), abs(abs(81766u))), ~vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), arg_0.b.b.x, _wgslsmith_mod_u32(arg_0.b.a, u_input.b.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c.x, -896f, arg_0.b.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1448f)), func_4(max(vec3<i32>(arg_0.a.x, u_input.d, u_input.d), vec3<i32>(arg_0.b.d, u_input.d, arg_0.c)), func_2(arg_0.b.e.x, global1[_wgslsmith_index_u32(16967u, 25u)])))))), arg_0.b);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x * -1834f)) * 622f)), _wgslsmith_f_op_f32(min(var_4.b.c.x, -233f)), var_4.b.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec3_u32(~(~u_input.b), reverseBits(u_input.b));
    global0 = true;
    let var_1 = vec2<u32>(~u_input.c, ~(~(4294967295u ^ _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.e, u_input.c)))));
    var var_2 = min(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, u_input.d), u_input.a.wyy)), 33692i);
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f) + _wgslsmith_f_op_f32(267f - -724f))), i32(-1i) * -40813i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.a.yx, Struct_2(var_0.x, vec2<u32>(0u, 84947u), vec2<f32>(2458f, 3208f), -2147483647i, vec4<bool>(false, true, true, false)), -2147483647i), false, u_input.c)) + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1192f, -159f), _wgslsmith_f_op_f32(f32(-1f) * -692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - 108f)), -426f)), -2147483647i, Struct_3(~(~(~vec2<i32>(-2147483647i, -34154i))), func_5(~(~vec4<u32>(var_0.x, 0u, var_1.x, var_1.x)), vec3<f32>(-900f, _wgslsmith_f_op_f32(693f + 219f), 779f), func_2(false, global1[_wgslsmith_index_u32(var_0.x & 0u, 25u)]).b), firstLeadingBit(u_input.d)));
    var_3 = Struct_4(Struct_1(var_3.a.a, ~(-(2147483647i | var_3.b)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -441f))), var_3.c.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.c.x)), var_3.a.c.x)), 26462i, func_2(true & !(var_3.c.b.e.x & var_3.c.b.e.x), Struct_4(var_3.a, _wgslsmith_clamp_i32(-80109i & var_3.c.b.d, -328i, ~u_input.a.x), Struct_3(u_input.a.zz, var_3.c.b, var_3.a.b << (var_0.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.b, min(vec3<u32>(1410u << (1u % 32u), ~u_input.b.x, var_3.c.b.b.x), abs(vec3<u32>(4294967295u, var_0.x, var_0.x) | u_input.b)), ~countOneBits(vec3<u32>(47133u, var_1.x, 45672u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.c.wxy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, var_3.c.b.c.x, var_3.c.b.c.x))) + vec3<f32>(_wgslsmith_f_op_f32(863f * 2354f), var_3.a.a, 1489f))));
}

