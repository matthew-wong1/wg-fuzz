struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(2747u, 30946u, 22126u)), Struct_1(vec3<u32>(48575u, 0u, 24958u)), Struct_1(vec3<u32>(32848u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 44242u)), Struct_1(vec3<u32>(38789u, 59631u, 25551u)), Struct_1(vec3<u32>(0u, 22675u, 0u)), Struct_1(vec3<u32>(49760u, 1u, 33343u)), Struct_1(vec3<u32>(0u, 0u, 13351u)), Struct_1(vec3<u32>(30762u, 0u, 1u)), Struct_1(vec3<u32>(26392u, 7758u, 0u)), Struct_1(vec3<u32>(65805u, 0u, 4294967295u)), Struct_1(vec3<u32>(1u, 1608u, 4294967295u)), Struct_1(vec3<u32>(1u, 61863u, 0u)), Struct_1(vec3<u32>(4294967295u, 33566u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 51851u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(7141u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4990u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(33082u, 4294967295u, 24865u)), Struct_1(vec3<u32>(14130u, 76436u, 23205u)), Struct_1(vec3<u32>(51863u, 1u, 0u)));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(42969u, 45472u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21231u, firstLeadingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(global1.a), vec3<u32>(4294967295u, 0u, 0u) | ~vec3<u32>(4294967295u, global1.a.x, 35774u)))), 22u)];
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global1.a.x ^ global1.a.x, _wgslsmith_dot_vec2_u32(global1.a.yy, vec2<u32>(0u, global1.a.x)))), 22u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1349f, 1899f, -399f))))) * vec3<f32>(-493f, -898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(486f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(533f, 1419f, -297f), vec3<f32>(-331f, -3586f, -429f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, 1744f, 1511f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-860f, -796f, 1342f)) * vec3<f32>(1057f, 726f, 307f))))));
    global1 = Struct_1(abs(~max(vec3<u32>(0u, var_0.a.x, u_input.b), select(global1.a, vec3<u32>(u_input.b, 4302u, var_0.a.x), vec3<bool>(true, false, true)))));
    var var_2 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global1.a.x, var_0.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, 51634u, u_input.b, 0u), vec4<u32>(16078u, global1.a.x, u_input.b, 1u)))) >> (_wgslsmith_sub_vec4_u32(~(~(vec4<u32>(23491u, 4294967295u, var_0.a.x, var_0.a.x) ^ vec4<u32>(3172u, global1.a.x, var_0.a.x, u_input.b))), abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 4294967295u, var_0.a.x, 4294967295u)), ~vec4<u32>(10354u, u_input.b, 1u, u_input.b)))) % vec4<u32>(32u));
    return false;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = ~u_input.a.x;
    var var_1 = func_3();
    global1 = Struct_1(~abs(~_wgslsmith_clamp_vec3_u32(arg_1, arg_1, vec3<u32>(global1.a.x, 0u, 4294967295u))));
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.x, 3019u, u_input.b), arg_1), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_1.x, arg_1.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 38360u, arg_2.a.x), vec4<u32>(1u, 1u, 12692u, global1.a.x)))) ^ 1u), 22u)];
    var var_3 = 0u < ~(~(~(~arg_1.x)));
    return _wgslsmith_add_u32(~reverseBits(countOneBits(_wgslsmith_div_u32(u_input.b, 0u))), var_2.a.x);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(func_2(arg_1.x, vec3<u32>(u_input.b, u_input.b, 1u), global0[_wgslsmith_index_u32(global1.a.x, 22u)], arg_1) >> (_wgslsmith_clamp_u32(global1.a.x, 78544u, 1690u) % 32u), func_2(15365u <= global1.a.x, global1.a >> (vec3<u32>(1471u, u_input.b, 16412u) % vec3<u32>(32u)), Struct_1(global1.a), vec3<bool>(true, true, arg_1.x)), firstTrailingBit(abs(global1.a.x))), _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(vec3<u32>(global1.a.x, u_input.b, u_input.b))), vec3<u32>(abs(global1.a.x), u_input.b, func_2(arg_1.x, vec3<u32>(u_input.b, 36626u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 22u)], arg_1)))));
    var var_1 = vec2<u32>(87712u >> (~var_0.a.x % 32u), (_wgslsmith_mult_u32(59392u, global1.a.x) << ((u_input.b >> (u_input.b % 32u)) % 32u)) ^ (~u_input.b & 1u)) & vec2<u32>(~_wgslsmith_clamp_u32(1u, 90924u, global1.a.x << (4294967295u % 32u)), 12012u);
    var var_2 = var_0;
    var var_3 = -1i;
    var var_4 = 23710u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1259f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f));
    let var_1 = global1.a.zx;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(-151f, vec3<bool>(false, true, false))), -206f))), _wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(811f - -695f))));
    let var_2 = Struct_1(~global1.a);
    let var_3 = var_2;
    let var_4 = max(-u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - -141f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1038f, -605f), vec2<f32>(-1226f, -1016f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, -276f) - vec2<f32>(-1036f, 1138f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1216f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(153f, 2703f) + vec2<f32>(-260f, 827f))))));
}

