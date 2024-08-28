struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: array<f32, 12> = array<f32, 12>(-493f, 1000f, -525f, -656f, 1755f, 572f, -811f, 1870f, 325f, -2294f, -121f, -1450f);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-303f, 2307f, false, vec4<u32>(1u, 59u, 4294967295u, 1u)), Struct_1(-1000f, 652f, true, vec4<u32>(0u, 0u, 21529u, 11820u)), Struct_1(-309f, -584f, true, vec4<u32>(1u, 0u, 1971u, 1u)), Struct_1(-150f, -1125f, false, vec4<u32>(4294967295u, 4294967295u, 0u, 20281u)), Struct_1(1288f, 1383f, true, vec4<u32>(49137u, 4294967295u, 52660u, 0u)));

var<private> global2: Struct_1 = Struct_1(1000f, -1500f, true, vec4<u32>(0u, 9u, 0u, 41194u));

var<private> global3: array<Struct_1, 7>;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = min(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(6294u), global2.d.x), vec2<u32>(1u, 1u)), abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(global2.d.ww), global2.d.yz))) >> (29328u % 32u);
    let var_1 = firstLeadingBit(select(~global2.d, global2.d, select(vec4<bool>(true, global2.c, global2.c, global2.c), !vec4<bool>(global2.c, global2.c, global2.c, global2.c), true))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~u_input.e, abs(select(global2.d.x, 13795u, true)), var_0), global2.d, min(_wgslsmith_div_vec4_u32(global2.d, select(global2.d, global2.d, false)), ~firstLeadingBit(global2.d))) % vec4<u32>(32u));
    global1 = array<Struct_1, 5>();
    let var_2 = vec3<u32>(~var_1.x, var_0, max(84964u, ~34328u));
    var var_3 = vec2<i32>(-1i) * -(vec2<i32>(u_input.b, 56847i) << ((~vec2<u32>(10182u, u_input.d) & vec2<u32>(var_2.x, 45734u)) % vec2<u32>(32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1509f)) * global0[_wgslsmith_index_u32(var_2.x, 12u)]), _wgslsmith_f_op_f32(max(-238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)) + -465f))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    global4 = array<Struct_1, 6>();
    global1 = array<Struct_1, 5>();
    let var_1 = global4[_wgslsmith_index_u32(53956u, 6u)];
    var var_2 = _wgslsmith_sub_vec3_u32(~var_1.d.zyz, _wgslsmith_mult_vec3_u32(arg_2.d.wzw, select(var_1.d.xzw, firstLeadingBit(global2.d.yww), var_1.c)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(321f))), global2.b, arg_3, select(vec4<u32>(~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, var_2.x), vec4<u32>(48242u, 74573u, u_input.a, var_2.x)) ^ 81228u, 4294967295u, u_input.e), abs(~global2.d), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    return func_2(true, true, func_2(true, ~(-22018i) < -select(2147483647i, u_input.c, true), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(arg_3.a - -545f)), (false && global2.c) || true, ~arg_3.d), !global2.c), any(!arg_0));
}

fn func_1(arg_0: i32, arg_1: f32) -> StorageBuffer {
    let var_0 = func_4(vec2<bool>(!global2.c, !global2.c), !(!vec4<bool>(false, global2.c, true, !global2.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(273f, -2900f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1108f, global2.b) * vec2<f32>(948f, arg_1)))), vec2<f32>(global0[_wgslsmith_index_u32(~11607u, 12u)], -829f))), func_2(all(vec2<bool>(true, global2.c)), !(!select(global2.c, global2.c, global2.c)), Struct_1(_wgslsmith_f_op_f32(-1094f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)])), -2467f, global2.c, global2.d), (all(vec3<bool>(false, global2.c, global2.c)) || true) != global2.c));
    global0 = array<f32, 12>();
    global3 = array<Struct_1, 7>();
    global3 = array<Struct_1, 7>();
    global4 = array<Struct_1, 6>();
    return StorageBuffer(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(77344u, 12u)], _wgslsmith_f_op_f32(floor(588f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = _wgslsmith_f_op_f32(-global2.b);
    var var_2 = -vec3<i32>(17358i, 2078i, 0i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(-374f + 777f)))), global0[_wgslsmith_index_u32(u_input.d, 12u)], false, vec4<u32>(global2.d.x, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.d.x, u_input.a), abs(4294967295u)), 16106u, 4294967295u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * var_0.b)))) < global2.a;
    let x = u_input.a;
    s_output = func_1(countOneBits(u_input.b) << (~22208u % 32u), var_3.a);
}

