struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(57347u, 1u, 1u);

var<private> global2: vec2<f32> = vec2<f32>(1533f, 1376f);

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(abs(_wgslsmith_dot_vec3_i32(u_input.d, firstLeadingBit(u_input.d) >> (~vec3<u32>(u_input.a, global1.x, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-373f, global2.x, -1061f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, global2.x, global2.x))))), false, firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a.a, arg_1.a.a, 0i), vec4<i32>(49101i, -31245i, arg_0, arg_1.a.a) >> (vec4<u32>(u_input.c, u_input.b, global1.x, 47325u) % vec4<u32>(32u))), i32(-1i) * -u_input.d.x, max(_wgslsmith_mod_i32(arg_0, 1935i), arg_1.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -154f));
    var var_1 = arg_1.a;
    let var_2 = -547f;
    global2 = var_0.b.yx;
    var_1 = arg_1.a;
    return _wgslsmith_sub_u32(global1.x, select(~4294967295u, global1.x, false));
}

fn func_3() -> bool {
    var var_0 = Struct_1(2147483647i, global2.x);
    global2 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(global2.x - var_0.b));
    var var_1 = 1019f;
    let var_2 = u_input.b;
    var var_3 = Struct_4(u_input.b, Struct_2(Struct_1(-firstLeadingBit(var_0.a), _wgslsmith_f_op_f32(sign(var_0.b)))), ~(~min(~vec3<u32>(0u, u_input.c, 1u), ~vec3<u32>(0u, global1.x, global1.x))));
    return !any(vec3<bool>(_wgslsmith_div_f32(var_3.b.a.b, var_3.b.a.b) == 441f, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), !all(vec4<bool>(true, true, false, true))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2;
    global0 = !((_wgslsmith_sub_u32(4294967295u, 41882u) > ~func_2(u_input.d.x, arg_2.b)) | !(_wgslsmith_mult_u32(36277u, u_input.a) != arg_2.a));
    let var_1 = select(vec2<bool>(global2.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1562f))), any(vec3<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true)), true))), !select(vec2<bool>(true, arg_2.b.a.b > arg_2.b.a.b), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(func_3(), true), all(vec2<bool>(true, false))));
    global2 = vec2<f32>(var_0.b.a.b, 787f);
    var var_2 = Struct_4(max(~(~abs(18523u)), min(0u, countOneBits(arg_2.a))), var_0.b, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.c.x, global1.x, 29584u), vec3<u32>(func_2(2147483647i, arg_2.b), countOneBits(4294967295u), arg_2.a)), vec3<u32>(u_input.c, countOneBits(67128u) >> (~arg_2.c.x % 32u), ~(~4294967295u))));
    return (~arg_2.c.x << ((abs(_wgslsmith_mult_u32(1u, u_input.b)) & u_input.a) % 32u)) ^ (47222u << (_wgslsmith_mod_u32(max(var_0.c.x, 20962u), arg_2.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(_wgslsmith_mod_u32(global1.x, u_input.c), _wgslsmith_sub_u32(firstLeadingBit(4294967295u), max(_wgslsmith_mod_u32(min(global1.x, u_input.b), u_input.b), 67254u)), 53896u);
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(~0i, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(914f * global2.x), global2.x))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(var_0.a);
    global1 = ~vec3<u32>(~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b), 1u, u_input.b, countOneBits(19463u)), select(select(vec4<u32>(4294967295u, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.c, 1u, 1u, 60926u), true), vec4<u32>(1u, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true))), ~(~func_1(vec3<i32>(-38212i, var_0.a.a, -1i), u_input.d, Struct_4(29125u, Struct_2(var_0.a), vec3<u32>(4294967295u, 4294967295u, global1.x)))));
    let var_1 = true;
    var var_2 = ~(~(~reverseBits(vec4<u32>(1u, u_input.b, global1.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b, -1002f, 638f, global2.x), vec4<f32>(1419f, var_0.a.b, var_0.a.b, -490f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, var_0.a.b, 171f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-118f, global2.x, 109f, global2.x), vec4<f32>(global2.x, 269f, var_0.a.b, 1312f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 644f, 172f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -2133f, -441f, var_0.a.b) - vec4<f32>(global2.x, 548f, var_0.a.b, global2.x)), true)), !func_3()))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f - var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f + var_0.a.b) * var_0.a.b), global2.x, var_0.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 1383f, _wgslsmith_f_op_f32(1421f - global2.x), global2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 848f, -663f, 342f)))))));
}

