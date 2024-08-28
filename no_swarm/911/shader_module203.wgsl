struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(31714u, 30949u, 85483u);

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = all(select(select(vec4<bool>(false, false, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, false, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, 4294967295u <= global0.x, 1i == u_input.b.x, true)), vec4<bool>(false, select(false, false, true) && any(vec2<bool>(false, true)), true, true), vec4<bool>(true | all(vec2<bool>(true, false)), true, true, true)));
    var var_1 = arg_0.b.a.x;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1280f), global1.b.a.x)))))));
    let var_2 = -27469i;
    let var_3 = select(!(!select(vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0)), var_0)), select(vec3<bool>(any(vec2<bool>(false, var_0)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_0, var_0, var_0), var_0)), var_0), !vec3<bool>(true, !var_0, u_input.a < 8449u), select(select(vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, true)), !var_0), select(vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(false, var_0, false)), !vec3<bool>(false, var_0, true)), !any(vec3<bool>(var_0, true, false)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.a), u_input.a), ~12652u) != 61069u);
    return abs(global0.x);
}

fn func_2() -> Struct_2 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(step(466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f * 245f))));
    var_1 = 1057f;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, global1.b.a.x))));
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(4266u, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global0.x, 0u)), vec2<u32>(_wgslsmith_clamp_u32(14067u, u_input.a, u_input.a), ~u_input.a)), ~func_3(Struct_2(var_2.x, global1.c, Struct_1(vec2<f32>(var_2.x, global1.a)), -15291i)), u_input.a), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.a, 73749u), vec4<u32>(0u, global0.x, 20809u, 0u)) ^ abs(vec4<u32>(0u, 57199u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 4294967295u, 33428u, 4294967295u) >> (select(vec4<u32>(0u, 0u, 25367u, 4294967295u), vec4<u32>(global0.x, 69962u, 5776u, 10878u), vec4<bool>(true, false, false, false)) % vec4<u32>(32u))));
    return Struct_2(var_2.x, global1.b, Struct_1(vec2<f32>(1f, 1f)), 5638i);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = ~(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32400u, 1u), _wgslsmith_mult_u32(global0.x, 88424u), _wgslsmith_add_u32(u_input.a, global0.x)), firstLeadingBit(vec3<u32>(35063u, 20170u, global0.x)) | vec3<u32>(u_input.a, global0.x, global0.x)) ^ ~(~reverseBits(1u)));
    var var_1 = arg_0;
    global1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 351f, 647f) + vec3<f32>(1246f, 359f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, -819f, arg_0)), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 731f, arg_0)))))));
    var var_3 = vec4<i32>(25121i >> (_wgslsmith_add_u32(4294967295u, ~(1u >> (global0.x % 32u))) % 32u), global1.d, u_input.b.x, 0i);
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a >> (~global0.x % 32u), _wgslsmith_add_u32(0u, u_input.a), ~(~u_input.a)), vec3<u32>(10148u, ~(~(~0u)), _wgslsmith_dot_vec2_u32(global0.xx, vec2<u32>(_wgslsmith_mod_u32(68017u, u_input.a), _wgslsmith_sub_u32(global0.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(6093u, u_input.a, 98012u), min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(6595u, 28150u, global0.x)), vec3<bool>(true, true, true)), ~func_1(318f))), vec3<u32>(u_input.a, ~_wgslsmith_sub_u32(global0.x, ~0u), 0u));
    var var_0 = ((_wgslsmith_f_op_f32(-276f * _wgslsmith_f_op_f32(round(-264f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-637f)))) | true) || ((any(vec4<bool>(true, false, false, false)) & any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))) || true);
    let var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(~(-vec4<i32>(7295i, global1.d, 0i, 57871i))), ~(-abs(vec4<i32>(global1.d, -51343i, global1.d, -1i)))) < -4147i;
    var var_2 = any(select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1 | var_1, var_1), select(!vec2<bool>(true, var_1), vec2<bool>(false, var_1), vec2<bool>(true, var_1)), vec2<bool>(var_1 & false, any(vec4<bool>(true, var_1, var_1, true)))), false));
    var_2 = var_1;
    global0 = ~countOneBits(vec3<u32>(func_1(_wgslsmith_f_op_f32(-global1.a)).x, func_3(Struct_2(global1.b.a.x, Struct_1(vec2<f32>(1296f, 1469f)), global1.c, -2376i)), ~2244u));
    let var_3 = firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 755u, 0u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 17829u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 24973u, 1u)), vec4<u32>(u_input.a, global0.x, u_input.a, 4294967295u)))) >> (_wgslsmith_clamp_vec4_u32(reverseBits(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 11550u), vec4<u32>(65801u, 0u, 53567u, u_input.a), vec4<bool>(false, var_1, var_1, false)) ^ vec4<u32>(u_input.a, 25079u, global0.x, 47272u)), firstTrailingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 19958u, 15108u, global0.x), vec4<u32>(u_input.a, u_input.a, 15100u, u_input.a)))), ~(~vec4<u32>(1u, 8191u, global0.x, 4294967295u) ^ (vec4<u32>(54848u, global0.x, 11803u, u_input.a) | vec4<u32>(3796u, 1u, 22985u, 22852u)))) % vec4<u32>(32u));
    let var_4 = all(!(!select(vec3<bool>(false, var_1, true), select(vec3<bool>(false, var_1, true), vec3<bool>(true, true, var_1), var_1), select(vec3<bool>(true, false, true), vec3<bool>(var_1, false, var_1), false))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

