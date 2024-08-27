struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_5(~_wgslsmith_clamp_u32(u_input.b, 4294967295u, global1.x), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    var var_1 = Struct_2(vec4<bool>(select(all(vec4<bool>(false, var_0.b, false, false)), var_0.b, var_0.b) & (firstTrailingBit(41237u) > global1.x), true, all(select(vec2<bool>(true, true), select(vec2<bool>(var_0.b, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true), var_0.a, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-33212i, u_input.a), _wgslsmith_mult_i32(u_input.e.x, u_input.e.x), u_input.a), ~vec3<i32>(u_input.a, -2147483647i, u_input.a) & min(vec3<i32>(-2147483647i, u_input.e.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, -2147483647i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_div_f32(397f, -2310f))))), _wgslsmith_div_u32(~(~16177u), reverseBits(global1.x) | _wgslsmith_add_u32(0u, u_input.b)), var_0.b | true, vec4<i32>(36929i, ~(~u_input.e.x), u_input.a, _wgslsmith_sub_i32(17191i, -u_input.a))), false, vec4<f32>(-1032f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1340f)), _wgslsmith_div_f32(-725f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(427f, -1227f)))));
    let var_2 = var_1.c;
    var var_3 = Struct_5(~var_1.b, !var_0.b);
    let var_4 = Struct_4(_wgslsmith_div_f32(-438f, _wgslsmith_f_op_f32(round(-408f))), var_1.c.e.zwy, ~(_wgslsmith_sub_vec2_u32(~vec2<u32>(43716u, 1u), ~u_input.d.zx) >> (select(max(u_input.d.yz, u_input.d.xx), vec2<u32>(var_3.a, var_3.a), vec2<bool>(var_3.b, false)) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_mult_u32(4294967295u, select(~13781u, ~44826u, var_3.b))));
    return var_2.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> bool {
    global0 = true;
    return all(vec2<bool>(true, all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_2(!vec4<bool>(arg_0, (arg_0 && arg_0) || arg_0, arg_0, !all(vec2<bool>(arg_0, arg_0))), ~59347u, Struct_1(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(51883i, 0i, 11262i), ~vec3<i32>(-16629i, -30633i, 0i), max(vec3<i32>(-15480i, -23345i, 0i), vec3<i32>(u_input.a, u_input.a, -30522i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(163f)))), firstTrailingBit(4294967295u), func_4(vec4<f32>(664f, -533f, _wgslsmith_f_op_f32(905f + 637f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(807f + -1583f), _wgslsmith_f_op_f32(floor(-1204f)))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.e.x, u_input.a), vec4<i32>(u_input.e.x, u_input.a, 3180i, 1i)), firstTrailingBit(vec4<i32>(38789i, u_input.e.x, u_input.a, -2147483647i)))), arg_0, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(669f + -1114f)), _wgslsmith_f_op_f32(-585f - _wgslsmith_div_f32(612f, -595f)), _wgslsmith_f_op_f32(select(-219f, _wgslsmith_f_op_f32(floor(111f)), true)), _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(f32(-1f) * -964f))))));
    var var_1 = u_input.e;
    var var_2 = Struct_3(Struct_1(-firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 3252i, 15735i), var_0.c.a)), _wgslsmith_f_op_f32(770f - var_0.e.x), abs(25093u), true, var_0.c.e));
    var var_3 = var_2.a.d & true;
    let var_4 = vec4<i32>(0i, _wgslsmith_mult_i32(var_1.x, ~_wgslsmith_sub_i32(-u_input.a, var_2.a.a.x)), 41343i, _wgslsmith_add_i32(abs(u_input.a), countOneBits(abs(var_0.c.e.x) | -20646i)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + var_0.e.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_1.b) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), 199f, _wgslsmith_f_op_f32(901f + -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) - _wgslsmith_f_op_f32(301f * -225f)), _wgslsmith_f_op_f32(func_2(!arg_1.d)))));
    let var_1 = vec3<u32>(abs(max(arg_1.c, global1.x)), ~(~1u), select(select(arg_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, u_input.d.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, arg_1.c), vec3<u32>(arg_1.c, arg_1.c, u_input.d.x))), arg_1.d), 32525u, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1202f, arg_0.a, var_0.x, -139f)) * vec4<f32>(282f, -499f, 1000f, var_0.x)), _wgslsmith_f_op_f32(-arg_1.b))));
    var var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * 737f);
    return all(vec2<bool>(true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(278f, -478f, var_0.x, 228f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, arg_0.a, arg_1.b, arg_0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(-600f, arg_1.b)), true)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_5 {
    var var_0 = ~min(_wgslsmith_add_vec3_u32(u_input.d.ywx, u_input.d.zzy), u_input.d.xww);
    var var_1 = abs(firstTrailingBit(-_wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, arg_2.e.x)) >> (global1.x % 32u));
    var var_2 = arg_2.b;
    var var_3 = arg_2.d;
    var var_4 = arg_2.b;
    return Struct_5(_wgslsmith_dot_vec2_u32(u_input.d.xx << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), var_0.zy), !func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.b, -433f, -1305f, -239f)))), -529f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 180f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(125f, 601f)))));
    var var_1 = Struct_5(global1.x, true || (_wgslsmith_dot_vec2_i32(u_input.e, ~u_input.e) > -20138i));
    var_1 = func_5(vec4<bool>(0i > _wgslsmith_div_i32(-1i, u_input.a), -10689i >= abs(_wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.e.x)), any(vec3<bool>(var_1.b, 30200u == global1.x, func_1(Struct_4(-338f, vec3<i32>(-34216i, u_input.e.x, 2147483647i), u_input.d.xz, u_input.c), Struct_1(vec3<i32>(0i, u_input.a, u_input.a), var_0.x, 28654u, false, vec4<i32>(u_input.e.x, u_input.a, -25159i, u_input.a))))), func_1(Struct_4(_wgslsmith_f_op_f32(func_3()), select(vec3<i32>(-1i, u_input.e.x, 77281i), vec3<i32>(u_input.a, u_input.e.x, u_input.a), vec3<bool>(false, var_1.b, false)), u_input.d.xz, var_1.a), Struct_1(~vec3<i32>(63968i, -2147483647i, 2147483647i), -1651f, ~88208u, var_1.b | var_1.b, vec4<i32>(0i, 20682i, 1i, u_input.e.x)))), all(vec4<bool>(var_1.b, var_1.b, all(select(vec3<bool>(false, false, var_1.b), vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, false, var_1.b))), !var_1.b)), Struct_1(~((vec3<i32>(u_input.e.x, u_input.a, u_input.e.x) ^ vec3<i32>(46027i, -2147483647i, u_input.a)) & (vec3<i32>(1i, 2147483647i, -22253i) << (u_input.d.yyx % vec3<u32>(32u)))), -107f, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.c, 0u), u_input.d.yzw)), any(vec2<bool>(!var_1.b, false || var_1.b)), vec4<i32>(u_input.a, 1i, 40121i, -u_input.e.x)));
    var var_2 = u_input.e.x;
    var var_3 = Struct_3(Struct_1(reverseBits(select(abs(vec3<i32>(-1i, u_input.e.x, u_input.a)), vec3<i32>(22005i, -51162i, u_input.a), vec3<bool>(true, var_1.b, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(-810f)))), ~(reverseBits(global1.x) | abs(4294967295u)), any(!vec3<bool>(false, false, var_1.b)), firstLeadingBit(abs(-vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, 6898i)))));
    var var_4 = ~0u;
    var var_5 = _wgslsmith_div_u32(1u, ~31915u) << (_wgslsmith_add_u32(select(~4294967295u >> (var_1.a % 32u), global1.x, var_3.a.d), u_input.d.x) % 32u);
    global0 = !(!any(vec4<bool>(true, var_1.b, true, var_3.a.d && true)));
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, var_3.a.b, -176f, -471f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, 304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b * var_3.a.b) * var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

