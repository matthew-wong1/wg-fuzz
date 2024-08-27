struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: Struct_5;

var<private> global2: Struct_1 = Struct_1(-437f);

var<private> global3: Struct_2 = Struct_2(Struct_1(-110f), Struct_1(286f), Struct_1(143f), vec2<f32>(338f, 902f), vec2<f32>(855f, -826f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_4(vec2<bool>(arg_0, select(arg_3.x, true, arg_0) | any(select(vec2<bool>(arg_3.x, false), arg_3.zz, arg_3.x))), global0[_wgslsmith_index_u32(global1.a, 7u)]);
    let var_1 = arg_3.wx;
    global0 = array<Struct_3, 7>();
    global1 = Struct_5(min(u_input.e, var_0.b.e.x) & var_0.b.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = u_input.b.x << (4294967295u % 32u);
    return arg_3.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = all(vec3<bool>(func_3(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), global3.e, Struct_2(Struct_1(-255f), global3.c, global3.a, global3.e, global3.d), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), true)), !all(vec2<bool>(false, false)), (u_input.e > 42954u) && true));
    global0 = array<Struct_3, 7>();
    var var_1 = u_input.d.x << ((min(u_input.e, 24324u) ^ u_input.e) % 32u);
    let var_2 = global3.a;
    let var_3 = select(~vec3<u32>(1u, min(global1.a, 4294967295u), 21315u), firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a, global1.a, 1u) << (vec3<u32>(4294967295u, 1u, u_input.e) % vec3<u32>(32u)), ~vec3<u32>(global1.a, 3892u, global1.a))), !select(select(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(var_0, var_0, var_0), var_0), !vec3<bool>(true, var_0, true), !vec3<bool>(var_0, true, true)));
    return any(vec4<bool>(false, !select(var_0 || false, var_0, true), any(vec2<bool>(var_0, var_0)), select(false, var_0, var_0)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_5 {
    var var_0 = -55212i;
    var var_1 = global0[_wgslsmith_index_u32(u_input.e, 7u)];
    return Struct_5(var_1.e.x, _wgslsmith_f_op_f32(var_1.a.d.x * -283f));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_3, 7>();
    global1 = func_4(~select(vec2<i32>(9165i, ~(-2147483647i)), u_input.d.xy, func_2(global3.b)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = Struct_2(global3.c, Struct_1(_wgslsmith_f_op_f32(-func_4(-vec2<i32>(u_input.c.x, u_input.c.x)).b)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global3.e.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.e) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-900f, global2.a) * global3.e))))));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~116852u), 1u), _wgslsmith_mult_vec2_u32(select(~abs(vec2<u32>(global1.a, global1.a)), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(u_input.e, 4294967295u)), select(false, true, true)), ~(~firstLeadingBit(vec2<u32>(u_input.e, 4294967295u)))), ~select(abs(vec2<u32>(global1.a, global1.a)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, global1.a), vec2<u32>(global1.a, 0u)), ~select(vec2<u32>(55481u, 57162u), vec2<u32>(1u, global1.a), true), any(vec3<bool>(false, false, false))));
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1132f)) * 270f) * global3.b.a), 1000f));
    global3 = Struct_2(global3.b, global3.c, global3.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.e.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d)))));
    let var_1 = any(vec3<bool>(true, !(!all(vec4<bool>(false, false, true, true))), true));
    let var_2 = Struct_4(vec2<bool>(var_1, var_1), global0[_wgslsmith_index_u32(~abs(global1.a), 7u)]);
    var var_3 = 394f;
    var var_4 = max(_wgslsmith_add_u32(48792u, firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(var_2.b.e.xxw), vec3<u32>(31374u, 21087u, 58586u)))), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(func_4(vec2<i32>(u_input.b.x, -29560i)).a, _wgslsmith_clamp_u32(global1.a, 4460u, 19327u), func_4(u_input.a.zy).a)), abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

