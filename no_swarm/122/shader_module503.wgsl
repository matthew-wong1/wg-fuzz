struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: vec2<u32>;

var<private> global2: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_2(vec3<bool>(true, true, false), vec4<f32>(_wgslsmith_f_op_f32(-1449f - _wgslsmith_f_op_f32(986f - -1000f)), -1875f, 197f, _wgslsmith_f_op_f32(f32(-1f) * -194f)), Struct_1(-13935i), Struct_1(max(u_input.a.x, 1i))), min(_wgslsmith_sub_i32(~912i, _wgslsmith_add_i32(0i << (global1.x % 32u), ~0i)), _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yy)), Struct_1(-select(u_input.a.x ^ -19100i, u_input.a.x, all(vec4<bool>(true, true, true, false)))));
    let var_1 = Struct_2(var_0.a.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.b)))), Struct_1(~(-(-2104i | var_0.b))), Struct_1(u_input.a.x));
    var var_2 = var_0.a.b.wz;
    var var_3 = _wgslsmith_f_op_f32(select(var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), !var_1.a.x));
    let var_4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f))), 403f));
    global2 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - -542f);
    global1 = vec2<u32>(arg_3, arg_3);
    global1 = ~firstLeadingBit(vec2<u32>(global1.x, 71274u) ^ select(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 3883u), vec2<u32>(arg_3, 1u)), ~vec2<u32>(121520u, 89433u), vec2<bool>(arg_1.x, arg_1.x)));
    return true;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = vec4<bool>(true, true, (false || (403f == _wgslsmith_f_op_f32(sign(805f)))) | func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, 330f) + vec2<f32>(708f, 180f)))), vec2<bool>(select(true, false, false), true), Struct_1(abs(u_input.a.x)), ~(~arg_1)), arg_1 != ~(~arg_1));
    global2 = _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(~0i, -8669i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0), vec2<i32>(u_input.a.x, u_input.a.x))));
    let var_1 = all(var_0.xwz);
    return _wgslsmith_mult_u32(select(_wgslsmith_mod_u32(~arg_1, ~8631u), 0u, !(!var_0.x)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(14843i);
    var var_1 = 44005i;
    global1 = vec2<u32>(abs(global1.x), func_1(6381i, global1.x));
    var_1 = -var_0.a;
    var var_2 = ~(~abs(firstTrailingBit(~vec3<i32>(1i, -7766i, 1i))));
    var var_3 = select(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x | global1.x, 42732u, global1.x, global1.x) ^ global0[_wgslsmith_index_u32(abs(func_1(var_0.a, global1.x)), 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<u32>(~global1.x, ~(~(~global1.x)), ~abs(global1.x & global1.x), func_1(max(-10054i, -1i), func_1(4490i, global1.x)) | ~0u), !select(true, true, false));
    global2 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.a.x, var_0.a, 2147483647i, -14202i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, 10289i, 25181i), vec4<i32>(var_2.x, -34185i, var_2.x, var_2.x), vec4<i32>(var_2.x, u_input.a.x, -7536i, var_0.a)), any(vec3<bool>(false, false, false))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -17584i), vec2<i32>(var_2.x, var_2.x)), _wgslsmith_mod_i32(u_input.a.x, var_2.x), -1i, ~1i)), ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-881f)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -9837i), countOneBits(vec2<i32>(u_input.a.x, var_2.x))), -2147483647i, 22493i, ~_wgslsmith_mult_i32(-19860i, var_2.x)) ^ ~vec4<i32>(firstLeadingBit(var_0.a), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), abs(-21593i), ~33301i), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, -1294f, _wgslsmith_f_op_f32(388f * 1592f), _wgslsmith_f_op_f32(1615f + 1682f)))));
}

