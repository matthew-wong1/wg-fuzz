struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<Struct_2, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_1.a.wz, _wgslsmith_f_op_vec2_f32(arg_1.a.zx * arg_1.a.wz), arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(103f, arg_1.a.x)))))), arg_1.a.xy)));
    var var_1 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a & u_input.b.x, 54674u), 36971u, ~(~19881u)), countOneBits(~vec4<u32>(u_input.b.x, u_input.d.x, 11282u, u_input.b.x))), vec4<u32>(_wgslsmith_mod_u32(0u, ~(~u_input.a)), _wgslsmith_mult_u32(32205u, 12679u << (u_input.d.x % 32u)), u_input.a, u_input.d.x));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(69022u, 0u, 11773u, u_input.a), vec4<u32>(u_input.d.x, u_input.b.x, 44248u, u_input.a), arg_0.x), vec4<u32>(u_input.a, u_input.d.x, u_input.b.x, 1u) << (vec4<u32>(0u, u_input.a, 58833u, u_input.d.x) % vec4<u32>(32u))) ^ (countOneBits(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a)) | (vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, 0u) << (vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.b.x) % vec4<u32>(32u)))), vec4<u32>(~(~12454u), _wgslsmith_dot_vec3_u32(~vec3<u32>(27892u, u_input.b.x, u_input.a), min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(571u, u_input.a, 82960u))), _wgslsmith_sub_u32(u_input.d.x, reverseBits(1u)), u_input.a)) << (max(u_input.d.x, u_input.d.x << (countOneBits(~1u) % 32u)) % 32u);
    let var_2 = arg_0.x;
    var var_3 = ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.d.x, 30620u, u_input.d.x)) & vec4<u32>(countOneBits(u_input.b.x), ~u_input.b.x, ~u_input.a, ~u_input.a), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d.x, u_input.a, u_input.a))) ^ min(vec4<u32>(51724u, u_input.a, 336u, 4437u), vec4<u32>(u_input.d.x, 85647u, 37067u, u_input.d.x)), vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, select(1u >> (u_input.b.x % 32u), ~u_input.a, var_2)));
    return select(var_3.x, var_3.x, all(!vec3<bool>(false, true, arg_0.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 30>();
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(max(0u, u_input.b.x), ~arg_2) ^ arg_2, ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(10413u, u_input.d.x, 1u), vec3<u32>(arg_2, 48891u, 1u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1044f)), arg_3.zx, vec2<bool>(arg_0.x, arg_0.x))), arg_3.xz)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_1)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(562f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -230f))))));
    var var_2 = countOneBits(vec4<u32>(~_wgslsmith_mult_u32(17882u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 43224u), var_0)), _wgslsmith_sub_u32(~4294967295u, ~max(4294967295u, arg_2)), _wgslsmith_div_u32(u_input.a, 4294967295u), ~arg_2));
    var var_3 = arg_0.x;
    return vec4<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 112969u, 4294967295u, 4294967295u) ^ (vec4<u32>(var_2.x, 1u, u_input.b.x, 16079u) & vec4<u32>(4294967295u, 0u, arg_2, u_input.b.x)), firstTrailingBit(abs(vec4<u32>(arg_2, u_input.b.x, arg_2, var_2.x)))), 30u)], global0[_wgslsmith_index_u32(func_3(vec4<bool>(any(arg_0.xy), false, !arg_0.x, all(vec3<bool>(true, true, false))), Struct_1(vec4<f32>(598f, arg_3.x, 1963f, arg_1), select(-78778i, u_input.c, arg_0.x))), 30u)]), _wgslsmith_clamp_i32(15280i, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, 50044i)), vec2<i32>(-6247i, u_input.c), firstLeadingBit(vec2<i32>(2147483647i, u_input.c))), max(vec2<i32>(u_input.c, -1i) & vec2<i32>(u_input.c, 29586i), abs(vec2<i32>(-2147483647i, 1i))))), u_input.c, 34226i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), false, max(22398i, -23696i) <= u_input.c), !vec4<bool>(false, true, any(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f + arg_0) * -1484f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2537f)))), -730f)), ~61751u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.a.wzy), _wgslsmith_div_vec3_f32(arg_2.a.zxy, arg_1.a.xyy), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x + -580f), arg_0, _wgslsmith_f_op_f32(188f + 2412f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(floor(arg_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, -1263f, true)), _wgslsmith_f_op_f32(-1049f * arg_2.a.x)), 587f)));
    var var_1 = select(!select(vec3<bool>(u_input.a > 1u, all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, false, false)), true, arg_1.b > 1i), vec3<bool>(select(arg_1.a.x >= arg_1.a.x, all(vec4<bool>(true, true, false, true)), true), all(vec3<bool>(true, true, true)), true)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), max(u_input.d.x, u_input.d.x)), vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x))) != ~32631u);
    var var_2 = Struct_1(arg_2.a, arg_1.b);
    var var_3 = _wgslsmith_add_vec2_i32(var_0.zx, var_0.wz);
    let var_4 = !vec3<bool>(((u_input.d.x & 73144u) & _wgslsmith_div_u32(4294967295u, 162u)) != u_input.a, select(!(!var_1.x), !(var_0.x <= var_3.x), all(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, true, true)))), all(!var_1.yx));
    return global1[_wgslsmith_index_u32(u_input.d.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f) * _wgslsmith_f_op_f32(1317f + 1379f)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_div_f32(-874f, -537f), _wgslsmith_div_f32(370f, -1446f), _wgslsmith_f_op_f32(1234f + 889f)))), -u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(153f, -1000f, 1092f, -443f)))), vec4<f32>(-1458f, -453f, _wgslsmith_f_op_f32(f32(-1f) * -1907f), 413f))), 2147483647i), -446f);
    global1 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(select(func_1(_wgslsmith_f_op_f32(var_0.b.a.x + -2052f), func_1(var_0.b.a.x, Struct_1(var_0.b.a, -9696i), var_0.b, -1000f).b, Struct_1(var_0.b.a, var_0.b.b), -2105f).b.a.x, -1395f, false)))));
}

