struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 13>;

var<private> global2: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = ~(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 13u)], reverseBits(u_input.c.x), _wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), global1[_wgslsmith_index_u32(~34080u, 13u)])));
    let var_1 = Struct_1(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(true, true, true))), !all(vec3<bool>(true, true, true)) | false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(666f, 364f, false)) - _wgslsmith_f_op_f32(step(-213f, 194f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-154f))), -736f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1187f, -1535f, -223f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, -788f, 664f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1005f, 421f), vec3<f32>(526f, -1365f, -336f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, -211f, 1156f))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2260f, -1084f, 2134f) - vec3<f32>(-197f, 1202f, 1000f))))));
    var var_2 = var_1;
    global2 = -_wgslsmith_mod_vec2_i32(max(vec2<i32>(-2147483647i, -1i) & (vec2<i32>(u_input.a, global2.x) ^ vec2<i32>(u_input.b, global2.x)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 41374i), vec2<i32>(44121i, -25601i)), vec2<i32>(u_input.b, global2.x))), select(_wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(u_input.a, 58079i)), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, 0i) & vec2<i32>(global2.x, 1i), -vec2<i32>(global2.x, 2147483647i)), !select(var_1.a.yy, var_1.a.xz, var_1.a.yx)));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, var_1.e.x), _wgslsmith_div_f32(var_2.e.x, -722f)))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(step(var_2.e.x, _wgslsmith_f_op_f32(-var_2.c.x))))), var_2.e.x)));
    return var_1.d;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-951f, 573f), vec2<f32>(469f, 230f)) - vec2<f32>(298f, 263f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(286f, 1038f) - vec2<f32>(467f, 1300f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1469f, 992f), vec2<f32>(513f, 818f), false))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + 371f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), 854f)));
    var var_1 = -vec4<i32>(14023i, -arg_0.x, ~_wgslsmith_add_i32(global2.x, arg_0.x & global2.x), ~arg_0.x);
    var var_2 = Struct_1(!vec3<bool>((var_1.x & var_1.x) != u_input.b, true, false), false != !func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -1072f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1630f, var_0.x))))), true, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x));
    global0 = !(all(var_2.a) | true);
    var var_3 = vec3<bool>(true, var_2.b, true);
    return Struct_1(vec3<bool>(var_2.a.x, var_3.x, true), !func_3(), var_2.c, true, vec3<f32>(271f, 1000f, var_0.x));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global1 = array<u32, 13>();
    var var_0 = -738f;
    let var_1 = func_2(_wgslsmith_mult_vec3_i32(reverseBits(~vec3<i32>(3079i, -2147483647i, global2.x) ^ (vec3<i32>(global2.x, global2.x, u_input.a) << (vec3<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 4294967295u, 0u) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mod_i32(global2.x, u_input.b), -5680i, global2.x)));
    var var_2 = 2147483647i;
    let var_3 = var_1;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1138f, _wgslsmith_f_op_f32(-1032f - -562f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-201f * 432f), _wgslsmith_f_op_f32(-102f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(715f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1211f - -328f), 1000f))))));
    global2 = vec2<i32>(u_input.b, func_1(vec4<bool>(true, true, true, true)) | ~(-u_input.b));
    let var_1 = func_2(vec3<i32>(global2.x, 0i, -1i));
    var var_2 = ~(-(vec2<i32>(u_input.a, ~u_input.b) | vec2<i32>(u_input.a, abs(global2.x))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    let var_4 = var_1;
    var var_5 = u_input.c;
    var var_6 = -1496f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.e.x, -995f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, 1f)), _wgslsmith_f_op_f32(446f * _wgslsmith_div_f32(-436f, var_1.e.x))))));
}

