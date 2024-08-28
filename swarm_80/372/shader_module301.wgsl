struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<f32, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    global1 = array<f32, 7>();
    let var_1 = !select(var_0.b.c.yz, !(!vec2<bool>(var_0.b.c.x, var_0.b.c.x)), var_0.a.c.xz);
    var var_2 = var_0.b.c.zx;
    var_2 = !(!(!var_1));
    return select(!(!var_0.b.c), !(!select(vec3<bool>(true, true, var_0.b.c.x), vec3<bool>(var_0.a.c.x, var_2.x, true), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, true, false), false))), vec3<bool>(true, var_1.x | any(var_0.a.c.zy), any(!vec4<bool>(var_2.x, false, var_1.x, false)) || all(!var_0.a.c.yy)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~max(-8703i, 16711i)), vec2<i32>(firstTrailingBit(1i), 34430i)), u_input.b.x, func_3(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -43843i, 2147483647i) << (vec4<u32>(0u, u_input.b.x, u_input.c.x, 24198u) % vec4<u32>(32u)), vec4<i32>(-11159i, -1i, 72956i, 12577i)))));
    global1 = array<f32, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1232f, global1[_wgslsmith_index_u32(34958u, 7u)], -401f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(var_0.b, 7u)], global1[_wgslsmith_index_u32(var_0.b, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))), var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2150f, global1[_wgslsmith_index_u32(51466u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(34592u, 7u)], -1000f, 870f)))))));
    global1 = array<f32, 7>();
    var var_2 = 30215u ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.b, max(1u, _wgslsmith_div_u32(93521u, 4294967295u))), ~(~_wgslsmith_add_u32(3658u, 27584u)));
    return Struct_3(Struct_1(-3657i, u_input.a.x, select(!vec3<bool>(var_0.c.x, false, true), vec3<bool>(var_0.c.x | true, any(vec3<bool>(var_0.c.x, true, true)), all(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x))), !var_0.c.x)), global0[_wgslsmith_index_u32(u_input.c.x, 5u)]);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = !arg_1.x;
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.a.b, min(0u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))), 7u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - -2037f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(450f, 1229f)), _wgslsmith_f_op_f32(-arg_2.x))))));
    let var_4 = vec3<bool>(~(~19873i | arg_3.b.a) != select(~(-15120i) ^ var_0.a.a, ~(~arg_3.a.a), all(select(vec3<bool>(false, true, arg_3.a.c.x), vec3<bool>(arg_3.b.c.x, arg_0.x, arg_0.x), arg_0.x))), var_0.b.a.c.x, all(vec2<bool>(true, true)));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_0.b.b;
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(~arg_0.b.a.b << (1u % 32u), ~abs(u_input.b.x), ~arg_1.a.b.b.b, ~u_input.c.x)), u_input.b);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(20975u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25462u, 7u)]), 439f);
    var var_3 = _wgslsmith_mod_u32(countOneBits(~(~min(arg_1.b.x, arg_0.a.b))), 1u);
    let var_4 = -1i;
    return global1[_wgslsmith_index_u32(~82682u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 7u)]) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(-14737i, u_input.b.x, vec3<bool>(false, false, false)), Struct_2(Struct_1(-2147483647i, u_input.c.x, vec3<bool>(true, true, false)), Struct_1(0i, u_input.c.x, vec3<bool>(true, false, true)))), Struct_5(func_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<f32>(-316f, 264f, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), u_input.a.zx, _wgslsmith_mod_i32(-1i, 2147483647i)), !(u_input.c.x <= u_input.c.x), vec3<bool>(true, true, true))))));
    let var_1 = vec4<bool>(any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 7u)] > -946f), vec2<bool>(true, true), vec2<bool>(func_2().b.a.c.x, true))), !(-739f == _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 7u)], 755f))) != false, all(func_1(func_3(abs(vec2<i32>(-13992i, -2147483647i))), vec3<bool>(false, true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1194f, -1193f, var_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], var_0) + vec3<f32>(var_0, -673f, var_0))), func_2().b).b.a.c), !(_wgslsmith_f_op_f32(select(512f, _wgslsmith_f_op_f32(f32(-1f) * -1343f), true)) <= 661f));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, -220f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)), select(var_1.zw, var_1.xw, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2122f, global1[_wgslsmith_index_u32(28669u, 7u)]))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(20808u, 7u)], 888f)), _wgslsmith_f_op_f32(round(745f)))) * vec2<f32>(1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    var var_3 = select(vec4<bool>(true, var_1.x, false, var_1.x), !var_1, (any(vec4<bool>(var_1.x, false, var_1.x, false)) || (func_3(vec2<i32>(-2147483647i, 2766i)).x & func_2().a.c.x)) | true);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, global1[_wgslsmith_index_u32(4426u, 7u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(ceil(661f)), any(vec2<bool>(true, var_1.x))))), global1[_wgslsmith_index_u32(~1u, 7u)], 127f), ~52617u);
}

