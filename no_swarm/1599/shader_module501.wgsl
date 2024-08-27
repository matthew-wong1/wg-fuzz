struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(17974i, 0i, 10106i, 26144i);

var<private> global1: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    return Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(max(1u, ~_wgslsmith_sub_u32(44428u, u_input.b.x)), 4u)], reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), -45621i), u_input.a, vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-134f * _wgslsmith_f_op_f32(f32(-1f) * -2709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(267f)))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = vec2<bool>(!any(select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x)), vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), true);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -661f);
    let var_1 = arg_1;
    var var_2 = arg_0;
    var var_3 = var_1.a;
    return _wgslsmith_add_vec3_i32(reverseBits(~(~vec3<i32>(u_input.c, 15225i, -1i))), -vec3<i32>(global0[_wgslsmith_index_u32(~8463u, 4u)], _wgslsmith_dot_vec2_i32(-var_1.a.a.zz, _wgslsmith_add_vec2_i32(var_3.a.yx, vec2<i32>(arg_1.b.a.x, var_3.a.x))), ~(~2147483647i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -235f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 45861i, u_input.c), vec3<i32>(36325i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)])), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(1u, 4u)], u_input.c)) | ~vec3<i32>(-520i, 11603i, -31325i), ~vec4<u32>(_wgslsmith_div_u32(14985u, 17308u), abs(arg_2), _wgslsmith_dot_vec3_u32(arg_3.xwy, vec3<u32>(arg_2, arg_3.x, arg_2)), 0u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(516f, 1184f, 2359f) * vec3<f32>(233f, 939f, -2163f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1493f, 967f, 473f), vec3<f32>(549f, 1023f, -929f))))), func_2(all(vec3<bool>(arg_0.x, any(vec3<bool>(arg_1, arg_0.x, true)), !arg_1))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1888f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.x * var_1.b.c.x)) + _wgslsmith_f_op_f32(-var_1.a.c.x)), var_1.b.c.x, _wgslsmith_f_op_f32(-141f - 933f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2259f, 430f, var_1.b.c.x, var_1.b.c.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c.x, var_1.b.c.x, var_1.a.c.x, var_1.b.c.x), vec4<f32>(var_1.b.c.x, -1092f, var_1.b.c.x, var_1.b.c.x))))));
    let var_3 = ~_wgslsmith_dot_vec3_i32(~(~(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -1i) ^ vec3<i32>(global0[_wgslsmith_index_u32(126317u, 4u)], 2147483647i, 1i))), min(func_3(arg_0, Struct_2(var_1.a, var_1.a)), vec3<i32>(var_1.b.a.x, _wgslsmith_add_i32(var_1.a.a.x, var_1.a.a.x), ~(-9251i))));
    return any(arg_0) | any(!arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec2<bool>(true, func_1(vec2<bool>(true, false), true, 4294967295u, u_input.a)), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(2147483647i >= min(global0[_wgslsmith_index_u32(19141u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(0i != global0[_wgslsmith_index_u32(u_input.a.x, 4u)], select(true, false, true), true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_1 = Struct_2(func_2(true), Struct_1(-vec3<i32>(0i, i32(-1i) * -1i, u_input.c), ~countOneBits(firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(883f, -2647f, -275f), vec3<f32>(1295f, 1000f, 800f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1464f, -1189f, -262f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.x);
}

