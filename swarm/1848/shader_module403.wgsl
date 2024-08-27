struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<bool> {
    let var_0 = !vec4<bool>(all(vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), true)), false, false, any(vec2<bool>(true, true)));
    var var_1 = -1i;
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(arg_0), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0, 70230u), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], vec4<u32>(arg_0, arg_0, 27107u, 1545u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 18469u) | ~vec2<u32>(4294967295u, 1u), min(abs(vec2<u32>(arg_0, 29314u)), vec2<u32>(50878u, 29428u) ^ vec2<u32>(arg_0, 1u)))), vec3<u32>(arg_0 ^ countOneBits(arg_0), 34623u, 4294967295u));
    global1 = 999f;
    var var_3 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(-34058i, arg_1, arg_1)), u_input.a.x)), ~vec4<u32>(~0u, arg_0, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~arg_0, 14u)], ~global0[_wgslsmith_index_u32(4294967295u, 14u)]), ~arg_0 >> (var_2.x % 32u)));
    return select(select(select(var_0.yw, var_0.yw, true), var_0.xw, any(var_0.ww)), !vec2<bool>(var_0.x, true), any(var_0.yx));
}

fn func_2() -> f32 {
    var var_0 = select(func_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(50768u, 4645u, 15571u, 13751u), firstTrailingBit(vec4<u32>(9800u, 100605u, 30084u, 158485u))) ^ countOneBits(~0u), ~0i), vec2<bool>(!(!any(vec2<bool>(true, false))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), true);
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-543f)));
    var var_3 = var_2;
    var var_4 = !((var_1 | 5445u) == ~_wgslsmith_sub_u32(~var_1, ~10483u));
    return -504f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), -391f, true)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2001f + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)))));
    var var_2 = _wgslsmith_clamp_vec4_i32(u_input.a, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-6921i << (1u % 32u), u_input.a.x, _wgslsmith_mult_i32(-27203i, u_input.a.x), _wgslsmith_sub_i32(-1i, 2147483647i)), u_input.a), vec4<i32>(u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, -2147483647i), 2147483647i, _wgslsmith_clamp_i32(~0i, -1i, -u_input.a.x) | u_input.a.x));
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    global1 = var_1;
    return Struct_1(-(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, 0i, var_2.x), u_input.a), _wgslsmith_mod_i32(0i, var_2.x))), firstLeadingBit(~(~vec4<u32>(49001u, 73876u, 45922u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -942f));
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(6305u, 36247u, ~var_1.b.x), var_1.b.x, _wgslsmith_dot_vec3_u32(var_1.b.wxw, _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(var_1.b.zzx, var_1.b.yzz)), var_1.b.wxy)));
    var var_3 = vec3<i32>(i32(-1i) * -48520i, -18739i, -12355i);
    var var_4 = !var_0;
    var_3 = vec3<i32>(_wgslsmith_add_i32(-18721i, ~(-5328i) << (~select(1u, var_1.b.x, true) % 32u)), -_wgslsmith_sub_i32(10843i, _wgslsmith_add_i32(_wgslsmith_div_i32(var_3.x, -24503i), select(1i, 1i, false))), _wgslsmith_div_i32(var_3.x, -1i));
    var var_5 = Struct_1(abs(var_1.a), select(~(~select(vec4<u32>(var_1.b.x, var_2.x, 4294967295u, var_2.x), global0[_wgslsmith_index_u32(var_1.b.x, 14u)], vec4<bool>(false, var_0, false, false))), global0[_wgslsmith_index_u32(var_2.x, 14u)], vec4<bool>(true, var_0, !any(vec4<bool>(true, true, true, var_0)), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_2.x, var_5.b.x, 12892u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1330f)), _wgslsmith_f_op_f32(-1811f - -1000f)) + vec2<f32>(_wgslsmith_div_f32(-586f, 215f), -966f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(361f, 264f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, -1000f) * vec2<f32>(253f, -318f)))))));
}

