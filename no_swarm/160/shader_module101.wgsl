struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -487f;

var<private> global1: u32;

var<private> global2: vec4<f32> = vec4<f32>(665f, 254f, -708f, 112f);

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = -arg_0.a.b.a;
    let var_1 = !vec4<bool>(all(!vec2<bool>(arg_0.c.b, arg_0.c.a.x)) && select(true, arg_2.x, true), any(select(!vec4<bool>(arg_2.x, arg_0.a.a.b, arg_2.x, arg_2.x), !arg_0.a.a.d, arg_0.a.b.d)), u_input.c.x < select(_wgslsmith_mod_u32(4294967295u, 149515u), ~arg_0.a.e, true & arg_2.x), false);
    var var_2 = arg_0.a.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_0.a.b.e * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.b.e, vec2<f32>(global3.x, var_2.e.x), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + _wgslsmith_f_op_vec2_f32(-var_2.e)))));
    let var_4 = select(vec4<bool>(select(28315u > u_input.c.x, all(vec3<bool>(var_2.d.x, var_2.d.x, false)), true) & (true || arg_0.a.a.d.x), select(!(!arg_0.a.a.d.x), all(var_2.d), false), true, !(!var_1.x)), !vec4<bool>(any(select(arg_0.a.a.d.zy, vec2<bool>(false, arg_2.x), arg_0.a.b.d.x)), false, arg_2.x, false), var_2.d.x);
    return var_4;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    let var_0 = true;
    global1 = 46303u;
    var var_1 = vec3<bool>(true, !arg_1.x, any(select(vec4<bool>(var_0, arg_1.x, true, var_0), func_3(Struct_4(Struct_2(Struct_1(u_input.a, var_0, vec2<i32>(29071i, -32475i), vec4<bool>(false, true, false, var_0), global2.xw), Struct_1(u_input.d.zy, true, u_input.a, vec4<bool>(false, var_0, var_0, false), vec2<f32>(global3.x, -403f)), 4294967295u, true, u_input.b), -449f, Struct_3(vec3<bool>(var_0, false, true), var_0, u_input.c.x)), -2147483647i, vec4<bool>(false, true, arg_1.x, false)), func_3(Struct_4(Struct_2(Struct_1(u_input.a, true, vec2<i32>(0i, arg_0), vec4<bool>(false, true, var_0, var_0), vec2<f32>(-458f, global2.x)), Struct_1(vec2<i32>(arg_0, arg_0), var_0, u_input.e, vec4<bool>(true, false, true, var_0), global2.xx), 4294967295u, var_0, 0u), -1257f, Struct_3(vec3<bool>(var_0, false, arg_1.x), var_0, 51870u)), arg_0, vec4<bool>(arg_1.x, false, var_0, false)))) != all(func_3(Struct_4(Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.d.x), false, u_input.e, vec4<bool>(var_0, arg_1.x, arg_1.x, arg_1.x), global3.xz), Struct_1(vec2<i32>(0i, 2147483647i), arg_1.x, vec2<i32>(u_input.a.x, 34489i), vec4<bool>(arg_1.x, true, var_0, true), global2.yy), 30858u, var_0, u_input.b), -479f, Struct_3(vec3<bool>(false, true, true), var_0, u_input.c.x)), -36677i, select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, true, var_0, arg_1.x), vec4<bool>(var_0, arg_1.x, false, true)))));
    var var_2 = select(select(!func_3(Struct_4(Struct_2(Struct_1(vec2<i32>(u_input.e.x, u_input.d.x), arg_1.x, vec2<i32>(19215i, -2147483647i), vec4<bool>(var_1.x, var_0, arg_1.x, true), vec2<f32>(global3.x, 207f)), Struct_1(u_input.d.zx, false, u_input.d.zy, vec4<bool>(false, var_1.x, var_1.x, true), global2.xx), u_input.b, var_1.x, 4294967295u), 546f, Struct_3(vec3<bool>(true, false, false), true, u_input.c.x)), select(11718i, arg_0, var_1.x), !vec4<bool>(true, var_0, false, var_0)), !vec4<bool>(!arg_1.x, !var_0, false, false), true), vec4<bool>(true, all(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))), true, arg_1.x), vec4<bool>(true, any(select(!vec4<bool>(false, true, var_1.x, false), select(vec4<bool>(var_1.x, arg_1.x, false, var_0), vec4<bool>(true, arg_1.x, true, var_1.x), true), vec4<bool>(var_0, false, var_1.x, var_0))), 0i != firstTrailingBit(2147483647i), all(vec3<bool>(true, u_input.a.x < u_input.e.x, arg_1.x))));
    var var_3 = Struct_4(Struct_2(Struct_1(-vec2<i32>(u_input.e.x, 25388i), var_2.x, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), arg_0), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(global3.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -2709f))))), Struct_1(abs(min(vec2<i32>(arg_0, arg_0), vec2<i32>(0i, arg_0))), !func_3(Struct_4(Struct_2(Struct_1(vec2<i32>(arg_0, arg_0), var_1.x, vec2<i32>(-7359i, arg_0), vec4<bool>(var_2.x, var_1.x, false, true), global2.xw), Struct_1(vec2<i32>(-1i, arg_0), false, u_input.d.zz, vec4<bool>(var_2.x, true, var_2.x, var_0), vec2<f32>(global3.x, -2083f)), 0u, arg_1.x, u_input.b), global3.x, Struct_3(vec3<bool>(true, var_2.x, var_1.x), var_0, 4294967295u)), arg_0, vec4<bool>(true, var_2.x, true, var_2.x)).x, vec2<i32>(1i, 1i), select(!vec4<bool>(var_0, true, var_2.x, false), !vec4<bool>(true, true, arg_1.x, arg_1.x), true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1017f, global3.x)))), u_input.b, true, u_input.c.x), global2.x, Struct_3(func_3(Struct_4(Struct_2(Struct_1(u_input.d.yy, true, u_input.d.yz, vec4<bool>(arg_1.x, false, false, false), global3.yx), Struct_1(vec2<i32>(-8452i, 1i), var_0, vec2<i32>(arg_0, -5241i), vec4<bool>(var_0, true, arg_1.x, false), vec2<f32>(global2.x, 1000f)), 4294967295u, var_2.x, u_input.c.x), _wgslsmith_f_op_f32(-674f * global3.x), Struct_3(var_2.wyw, false, u_input.c.x)), min(~arg_0, countOneBits(arg_0)), !vec4<bool>(var_1.x, var_1.x, var_0, true)).wwx, func_3(Struct_4(Struct_2(Struct_1(u_input.d.zy, true, u_input.e, vec4<bool>(true, arg_1.x, true, arg_1.x), global3.xx), Struct_1(u_input.a, var_1.x, u_input.d.yx, vec4<bool>(false, var_0, false, false), vec2<f32>(global2.x, 783f)), u_input.c.x, var_0, u_input.b), global3.x, Struct_3(vec3<bool>(arg_1.x, arg_1.x, var_1.x), false, u_input.c.x)), -1i, vec4<bool>(arg_1.x, true, arg_1.x, false)).x && (func_3(Struct_4(Struct_2(Struct_1(u_input.d.yz, arg_1.x, u_input.a, vec4<bool>(true, var_2.x, var_2.x, false), vec2<f32>(global2.x, 782f)), Struct_1(vec2<i32>(arg_0, u_input.d.x), true, u_input.e, vec4<bool>(true, true, arg_1.x, arg_1.x), global2.xy), u_input.c.x, var_2.x, 20162u), global3.x, Struct_3(vec3<bool>(var_1.x, true, true), true, u_input.b)), u_input.a.x, vec4<bool>(false, true, false, var_1.x)).x && (true && arg_1.x)), u_input.b));
    return -676f;
}

fn func_1() -> Struct_3 {
    global1 = _wgslsmith_sub_u32(~87885u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(30123u, ~0u), 1u));
    global3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(func_2(u_input.d.x, vec2<bool>(true, false)))) * global2.x))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.yww)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1344f)))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, -1667f))), 403f)));
    global3 = global2.zyx;
    global1 = u_input.c.x;
    return Struct_3(vec3<bool>(all(vec2<bool>(true, select(true, true, true))), any(vec4<bool>(true, true, true, true)) || true, false), !(all(vec4<bool>(true, true, true, true)) | (true | any(vec2<bool>(false, false)))), ~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1207f);
    let var_1 = Struct_4(Struct_2(Struct_1(vec2<i32>(51892i, u_input.e.x), true, -vec2<i32>(369i, u_input.e.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -520f))), Struct_1(countOneBits(vec2<i32>(u_input.e.x, 2147483647i) >> (u_input.c.xy % vec2<u32>(32u))), false, u_input.e, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), global2.wz), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), ~vec4<u32>(1u, u_input.b, u_input.c.x, 1u)), !select(true, true, false), ~_wgslsmith_clamp_u32(~0u, u_input.b, ~115440u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * -360f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))), func_1());
    let var_2 = vec3<u32>(abs(u_input.c.x), _wgslsmith_dot_vec2_u32(~(~u_input.c.xx), u_input.c.wz), 4294967295u);
    let var_3 = var_1.c.a.zz;
    global0 = _wgslsmith_f_op_f32(332f * -850f);
    let var_4 = _wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 42249u, countOneBits(43679u))), max(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.yz), 9328u, ~14820u), u_input.c.xyz) & vec3<u32>(4294967295u, func_1().c, func_1().c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0, 1000f), _wgslsmith_f_op_f32(-global2.x), -u_input.d.x, firstTrailingBit(var_2));
}

