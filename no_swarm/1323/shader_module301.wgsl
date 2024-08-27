struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: vec4<f32> = vec4<f32>(-286f, 361f, 793f, 269f);

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(true, false, 1u, vec4<f32>(359f, -547f, 123f, 1348f)), Struct_1(true, true, 68194u, vec4<f32>(1327f, 884f, 800f, 563f)), Struct_1(true, true, 0u, vec4<f32>(562f, 145f, -1675f, -189f)), Struct_1(true, false, 48258u, vec4<f32>(-1088f, -583f, 1000f, 478f)), Struct_1(false, true, 121682u, vec4<f32>(-124f, 1892f, -1029f, -1628f)), Struct_1(true, true, 18157u, vec4<f32>(-1000f, 628f, -2028f, -1518f)), Struct_1(false, true, 4294967295u, vec4<f32>(-1394f, -673f, -1363f, -498f)), Struct_1(false, true, 4294967295u, vec4<f32>(634f, 319f, -354f, -664f)), Struct_1(false, true, 11017u, vec4<f32>(143f, 1000f, 2197f, 814f)), Struct_1(false, false, 0u, vec4<f32>(-1000f, 892f, -408f, 807f)), Struct_1(false, false, 23132u, vec4<f32>(-622f, -1000f, 542f, -1110f)), Struct_1(false, false, 0u, vec4<f32>(1876f, -955f, 250f, 1166f)), Struct_1(true, true, 4294967295u, vec4<f32>(-606f, -782f, 511f, -2457f)), Struct_1(true, false, 4294967295u, vec4<f32>(216f, 123f, 524f, -653f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    var var_0 = select(!vec4<bool>(_wgslsmith_div_f32(348f, -1000f) == global2.x, true, any(vec3<bool>(true, true, true)), true), select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, global2.x < global2.x, any(vec2<bool>(false, true)), true | all(vec4<bool>(false, false, true, true)))), !(!all(vec2<bool>(false, false))));
    global3 = array<Struct_1, 14>();
    global0 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global2.x) + _wgslsmith_f_op_f32(global2.x * 328f)))))));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2314f - _wgslsmith_div_f32(global2.x, -450f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(global2.x * 224f))))), global2.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(-828f))))));
    var var_1 = true;
    return 842f;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global2 = vec4<f32>(arg_0.x, -409f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a.x, 21572i), _wgslsmith_mult_u32(78029u, u_input.b.x)))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-771f, -2205f, arg_0.x, arg_0.x), vec4<f32>(global2.x, arg_0.x, 144f, global2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-557f, -490f, arg_0.x, arg_0.x)))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(423f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1155f, -799f))));
    global1 = array<vec2<f32>, 10>();
    let var_0 = !(!vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), true));
    return Struct_1(select(true, var_0.x, all(var_0.ww)), var_0.x, (_wgslsmith_mult_u32(u_input.c.x, firstLeadingBit(u_input.c.x)) ^ u_input.c.x) ^ 71542u, vec4<f32>(-162f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1652f, -563f)), _wgslsmith_f_op_f32(func_3(vec2<i32>(0i, -2147483647i), u_input.c.x)))))), _wgslsmith_f_op_f32(floor(global2.x)), arg_0.x));
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = func_2(vec3<f32>(global2.x, 857f, 170f));
    var var_1 = select(vec4<bool>(all(vec4<bool>(false, arg_1, true, -2858i < u_input.a.x)), var_0.b, all(vec2<bool>(var_0.b, all(vec2<bool>(var_0.a, true)))), var_0.a), vec4<bool>(false, false, true, var_0.a), vec4<bool>(false, arg_1, true, !var_0.b));
    global2 = var_0.d;
    var_1 = !(!vec4<bool>(~var_0.c <= ~u_input.c.x, true && all(var_1.zww), var_0.b, arg_1));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) - -196f));
    return u_input.c.x > _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.c, 0u)), u_input.c.zy);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_4 {
    return Struct_4(arg_3, ~arg_0, ~vec3<u32>(arg_1.x, arg_1.x, firstLeadingBit(u_input.c.x)), ~abs(28774i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 14>();
    let var_0 = vec2<f32>(-789f, global2.x);
    global0 = var_0.x;
    var var_1 = vec4<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), 63662u, ~(firstLeadingBit(min(u_input.b.x, 27086u)) ^ 1u));
    let var_2 = Struct_3(~vec4<u32>(u_input.b.x, min(~4294967295u, ~81685u), 0u >> (_wgslsmith_div_u32(var_1.x, var_1.x) % 32u), ~_wgslsmith_div_u32(u_input.c.x, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - var_0.x) * var_0.x), -1831f)));
    let var_3 = abs(4294967295u);
    global0 = var_2.b.x;
    var var_4 = func_4(-(vec4<i32>(2147483647i, u_input.a.x, ~43015i, u_input.a.x) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(3759i, -1i, 39642i, -31582i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -2147483647i))), countOneBits(var_2.a & u_input.c), !vec3<bool>(func_1(u_input.a.x, false) != (0u >= var_1.x), false, true && all(vec2<bool>(true, true))), select(vec2<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), false), vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -var_4.d);
}

