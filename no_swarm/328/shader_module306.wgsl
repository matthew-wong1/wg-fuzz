struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_3,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: Struct_5 = Struct_5(vec2<bool>(true, false), 4294967295u, Struct_3(vec4<i32>(1i, 0i, i32(-2147483648), 0i), -7530i, vec2<i32>(0i, 1i), Struct_1(vec2<u32>(23184u, 36304u), 0i, 43976u, -732f), false), vec2<f32>(-1000f, 1949f), vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    global0 = Struct_5(global0.a, 0u, arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.d.d)), _wgslsmith_f_op_f32(f32(-1f) * -407f)), !vec3<bool>(true, firstTrailingBit(arg_0.c.x) > (global0.c.b << (global0.c.d.c % 32u)), true));
    global0 = Struct_5(select(vec2<bool>(true, true), select(global0.a, select(global0.e.yx, !global0.e.yz, global0.a), true), !(_wgslsmith_f_op_f32(max(arg_0.d.d, -1475f)) > _wgslsmith_f_op_f32(trunc(-842f)))), global0.b, global0.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)), global0.c.d.d))), select(select(vec3<bool>(arg_0.e, any(global0.a), any(vec3<bool>(global0.c.e, arg_0.e, true))), select(!vec3<bool>(true, arg_0.e, true), !global0.e, vec3<bool>(arg_0.e, arg_0.e, global0.a.x)), select(global0.e, select(global0.e, global0.e, global0.e), !arg_0.e)), vec3<bool>(true, true, true), arg_0.e));
    var var_0 = select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.a.x, global0.c.b, -34722i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0.c.x, arg_0.d.b), vec3<i32>(2147483647i, arg_0.c.x, arg_0.a.x)), -arg_0.a.yzw) >> (select(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(global0.b, 1u, 1u), u_input.b), vec3<u32>(0u, global0.c.d.c, 2610u), select(u_input.b, u_input.c, global0.e.x)), max(u_input.c, ~vec3<u32>(global0.c.d.a.x, arg_0.d.a.x, u_input.d)), global0.a.x) % vec3<u32>(32u)), arg_0.a.zyz, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.d, 1718f, 1196f, -1121f), vec4<f32>(arg_0.d.d, -1000f, -683f, arg_0.d.d), global0.e.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.d.d, global0.d.x, arg_0.d.d, -370f), vec4<f32>(-1215f, -739f, 956f, arg_0.d.d), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.d.d, 697f, 1044f, 1099f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-928f, arg_0.d.d, -533f, 811f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, arg_0.d.d, -1183f, -739f)))))), true))));
    var var_2 = -547f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec2_f32(ceil(global0.d)), select(!vec2<bool>(all(global0.a), false || arg_0.e), !select(select(vec2<bool>(global0.a.x, arg_0.e), vec2<bool>(global0.a.x, global0.a.x), global0.a.x), !global0.a, any(global0.e)), !global0.e.yz)));
}

fn func_2(arg_0: u32) -> Struct_5 {
    global0 = Struct_5(global0.a, _wgslsmith_sub_u32(0u, ~(select(12331u, 2815u, global0.c.e) & global0.b)), Struct_3(vec4<i32>(i32(-1i) * -global0.c.c.x, abs(20949i & global0.c.a.x), global0.c.b, _wgslsmith_add_i32(~global0.c.d.b, ~global0.c.a.x)), -firstTrailingBit(~global0.c.c.x), vec2<i32>(global0.c.b, min(-25568i, global0.c.a.x) & min(global0.c.a.x, global0.c.d.b)), Struct_1(global0.c.d.a, ~(-2147483647i >> (1u % 32u)), _wgslsmith_add_u32(0u, u_input.a), global0.d.x), (global0.e.x || global0.c.e) && true), _wgslsmith_f_op_vec2_f32(func_3(global0.c)), vec3<bool>(all(select(vec4<bool>(false, false, true, global0.e.x), vec4<bool>(false, false, false, false), true | global0.e.x)), global0.e.x, !global0.a.x));
    return Struct_5(!(!vec2<bool>(global0.c.e, true)), arg_0, global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x)), _wgslsmith_div_vec2_f32(global0.d, vec2<f32>(-437f, 2236f)), vec2<bool>(global0.e.x, false)))))), select(vec3<bool>(!any(vec4<bool>(true, global0.e.x, global0.a.x, false)), true, global0.e.x), global0.e, _wgslsmith_f_op_f32(step(global0.c.d.d, 250f)) > global0.c.d.d));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = func_2(global0.b | abs(4294967295u));
    let var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.c.d.a.x, arg_0), vec2<u32>(4294967295u, 3688u), vec2<bool>(false, true)), ~vec2<u32>(global0.b, arg_0)), 1u), global0.c.d.a));
    let var_1 = func_2(min(_wgslsmith_dot_vec2_u32(~(global0.c.d.a << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), ~_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(37045u, var_0))), max(select(4294967295u, _wgslsmith_mod_u32(37611u, u_input.d), global0.a.x), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(110127u, var_0, global0.b), u_input.c))))).c.d;
    var var_2 = any(global0.e);
    let var_3 = -1i ^ -var_1.b;
    return 22463u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_1(u_input.a), _wgslsmith_sub_u32(~122952u, ~(~u_input.a)), abs(~global0.b));
    var_0 = u_input.c;
    var_0 = ~max(abs(min(select(vec3<u32>(4294967295u, 40035u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 46161u), global0.e.x), u_input.c >> (u_input.c % vec3<u32>(32u)))), u_input.c);
    var_0 = vec3<u32>(u_input.b.x, var_0.x, var_0.x);
    let var_1 = Struct_2(Struct_1(vec2<u32>(~(~global0.b), ~8269u), -(~global0.c.a.x), countOneBits(0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3(func_2(u_input.a).c)).x, global0.c.d.d, all(select(vec4<bool>(global0.e.x, false, true, global0.e.x), vec4<bool>(true, false, global0.c.e, global0.e.x), global0.e.x))))), func_2(var_0.x).c.d);
    let var_2 = 722f;
    var var_3 = -29891i;
    var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3(global0.c)).x);
}

