struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
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

var<private> global0: Struct_4;

var<private> global1: array<f32, 13> = array<f32, 13>(1000f, -716f, -472f, 1276f, 175f, 385f, -2112f, -876f, -796f, -123f, -1690f, 811f, 633f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> u32 {
    global0 = Struct_4(global0.a, abs(~vec3<u32>(global0.d & 0u, 20690u, abs(global0.c))), 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.b, select(_wgslsmith_add_vec3_u32(global0.b, global0.b), ~vec3<u32>(1u, 12903u, u_input.c.x), true)), abs(~_wgslsmith_div_u32(global0.d, 25115u))));
    let var_0 = arg_2;
    let var_1 = Struct_4(global0.a, min(_wgslsmith_mod_vec3_u32(~global0.b >> ((global0.b & vec3<u32>(0u, global0.a.a, u_input.a)) % vec3<u32>(32u)), min(vec3<u32>(12791u, global0.c, u_input.c.x) ^ vec3<u32>(34851u, global0.d, global0.b.x), global0.b)), abs(min(vec3<u32>(4294967295u, global0.a.a, 4294967295u), _wgslsmith_clamp_vec3_u32(global0.b, global0.b, global0.b)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.a, global0.a.a) << (vec2<u32>(global0.a.a, 1u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), ~global0.b.yx)), firstTrailingBit(countOneBits(~vec2<u32>(4294967295u, global0.a.a)))), 43992u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d.x, 13u)])), -824f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(192f, global1[_wgslsmith_index_u32(1u, 13u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1375f, -694f) + vec2<f32>(916f, global1[_wgslsmith_index_u32(var_1.a.a, 13u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, 686f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(6181u, 13u)], -640f), vec2<f32>(596f, -1430f))), all(var_0.a))), vec2<bool>(true, true)))) * vec2<f32>(-1664f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~global0.c), 13u)] * global1[_wgslsmith_index_u32(min(~var_1.a.a, u_input.d.x), 13u)])));
    var var_3 = var_1.b.x;
    return u_input.a | ~(global0.c >> (max(firstLeadingBit(4294967295u), global0.a.a) % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    global0 = Struct_4(global0.a, global0.b, 4294967295u, select(~global0.c, u_input.a, false));
    global0 = Struct_4(Struct_3(46153u), vec3<u32>(1u, _wgslsmith_mod_u32(~(~0u), u_input.c.x ^ ~u_input.c.x), u_input.a), min(~(~func_3(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a.x, Struct_2(arg_1.a), false)), 1u), 7198u);
    return Struct_4(global0.a, vec3<u32>(4294967295u, 132394u, 27231u) >> (vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(global0.a.a, u_input.a)), 67315u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.c, global0.b.x, u_input.c.x) << (vec4<u32>(u_input.d.x, global0.c, 7161u, 8467u) % vec4<u32>(32u)), ~vec4<u32>(global0.c, global0.a.a, global0.b.x, 18935u))) % vec3<u32>(32u)), countOneBits(_wgslsmith_mod_u32(~global0.d, ~13587u)) ^ u_input.a, 1u);
}

fn func_1() -> Struct_4 {
    global0 = func_2(_wgslsmith_f_op_f32(273f * 1477f), Struct_2(vec4<bool>(true, true, true, true)));
    let var_0 = !(!(-1194f <= global1[_wgslsmith_index_u32(func_3(vec2<bool>(true, true), false, Struct_2(vec4<bool>(false, true, false, false)), false), 13u)]));
    let var_1 = -(_wgslsmith_mod_i32(reverseBits(i32(-1i) * -2147483647i), 2147483647i) | (abs(_wgslsmith_add_i32(11543i, u_input.b.x)) & u_input.b.x));
    var var_2 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-7904i, u_input.b.x, 0i, _wgslsmith_mod_i32(var_1, 1i)), -vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x))) & _wgslsmith_mult_i32(var_1, min(~(u_input.b.x ^ u_input.b.x), ~1i));
    var_2 = _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-28478i, 8954i) >> (u_input.c % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, var_1), min(1i, min(u_input.b.x, u_input.b.x))) | _wgslsmith_sub_vec2_i32(vec2<i32>(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 31111i, u_input.b.x, u_input.b.x), vec4<i32>(48139i, var_1, 0i, var_1))), -(~u_input.b)));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(0u, 13u)]))) - 1265f) - 282f), Struct_2(vec4<bool>(true, all(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), false)), var_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = func_1();
    let var_1 = vec2<u32>(~firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~26089u, u_input.c.x, max(13923u, 1u), reverseBits(global0.a.a))), vec4<u32>(0u, u_input.d.x, 1u, u_input.a)));
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), -vec2<i32>(u_input.b.x, 40063i)) << (~1u % 32u), 1i);
    let var_3 = -max(var_2.x, ~_wgslsmith_div_i32(-u_input.b.x, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (0u % 32u));
}

