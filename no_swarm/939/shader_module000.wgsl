struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, false, false, true, true);

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a, 6u)], !global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], any(vec3<bool>(false, false, true)))), !(!global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), select(vec2<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), true)), 1f < arg_0), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(51709u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true))), vec2<bool>(false, false)), vec2<bool>(global0[_wgslsmith_index_u32(16425u, 6u)], false));
    global2 = all(select(!vec4<bool>(u_input.b.x > 1u, false, all(vec3<bool>(true, false, false)), all(vec2<bool>(var_0.x, false))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], !global0[_wgslsmith_index_u32(~u_input.a, 6u)], var_0.x, abs(u_input.a) > u_input.b.x), select(global3[_wgslsmith_index_u32(select(~35629u, ~1u, !global0[_wgslsmith_index_u32(2743u, 6u)]), 10u)], !vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(10464u, 6u)], false), !global3[_wgslsmith_index_u32(1u, 10u)])));
    global2 = select(!select(var_0.x, all(vec4<bool>(true, var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 6u)])), any(vec2<bool>(var_0.x, true))), u_input.b.x < (1u | _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(select(arg_0, arg_0, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -760f)));
    global1 = true;
    var_0 = vec2<bool>(!any(vec3<bool>(true, true, true)), true);
    return -793f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec2<bool> {
    global3 = array<vec4<bool>, 10>();
    global3 = array<vec4<bool>, 10>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(128f, -413f, arg_1.x, arg_1.x))) + arg_1), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - -1013f), arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(631f - 479f)), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 6u)], global0[_wgslsmith_index_u32(32701u, 6u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], false, true), false))), ~(~(~(-53651i))), ~countOneBits(2147483647i) << (~(~u_input.b.x) % 32u)), Struct_1(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x)), -1703f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_1.x)), _wgslsmith_f_op_f32(func_3(-883f))))), _wgslsmith_clamp_i32(-2618i, min(i32(-1i) * -4270i, _wgslsmith_clamp_i32(8223i, -2147483647i, -2147483647i)), -countOneBits(44397i)), -2147483647i));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1553f, var_0.b.a.x, arg_1.x, var_0.a.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, -1988f, -986f, arg_1.x) + vec4<f32>(339f, var_0.b.a.x, var_0.a.a.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1 * var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -125f, var_0.a.a.x, var_0.a.a.x)), true)) * var_0.b.a), global3[_wgslsmith_index_u32(~(u_input.b.x & ~u_input.a), 10u)])), ~(~(-1i)), var_0.b.b);
    return !select(vec2<bool>(!(131f < var_0.a.a.x), true), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(32649u, 6u)], global0[_wgslsmith_index_u32(arg_0.x, 6u)]), true), vec2<bool>(true, global0[_wgslsmith_index_u32(17267u, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])), !global0[_wgslsmith_index_u32(6596u, 6u)]);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = firstLeadingBit(~(~(~u_input.b.zww)));
    global0 = array<bool, 6>();
    global2 = select(select(!any(func_2(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(952f, 386f, 166f, -698f))), !global0[_wgslsmith_index_u32(1u, 6u)], true), var_0.x >= 75853u, true);
    let var_1 = ~(~(~select(u_input.b, vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.a), global3[_wgslsmith_index_u32(min(var_0.x, 1u), 10u)])));
    var var_2 = ~vec2<u32>(u_input.a, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mult_u32(u_input.b.x, var_0.x)) ^ (select(u_input.a, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 6u)]) << ((0u >> (u_input.a % 32u)) % 32u)));
    return Struct_1(vec4<f32>(-371f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-838f))))), -1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(1232f)), -317f)))), arg_0, -2257i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 10>();
    let var_0 = vec2<i32>(~(-1825i), ~2147483647i);
    let var_1 = func_1(var_0.x);
    var var_2 = var_0.x;
    global3 = array<vec4<bool>, 10>();
    global0 = array<bool, 6>();
    var var_3 = var_1.a.x;
    let var_4 = func_1(-4740i).a.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, _wgslsmith_f_op_f32(min(var_4.x, _wgslsmith_f_op_f32(2140f * var_1.a.x))))), ~vec4<u32>(150287u, 0u, ~0u, _wgslsmith_dot_vec2_u32(max(u_input.b.zz, vec2<u32>(29783u, u_input.a)), max(vec2<u32>(u_input.b.x, 21542u), u_input.b.wx))), var_0.x, _wgslsmith_dot_vec2_i32(var_0, var_0));
}

