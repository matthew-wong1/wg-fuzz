struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
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

var<private> global0: i32 = -27171i;

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = -(-(~vec2<i32>(u_input.d.x, 25442i)) | abs(vec2<i32>(min(u_input.a, u_input.a), u_input.a)));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(~(vec4<i32>(u_input.c.x, var_0.x, -1i, 20383i) >> (vec4<u32>(1u, 29324u, arg_0.a.x, 4187u) % vec4<u32>(32u)))), vec4<i32>(var_0.x, 55472i, ~(~58304i), 2147483647i)), firstTrailingBit(abs(countOneBits(vec4<i32>(u_input.a, u_input.a, var_0.x, 27810i)))) | (firstLeadingBit(select(vec4<i32>(1i, u_input.a, u_input.a, var_0.x), vec4<i32>(var_0.x, 15613i, var_0.x, -1i), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))) << ((firstLeadingBit(vec4<u32>(global1.a, 1u, 4294967295u, arg_2.a)) >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))));
    global1 = arg_2;
    global0 = 71458i;
    let var_2 = _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.b), select(vec4<u32>(31749u, 31129u, u_input.b.x, 11256u), vec4<u32>(19602u, arg_0.a.x, arg_2.a, 15690u), arg_1.x)), _wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(abs(u_input.b), ~vec4<u32>(38024u, 5255u, 4294967295u, 9706u)))) | ~u_input.b;
    return select(arg_1.yx, select(!select(arg_1.yx, vec2<bool>(arg_1.x, false), 4294967295u != arg_2.a), select(vec2<bool>(arg_1.x & arg_1.x, true), select(arg_1.yy, arg_1.xy, arg_1.x), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), vec2<bool>(all(vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x)), false & (arg_1.x || any(vec4<bool>(false, false, arg_1.x, false))));
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    var var_0 = select(vec3<bool>(true, true, !any(vec2<bool>(true, false)) || all(func_3(Struct_5(vec2<u32>(u_input.b.x, global1.a), global1.b), vec3<bool>(true, true, true), Struct_4(1u, 1486f), vec3<f32>(global1.b, 1564f, global1.b)))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), false), false), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_f32(step(776f, -357f)) < arg_0.b), vec3<bool>(true, func_3(Struct_5(u_input.b.zw, arg_0.b), vec3<bool>(true, true, true), Struct_4(4294967295u, global1.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b, -1142f, global1.b)))).x, true), select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_1 = 2147483647i ^ ~u_input.a;
    global0 = i32(-1i) * -30705i;
    let var_2 = any(var_0.yy);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(309f + 262f), 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, global1.b, -904f), vec3<f32>(global1.b, global1.b, arg_0.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -711f, 1000f) * vec3<f32>(arg_0.b, -776f, arg_0.b)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))), -1218f, -503f)));
    return Struct_4(~1u, -1794f);
}

fn func_1() -> i32 {
    global1 = func_2(Struct_5(u_input.b.zz, _wgslsmith_f_op_f32(-1f)));
    global0 = -52i;
    global0 = 27544i | u_input.c.x;
    global1 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.b, abs(u_input.b) | countOneBits(u_input.b)), u_input.b), _wgslsmith_div_f32(func_2(Struct_5(u_input.b.yw, _wgslsmith_f_op_f32(global1.b + 255f))).b, 241f));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, _wgslsmith_f_op_f32(f32(-1f) * -1113f)))));
    return abs(1i) << (~(~global1.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(0u, _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-199f))))));
    let var_0 = !(!(reverseBits(u_input.a | u_input.c.x) <= ~(-u_input.d.x)));
    let var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a << (83838u % 32u), _wgslsmith_div_i32(u_input.c.x, u_input.a), 9817i, 1i | u_input.a), ~vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.c.x)) >> (u_input.b.x % 32u);
    var var_2 = Struct_2(-1i);
    var_2 = Struct_2(-2147483647i);
    var_2 = Struct_2(func_1());
    var var_3 = u_input.b.zy;
    let var_4 = select(vec2<i32>(var_2.a, var_2.a), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.d, -reverseBits(u_input.d)), -u_input.d), var_0);
    var_3 = u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(1673f);
}

