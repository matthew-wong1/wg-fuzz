struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(398f, -220f, 968f, -1544f), vec4<f32>(227f, -1455f, 1449f, -131f), vec4<f32>(896f, -258f, -935f, -1000f), vec4<f32>(333f, 649f, -733f, 1000f), vec4<f32>(414f, 748f, -652f, 1000f), vec4<f32>(-1154f, -168f, 319f, -1440f), vec4<f32>(372f, -1247f, 129f, 485f), vec4<f32>(-320f, 354f, 815f, -399f), vec4<f32>(-1164f, -1514f, 1156f, 250f), vec4<f32>(-514f, -1703f, -291f, 416f), vec4<f32>(1361f, 775f, 106f, -1044f), vec4<f32>(-490f, -822f, 678f, -350f), vec4<f32>(1499f, -1161f, 1000f, 524f));

var<private> global1: vec3<f32>;

var<private> global2: f32 = 2025f;

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = u_input.c.xz;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(872f, global1.x)), 206f))));
    var var_2 = arg_0.a;
    global3 = -2147483647i;
    let var_3 = any(vec4<bool>(arg_0.d.b.x, false, false, var_2.b.x));
    return !var_3;
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(ceil(-766f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1463f, arg_0)) + vec3<f32>(arg_0, -1247f, 888f)))));
    global2 = global1.x;
    var var_1 = Struct_2(Struct_1(arg_1, vec2<bool>(true, true), vec4<i32>(1i, i32(-1i) * -2147483647i, arg_1, -2147483647i)), ~vec3<u32>(_wgslsmith_mod_u32(~1u, select(u_input.b, u_input.b, false)), (u_input.d.x >> (u_input.d.x % 32u)) << (~4294967295u % 32u), ~29551u), Struct_1(~u_input.c.x, select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec4<bool>(false, true, false, false)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, 49119i, 53359i, 8629i), countOneBits(vec4<i32>(arg_1, -2147483647i, -61828i, -37438i)), vec4<i32>(-67777i, u_input.a, -1i, 84365i))), Struct_1(arg_1, select(vec2<bool>(true, true), vec2<bool>(true, u_input.d.x < 4294967295u), true), ~(firstTrailingBit(vec4<i32>(u_input.c.x, -2147483647i, arg_1, u_input.c.x)) >> (~vec4<u32>(1u, u_input.d.x, u_input.b, 0u) % vec4<u32>(32u)))));
    var var_2 = Struct_1(var_1.c.c.x, select(vec2<bool>(!var_1.d.b.x | true, var_1.a.b.x), vec2<bool>(true, any(vec3<bool>(true, true, true)) | true), !var_1.d.b.x), _wgslsmith_clamp_vec4_i32(var_1.c.c, var_1.d.c, ~(min(vec4<i32>(1i, var_1.d.a, u_input.a, 21995i), vec4<i32>(u_input.c.x, arg_1, var_1.d.c.x, -2147483647i)) >> (~vec4<u32>(1u, 0u, 32959u, 25357u) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1579f, -194f, -1000f) + vec3<f32>(-996f, var_0.x, arg_0)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-417f, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, var_0.x, -807f), vec3<f32>(712f, -1825f, -629f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 744f, -749f) * vec3<f32>(arg_0, -924f, 907f))))))));
    return -694f;
}

fn func_2(arg_0: i32) -> f32 {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(259f, -1289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.x, countOneBits(-1i))) * -172f));
    var var_0 = vec2<u32>(min(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.b, u_input.d.x), select(vec4<u32>(u_input.b, 1u, 70406u, u_input.d.x), vec4<u32>(4294967295u, 80143u, u_input.d.x, 4294967295u), vec4<bool>(true, true, true, false)))) >> (u_input.d.x % 32u), u_input.b);
    global3 = ~_wgslsmith_mod_i32(u_input.a | _wgslsmith_clamp_i32(-arg_0, arg_0 | arg_0, u_input.c.x), 1i);
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    global0 = array<vec4<f32>, 13>();
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec4<f32>, 13>();
    let var_1 = false;
    global2 = global1.x;
    global3 = u_input.a;
    global2 = _wgslsmith_f_op_f32(-710f - 174f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-982f, 843f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(907f, 526f)), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, global1.x, -1055f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, global1.x, global1.x) - vec3<f32>(global1.x, -140f, 680f)))), vec3<bool>(!(!var_0), !func_1(Struct_2(Struct_1(0i, vec2<bool>(var_0, var_0), vec4<i32>(1i, -1i, 1i, -63166i)), vec3<u32>(0u, u_input.b, 120359u), Struct_1(-2147483647i, vec2<bool>(false, true), vec4<i32>(u_input.c.x, -2147483647i, -1i, u_input.c.x)), Struct_1(11844i, vec2<bool>(var_0, true), vec4<i32>(75901i, 4322i, -2147483647i, 17960i)))), !all(vec2<bool>(var_1, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(func_2(u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - global1.x))), 281f);
}

