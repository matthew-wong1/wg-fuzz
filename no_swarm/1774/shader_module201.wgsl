struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> u32 {
    global0 = array<vec4<i32>, 27>();
    var var_0 = ~max(min(firstLeadingBit(reverseBits(vec2<i32>(1147i, -44787i))), vec2<i32>(arg_2.a, 38157i & arg_1)), abs(~vec2<i32>(u_input.b, u_input.b)));
    var var_1 = Struct_1(~(~vec4<u32>(1u, abs(17657u), ~58177u, ~1u)), -firstTrailingBit(vec3<i32>(max(-60366i, arg_2.a), 2147483647i, select(var_0.x, var_0.x, true))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(42774u, 28514u, 0u, 65350u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(17708u, 1u, 0u, 1u)), vec4<u32>(49476u, 3153u, 17404u, 4294967295u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(29924u, 27734u, 4294967295u, 14768u), vec4<u32>(15041u, 72327u, 57179u, 1u)) | _wgslsmith_div_u32(0u, ~13204u)), _wgslsmith_clamp_i32(0i, ~(-arg_2.a) >> (~(~4294967295u) % 32u), u_input.b));
    var var_2 = ~var_1.a;
    let var_3 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !(true & all(vec2<bool>(true, true))));
    return _wgslsmith_sub_u32(1684u, _wgslsmith_div_u32(var_2.x, 50285u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~11589u, 0u, 1u)), ~vec3<u32>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -715f), arg_0), _wgslsmith_sub_i32(arg_1.x, u_input.a), Struct_4(2147483647i), 177f), min(1u, ~68914u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14822u, 0u, 4294967295u), vec4<u32>(10860u, 1u, 24695u, 25274u)), 1u)));
    global0 = array<vec4<i32>, 27>();
    var var_1 = ~select(arg_1.x, arg_1.x, true);
    var var_2 = countOneBits(abs(-1i));
    var_2 = 1i;
    return true;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = true;
    let var_1 = !vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.yz) * vec2<f32>(arg_0.x, 192f)), vec4<i32>(u_input.c, -9582i, u_input.c, u_input.a) & vec4<i32>(22495i, u_input.b, u_input.b, -6440i)), true, false);
    var var_2 = ~abs(global0[_wgslsmith_index_u32(99156u, 27u)] & select(vec4<i32>(u_input.a, 1i, -2147483647i, u_input.c) >> (vec4<u32>(0u, 9420u, 4294967295u, 9991u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(~4294967295u, 27u)], vec4<bool>(var_1.x, true, false, var_1.x)));
    let var_3 = (vec3<i32>(-1i) * -max(-var_2.zzw, max(var_2.wzy, vec3<i32>(2147483647i, -2147483647i, -2147483647i)))) << ((firstTrailingBit(vec3<u32>(~15927u, 0u, 1u)) ^ vec3<u32>(reverseBits(select(4294967295u, 94701u, true)), ~10074u, ~(~1u))) % vec3<u32>(32u));
    let var_4 = 2147483647i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2058f) * 1110f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1556f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-1000f, 236f, 1413f))))), _wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_div_f32(122f, -914f), _wgslsmith_f_op_f32(-539f + 991f), _wgslsmith_f_op_f32(floor(-1453f))))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1393f, _wgslsmith_f_op_f32(f32(-1f) * -1011f)))), 414f));
    var var_2 = firstTrailingBit(_wgslsmith_div_u32(1u, 1u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(506f + -1377f), _wgslsmith_f_op_f32(trunc(315f)), _wgslsmith_f_op_f32(f32(-1f) * -178f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1125f, -525f, -1062f) * vec3<f32>(1105f, -474f, 248f)))))))));
    var_0 = 631f;
    var_2 = 48898u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(5945u, 0u, 42335u, 0u)), vec4<u32>(~0u, ~65888u, _wgslsmith_clamp_u32(0u, 33904u, 1u), 11289u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(0u, 46674u, 5404u, 13545u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, 337f))), _wgslsmith_f_op_f32(func_1(vec3<f32>(-581f, var_3.x, 1266f))))), -612f, _wgslsmith_mod_i32(u_input.c, min(_wgslsmith_mult_i32(-67324i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 29171i)) & u_input.a)));
}

