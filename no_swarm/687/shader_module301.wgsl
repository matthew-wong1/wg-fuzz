struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    return select(!vec3<bool>(true & (1i <= u_input.a.x), true, true), !vec3<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 6389i, u_input.a.x, u_input.c), vec4<i32>(76299i, u_input.c, -28895i, -16514i)) <= 2147483647i), vec3<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true)), true));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<vec3<i32>, 22>();
    var var_0 = Struct_2(func_3(), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec3<bool>((_wgslsmith_add_u32(u_input.b, 1u) != u_input.b) && func_3().x, true == !all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(trunc(arg_0)) < arg_0), func_3().xz);
    global0 = array<vec3<i32>, 22>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -1568f), arg_0)));
}

fn func_4(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_1(vec2<i32>(abs(u_input.a.x), 2147483647i), ~u_input.a.x);
    global0 = array<vec3<i32>, 22>();
    var var_1 = Struct_1(-(~u_input.a.xx), -1i);
    var_1 = Struct_1(-(~countOneBits(-vec2<i32>(2201i, -2147483647i))), i32(-1i) * -12949i);
    let var_2 = Struct_2(select(!(!func_3()), vec3<bool>(true, true, select(true, true, all(vec3<bool>(false, false, false)))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true), vec3<bool>(true, true, true))), select(!vec2<bool>(u_input.b < 1u, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, var_0.b < var_1.b), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(false, u_input.b <= u_input.b), func_3().yz, vec2<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false))))), func_3(), vec2<bool>(true, true));
    return vec3<bool>(any(vec4<bool>(arg_0 <= _wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(false, true, true)), all(select(vec4<bool>(var_2.b.x, false, true, true), vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), false)), true)), var_2.c.x, all(!vec3<bool>(true, var_2.c.x != var_2.b.x, false)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(u_input.a.zz, _wgslsmith_sub_i32(reverseBits(~u_input.a.x), firstLeadingBit(u_input.c)) >> (84530u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(-105f))), -1463f)));
    let var_2 = Struct_2(!select(!(!vec3<bool>(arg_0.d.x, arg_0.c.x, true)), vec3<bool>(arg_2 > u_input.b, arg_0.a.x, true), func_4(_wgslsmith_f_op_f32(select(var_1.x, arg_1.x, true)))), select(vec2<bool>(abs(-640i) <= (-13976i << (u_input.b % 32u)), true), vec2<bool>(arg_0.c.x, true), true), vec3<bool>(false, any(arg_0.d), all(vec3<bool>(true, true, true)) && arg_0.a.x), select(!vec2<bool>(true, arg_0.a.x), arg_0.b, arg_0.b));
    var_1 = arg_1;
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1846f)), arg_1.x)));
    return Struct_2(func_4(1379f), !func_4(_wgslsmith_f_op_f32(-var_1.x)).yx, var_2.c, vec2<bool>(!any(!vec4<bool>(var_2.a.x, false, arg_0.c.x, false)), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, arg_0.c.x, false), vec4<bool>(var_2.d.x, var_2.d.x, false, true)))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = u_input.a.xz;
    let var_1 = func_5(Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1591f)))), !select(func_4(2460f).zy, select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), func_3(), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), select(func_3(), vec3<bool>(true, true, true), func_4(221f))), vec2<bool>(true, !select(false, false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1783f + -459f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f + 1000f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, 435f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1284f, 1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1032f) + vec2<f32>(185f, -354f))))), u_input.b);
    let var_2 = -42088i;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1164f, 1000f) - vec2<f32>(269f, 244f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, -742f)))))));
    return func_5(Struct_2(vec3<bool>(var_1.d.x, true, !(!var_1.d.x)), vec2<bool>(true, true), vec3<bool>(select(any(vec2<bool>(var_1.c.x, var_1.d.x)), true, var_1.d.x || var_1.a.x), false, !(var_1.a.x | true)), !func_5(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, 1201f) * vec2<f32>(var_3.x, -1448f)), u_input.b).c.zx), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1840f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1749f, -1000f), vec2<f32>(-506f, var_3.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1253f, _wgslsmith_f_op_f32(trunc(var_3.x)))))), _wgslsmith_div_u32(u_input.b, min(4294967295u, ~firstTrailingBit(u_input.b))));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = ~u_input.a.x;
    let var_1 = vec4<i32>(select(17261i, _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(52415i, u_input.a.x >> (4294967295u % 32u))), false), u_input.a.x, u_input.a.x ^ 2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(~(-5617i)), -1i), _wgslsmith_div_i32(-(u_input.a.x | u_input.a.x), -15715i ^ _wgslsmith_div_i32(u_input.c, 33902i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-741f)), -503f))));
    var var_3 = Struct_2(vec3<bool>(true, func_5(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), u_input.b | _wgslsmith_mod_u32(46072u, 36318u)).d.x, false), vec2<bool>(true | arg_2.c.x, func_3().x), !(!func_3()), vec2<bool>(arg_2.b.x, !all(!vec3<bool>(true, true, arg_3.x))));
    var var_4 = Struct_2(vec3<bool>(!arg_0.x, arg_2.b.x, countOneBits(~0u) < _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(71711u, 31022u, 12241u), vec3<u32>(0u, arg_1.x, arg_1.x)))), !arg_3.yx, !arg_0, vec2<bool>(true, arg_3.x));
    return Struct_1(u_input.a.zx, 0i);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    let var_0 = 1u;
    global0 = array<vec3<i32>, 22>();
    let var_1 = Struct_2(select(func_5(Struct_2(vec3<bool>(false, false, true), vec2<bool>(true, true), vec3<bool>(false, true, true), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 695f), vec2<f32>(-999f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -527f))), 34982u).a, vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), true, true)), vec2<bool>(any(func_5(func_5(Struct_2(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<bool>(false, true, false), vec2<bool>(true, false)), vec2<f32>(arg_1, arg_1), arg_2.x), _wgslsmith_div_vec2_f32(vec2<f32>(-1292f, arg_1), vec2<f32>(-1000f, 223f)), ~71186u).a), true & (_wgslsmith_div_f32(arg_1, arg_1) == _wgslsmith_f_op_f32(-arg_1))), select(vec3<bool>(true, true, true), func_5(func_1(), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1436f, arg_1))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, 277f))))), var_0).c, true | select(func_5(Struct_2(vec3<bool>(false, true, true), vec2<bool>(false, true), vec3<bool>(true, false, true), vec2<bool>(true, true)), vec2<f32>(arg_1, -596f), 1u).b.x, func_3().x, true)), func_5(Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec2<bool>(true, true), vec3<bool>(true, true, true), func_5(func_1(), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1069f, arg_1))), 40415u).a.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -234f)))), u_input.b).d);
    let var_2 = Struct_1(~u_input.a.yy << (arg_2.xy % vec2<u32>(32u)), arg_0.a.x);
    global0 = array<vec3<i32>, 22>();
    return -23593i >> (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    var var_1 = select(false, reverseBits(3059u) < _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_0), vec2<u32>(u_input.b, 1u), vec2<u32>(84929u, 4580u)) & (vec2<u32>(var_0, 4294967295u) ^ vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(var_0, 1u) & vec2<u32>(3301u, var_0)), any(vec4<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_add_i32(u_input.c, 0i) <= -30969i, true || any(vec4<bool>(true, false, false, true)))));
    let var_2 = vec3<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), true, select(true, true, true), true)), true, u_input.c >= func_7(func_6(vec3<bool>(true, true, true), abs(vec3<u32>(u_input.b, u_input.b, 5079u)), func_1(), vec3<bool>(true, false, false)), -1957f, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0, u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 5659u, 657u, 11431u), vec4<u32>(4294967295u, 7812u, 43221u, 837u), vec4<u32>(var_0, var_0, 65524u, 11896u)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2031f * 1f))), -184f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f - -1000f) - _wgslsmith_f_op_f32(max(1094f, -1996f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f))))));
    global0 = array<vec3<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, abs(u_input.a.x), _wgslsmith_f_op_f32(-1717f * _wgslsmith_f_op_f32(abs(var_3.x))), var_3.x);
}

