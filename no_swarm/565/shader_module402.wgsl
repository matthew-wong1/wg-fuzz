struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, _wgslsmith_div_f32(-861f, 179f), arg_2.x))));
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_add_u32(global1.c, _wgslsmith_mult_u32(1u, global1.c)), _wgslsmith_sub_u32(firstTrailingBit(13818u), u_input.b.x), ~(~29946u))), reverseBits(firstTrailingBit(~vec3<u32>(24012u, 0u, 13408u))), u_input.b.yxz);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2283f, var_2)), _wgslsmith_f_op_f32(arg_2.x + var_2), all(vec3<bool>(false, false, false)))))))));
    global0 = array<Struct_2, 27>();
    return 0u;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = arg_2.c;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(f32(-1f) * -1772f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(all(!arg_0.yx), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(29698u, func_3(_wgslsmith_f_op_f32(max(-876f, -855f)), Struct_3(global1.b), _wgslsmith_div_vec3_f32(vec3<f32>(-1006f, 1000f, arg_1), vec3<f32>(-1344f, arg_1, arg_1)))), 27u)], Struct_1(u_input.a >> (global1.c % 32u), select(firstTrailingBit(vec2<u32>(global1.c, u_input.b.x)), firstLeadingBit(u_input.b.zy), select(arg_0.zy, arg_0.yx, true)), vec2<i32>(2147483647i, -14858i), -267f, _wgslsmith_sub_vec4_u32(u_input.b, reverseBits(u_input.b))), global0[_wgslsmith_index_u32(firstLeadingBit(~(~43972u)), 27u)])) - arg_1);
    let var_1 = Struct_5(u_input.b.zxy);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -611f);
    global1 = global0[_wgslsmith_index_u32(~var_1.a.x, 27u)];
    let var_3 = _wgslsmith_mod_u32(64967u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global1.c, global1.c) & var_1.a, ~var_1.a), firstTrailingBit(~41999u))) == 4294967295u;
    return Struct_3(-firstTrailingBit(~(u_input.a & 1i)));
}

fn func_1() -> u32 {
    var var_0 = func_2(!select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true)), vec3<bool>(true, true, u_input.b.x == 80333u), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f * _wgslsmith_f_op_f32(f32(-1f) * -792f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f + 1642f)))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 1i, u_input.a, var_0.a) >> (u_input.b % vec4<u32>(32u)), select(vec4<i32>(31264i, 22468i, u_input.a, 2147483647i), vec4<i32>(global1.a.x, -19065i, var_0.a, 18356i), true)), min(var_0.a, 47311i >> (global1.c % 32u))), ~firstLeadingBit(vec2<i32>(var_0.a, 0i))), func_2(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1464f + -1023f)))).a, 1u);
    global0 = array<Struct_2, 27>();
    var_0 = func_2(vec3<bool>(true, false, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(833f, -1163f)) + _wgslsmith_f_op_f32(f32(-1f) * -1340f))), -103f)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(global1.c), abs(var_1.c), ~26629u), abs(vec3<u32>(u_input.b.x, var_1.c, var_1.c)), ~u_input.b.zzz), u_input.b.yxx), 27u)];
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c & u_input.b.x, 4294967295u, ~4294967295u, ~1u), vec4<u32>(global1.c, _wgslsmith_dot_vec3_u32(u_input.b.yxx, u_input.b.xxz), _wgslsmith_add_u32(global1.c, 117489u), 45269u), u_input.b >> (~vec4<u32>(4294967295u, 4294967295u, var_2.c, 1u) % vec4<u32>(32u))), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global1 = Struct_2(~(~(~global1.a)) << ((~abs(vec2<u32>(47822u, u_input.b.x)) & abs(~vec2<u32>(global1.c, 1u))) % vec2<u32>(32u)), min(-1i, -21412i), select((~u_input.b.x & _wgslsmith_div_u32(global1.c, global1.c)) & u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(_wgslsmith_mod_u32(global1.c, 1u), u_input.b.x)), any(vec4<bool>(true, true, true, true))));
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~22883u & (u_input.b.x ^ 4294967295u)), 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 0u, 0u, global1.c)), abs(549u)) | func_1(), ~88852u), firstTrailingBit(vec4<u32>(min(func_3(-647f, Struct_3(global1.a.x), vec3<f32>(-688f, 2136f, 166f)), _wgslsmith_mult_u32(1u, global1.c)), select(_wgslsmith_div_u32(8998u, u_input.b.x), u_input.b.x, true), ~global1.c, func_3(_wgslsmith_f_op_f32(abs(-1559f)), Struct_3(-1i), _wgslsmith_div_vec3_f32(vec3<f32>(1118f, 1844f, -172f), vec3<f32>(-188f, 1128f, 120f))))));
    var var_1 = vec2<i32>(countOneBits(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global1.b, global1.a.x), -vec4<i32>(-38840i, 0i, 16486i, 2147483647i)), 2147483647i)), abs(-50380i));
    var_0 = min(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(38825u, u_input.b.x & global1.c, ~u_input.b.x, global1.c)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.b.x, 23273u), vec3<u32>(global1.c, 4294967295u, u_input.b.x)), 33146u, ~var_0.x, 48318u)), vec4<u32>(0u, 51880u, 64897u, max(_wgslsmith_sub_u32(min(0u, var_0.x), var_0.x), _wgslsmith_div_u32(4294967295u, global1.c) | 1u)));
    var var_2 = Struct_1(-46363i, (min(var_0.zy, vec2<u32>(var_0.x, 27707u)) << ((vec2<u32>(0u, var_0.x) ^ firstTrailingBit(var_0.ww)) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(firstLeadingBit(u_input.b.yx)), var_0.xx) % vec2<u32>(32u)), vec2<i32>(-var_1.x, 1i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f), 450f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-616f))))), u_input.b);
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, _wgslsmith_f_op_f32(1141f + var_2.d), _wgslsmith_f_op_f32(exp2(var_2.d)))))));
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(38182u, global1.c, var_0.x) << (vec3<u32>(~global1.c, min(60554u, u_input.b.x), global1.c) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(var_3.a, vec3<f32>(1408f, -212f, _wgslsmith_f_op_f32(sign(965f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + -1365f) * _wgslsmith_f_op_f32(sign(1352f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(222f + var_3.a.x), var_2.d) - var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1187f, var_3.a.x)))), var_3.a.x), ~(~vec4<u32>(16728u, ~4294967295u, ~4294967295u, _wgslsmith_clamp_u32(var_2.b.x, 19364u, 62675u))));
}

