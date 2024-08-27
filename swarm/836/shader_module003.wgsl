struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), -1298f, -247f);

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 70173i, -26840i);

var<private> global2: array<vec2<i32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1140f);
    let var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_f_op_f32(max(-183f, 851f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0, -1134f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1449f, 1000f)))) - vec3<f32>(-1000f, var_0, var_1.c)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(192f, -1767f, -640f) + vec3<f32>(377f, 1604f, var_1.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(657f, global0.b, 819f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1565f * 1000f))), global0.c, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(global0.c + var_0)))));
    var var_3 = var_1;
    let var_4 = select(select(vec2<bool>(any(vec2<bool>(true, false)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)), true);
    return var_1.a;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(abs(global1.x), global0.b, 1264f);
    var_0 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1324f, var_0.c) - _wgslsmith_div_f32(-322f, global0.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(1000f + var_0.c))))));
    var var_1 = ~select(func_3() & (i32(-1i) * -global1.x), 17137i, true);
    var_1 = 0i;
    global1 = -countOneBits(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, global1.x, var_0.a), vec3<i32>(-8354i, global0.a, global0.a))), -_wgslsmith_div_vec3_i32(vec3<i32>(-11761i, 51310i, global0.a), vec3<i32>(1i, global1.x, global0.a))));
    return _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~u_input.a, 15000u >> (u_input.a % 32u), 32646u >> (u_input.a % 32u)), _wgslsmith_sub_u32(u_input.a | 0u, u_input.a) | ~u_input.a) | 4294967295u;
}

fn func_1(arg_0: f32) -> i32 {
    global2 = array<vec2<i32>, 2>();
    return ~min((~global0.a | global1.x) >> (func_2() % 32u), ~1i);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -168f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -786f)))))) + vec2<f32>(_wgslsmith_div_f32(1f, global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = vec2<bool>(true, true);
    let var_2 = !(!select(vec4<bool>(arg_0.a <= -2147483647i, true, false, all(vec3<bool>(true, var_1.x, true))), select(!vec4<bool>(true, false, var_1.x, false), vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, true)), true));
    let var_3 = -2147483647i;
    let var_4 = ~reverseBits(~(~(~vec4<u32>(u_input.a, u_input.a, 0u, 24115u))));
    return Struct_1(-25184i, 381f, 462f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a, -51028i, global0.a) | vec4<i32>(global0.a, global0.a, global1.x, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -11900i, global0.a, -34042i), vec4<i32>(global1.x, 1i, global1.x, global1.x))))), 377f, _wgslsmith_f_op_f32(step(782f, global0.c)));
    var var_1 = func_4(Struct_1(func_1(global0.b), global0.b, var_0.b), (-(~var_0.a) << (8992u % 32u)) << (u_input.a % 32u), Struct_1(-2147483647i, -119f, _wgslsmith_f_op_f32(max(-1024f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -951f)))))));
    global2 = array<vec2<i32>, 2>();
    var var_2 = Struct_1(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2086f, global0.b, true))))) - var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2287f, _wgslsmith_f_op_f32(f32(-1f) * -1382f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) * 384f) * _wgslsmith_f_op_f32(1132f + _wgslsmith_f_op_f32(min(878f, global0.c)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c * var_2.c))), 1542f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(func_4(func_4(Struct_1(-2147483647i, 1021f, global0.c), var_2.a, Struct_1(-42120i, var_0.b, -1490f)), -1i, Struct_1(1i, -482f, -186f)).a, 66295i), ~(i32(-1i) * -56i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.yx, ~global1.xy), _wgslsmith_dot_vec2_i32(vec2<i32>(-55919i, -2147483647i), global1.xz))), _wgslsmith_add_vec3_u32(vec3<u32>(~43694u, u_input.a, u_input.a), vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 36757u), 52959u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 15866u, 0u, 38150u), vec4<u32>(u_input.a, u_input.a, 4746u, u_input.a)))));
}

