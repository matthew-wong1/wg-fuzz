struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> vec4<i32> {
    let var_0 = 37805i;
    let var_1 = arg_1.x;
    global2 = array<Struct_1, 6>();
    let var_2 = Struct_2(Struct_1(vec4<i32>(-31261i, i32(-1i) * -1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, 2147483647i, -1i), var_0), ~(-21014i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - var_1) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * 278f), _wgslsmith_f_op_f32(-324f * 487f)))), arg_1, -52911i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(var_1, 289f, 936f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, var_1, -1000f) + vec3<f32>(-307f, var_1, 821f))) + _wgslsmith_f_op_vec3_f32(exp2(arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1064f, arg_1.x) - arg_1), arg_1) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-1126f)), _wgslsmith_f_op_f32(-var_1), 1320f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))));
    return ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.a.a, var_2.a.a), ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(2304i, 8030i, 1i, var_0)), abs(var_2.a.a)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> vec3<u32> {
    global2 = array<Struct_1, 6>();
    var var_0 = arg_2.xz;
    let var_1 = _wgslsmith_div_i32(2147483647i, firstTrailingBit(-firstTrailingBit(1i)));
    var var_2 = func_3(_wgslsmith_div_i32(reverseBits(56969i), 41689i), arg_0.b, 4294967295u);
    return vec3<u32>(~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), u_input.a.x, select(_wgslsmith_dot_vec2_u32(u_input.a.zy, ~(~u_input.a.zy)), u_input.a.x, any(vec2<bool>(true, !var_0.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(25830i, (u_input.b | -79210i) >> (~14985u % 32u)), ~u_input.b | _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 25u)], vec3<i32>(u_input.b, 618i, -15060i)), min(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(-26589i, u_input.b, u_input.b)) << (func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<f32>(-448f, -2033f, -642f)), Struct_1(vec4<i32>(u_input.b, u_input.b, 1i, -1i), -1000f, vec3<f32>(637f, -155f, 600f), u_input.b), vec4<bool>(arg_0, true, false, arg_0), -1800f) % vec3<u32>(32u))));
    var var_1 = false;
    let var_2 = global1[_wgslsmith_index_u32(~(~(~select(u_input.a.x, u_input.a.x, false)) ^ ~(~1u)), 28u)];
    let var_3 = any(select(!vec3<bool>(!arg_0, any(vec3<bool>(false, arg_0, arg_0)), true), vec3<bool>(true, all(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false), true)), arg_0), !all(!vec4<bool>(true, arg_0, arg_0, arg_0))));
    return global1[_wgslsmith_index_u32(39918u, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_1.x;
    var var_1 = Struct_1(func_3(~_wgslsmith_clamp_i32(min(u_input.b, -9412i), _wgslsmith_clamp_i32(arg_0.d, u_input.b, -1i), 13497i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.x, arg_0.b, 179f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, arg_0.b, arg_0.b) + arg_0.c))))), arg_3.x), _wgslsmith_f_op_f32(min(439f, _wgslsmith_f_op_f32(-arg_0.b))), arg_0.c, arg_1.x);
    let var_2 = var_1.b;
    var_1 = Struct_1(vec4<i32>(arg_0.d, abs(_wgslsmith_mod_i32(-2147483647i, -1i << (1u % 32u))), -var_1.a.x & ((u_input.b | 12862i) << (54759u % 32u)), select(-11295i, arg_0.a.x, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(abs(1811f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.b, 1000f))), ~var_1.d);
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec4_u32(reverseBits(arg_3), arg_3)), ~1u, _wgslsmith_dot_vec4_u32(arg_3, firstLeadingBit(~arg_3))), 28u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c))));
    return var_3;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global1 = array<Struct_1, 28>();
    var var_0 = Struct_1(abs(arg_1.a.a), -1450f, vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -627f), -111f), ~(-abs(-1i)));
    var var_1 = ~u_input.a.xy;
    global1 = array<Struct_1, 28>();
    let var_2 = vec4<bool>(any(vec4<bool>(true, true, true, true)), all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false))), true, u_input.b == (-_wgslsmith_dot_vec2_i32(var_0.a.zy, arg_1.a.a.yy) | _wgslsmith_add_i32(u_input.b, 2147483647i)));
    return Struct_2(func_1(49793u >= var_1.x), _wgslsmith_div_vec3_f32(var_0.c, func_1(var_2.x).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b, func_4(func_1(true), ~(~select(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b), true)), true, select(select(abs(vec4<u32>(13524u, u_input.a.x, 57594u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), vec4<bool>(false, false, true, false)), firstLeadingBit(abs(vec4<u32>(u_input.a.x, 1u, 4294967295u, 4294967295u))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(378f + func_1(true).b), _wgslsmith_f_op_f32(f32(-1f) * -339f)));
    global1 = array<Struct_1, 28>();
    var var_1 = u_input.b;
    global0 = array<vec3<i32>, 25>();
    let var_2 = _wgslsmith_clamp_vec3_i32(var_0.a.a.wyz, select(vec3<i32>(func_4(var_0.a, vec2<i32>(u_input.b, var_0.a.d), false, vec4<u32>(10273u, 63281u, u_input.a.x, 79628u)).a.d >> (max(u_input.a.x, 143776u) % 32u), _wgslsmith_dot_vec4_i32(~var_0.a.a, select(var_0.a.a, vec4<i32>(2147483647i, u_input.b, -13646i, 2147483647i), true)), 1i), func_4(Struct_1(abs(var_0.a.a), var_0.a.c.x, _wgslsmith_f_op_vec3_f32(max(var_0.a.c, vec3<f32>(var_0.a.b, var_0.a.c.x, var_0.b.x))), ~u_input.b), select(var_0.a.a.ww & var_0.a.a.xx, var_0.a.a.xw, vec2<bool>(false, true)), true, vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 34598u, u_input.a.x)))).a.a.xzz, any(vec3<bool>(true, true, true))), vec3<i32>(var_0.a.a.x, countOneBits(-(var_0.a.a.x >> (4294967295u % 32u))), abs(1i)));
    global0 = array<vec3<i32>, 25>();
    var var_3 = all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), u_input.a.x == u_input.a.x), true)) & true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, var_0.b.x, -128f), vec3<u32>(_wgslsmith_mod_u32(~(u_input.a.x | 4294967295u), u_input.a.x), u_input.a.x, ~(~(~1u))), ~19463u, firstTrailingBit(u_input.b), var_0.b);
}

