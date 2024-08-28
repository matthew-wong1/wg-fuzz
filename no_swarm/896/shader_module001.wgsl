struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1612f, -879f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(424f + 347f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f - 1000f) + _wgslsmith_f_op_f32(239f + -480f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(650f, _wgslsmith_f_op_f32(sign(870f)), false))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-231f)), _wgslsmith_f_op_f32(abs(-181f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(abs(-875f))), Struct_1(vec3<i32>(~_wgslsmith_mod_i32(46173i, -28082i), u_input.a >> (43746u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, 7430i, u_input.a))), all(vec2<bool>(true, true))), Struct_1(vec3<i32>(min(-1i, 1i), max(countOneBits(26695i), -61015i), _wgslsmith_add_i32(u_input.a ^ 68160i, -8838i)), !(all(vec2<bool>(false, false)) && true)), vec3<bool>(true, true, false));
    var var_1 = !select(vec3<bool>(true, any(select(vec4<bool>(false, true, var_0.d.b, var_0.c.b), vec4<bool>(true, true, false, true), vec4<bool>(var_0.e.x, var_0.d.b, true, var_0.d.b))), !var_0.e.x), !var_0.e, all(select(vec4<bool>(true, false, var_0.e.x, var_0.c.b), vec4<bool>(true, var_0.c.b, var_0.d.b, true), select(vec4<bool>(true, var_0.e.x, false, true), vec4<bool>(var_0.d.b, true, true, var_0.c.b), vec4<bool>(var_0.e.x, var_0.c.b, false, var_0.d.b)))));
    var var_2 = var_0.c;
    let var_3 = Struct_3(Struct_1(-(abs(var_2.a) ^ -var_0.c.a), !var_0.e.x), var_0.c);
    let var_4 = vec4<f32>(_wgslsmith_div_f32(1752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_0.a.x)))))), var_0.b.x, 1600f);
    return _wgslsmith_mod_u32(~4294967295u, 27737u);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = vec3<i32>(-3668i | u_input.a, abs(~(~arg_1.d.a.x)) & firstLeadingBit(~(~9626i)), i32(-1i) * -7126i);
    var var_1 = arg_1;
    var var_2 = ~(~max(func_3(), ~(~0u)));
    var var_3 = arg_1.c;
    var_2 = 50232u;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1480f)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f)) - _wgslsmith_f_op_f32(-966f - _wgslsmith_f_op_f32(select(1370f, -1772f, false)))), -893f, -390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2171f, 455f)) + _wgslsmith_f_op_f32(func_2(true, Struct_2(vec4<f32>(859f, 569f, 1062f, 192f), vec4<f32>(-1221f, 289f, -253f, 549f), Struct_1(vec3<i32>(-3502i, u_input.a, u_input.a), false), Struct_1(vec3<i32>(u_input.a, -46184i, u_input.a), false), vec3<bool>(false, false, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 245f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(591f, 1244f, -1540f, -484f) + vec4<f32>(1455f, -830f, 692f, 1161f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -1340f, 1000f, 1000f))))), Struct_1(~(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2147483647i, -8044i), vec3<i32>(u_input.a, -1i, u_input.a)) << (vec3<u32>(50594u, 7476u, 0u) % vec3<u32>(32u))), true), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(43753i | u_input.a, _wgslsmith_div_i32(-58901i, u_input.a), _wgslsmith_div_i32(u_input.a, 42837i)), vec3<i32>(35752i, ~u_input.a, u_input.a)), select(true, all(vec4<bool>(true, false, true, false)), true)), vec3<bool>(true, false, true));
    let var_1 = var_0.c;
    let var_2 = var_0.c;
    let var_3 = -2147483647i;
    var var_4 = Struct_3(Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(12063i, var_3)), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, u_input.a), var_0.c.a)), true), Struct_1(var_1.a | _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, var_1.a.x, var_0.c.a.x), var_0.d.a, var_0.c.a ^ var_1.a), all(!(!var_0.e))));
    return -602f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(-994f, -337f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1828f)) - 1396f))), -573f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-730f * -289f), _wgslsmith_div_f32(-389f, 368f), -277f, _wgslsmith_f_op_f32(max(245f, 1157f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-363f)) * _wgslsmith_f_op_f32(-1615f - 2086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - 112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-369f, -606f)) + _wgslsmith_f_op_f32(ceil(502f))), _wgslsmith_div_f32(1888f, _wgslsmith_f_op_f32(func_1())))), Struct_1(vec3<i32>(2147483647i, reverseBits(1i), ~(-u_input.a)), true), Struct_1(vec3<i32>(~(i32(-1i) * -17i), -1i, 2147483647i), false), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, 738f, -275f, -718f)))), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-var_0.b)), vec4<bool>(false, var_0.c.b || false, false, !var_0.d.b))), _wgslsmith_f_op_vec4_f32(-var_0.a), !select(vec4<bool>(var_0.d.b, false, false, var_0.e.x), !vec4<bool>(true, true, var_0.d.b, false), var_0.c.b))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1948f)), 2361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), -993f), var_0.d, var_0.c, var_0.e);
    let var_2 = var_1;
    let var_3 = var_0.b.x <= _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2007f));
    let var_4 = select(!(!select(vec4<bool>(true, var_0.d.b, true, true), !vec4<bool>(var_3, true, var_2.e.x, false), select(vec4<bool>(false, var_3, var_1.c.b, var_0.d.b), vec4<bool>(var_0.e.x, var_0.d.b, var_1.d.b, true), var_0.e.x))), vec4<bool>(var_0.e.x, select(var_0.b.x <= -317f, true, _wgslsmith_f_op_f32(var_1.a.x + var_2.a.x) > _wgslsmith_f_op_f32(807f - var_1.a.x)), all(var_2.e.xy), select(var_0.c.b, var_3, select(var_0.c.b, true, true))), vec4<bool>(any(vec4<bool>(!var_0.e.x, var_1.e.x | var_3, true, true)), !var_0.c.b, ~(-u_input.a) > _wgslsmith_dot_vec3_i32(select(var_2.d.a, vec3<i32>(u_input.a, -57063i, 1i), var_0.c.b), var_1.d.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a, 0u, -abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_0.c.a.x, 15671i, u_input.a), vec4<i32>(var_1.c.a.x, -1069i, var_1.d.a.x, var_1.c.a.x))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), var_1.b.xy, var_1.b.x);
}

