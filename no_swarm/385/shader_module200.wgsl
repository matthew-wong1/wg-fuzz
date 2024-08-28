struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
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

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, 51213i);

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(19633i, 10732i, 29413i, 84628i), vec4<i32>(-45293i, i32(-2147483648), 1i, -1i), vec4<i32>(0i, 1i, -30950i, 32430i), vec4<i32>(-56043i, -21145i, -1i, 31368i), vec4<i32>(i32(-2147483648), -49578i, -24651i, 2147483647i), vec4<i32>(1i, 1i, -1i, 36412i), vec4<i32>(-1i, i32(-2147483648), -303i, -28094i), vec4<i32>(-40609i, -11878i, 62583i, -13877i), vec4<i32>(-54173i, 11590i, -1i, 1i), vec4<i32>(-35746i, -51030i, 8355i, -7385i), vec4<i32>(0i, -28282i, 32266i, -44427i), vec4<i32>(0i, 11662i, 1i, 44590i), vec4<i32>(1i, 10875i, i32(-2147483648), -21818i), vec4<i32>(-7779i, -1i, 2147483647i, -1i), vec4<i32>(3052i, -8331i, 59994i, 1i), vec4<i32>(2147483647i, 2147483647i, -21307i, 0i), vec4<i32>(-35664i, 2147483647i, 3793i, 71761i), vec4<i32>(51088i, 5686i, -1i, 35819i), vec4<i32>(0i, -52613i, -23572i, -36267i), vec4<i32>(i32(-2147483648), -36909i, -40688i, -56574i), vec4<i32>(i32(-2147483648), 18465i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 49091i, 59042i, 1i), vec4<i32>(-1i, 0i, 1939i, 18274i), vec4<i32>(-6798i, -19957i, 8392i, 57835i), vec4<i32>(-2388i, i32(-2147483648), -45873i, 0i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: f32) -> bool {
    global0 = ~(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global0.x, -9927i), vec3<i32>(-2147483647i, 0i, global0.x)), vec3<i32>(-39618i, global0.x, global0.x)), min(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 24496i, global0.x), vec3<i32>(-8078i, -1i, global0.x)), vec3<i32>(arg_0, 2147483647i, -2147483647i) | vec3<i32>(-2147483647i, -54032i, global0.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(global0.x, 8519i, 10287i) | vec3<i32>(global0.x, global0.x, arg_0))) << (vec3<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, u_input.b), u_input.b), 17530u) % vec3<u32>(32u)));
    global0 = vec3<i32>(1i, -reverseBits(global0.x & 17610i), _wgslsmith_div_i32(-abs(-2147483647i), -2147483647i));
    global0 = (~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, global0.x, global0.x), vec3<i32>(81562i, arg_0, arg_0))) & vec3<i32>(~global0.x, i32(-1i) * -1i, global0.x)) ^ reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(15020i, arg_0, arg_0), vec3<i32>(-52350i, arg_0, arg_0)), countOneBits(vec3<i32>(arg_0, 0i, global0.x))) ^ (vec3<i32>(arg_0, global0.x, 0i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -1i, 2147483647i), vec3<i32>(-3880i, arg_0, arg_0), vec3<i32>(1i, arg_0, arg_0))));
    global0 = vec3<i32>(min(global0.x, -37139i), 26975i, _wgslsmith_dot_vec2_i32(global0.xx, global0.yy));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, arg_2) - vec2<f32>(-1000f, -359f)), vec4<f32>(arg_1.x, 163f, 1361f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) - _wgslsmith_f_op_f32(arg_1.x - 1021f)), _wgslsmith_sub_i32(-1i, arg_0) != global0.x))));
    return true != !(!all(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = !(!(!vec4<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), true != arg_0.x, func_3(global0.x, vec3<f32>(-2079f, 1000f, arg_3), 163f), u_input.c != arg_1)));
    global1 = array<vec4<i32>, 25>();
    global0 = vec3<i32>(~63083i, _wgslsmith_div_i32(57045i, arg_2), 0i);
    global1 = array<vec4<i32>, 25>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), arg_3)) * 2152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + -1504f)), _wgslsmith_f_op_f32(-296f * _wgslsmith_div_f32(arg_3, -482f))), !vec4<bool>(!(!arg_0.x), var_0.x, !(arg_2 == global0.x), !any(vec2<bool>(false, true))), arg_2 >> (133051u % 32u), global0.x, vec3<bool>(true, arg_0.x, true));
    return ~_wgslsmith_dot_vec2_u32(min(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(574u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(0u, 33472u)), abs(u_input.a.yx))), min(u_input.a.zy, abs(vec2<u32>(arg_1, 61600u))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> f32 {
    var var_0 = vec4<u32>(~4294967295u | u_input.b, reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 7991u), ~4294967295u)) << (u_input.c % 32u), (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), u_input.a.zx), 1u) | _wgslsmith_mod_u32(select(1u, u_input.a.x, arg_0.x), _wgslsmith_mult_u32(100602u, 14694u))) & ~abs(abs(1u)), func_2(vec2<bool>(true, arg_0.x), 795u, 12672i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(1459f))))), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), arg_1.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - 2040f), _wgslsmith_f_op_f32(-arg_1.x), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f * 1000f) + -1755f), _wgslsmith_div_f32(-986f, arg_1.x), _wgslsmith_f_op_f32(1346f + arg_1.x))))));
    global1 = array<vec4<i32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -427f)) * _wgslsmith_f_op_f32(arg_1.x - var_1.x))) + 361f);
    global1 = array<vec4<i32>, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + _wgslsmith_f_op_f32(-arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(435f, 1493f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), vec2<f32>(-125f, 742f))))), _wgslsmith_f_op_f32(f32(-1f) * -1396f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec2<f32>(432f, 642f))), _wgslsmith_div_f32(359f, 235f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(304f * 342f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f - 1072f) - 1f), 1167f, _wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(-449f, 333f), vec2<f32>(-349f, -915f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-251f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f * -1915f)), _wgslsmith_div_f32(-125f, _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<vec4<i32>, 25>();
    var var_1 = !(!(true & ((var_0.a.x > var_0.a.x) & true)));
    var_1 = var_0.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -2111f);
    var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zz + vec2<f32>(124f, _wgslsmith_f_op_f32(var_0.b.x - -1667f)))) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), true), _wgslsmith_f_op_vec2_f32(-var_0.a))) - var_0.b.x)));
    var var_3 = min(reverseBits(~countOneBits(min(u_input.b, u_input.b))), _wgslsmith_div_u32(u_input.a.x, func_2(select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec4<bool>(true, true, true, false))), 0u, abs(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-979f))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_2.x)))), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~4294967295u, max(~33392u, ~90712u)), var_0.b.xz);
}

