struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 0u, 1u);

var<private> global2: vec2<u32>;

var<private> global3: array<vec2<bool>, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = 9006u;
    let var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1131f + arg_0), arg_0), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x)), max(u_input.b, global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0, arg_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -1030f), vec2<f32>(227f, 1062f), global3[_wgslsmith_index_u32(global2.x, 20u)])))), select(!vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(false, true, false, global0.x), vec4<bool>(true, global0.x, global0.x, true)), select(0u, ~94924u, any(vec3<bool>(false, false, global0.x))), _wgslsmith_f_op_f32(arg_0 * 384f)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1512f, arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 352f), vec2<f32>(-376f, arg_0))), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(false, global0.x, true, global0.x)), _wgslsmith_mod_u32(global1.x, u_input.e.x), 687f)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1093f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1248f, arg_0)))), vec4<bool>(!global0.x, global0.x, global0.x, global0.x), 1u, -1000f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, -1106f) - vec2<f32>(arg_0, 968f))), select(!vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, false)), false), ~max(0u, 5784u), _wgslsmith_f_op_f32(round(arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-653f, 572f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-826f, 1610f) + vec2<f32>(871f, arg_0)), global2.x >= u_input.e.x)), select(vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, global0.x, false, true)), true), ~13615u, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), all(vec4<bool>(global0.x, false, true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(153f, arg_0)), vec2<bool>(true, global0.x))) - vec2<f32>(_wgslsmith_f_op_f32(1273f - -543f), _wgslsmith_f_op_f32(sign(-679f))))), 57796u, max(global1.yzz, _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, u_input.b, 54246u), u_input.e) & (vec3<u32>(global1.x, 0u, global2.x) | u_input.e)) ^ u_input.e);
    var var_2 = -922f;
    global2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~countOneBits(~global1.x), 7387u), _wgslsmith_clamp_vec2_u32(u_input.e.zz, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.x) << (var_1.e.xy % vec2<u32>(32u)), select(vec2<u32>(u_input.e.x, 0u), vec2<u32>(global1.x, 23330u), var_1.b.a.b.x)), _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(43393u, u_input.e.x)), ~(~vec2<u32>(var_1.a.b.c, global1.x)))), _wgslsmith_add_vec2_u32(~u_input.e.xy, vec2<u32>(global2.x, abs(var_1.d) | var_1.d)));
    var_0 = var_1.a.a.c;
    return !vec4<bool>(var_1.a.a.c <= u_input.b, !var_1.a.b.b.x, global0.x, max(firstTrailingBit(u_input.b), global2.x) <= _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.e.x, u_input.e.x)), u_input.e.xx));
}

fn func_2() -> vec2<u32> {
    let var_0 = any(select(!(!(!vec4<bool>(true, global0.x, true, false))), !vec4<bool>(true, false, global0.x, true), select(func_3(186f), select(!vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, true, true), vec4<bool>(true, false, global0.x, global0.x)), vec4<bool>(global0.x, true, u_input.c > u_input.d.x, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), select(vec4<bool>(var_0, false, all(vec3<bool>(true, false, global0.x)), !(!var_0)), !(!func_3(503f)), any(select(vec4<bool>(true, true, global0.x, var_0), vec4<bool>(true, true, true, true), vec4<bool>(false, global0.x, var_0, global0.x)))), ~global1.x, 2049f);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(309f * _wgslsmith_f_op_f32(152f - _wgslsmith_div_f32(var_1.d, var_1.d)))))));
    global2 = select(vec2<u32>(firstLeadingBit(u_input.b) ^ select(u_input.e.x, global1.x, global0.x), ~_wgslsmith_mod_u32(u_input.b, 32290u)), firstTrailingBit(vec2<u32>(4294967295u & var_1.c, ~0u)), select(vec2<bool>(func_3(644f).x, any(vec2<bool>(false, var_0))), vec2<bool>(var_0, true), select(var_1.b.x, true, !var_0))) << (vec2<u32>(countOneBits(84515u), _wgslsmith_mult_u32(~max(var_1.c, u_input.b), 0u)) % vec2<u32>(32u));
    var var_3 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -943f) - var_1.d))) + 443f));
    return _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(~global2.x, ~40325u)), ~(~abs(global1.xz)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_u32((1u & global1.x) << (~_wgslsmith_sub_u32(~70232u, ~global2.x) % 32u), ~(~(~global2.x)));
    global0 = arg_1.xz;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(156f, 1168f)) * _wgslsmith_f_op_f32(round(974f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-631f)) * 1798f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1684f + 615f), _wgslsmith_f_op_f32(select(1227f, -213f, arg_1.x))) - -410f))));
    global2 = vec2<u32>(35987u, countOneBits(38287u));
    global2 = _wgslsmith_clamp_vec2_u32(func_2(), (vec2<u32>(_wgslsmith_mult_u32(23913u, 10261u), abs(0u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 1u), u_input.e.xy) % vec2<u32>(32u))) & abs(abs(firstTrailingBit(vec2<u32>(global2.x, 2276u)))), u_input.e.yx);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f + -1843f) * _wgslsmith_f_op_f32(f32(-1f) * -878f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, -356f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, -595f, -1000f, -1340f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, u_input.d.x, -1i, u_input.a.x), vec3<bool>(global0.x, global0.x, true))), _wgslsmith_f_op_f32(1170f + -764f), _wgslsmith_f_op_f32(select(-2268f, 1604f, global0.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-413f, -562f, -1000f, 498f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, 531f, -665f, -167f))))), all(!func_3(-1021f).zxy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -286f, 1151f, -790f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1478f, var_0.x, var_0.x, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1270f)) + _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_0.x))), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(412f, 1391f))))), u_input.a, _wgslsmith_add_u32(1u, u_input.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + 1437f), _wgslsmith_f_op_f32(select(-1649f, var_0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(975f, var_0.x) - vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_div_vec2_u32(global1.yw, ~(~vec2<u32>(53840u, global2.x))));
}

