struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(32965i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(false, ~select(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, 4294967295u, 1u, 20162u)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true))), _wgslsmith_clamp_vec4_u32(~countOneBits(~vec4<u32>(0u, 10891u, 20391u, 0u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.c & u_input.c, ~1u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(10018u, 15168u, u_input.c, 20450u) | vec4<u32>(10695u, u_input.c, 19675u, 74495u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), 1u, 11268u), ~(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) & ~vec4<u32>(68819u, 4294967295u, u_input.c, u_input.c))), reverseBits(-5885i), _wgslsmith_f_op_f32(-177f * -502f));
    global0 = ~((-vec2<i32>(u_input.b.x, u_input.a) | u_input.b.wy) ^ -(~u_input.b.yy)) << (var_0.c.xx % vec2<u32>(32u));
    global0 = u_input.b.xw;
    var var_1 = var_0.b.yzx ^ ~(~var_0.b.wxx);
    var var_2 = 1i;
    return u_input.b.zy;
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = Struct_1(true, reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~arg_0, _wgslsmith_add_u32(u_input.c, arg_0), arg_0 >> (44902u % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1452u, arg_0, 15621u, arg_0), vec4<u32>(4294967295u, 105014u, u_input.c, arg_0)) >> (vec4<u32>(u_input.c, arg_0, u_input.c, 23950u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c, 84469u, 0u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(11069u, arg_0), ~14395u, u_input.c >> (0u % 32u), u_input.c), ~(~vec4<u32>(0u, 0u, u_input.c, u_input.c)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1384f))))));
    var var_1 = Struct_2(false);
    global0 = _wgslsmith_mult_vec2_i32(~max(-vec2<i32>(var_0.d, var_0.d), ~func_3()), -_wgslsmith_add_vec2_i32(-(u_input.b.xz ^ u_input.b.zy), select(_wgslsmith_div_vec2_i32(u_input.b.zw, u_input.b.yz), ~u_input.b.ww, !vec2<bool>(var_0.a, var_0.a))));
    let var_2 = firstTrailingBit(i32(-1i) * -7936i);
    var var_3 = var_1.a;
    return vec2<i32>(var_2 << (_wgslsmith_add_u32(firstTrailingBit(u_input.c), _wgslsmith_sub_u32(min(var_0.c.x, 35771u), u_input.c)) % 32u), u_input.b.x);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xw, u_input.b.yy), countOneBits(u_input.b.ww)), vec2<i32>(-1i) * -u_input.b.xw, u_input.b.wx), _wgslsmith_sub_vec2_i32(-min(vec2<i32>(2147483647i, -1i), u_input.b.wx), vec2<i32>(21027i, global0.x) & func_2(4294967295u))) & u_input.b.yy;
    let var_0 = !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), select(true, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), true), vec3<bool>(true, true, all(vec2<bool>(false, true)))), select(false, false, u_input.b.x < 2147483647i) || !all(vec4<bool>(true, true, true, true)));
    let var_1 = var_0;
    let var_2 = Struct_1(var_0.x, ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.c, 0u, _wgslsmith_mult_u32(0u, 0u), ~u_input.c), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(4923u, 33642u, 36967u, 17994u))), countOneBits(~vec4<u32>(~u_input.c, min(u_input.c, 50795u), 1u, u_input.c << (1u % 32u))), -max(-5644i, _wgslsmith_dot_vec2_i32(u_input.b.wx, ~vec2<i32>(u_input.b.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-270f, _wgslsmith_f_op_f32(sign(1000f)))))));
    let var_3 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -872f;
    let var_1 = countOneBits(~u_input.c);
    var var_2 = Struct_3(1514f, var_0, vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), true, !any(vec4<bool>(true, true, false, false))));
    var var_3 = func_1();
    var_2 = Struct_3(254f, var_3.e, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -311f), _wgslsmith_f_op_f32(var_3.e - var_2.a), var_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 243f, -1572f, -1607f) - vec4<f32>(var_0, var_2.b, -634f, var_0))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_3.e, var_3.e, -745f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(237f, var_3.e, 1689f, var_3.e), vec4<f32>(var_3.e, var_3.e, 801f, var_2.a)), vec4<f32>(var_3.e, var_2.a, var_0, 122f))))), all(var_2.c))), vec3<i32>(-(i32(-1i) * -1i), _wgslsmith_add_i32(var_3.d, ~u_input.b.x) << (35826u % 32u), u_input.b.x));
}

