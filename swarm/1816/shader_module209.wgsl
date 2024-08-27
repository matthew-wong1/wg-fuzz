struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-446f, _wgslsmith_f_op_f32(-3103f + 852f)))))), global1[_wgslsmith_index_u32(firstTrailingBit(~(arg_0.x << (73074u % 32u))) << (_wgslsmith_mod_u32(0u, arg_2 & ~arg_0.x) % 32u), 9u)], vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = !(!vec4<bool>(-385f < _wgslsmith_f_op_f32(-var_0.c.x), false, global0.x, global0.x));
    var var_2 = Struct_1(arg_1.x, -623f);
    var var_3 = any(var_1.yz);
    var var_4 = Struct_5(Struct_1(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_2.a, -2147483647i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, arg_2), arg_0) % 32u)), var_2.b), Struct_3(var_0.a, Struct_2(arg_3.a), var_0.c), false, var_1);
    return var_4.a.b;
}

fn func_3() -> f32 {
    global0 = vec4<bool>(true, true, true, true);
    let var_0 = vec2<f32>(1786f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, _wgslsmith_f_op_f32(f32(-1f) * -114f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(868f)), -660f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1701f, 1338f)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(var_0)), Struct_2(select(firstLeadingBit(vec3<i32>(1i, -52993i, -55398i) & vec3<i32>(-4817i, u_input.d, u_input.d)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, u_input.d), vec3<i32>(2147483647i, 49394i, 0i)), all(vec4<bool>(global0.x, global0.x, false, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -688f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, var_0.x, 1000f, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(546f, var_0.x, 115f, var_0.x) + vec4<f32>(-1752f, -783f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1515f, -609f) - vec4<f32>(-1113f, -1009f, 1464f, -1559f))))))));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c, var_1.b.a, 50440u, Struct_2(var_1.b.a))) + _wgslsmith_f_op_f32(f32(-1f) * -1565f))))), Struct_2(~max(select(var_1.b.a, vec3<i32>(u_input.b.x, var_1.b.a.x, 15761i), true), vec3<i32>(var_1.b.a.x, var_1.b.a.x, u_input.d))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1575f, _wgslsmith_f_op_f32(f32(-1f) * -191f), -1460f, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1253f, var_1.a.x, var_1.c.x, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, var_0.x, var_1.a.x) - _wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(var_1.c.x, var_0.x, var_0.x, var_1.c.x))))))));
    let var_2 = u_input.c.yzx >> (~vec3<u32>(u_input.e.x, 4104u, 0u) % vec3<u32>(32u));
    return var_1.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_5(Struct_1(arg_2.x, _wgslsmith_f_op_f32(func_2(~u_input.c, countOneBits(arg_0) | ~arg_0, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 9u)]))), Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-648f, 1780f) + vec2<f32>(-416f, -1319f))))), global1[_wgslsmith_index_u32(~select(u_input.c.x ^ 4294967295u, 0u, true), 9u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, -220f, -737f, 280f) + vec4<f32>(230f, -925f, -1709f, 943f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 582f, 443f, 2541f))), vec4<bool>(false, arg_1, arg_1, true))) + vec4<f32>(-108f, _wgslsmith_f_op_f32(func_3()), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -740f)))), true, !vec4<bool>(true, global0.x, !(!global0.x), !global0.x));
    global0 = var_0.d;
    let var_1 = var_0.b;
    global1 = array<Struct_2, 9>();
    var var_2 = Struct_1(arg_0.x, var_0.b.c.x);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~30978i, _wgslsmith_div_i32(2147483647i, u_input.d), func_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.d, -15993i, 2147483647i)), vec3<i32>(u_input.d, u_input.b.x, -1i))), !(global0.x & true), _wgslsmith_sub_vec2_i32(u_input.b, max(max(vec2<i32>(1i, u_input.d), u_input.b), u_input.b)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.a, 1u) | u_input.c.yw), vec2<u32>(_wgslsmith_mod_u32(26764u, 47234u), 1u))), _wgslsmith_add_i32(firstLeadingBit(1i), i32(-1i) * -(~7525i)));
    var var_1 = abs(~(~firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.c.wwz, u_input.c.yyw))));
    var var_2 = _wgslsmith_dot_vec3_i32(min(~var_0.yzz, _wgslsmith_clamp_vec3_i32(var_0.yww, -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.d, 13766i), var_0.zww), select(-vec3<i32>(0i, -1i, u_input.b.x), vec3<i32>(34817i, var_0.x, -4018i), !global0.xyz))), var_0.zxx);
    global0 = select(vec4<bool>(select(true, true, u_input.c.x > 0u), global0.x, true, global0.x), select(select(vec4<bool>(true, true, true, !global0.x), vec4<bool>(true, global0.x, all(vec3<bool>(global0.x, global0.x, false)), all(vec3<bool>(global0.x, true, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, false, global0.x, global0.x)), vec4<bool>(global0.x, false, global0.x, false), false)), vec4<bool>(all(vec3<bool>(true, global0.x, true)), global0.x, true, any(select(global0.wzx, global0.yyw, vec3<bool>(true, false, false)))), true), select(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(true, select(false, global0.x, global0.x), true, !global0.x), select(false, global0.x, global0.x)), vec4<bool>(global0.x, any(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, false), global0.x)), !global0.x, !any(vec3<bool>(true, false, global0.x))), global0.x));
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(21377u, 9u)], u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-188f, -379f), -433f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1196f, 1040f, 604f, var_3.c))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 960f, var_3.c, -2023f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1573f, var_3.c, var_3.c, 2073f) + vec4<f32>(var_3.c, 1278f, 1105f, 1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, 1000f, var_3.c, var_3.c)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, 597f, var_3.c, -405f)), vec4<f32>(271f, -183f, var_3.c, -1178f)))));
}

