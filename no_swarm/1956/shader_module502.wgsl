struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1363f, 459f), vec2<f32>(-1000f, 2271f), vec2<f32>(1503f, -486f), vec2<f32>(170f, -1168f), vec2<f32>(-1023f, -1000f), vec2<f32>(-243f, -396f), vec2<f32>(1214f, 264f));

var<private> global1: f32 = 1090f;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, 11822u, vec3<f32>(-665f, -149f, -1282f), vec4<f32>(2424f, -1977f, -661f, -197f), vec2<u32>(1u, 4294967295u)), Struct_1(true, 1u, vec3<f32>(-2055f, -439f, -870f), vec4<f32>(-2091f, 1197f, 1832f, 1525f), vec2<u32>(0u, 49584u)), Struct_1(false, 8565u, vec3<f32>(1923f, -2269f, -1787f), vec4<f32>(-176f, 1000f, -780f, -2229f), vec2<u32>(19532u, 58741u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = !vec4<bool>(arg_1.a, all(vec4<bool>(true, false, true | arg_1.a, true)), all(vec4<bool>(arg_0.a, arg_1.a, arg_1.a, any(vec3<bool>(false, true, arg_1.a)))), true);
    var var_1 = u_input.e.x;
    var var_2 = Struct_1(any(vec3<bool>(var_0.x, arg_0.e.x == ~arg_0.e.x, ~u_input.d > _wgslsmith_mod_i32(u_input.d, -42535i))), ~25971u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(-2090f)), 1412f, _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d.x, -397f, arg_1.d.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-686f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(826f * arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * 494f)), _wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(-arg_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, -1078f, -193f, arg_0.d.x), arg_0.d, vec4<bool>(true, arg_1.a, false, arg_0.a))))))), vec2<u32>(_wgslsmith_mult_u32(arg_1.e.x, max(u_input.a, firstLeadingBit(u_input.a))), abs(u_input.b) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40042u, 4294967295u, 1u), vec3<u32>(u_input.b, arg_1.e.x, 4294967295u)), ~u_input.b)));
    let var_3 = ~select(0u, arg_0.e.x, true);
    var_2 = Struct_1(any(!vec3<bool>(any(vec2<bool>(true, arg_1.a)), arg_0.a, arg_1.a)), _wgslsmith_dot_vec2_u32(var_2.e, reverseBits(~(~vec2<u32>(0u, arg_1.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-363f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(256f))), -997f), var_2.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(arg_1.d, _wgslsmith_f_op_vec4_f32(-var_2.d), select(vec4<bool>(false, var_2.a, arg_1.a, false), vec4<bool>(false, arg_0.a, true, var_0.x), false))))))), vec2<u32>(~(~0u), var_2.e.x));
    return _wgslsmith_f_op_f32(select(-774f, 1000f, var_0.x));
}

fn func_2() -> bool {
    global1 = -736f;
    var var_0 = all(vec3<bool>(false, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f + _wgslsmith_f_op_f32(select(-1716f, -1289f, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(true, 0u, vec3<f32>(319f, -785f, -1110f), vec4<f32>(499f, -1003f, -134f, -372f), vec2<u32>(u_input.c, u_input.b)), global2[_wgslsmith_index_u32(select(u_input.b, u_input.c, false), 3u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(374f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1044f, 1347f, false)), _wgslsmith_f_op_f32(-1000f * 162f)))), 422f));
    var var_2 = !(!vec2<bool>(true, all(vec2<bool>(true, true))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * -1522f))) + 540f);
    return select(!all(select(vec2<bool>(var_2.x, true), vec2<bool>(false, var_2.x), true)), true, !var_2.x) || (!all(vec4<bool>(true, var_2.x, false, true)) | var_2.x);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global2 = array<Struct_1, 3>();
    var var_0 = vec4<bool>((true & any(vec4<bool>(true, false, false, true))) | any(vec4<bool>(true, false, true, true)), !func_2() && any(vec4<bool>(true, true, true, true)), false, any(vec3<bool>(func_2() | select(true, true, true), min(4294967295u, 23491u) >= u_input.a, true)));
    global0 = array<vec2<f32>, 7>();
    global2 = array<Struct_1, 3>();
    let var_1 = var_0.yxx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -621f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = -1004f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(679f + 512f) - _wgslsmith_f_op_f32(func_1(countOneBits(vec3<i32>(-9332i, -17379i, -1i))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(529f * 679f), _wgslsmith_f_op_f32(func_1(vec3<i32>(-51835i, -870i, u_input.d))), u_input.e.x == u_input.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(515f + -385f) - -751f)))) + _wgslsmith_f_op_f32(1539f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)))));
    global1 = _wgslsmith_f_op_f32(abs(1000f));
    var var_1 = (firstLeadingBit(~0u) ^ _wgslsmith_div_u32((u_input.c | 45782u) >> (_wgslsmith_sub_u32(16778u, 0u) % 32u), _wgslsmith_div_u32(reverseBits(u_input.b), reverseBits(u_input.c)))) > _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 54653u, u_input.a), vec3<u32>(102096u, 99u, 12763u))) >> (38679u % 32u), abs(abs(0u)));
    var var_2 = any(select(!select(select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, false, false, var_0)), vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(true, var_0, false, var_0)), select(vec4<bool>(true || var_0, true, !var_0, true), !(!vec4<bool>(true, true, var_0, var_0)), u_input.e.x < 1i), !vec4<bool>(var_0, var_0, true, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(abs(abs(10510u)), 7u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1474f, -266f, 231f), vec3<f32>(379f, 1304f, 188f))))))), vec3<u32>(u_input.c, ~(~u_input.a ^ u_input.b), ~u_input.c), ~48080u);
}

