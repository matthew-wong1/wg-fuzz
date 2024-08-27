struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4620u, 1u);

var<private> global1: array<i32, 6> = array<i32, 6>(-28114i, 0i, 56474i, -18594i, -30647i, 1i);

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global3: f32 = 146f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -290f)) + arg_1.x));
    global0 = ~countOneBits(countOneBits(max(vec2<u32>(arg_0, 0u), vec2<u32>(4294967295u, 92446u)) & ~vec2<u32>(1u, arg_0)));
    let var_1 = Struct_4(Struct_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(12761i, 16895i, 1i) >> (vec3<u32>(arg_2, 42867u, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.d.x, u_input.e, u_input.d.x) << (vec3<u32>(arg_0, 4294967295u, 1u) % vec3<u32>(32u))), !vec2<bool>(u_input.d.x < u_input.e, true), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x) != arg_1.x), vec2<bool>(~global1[_wgslsmith_index_u32(global0.x, 6u)] < global1[_wgslsmith_index_u32(~arg_0, 6u)], !all(vec2<bool>(true, true)))));
    var var_2 = var_1.a;
    global2 = array<vec4<bool>, 2>();
    return any(var_1.a.d.yx) != false;
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<bool>(all(vec2<bool>(func_3(35291u, vec2<f32>(-1083f, 236f), u_input.b), true)) | true, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(273f, 110f, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(284f, 708f))))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-531f)) * _wgslsmith_f_op_f32(sign(964f))))));
    let var_1 = Struct_2(-((i32(-1i) * -19451i) | u_input.e), vec2<bool>(var_0.x, false), Struct_1(var_0, func_3(4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(-759f, -1192f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, 179f))), global0.x)), vec3<bool>(var_0.x, var_0.x, select(true, var_0.x, true)), vec2<bool>(all(vec4<bool>(true, !var_0.x, global0.x != global0.x, true)), !all(select(global2[_wgslsmith_index_u32(26588u, 2u)], vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, false)))));
    let var_2 = !select(vec4<bool>(var_0.x, var_0.x, true, var_1.b.x), select(!(!global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(true, true & var_1.b.x, !var_0.x, var_0.x), select(!vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_1.d.x, false, true), select(vec4<bool>(false, var_0.x, var_0.x, true), global2[_wgslsmith_index_u32(1u, 2u)], vec4<bool>(true, var_1.c.a.x, true, false)))), var_0.x);
    global2 = array<vec4<bool>, 2>();
    var var_3 = Struct_3(vec4<bool>(all(vec4<bool>(true, true, all(vec3<bool>(var_2.x, var_1.c.a.x, var_1.e.x)), false)), var_1.e.x, var_1.c.a.x, select(var_0.x, !(var_1.e.x & true), true)), var_1, var_1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-823f, 932f)))))), Struct_2(~u_input.d.x, !vec2<bool>(var_0.x & false, true), Struct_1(var_2.zwz, true), !vec3<bool>(all(vec3<bool>(true, var_1.d.x, false)), true, u_input.b < 1u), vec2<bool>(any(global2[_wgslsmith_index_u32(reverseBits(32455u), 2u)]), true && var_2.x)));
    return var_3.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<i32, 6>();
    var var_0 = ~global1[_wgslsmith_index_u32(1u, 6u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, abs(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(47051u, global0.x, u_input.c), vec3<u32>(7701u, 0u, u_input.c))), vec3<u32>(min(global0.x, u_input.c), 1u, ~84u), true), vec3<u32>(global0.x, u_input.b, 4294967295u)));
    var var_1 = Struct_1(vec3<bool>(true, var_0.c.a.x, !(!func_2().b.x)), var_0.e.x);
    var var_2 = max(select(select(vec2<u32>(71639u, _wgslsmith_mult_u32(global0.x, global0.x)), min(~vec2<u32>(u_input.b, global0.x), ~vec2<u32>(51840u, global0.x)), vec2<bool>(true, var_0.a > 2147483647i)), vec2<u32>(global0.x, max(firstLeadingBit(3859u), 1u)), var_1.a.x), ~abs(vec2<u32>(global0.x, u_input.b)) << (abs(vec2<u32>(_wgslsmith_mod_u32(50294u, 70483u), 115218u)) % vec2<u32>(32u)));
    global0 = _wgslsmith_add_vec2_u32(~firstLeadingBit(~vec2<u32>(u_input.c, 4843u)), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~19020u), ~global0.x), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(2441u, var_2.x), u_input.c | global0.x), _wgslsmith_mod_u32(~u_input.b, _wgslsmith_sub_u32(11174u, var_2.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1104f, 572f, -1338f, 542f), vec4<f32>(621f, 484f, 850f, -609f), var_0.b.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(874f, 532f, 1948f, 540f)))) * vec4<f32>(_wgslsmith_f_op_f32(463f - 1518f), _wgslsmith_f_op_f32(abs(-1204f)), _wgslsmith_div_f32(431f, 1363f), _wgslsmith_f_op_f32(379f * 2107f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(812f - 111f), -508f, _wgslsmith_f_op_f32(f32(-1f) * -1545f), _wgslsmith_f_op_f32(301f - 1270f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_3.zwx, _wgslsmith_f_op_vec3_f32(-var_3.zxw)));
}

