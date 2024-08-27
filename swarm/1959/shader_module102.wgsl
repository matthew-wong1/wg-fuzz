struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 28>;

var<private> global2: bool;

var<private> global3: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec4<u32> {
    let var_0 = select(!(-1076f > arg_1), true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(u_input.a < 12439u, false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(765f, 358f))), arg_1)));
    let var_2 = 45251u;
    var var_3 = Struct_2(Struct_1(vec3<bool>(!(var_0 | var_0), var_0, false)), vec3<u32>(~select(0u, 1u, var_0), 4294967295u, abs(u_input.a)) ^ vec3<u32>(~firstTrailingBit(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(65380u, var_2, arg_0), vec3<u32>(0u, arg_2, 0u)), u_input.a));
    var var_4 = 276f;
    return _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(var_3.b.x, arg_2, 1u, arg_0) & vec4<u32>(4294967295u | arg_0, max(var_2, 77275u), countOneBits(64744u), 4294967295u)), vec4<u32>(9047u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2, arg_2 | arg_0), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), abs(var_3.b.yx), vec2<u32>(1u, arg_0))), min(1u, 18035u)));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<i32> {
    let var_0 = Struct_4(vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_0)) <= arg_0, !((u_input.a != u_input.a) || all(vec3<bool>(true, arg_1, true))), all(vec2<bool>(!arg_1, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a) & ~129251u, abs(max(109995u, 0u)), ~106609u, ~u_input.a), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, 68008u, 4294967295u, 39684u)), func_3(u_input.a, arg_0, u_input.a)), select(reverseBits(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 18466u)), vec4<u32>(firstTrailingBit(4294967295u), ~u_input.a, max(1u, 59216u), reverseBits(u_input.a)), select(select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), true), vec4<bool>(arg_1, true, arg_1, arg_1), select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, true, true, arg_1), false)))));
    global1 = array<vec2<f32>, 28>();
    var var_1 = var_0;
    var var_2 = true;
    let var_3 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(countOneBits(_wgslsmith_sub_i32(-45002i, -34964i)), -1i, abs(1i), 1i), true), reverseBits(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_mult_i32(0i, 484i), 1i, ~1i, _wgslsmith_mult_i32(60899i, 11119i)))));
    return var_3.ywy;
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = vec2<bool>(arg_0.a.x, false);
    let var_1 = arg_0.a;
    let var_2 = Struct_3(vec2<bool>(true | any(vec3<bool>(true, false, true)), true || !arg_0.a.x));
    global1 = array<vec2<f32>, 28>();
    global3 = 1u;
    return _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -5679i, 0i), vec3<i32>(-3436i, 0i, -20709i)), -func_2(1427f, true)), vec3<i32>(-2147483647i | select(1i, 52053i >> (0u % 32u), true), _wgslsmith_mod_i32(0i, reverseBits(11927i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2147483647i), ~vec2<i32>(2147483647i, 26591i), vec2<i32>(2147483647i, -1i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(33120i, 2147483647i), vec2<i32>(-22626i, 0i)))), firstTrailingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(1442i, 1i, 9112i), vec3<i32>(1i, 1i, 1i))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = countOneBits(countOneBits(u_input.a));
    var var_1 = ~vec3<i32>(arg_2.x, i32(-1i) * -func_1(arg_1).x, firstTrailingBit(arg_2.x));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, reverseBits(firstTrailingBit(u_input.a))), ~vec2<u32>(1u, _wgslsmith_mod_u32(u_input.a, var_0)))), 28u)];
    global3 = _wgslsmith_clamp_u32(u_input.a, u_input.a, 22430u);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(100f, _wgslsmith_f_op_f32(min(arg_0.x, arg_3)), var_1.x != arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-191f + 477f)), arg_0.xzz));
    return Struct_4(vec3<bool>(arg_1.a.x, false, _wgslsmith_f_op_f32(min(-944f, _wgslsmith_f_op_f32(166f - -1000f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_3.x) * var_3.x)), vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(4294967295u, var_0)), _wgslsmith_mod_u32(~(~var_0), select(_wgslsmith_div_u32(u_input.a, 470u), ~var_0, select(arg_1.a.x, true, arg_1.a.x))), u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-736f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    global0 = -197f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(676f * _wgslsmith_f_op_f32(var_1 * 1146f)))), true))));
    global2 = false;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1265f, 901f, var_1, -271f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(578f, 410f, var_1, var_1), vec4<f32>(var_1, 433f, -1734f, var_1), vec4<bool>(true, true, true, true))))) - vec4<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(-var_1), 1552f))), Struct_3(vec2<bool>(true, true)), _wgslsmith_add_vec3_i32(func_1(Struct_3(vec2<bool>(true, false))), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(var_1)))) + var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2306f, 351f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) * vec3<f32>(var_1, var_1, -542f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, var_1, var_1)))), func_1(Struct_3(var_2.a.xz)), ~1i, var_1);
}

