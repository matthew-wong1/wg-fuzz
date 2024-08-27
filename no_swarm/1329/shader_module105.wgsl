struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-37137i, 26490i, 93947i), -762f, vec2<bool>(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<bool>) -> u32 {
    let var_0 = select(_wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * global1.b) + _wgslsmith_f_op_f32(min(global1.b, global1.b)))) >= _wgslsmith_f_op_f32(-449f + global1.b), arg_2.x, !all(arg_2.zy) != false);
    return _wgslsmith_sub_u32(u_input.d.x, u_input.a.x);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_sub_u32(~0u, u_input.c.x | _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.a.x), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, global1.b, global1.b, global1.b)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -846f, global1.b, global1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, global1.b, global1.b, global1.b) - vec4<f32>(-264f, global1.b, global1.b, 1000f))))), vec4<f32>(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1047f)), _wgslsmith_f_op_f32(global1.b + global1.b), global1.b, global1.b))));
    global0 = array<Struct_1, 6>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(84707u, ~_wgslsmith_sub_u32(var_0, var_0)), 6u)];
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 6u)];
    return ~vec4<u32>(16549u, 1u, ~(~firstTrailingBit(var_0)), var_0);
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global1 = global0[_wgslsmith_index_u32(~4294967295u << (~(~(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], false, vec3<bool>(true, false, false), vec3<bool>(false, arg_0, false)) >> (u_input.a.x % 32u))) % 32u), 6u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1089f * 762f), global1.b, 991f, _wgslsmith_f_op_f32(global1.b * global1.b))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, -1263f, global1.b)))))));
    global1 = global0[_wgslsmith_index_u32(39447u, 6u)];
    global0 = array<Struct_1, 6>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 6u)];
    return _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 52397u, 4294967295u, 7451u), vec4<u32>(1u, 15480u, u_input.c.x, u_input.c.x))), select(~vec4<u32>(1u, 63207u, 12161u, u_input.a.x), ~vec4<u32>(u_input.c.x, 1u, 13608u, u_input.c.x), true)), vec4<u32>(~func_2(Struct_1(global1.a, -288f, var_1.c), false, vec3<bool>(false, false, true), vec3<bool>(arg_0, true, true)), ~u_input.d.x >> (1u % 32u), ~1u, ~12103u)), ~func_3(true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(func_1(!(!global1.c.x)) << ((firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(82286u, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.c.x, 0u, 1u, u_input.a.x))) << (firstLeadingBit(~vec4<u32>(u_input.d.x, 11918u, 0u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 28896u, abs(1u), ~19296u) ^ firstTrailingBit(vec4<u32>(10462u, _wgslsmith_mult_u32(109003u, u_input.a.x), u_input.a.x & 11188u, u_input.a.x << (12133u % 32u))), firstTrailingBit(vec4<u32>(~min(u_input.d.x, 0u), u_input.c.x, u_input.c.x, ~u_input.c.x | (u_input.c.x << (u_input.d.x % 32u)))));
    let var_1 = Struct_1(-abs(vec3<i32>(~10443i, u_input.b | 1i, abs(u_input.b))), _wgslsmith_f_op_f32(1066f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-global1.b)))), !(!global1.c));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(2825u, 6216u << (func_3(global1.c.x & all(vec2<bool>(false, false))).x % 32u)), 6u)];
    var_0 = func_3(!(all(!vec3<bool>(false, global1.c.x, true)) || any(vec3<bool>(true, var_1.c.x, var_1.c.x))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, var_1.b, 697f) + vec3<f32>(global1.b, var_1.b, var_1.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -100f, 711f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, var_1.b, var_1.b)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b + 1347f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-465f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(f32(-1f) * -1922f)), _wgslsmith_div_f32(-782f, global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -15884i, global1.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, 2209f))) - vec2<f32>(140f, var_1.b)), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f + -647f) + _wgslsmith_f_op_f32(floor(599f))), 194f)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f - 512f) - _wgslsmith_f_op_f32(-var_2.x)), ~abs(max(countOneBits(vec4<i32>(u_input.b, var_1.a.x, -27713i, u_input.b)), -vec4<i32>(global1.a.x, u_input.b, 22194i, u_input.b))));
}

