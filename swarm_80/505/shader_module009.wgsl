struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    return Struct_2(!arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(118f - 195f) + -1000f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1239f + 1120f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(415f - 1561f))))) != _wgslsmith_f_op_f32(f32(-1f) * -609f);
    let var_1 = firstLeadingBit(vec3<u32>(~(~1u), ~(~u_input.c), 43043u));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(1i), u_input.a, 29278i), vec3<i32>(_wgslsmith_sub_i32(global0.x, -2147483647i), ~u_input.a, global0.x) >> (vec3<u32>(select(u_input.b, var_1.x, var_0), u_input.c >> (var_1.x % 32u), max(4294967295u, var_1.x)) % vec3<u32>(32u))), -726f, _wgslsmith_mult_vec4_i32(~(~vec4<i32>(18862i, u_input.d.x, 2147483647i, global0.x)), ~countOneBits(-vec4<i32>(1i, u_input.d.x, 27239i, -24579i))), vec4<u32>(_wgslsmith_mult_u32(var_1.x, _wgslsmith_div_u32(~var_1.x, ~u_input.b)), var_1.x, var_1.x, 54431u));
    global0 = vec3<i32>(-8384i, i32(-1i) * -u_input.e, 9057i);
    let var_3 = Struct_3(vec2<bool>(true | select(true, arg_0.a.x, false), !any(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))));
    return var_2;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = func_3(Struct_2(arg_0.yy), func_2(Struct_3(arg_0.zz), true));
    global0 = reverseBits(func_3(Struct_2(select(func_2(Struct_3(vec2<bool>(arg_0.x, arg_0.x)), true).a, func_2(Struct_3(vec2<bool>(arg_0.x, false)), arg_0.x).a, false)), func_2(Struct_3(!arg_0.xy), arg_0.x)).c.xwx);
    var var_1 = func_3(Struct_2(vec2<bool>((918f < var_0.b) || arg_0.x, select(true, all(arg_0), arg_0.x))), func_2(Struct_3(arg_0.zy), 0u >= var_0.d.x)).d.x;
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, 0u, _wgslsmith_sub_u32(var_0.d.x, (969u << (var_0.d.x % 32u)) & 25788u), countOneBits(_wgslsmith_clamp_u32(u_input.c, 1u, 11539u))), var_0.d);
    var_2 = vec4<u32>(14042u, 4294967295u, _wgslsmith_clamp_u32(u_input.c, 10992u, 2445u | var_0.d.x) >> (54065u % 32u), var_2.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(firstLeadingBit(global0.x), _wgslsmith_add_i32(i32(-1i) * -46965i, -24538i), ~abs(~(-23188i))) & vec3<i32>(reverseBits(23430i), 1i, -31831i);
    global0 = vec3<i32>(-global0.x, global0.x, global0.x);
    let var_0 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(select(517f, -849f, true)) != _wgslsmith_f_op_f32(-178f - 868f), func_1(vec3<bool>(true, true, true)) || true, u_input.a > 2147483647i), vec4<bool>(true, func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), true, select(true, true, true)), false);
    var var_1 = Struct_1(func_3(func_2(Struct_3(var_0.xy), var_0.x), Struct_2(select(var_0.zx, !var_0.xy, func_2(Struct_3(vec2<bool>(var_0.x, var_0.x)), true).a))).a, _wgslsmith_f_op_f32(-1f), -(firstLeadingBit(~vec4<i32>(u_input.e, -13255i, global0.x, global0.x)) ^ -max(vec4<i32>(u_input.e, 0i, u_input.a, 36077i), vec4<i32>(26938i, -1i, 1i, u_input.d.x))), reverseBits(abs(~(~vec4<u32>(u_input.b, u_input.c, 0u, 11907u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.b, 3208f, false))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-230f, var_1.b)))))));
    let var_3 = var_1.a ^ -(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_vec3_i32(select(var_1.c.zwy, vec3<i32>(2147483647i, -2147483647i, var_3), var_0.x), var_1.c.zwz), abs(~vec3<i32>(-1722i, 18883i, u_input.e)), select(var_0.zyz, !vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, false))), var_1.c, var_1.d.xw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(508f, var_2.x, var_2.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2070f, -143f, var_2.x) + vec3<f32>(-1000f, var_1.b, var_1.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 278f, var_1.b))), vec3<f32>(var_2.x, func_3(Struct_2(var_0.xy), Struct_2(vec2<bool>(var_0.x, false))).b, var_1.b)), true)), 2147483647i);
}

