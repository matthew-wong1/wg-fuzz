struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(1u, 1u), vec2<u32>(0u, 32826u), vec2<u32>(7355u, 4294967295u), vec2<u32>(53901u, 35428u), vec2<u32>(72934u, 1u), vec2<u32>(1u, 13550u), vec2<u32>(4294967295u, 123671u), vec2<u32>(4294967295u, 36366u), vec2<u32>(1u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -407f);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_1(select(select(select(!global0.a, vec2<bool>(global0.a.x, false), arg_0 == arg_0), vec2<bool>(global0.a.x || global0.a.x, any(vec3<bool>(true, global0.a.x, global0.a.x))), select(global0.a, !vec2<bool>(global0.a.x, false), global0.a.x || global0.a.x)), global0.a, vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1055f) < _wgslsmith_f_op_f32(sign(global0.b.x)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, global0.b.x, false)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(global0.b.x, 262f)), 1815f)), vec4<f32>(496f, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(round(global0.b.x)))));
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)));
    let var_2 = var_1;
    let var_3 = Struct_1(select(select(select(!global0.a, vec2<bool>(true, var_0.a.x), var_2.a), select(var_1.a, vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(true, false)), global0.a.x), select(global0.a, select(select(vec2<bool>(var_1.a.x, var_1.a.x), var_2.a, vec2<bool>(true, var_0.a.x)), !vec2<bool>(global0.a.x, global0.a.x), -1196f >= global0.b.x), select(vec2<bool>(false, global0.a.x), var_1.a, var_0.a)), any(!vec2<bool>(global0.a.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-global0.b));
    let var_4 = var_2;
    return countOneBits(vec4<i32>(countOneBits(_wgslsmith_sub_i32(~(-30240i), 1i)), _wgslsmith_clamp_i32(select(u_input.a, ~u_input.b, all(vec2<bool>(true, true))), _wgslsmith_mod_i32(u_input.a, -1i), abs(firstTrailingBit(u_input.b))), abs(reverseBits(abs(2147483647i))), -_wgslsmith_div_i32(select(u_input.a, u_input.b, var_2.a.x), u_input.a)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = arg_1;
    global0 = arg_1;
    var var_1 = !(!select(arg_1.a, var_0.a, vec2<bool>(all(arg_0.wyw), arg_1.a.x)));
    global1 = array<vec2<u32>, 9>();
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1668f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1283f, var_1.x))) - arg_1.b.x)));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    global1 = array<vec2<u32>, 9>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) * _wgslsmith_f_op_f32(-global0.b.x)), -1745f);
    let var_1 = 5151i;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(false, true), vec4<f32>(464f, global0.b.x, var_0.x, -1529f)))), global0.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.b.yz + vec2<f32>(var_0.x, 883f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 460f))))));
    var var_2 = Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec4<bool>(arg_1, global0.a.x, arg_1, global0.a.x), vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, global0.a.x, arg_1, false)), Struct_1(vec2<bool>(true, false), global0.b), func_3(4294967295u, -1519f, 28738u, -378f)))), 134f, 1112f, 757f));
    return select(~_wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, 1u), 1u), 40067u, false);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<vec2<u32>, 9>();
    let var_0 = Struct_1(vec2<bool>(false, true), _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(-global0.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) * -1600f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_1.b.yzy, global0.b.xyz))))));
    var var_2 = Struct_1(global0.a, _wgslsmith_div_vec4_f32(global0.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(floor(arg_1.b.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(311f, _wgslsmith_f_op_f32(ceil(var_1.x)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-238f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1337f, 1000f))))))));
    return Struct_1(vec2<bool>(!all(var_2.a), any(vec4<bool>(!var_2.a.x, false, 48509i < u_input.a, any(vec4<bool>(var_0.a.x, false, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(func_2(var_0)), var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -217f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = ~(-40445i);
    let var_2 = func_5(!(true & all(!vec3<bool>(global0.a.x, true, global0.a.x))), Struct_1(!(!(!global0.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(104f)), -417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)), global0.b.x)), func_1(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(firstTrailingBit(8783i), ~1i)), true));
    var var_3 = -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, ~2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1, var_1), var_1), func_3(4294967295u, 1000f, 0u, _wgslsmith_f_op_f32(abs(var_2.b.x))).yw));
    var var_4 = var_2;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(78459u, 1u, ~_wgslsmith_sub_u32(65250u, 1u)), ~vec3<u32>(40436u, 1u, 1u >> (0u % 32u))), firstLeadingBit(4294967295u));
    var_3 = vec2<i32>(~var_3.x, -abs(4354i));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 88522u, 6346u, 1u), vec4<u32>(4127u, 1u, 52793u, 1u)), ~vec4<u32>(64199u, 38457u, 46234u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), abs(select(vec4<u32>(4294967295u, 6224u, 32029u, 4294967295u), vec4<u32>(4294967295u, 24557u, 0u, 20239u), vec4<bool>(global0.a.x, true, false, false))), ~vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 17129u, 1u, 0u)), ~vec4<u32>(0u, 1u, 4281u, 1u)), 1u, 1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(54470u, 20824u, 41310u, 55237u), vec4<u32>(0u, 0u, 23342u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 49045u), vec2<u32>(10817u, 1u)))), vec3<i32>(-85459i, _wgslsmith_clamp_i32(~abs(var_3.x), abs(~72125i), var_1), _wgslsmith_dot_vec3_i32(~vec3<i32>(1029i, -20845i, 2181i), ~vec3<i32>(-2147483647i, u_input.b, var_3.x))), 16114u, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(22673u, 56369u, 0u))));
}

