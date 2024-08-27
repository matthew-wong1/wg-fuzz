struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
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

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 91261u, 54827u, 4294967295u, 4294967295u, 32318u, 67802u, 0u, 0u, 4294967295u, 21620u, 1u, 0u, 33343u, 2862u, 115830u, 38903u, 1u, 69004u, 36064u, 0u, 2045u, 18722u, 46897u, 0u, 865u, 10533u, 4294967295u, 4294967295u, 0u);

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: vec3<f32> = vec3<f32>(547f, -507f, -225f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = all(select(arg_0, arg_0, !select(all(arg_0), true, arg_1.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xy)), !all(vec4<bool>(true, arg_1.a.x, true, arg_0.x)))) * global2.xz));
    var_0 = arg_0.x;
    var var_2 = select(!vec3<bool>(arg_0.x, false, !(true != arg_1.c)), vec3<bool>(_wgslsmith_f_op_f32(332f * -318f) < global2.x, !arg_1.a.x, arg_0.x && false), select(arg_0, vec3<bool>(arg_0.x, false, true), arg_0));
    var var_3 = !(!select(vec4<bool>(arg_1.a.x, !var_2.x, true, true), select(!vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), !vec4<bool>(arg_1.a.x, true, true, true), var_2.x), select(global0[_wgslsmith_index_u32(4294967295u, 30u)] == 0u, any(vec2<bool>(true, arg_0.x)), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-global2.x)) - -636f))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(774f - 1145f), _wgslsmith_f_op_f32(483f - -1058f), _wgslsmith_f_op_f32(-global2.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1477f, -810f) + vec3<f32>(-240f, 888f, global2.x))))));
    global0 = array<u32, 30>();
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1701f - 1896f), _wgslsmith_f_op_f32(abs(-2391f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-191f, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -687f) * vec3<f32>(-1726f, global2.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 656f, -1129f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1960f, 906f) * _wgslsmith_div_vec3_f32(vec3<f32>(145f, var_0.x, var_0.x), vec3<f32>(1057f, 182f, var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), -706f, _wgslsmith_f_op_f32(floor(-618f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.c, arg_0.a.x, arg_0.a.x), arg_0, global0[_wgslsmith_index_u32(arg_0.b.x, 30u)], arg_0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1068f * -100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -2101f) * _wgslsmith_f_op_f32(ceil(var_0.x))))));
    var var_1 = ~(vec3<u32>(~u_input.c, arg_0.b.x, ~1u) & (vec3<u32>(select(1u, u_input.c, true), u_input.c, countOneBits(75377u)) & ~(~vec3<u32>(4294967295u, arg_0.b.x, 4294967295u))));
    var var_2 = u_input.b.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2586f) * global2.x), _wgslsmith_f_op_f32(843f + _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))) * global2.x)))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -1769f, 1058f), arg_1, vec3<bool>(arg_3.a.x, arg_3.a.x, true)))) * arg_1)));
    let var_0 = Struct_1(select(vec2<bool>(arg_3.c, firstLeadingBit(arg_2.x) > -u_input.d), arg_3.a, false), firstTrailingBit(arg_3.b), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(true, true), vec2<u32>(arg_3.b.x, 1u), true, -21207i))) < arg_0, -u_input.a);
    return select(vec2<u32>(_wgslsmith_sub_u32(4294967295u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(16354u, 3500u, arg_3.b.x), vec3<u32>(arg_3.b.x, global0[_wgslsmith_index_u32(arg_3.b.x, 30u)], arg_3.b.x)), 25913u)), firstTrailingBit(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(61826u, 30u)], arg_3.b.x, global0[_wgslsmith_index_u32(arg_3.b.x, 30u)], 0u), vec4<u32>(66119u, 65384u, global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u)), u_input.c))), max(select(var_0.b, var_0.b, any(select(vec2<bool>(false, false), vec2<bool>(false, false), var_0.a.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 30u)], 30u)], 1u) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 34471u) % vec2<u32>(32u)), vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(0u, 30u)], var_0.b.x))) & vec2<u32>(26938u, 0u)), all(vec4<bool>(false, var_0.c | !var_0.a.x, select(select(false, arg_3.c, false), select(false, false, var_0.c), false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!vec2<bool>(false, u_input.d >= u_input.a)), ~select(_wgslsmith_sub_vec2_u32(func_1(global2.x, vec3<f32>(global2.x, 1000f, -1000f), u_input.b, Struct_1(vec2<bool>(false, false), vec2<u32>(u_input.c, u_input.c), false, -36295i)), vec2<u32>(global0[_wgslsmith_index_u32(18680u, 30u)], 0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(674u, 0u, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<u32>(15615u, 43663u, u_input.c)), _wgslsmith_sub_u32(23320u, global0[_wgslsmith_index_u32(u_input.c, 30u)])), true), true, u_input.b.x);
    let var_1 = var_0.d;
    var var_2 = u_input.b;
    var var_3 = Struct_1(!select(vec2<bool>(select(var_0.c, var_0.c, false), var_0.c), vec2<bool>(all(vec3<bool>(true, var_0.c, false)), !var_0.a.x), !var_0.c), var_0.b, true, _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(reverseBits(-u_input.d), var_2.x, -var_0.d)));
    let var_4 = Struct_1(!(!select(select(vec2<bool>(var_0.a.x, var_3.a.x), vec2<bool>(true, true), var_0.c), select(var_0.a, var_3.a, vec2<bool>(var_3.c, true)), vec2<bool>(true, var_3.a.x))), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1696f + -931f) + -769f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - -1246f), 1143f, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 786f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f), -1242f), _wgslsmith_sub_vec2_i32(select(-vec2<i32>(var_3.d, var_3.d), abs(vec2<i32>(u_input.d, 22845i)), vec2<bool>(var_3.a.x, var_0.c)), u_input.b), Struct_1(vec2<bool>(true, var_0.c), vec2<u32>(43860u, 1u), global0[_wgslsmith_index_u32(var_3.b.x, 30u)] != ~global0[_wgslsmith_index_u32(var_0.b.x, 30u)], _wgslsmith_clamp_i32(var_0.d ^ var_0.d, var_0.d, 0i))), var_0.c, countOneBits(var_3.d & _wgslsmith_mod_i32(~0i, -2147483647i)));
    let var_5 = var_0.a;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1630f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x - -227f), _wgslsmith_f_op_f32(max(global2.x, -713f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) - 1448f)) * 1440f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(global2.x - 638f)))));
}

