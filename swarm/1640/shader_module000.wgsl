struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = ~vec2<u32>(abs(7091u), ~(~1u));
    let var_2 = ~(-min(vec4<i32>(select(1038i, -2147483647i, arg_1.a.x), firstLeadingBit(-67121i), _wgslsmith_div_i32(-46760i, 50525i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 17961i), vec3<i32>(-1i, -2147483647i, 1i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(32152i, 1i, 2147483647i, -9353i), ~vec4<i32>(33804i, -77266i, -1i, -31239i))));
    var var_3 = arg_1;
    var var_4 = var_2.x;
    return ~abs(~min(var_2.x, -33441i)) > -1i;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(!(!vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(max(-145f, -154f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1147f + 436f), -2153f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(769f, -1000f, 137f) * vec3<f32>(-2003f, 2133f, -1173f)), vec3<f32>(-293f, 265f, 2038f))))), _wgslsmith_div_f32(-271f, -392f));
    var var_1 = var_0;
    global0 = _wgslsmith_add_i32(14334i, 1i);
    let var_2 = ~min(max(~firstLeadingBit(vec3<i32>(-1i, 68i, -11250i)), firstTrailingBit(vec3<i32>(-64054i, 21600i, 43926i))), ~(-vec3<i32>(-49861i, 2147483647i, -68608i)));
    var var_3 = vec3<u32>(u_input.a, 4294967295u & u_input.a, 8492u);
    return !var_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = 2147483647i;
    var var_0 = arg_0;
    let var_1 = vec4<bool>(~(1u ^ _wgslsmith_sub_u32(32035u, u_input.a)) > _wgslsmith_mult_u32(~select(u_input.a, u_input.a, var_0.a.x), u_input.a), true, func_2(arg_0, Struct_1(!(!vec4<bool>(false, true, var_0.a.x, arg_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1460f)), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-2044f - -768f)), _wgslsmith_f_op_f32(var_0.c - var_0.b.x)), 54749u), true);
    let var_2 = -1i;
    var var_3 = Struct_1(select(select(arg_1.a, var_1, !vec4<bool>(true, var_0.a.x, true, var_1.x)), func_3(), arg_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-944f, -1510f, -270f)))), arg_1.c);
    return _wgslsmith_add_i32(~(~(~var_2)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-972f, -303f));
    var var_1 = Struct_1(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(func_1(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(var_0, 282f, -756f), var_0), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-614f, var_0, var_0), var_0)) < _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-7554i, -2147483647i)), true, !(var_0 <= -141f), func_1(Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(var_0, 997f, -1378f), var_0), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-680f, -844f, var_0), 403f)) <= -2147483647i), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 364f, var_0) * vec3<f32>(192f, -1184f, var_0)) + vec3<f32>(463f, var_0, -414f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -170f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 1402f, var_0)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(453f, var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), -1306f)));
    var var_2 = _wgslsmith_mult_u32(~(~u_input.a), u_input.a);
    var var_3 = Struct_1(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-221f + var_1.c), _wgslsmith_f_op_f32(round(var_1.b.x)))) * _wgslsmith_f_op_f32(ceil(-1636f))), 437f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c, var_0)), var_0))), 1091f);
    var var_4 = u_input.a <= 70652u;
    let var_5 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(min(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4408u, u_input.a) % vec2<u32>(32u))), abs(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), ~vec2<u32>(firstLeadingBit(u_input.a), u_input.a)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(4294967295u, u_input.a))), _wgslsmith_div_vec2_u32(abs(~(vec2<u32>(0u, 10939u) & vec2<u32>(u_input.a, 29403u))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~(~vec2<u32>(1u, 18939u)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_5.x, var_5.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.x, u_input.a), var_5, vec2<u32>(u_input.a, 42143u))), var_5.x & reverseBits(u_input.a), var_5.x, var_5.x)), _wgslsmith_f_op_vec2_f32(var_1.b.zz + vec2<f32>(-1746f, var_3.b.x)), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(func_1(Struct_1(vec4<bool>(false, var_3.a.x, var_3.a.x, true), vec3<f32>(var_0, 1300f, var_0), -1000f), Struct_1(var_3.a, vec3<f32>(var_3.c, 1365f, 340f), var_0)), 1i, reverseBits(962i)), firstTrailingBit(-7106i) | select(-1i, -24256i, var_3.a.x)));
}

