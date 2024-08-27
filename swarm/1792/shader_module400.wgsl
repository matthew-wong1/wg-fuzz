struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-56040i, -1i), vec2<i32>(-19250i, 2147483647i), vec2<i32>(-10899i, 20691i), vec2<i32>(0i, -39091i), vec2<i32>(60525i, i32(-2147483648)), vec2<i32>(34542i, -34675i), vec2<i32>(0i, -1i), vec2<i32>(1i, 30213i), vec2<i32>(-35520i, -10224i), vec2<i32>(-344i, 25551i), vec2<i32>(-17513i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 37115i), vec2<i32>(20990i, -26818i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-20413i, i32(-2147483648)), vec2<i32>(73694i, -1i), vec2<i32>(-23602i, -70807i), vec2<i32>(18768i, -2938i), vec2<i32>(-17681i, 17065i), vec2<i32>(-17457i, 2147483647i), vec2<i32>(2147483647i, 55253i), vec2<i32>(-11211i, 6416i), vec2<i32>(1i, 1468i));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec3<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2109f)))))));
    global2 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a.zyx, vec3<u32>(6495u >> (0u % 32u), u_input.a.x, 29943u ^ global2.x)), _wgslsmith_div_vec3_u32(u_input.a.wyx, u_input.a.wwz << (u_input.a.yxx % vec3<u32>(32u))));
    let var_1 = u_input.d.x > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -u_input.d.x, -6222i, -_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-1i, 2147483647i, u_input.d.x, -6736i))), u_input.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(1f, var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(-906f + 1610f)), 1f)))));
    var var_3 = 322f;
    return !select(vec2<bool>(false, !any(vec2<bool>(true, true))), !select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(var_1, false), vec2<bool>(true, true), vec2<bool>(global1.x, true)), select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), false)), vec2<bool>(!var_1, var_1));
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    global2 = ~u_input.a.xyy;
    global1 = !vec2<bool>(global1.x, global1.x);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_0.x))), Struct_1(-687f), !(!func_3()));
    var var_1 = vec3<bool>(any(var_0.c), !all(vec4<bool>(!global1.x, !var_0.c.x, true, global1.x)), all(vec3<bool>(global1.x, false, false)));
    var_1 = vec3<bool>(arg_0.x <= 1448f, false, true);
    return vec2<u32>(global2.x, _wgslsmith_mod_u32(~26725u, _wgslsmith_dot_vec2_u32(u_input.a.xy, select(vec2<u32>(global2.x, u_input.c.x), ~global2.yz, select(var_0.c, vec2<bool>(true, var_0.c.x), global1.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    global2 = countOneBits(~(~(~u_input.a.wzx)) | vec3<u32>(~(~0u), 1u, 77017u));
    global0 = array<vec2<i32>, 24>();
    var var_0 = ~(~vec2<u32>(u_input.c.x, 0u));
    let var_1 = -14665i;
    let var_2 = ~(~(vec2<u32>(4294967295u, 30232u) << (~u_input.a.xw % vec2<u32>(32u))) << (func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, -306f, 1278f) * vec4<f32>(250f, arg_1.a, arg_1.a, arg_1.a))) % vec2<u32>(32u)));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.a, 604f))))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.a, -1000f)))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, true)), func_3())), _wgslsmith_sub_u32(10224u >> (_wgslsmith_mod_u32(~u_input.a.x, var_0.x) % 32u), ~u_input.a.x), vec2<f32>(arg_1.a, 1f));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    return arg_2.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(247f - -447f))), _wgslsmith_f_op_f32(func_4(u_input.a.x, -1926f, func_1(u_input.d, Struct_1(-1858f)), Struct_3(2440f, Struct_2(Struct_1(282f), Struct_1(218f), vec2<bool>(true, false)), u_input.a.x, vec3<f32>(521f, -111f, 1092f), u_input.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -908f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, -380f, -777f)))))), -1475f, min(vec2<i32>(u_input.b >> (u_input.a.x % 32u), ~u_input.d.x), u_input.d.wy));
}

