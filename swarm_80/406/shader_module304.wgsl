struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(57054u, 0u, 80302u), vec3<u32>(4294967295u, 41614u, 4294967295u), vec3<u32>(4294967295u, 12924u, 1u), vec3<u32>(46583u, 1u, 6234u), vec3<u32>(15400u, 4294967295u, 44540u), vec3<u32>(38388u, 1u, 36700u), vec3<u32>(35025u, 47607u, 14226u), vec3<u32>(62547u, 8801u, 11937u), vec3<u32>(4294967295u, 0u, 76056u), vec3<u32>(30232u, 6903u, 47719u), vec3<u32>(1u, 1u, 1u), vec3<u32>(15200u, 0u, 4294967295u), vec3<u32>(46622u, 1u, 24419u), vec3<u32>(0u, 0u, 5425u), vec3<u32>(1u, 1u, 40263u), vec3<u32>(36919u, 0u, 0u), vec3<u32>(20457u, 38018u, 1u), vec3<u32>(1u, 0u, 88379u), vec3<u32>(7289u, 4294967295u, 4294967295u));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, -170f, -1085f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-125f, -1000f, -1120f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1105f, 511f, 1802f), vec3<f32>(-989f, -1430f, 1283f)))))));
    global1 = vec4<bool>(all(select(vec4<bool>(true, var_0.x == -269f, global1.x || global1.x, true), !select(vec4<bool>(arg_3, false, arg_2.x, true), vec4<bool>(true, true, arg_2.x, arg_3), vec4<bool>(false, arg_3, global1.x, arg_3)), all(!arg_2))), global1.x, select(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, -30708i), vec2<i32>(-55508i, -1i))) > _wgslsmith_mod_i32(_wgslsmith_mod_i32(1145i, -1156i), ~arg_1), !arg_3 | false, !(12177u == ~u_input.a)), true);
    let var_1 = u_input.a != (4294967295u >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(55669u, u_input.a), vec2<u32>(u_input.a, 1u))), ~(~vec2<u32>(0u, u_input.a))) % 32u));
    let var_2 = Struct_1(-7698i);
    var var_3 = any(!global1.wyz);
    return ~1u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(25301i);
    var var_1 = (~func_3(global2[_wgslsmith_index_u32(u_input.a, 14u)], select(var_0.a, 2147483647i, global1.x), select(global1.yyy, vec3<bool>(global1.x, global1.x, false), global1.xyy), any(global1.zzx)) & _wgslsmith_div_u32(32535u, u_input.a | max(u_input.a, 31236u))) < ~1u;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32((~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u) | (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(41345u, u_input.a, 51788u, u_input.a) % vec4<u32>(32u)))) >> (firstLeadingBit(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(~72207u, 1u, ~u_input.a, _wgslsmith_mult_u32(u_input.a, 4294967295u))), min(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(30720u, 0u, 0u, u_input.a)), ~vec4<u32>(u_input.a, 13547u, u_input.a, 0u)), ~vec4<u32>(35440u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), 17308u << (0u % 32u), ~u_input.a))), 14u)];
    var var_3 = arg_0.x;
    var var_4 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    return global2[_wgslsmith_index_u32(u_input.a, 14u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-792f + _wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(1234f - -2277f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, -973f)))))));
    var var_1 = arg_1.a;
    return !(!select(select(vec4<bool>(arg_0.x, global1.x, arg_0.x, true), vec4<bool>(false, true, false, arg_0.x), global1.x), vec4<bool>(true, u_input.a < 4294967295u, true, any(vec4<bool>(true, global1.x, arg_0.x, false))), false));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = u_input.a;
    global1 = func_4(!vec2<bool>(true, global1.x), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -123f))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1980f, -1898f) - -1333f), _wgslsmith_f_op_f32(-769f - 802f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1714f, 1199f, _wgslsmith_div_f32(-1562f, -343f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(174f)), 436f, _wgslsmith_f_op_f32(f32(-1f) * -154f)))));
    let var_2 = func_2(vec2<f32>(867f, var_1.x)).a;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1009f)));
    return -1533f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    var var_1 = _wgslsmith_f_op_f32(func_1(u_input.a, false));
    let var_2 = -2147483647i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(40122u, u_input.a, u_input.a, 30560u) | ~vec4<u32>(89846u, u_input.a, 17926u, u_input.a), select(abs(vec4<u32>(60274u, u_input.a, 21668u, u_input.a)), ~vec4<u32>(u_input.a, 38861u, u_input.a, 74277u), !global1.x)), vec4<u32>(~65900u, 0u | abs(u_input.a), func_3(global2[_wgslsmith_index_u32(u_input.a, 14u)], var_0.a, vec3<bool>(false, global1.x, global1.x), global1.x) | 1u, min(~1u, firstLeadingBit(2052u)))) % 32u);
    let var_3 = global1.xz;
    let var_4 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(2572f)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(func_1(_wgslsmith_add_u32(u_input.a, u_input.a), any(vec3<bool>(global1.x, global1.x, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(339f * 1869f) + _wgslsmith_div_f32(791f, _wgslsmith_f_op_f32(func_1(14232u, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)))), ~_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(20577u, 18193u)), select(vec2<u32>(4294967295u, 75523u), vec2<u32>(u_input.a, 72238u), global1.wz) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 52006u), vec2<u32>(u_input.a, 68218u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 18344u), vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(9515u, 40938u)))));
}

