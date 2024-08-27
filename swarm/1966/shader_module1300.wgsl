struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, true, true, false, true, true, true, true, false, false, true, false, true, false, false, false, true, true, false, true);

var<private> global2: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    global0 = array<vec2<u32>, 19>();
    var var_0 = any(vec2<bool>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 16793u), vec3<u32>(u_input.e.x, 6113u, u_input.e.x)) <= 40976u, false, true), true));
    global1 = array<bool, 21>();
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -300f))) - _wgslsmith_f_op_f32(-112f - 170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f - -1232f)))), -1437f, _wgslsmith_f_op_f32(floor(1000f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, var_1.x, 677f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, 213f, 359f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 350f, -303f)), true))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1868f);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b))))));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0));
    global2 = array<vec2<bool>, 9>();
    let var_2 = Struct_1(arg_1.c.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, 1636f, 1086f))), arg_3.c.c);
    global2 = array<vec2<bool>, 9>();
    return select(!(!(!arg_3.e.x)), false, false || !(all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 21u)], false)) & true));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<bool, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-1566f)))))))));
    var var_1 = select(!vec3<bool>(u_input.a > ~1i, func_3(~u_input.d, Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], true, false), -1585f, Struct_1(global0[_wgslsmith_index_u32(1u, 19u)], arg_0, vec4<i32>(u_input.a, 1i, u_input.b, 1i)), 2147483647i, vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], true)), ~vec4<u32>(u_input.d, 37022u, 0u, 0u), Struct_2(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 21u)]), var_0.x, Struct_1(global0[_wgslsmith_index_u32(1u, 19u)], arg_0, vec4<i32>(1i, 72753i, -1i, u_input.a)), 0i, vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 21u)]))), (global1[_wgslsmith_index_u32(50361u, 21u)] && global1[_wgslsmith_index_u32(27397u, 21u)]) | (global1[_wgslsmith_index_u32(u_input.d, 21u)] || false)), !(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(35430u, 21u)], true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global1[_wgslsmith_index_u32(47569u, 21u)]), global1[_wgslsmith_index_u32(u_input.e.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 21u)]), select(vec3<bool>(true, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(38602u, 21u)])))), !vec3<bool>(select(true, global1[_wgslsmith_index_u32(~4294967295u, 21u)], all(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(87252u, 21u)]))), !(1u < u_input.e.x), func_3(u_input.e.x, Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global1[_wgslsmith_index_u32(74412u, 21u)]), 162f, Struct_1(vec2<u32>(u_input.d, 58358u), arg_0, vec4<i32>(-1i, -14104i, u_input.b, 1i)), 2147483647i, vec3<bool>(false, false, false)), abs(vec4<u32>(u_input.d, u_input.e.x, 94092u, 0u)), Struct_2(vec3<bool>(false, true, false), -138f, Struct_1(vec2<u32>(0u, 4294967295u), arg_0, vec4<i32>(u_input.b, -1i, u_input.c, u_input.b)), -55004i, vec3<bool>(global1[_wgslsmith_index_u32(80650u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)])))));
    let var_2 = vec2<i32>(-2147483647i, u_input.b);
    global1 = array<bool, 21>();
    return Struct_1(~u_input.e, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1853f, 582f, arg_0.x) + vec3<f32>(arg_0.x, -366f, 1398f)), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(max(120f, var_0.x)), -394f), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))))), -reverseBits(-vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4785u, 0u, 4294967295u), vec3<u32>(u_input.e.x, 1u, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(u_input.e.x, u_input.e.x, 1u) & vec3<u32>(u_input.d, u_input.d, u_input.e.x)), abs(~u_input.e.x), 44444u, ~u_input.e.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(927f)), _wgslsmith_f_op_f32(f32(-1f) * -1486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), -835f)));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.b)), _wgslsmith_f_op_vec3_f32(exp2(var_0.b)), global1[_wgslsmith_index_u32(122028u, 21u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, 626f, 163f)) - _wgslsmith_f_op_vec3_f32(sign(var_0.b)))) * _wgslsmith_f_op_vec3_f32(-var_0.b)));
    let var_2 = var_1.a.x;
    var var_3 = Struct_2(select(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(2136u, 21u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(29696u, 21u)], true, global1[_wgslsmith_index_u32(var_1.a.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(20128u, 21u)], false, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.a.x, 21u)], global1[_wgslsmith_index_u32(5438u, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 21u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(13954u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])), !global1[_wgslsmith_index_u32(var_1.a.x, 21u)]), -var_1.c.x != 22494i), _wgslsmith_f_op_f32(-var_0.b.x), Struct_1(vec2<u32>(func_2(_wgslsmith_f_op_vec3_f32(-var_1.b)).a.x, _wgslsmith_sub_u32(u_input.d, _wgslsmith_sub_u32(4294967295u, 1u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.x, -209f, 449f)))))), var_0.c), var_1.c.x, !select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(var_0.a.x, 21u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 21u)], true, global1[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 21u)], true, global1[_wgslsmith_index_u32(36692u, 21u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true, global1[_wgslsmith_index_u32(2069u, 21u)]))), select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(81052u, 21u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global1[_wgslsmith_index_u32(var_0.a.x, 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 21u)], true)), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(47060u, 21u)]), vec3<bool>(false, true, false)), true));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.yy, var_1.c.yw, _wgslsmith_dot_vec2_i32(vec2<i32>(47368i, firstTrailingBit(1i) << (var_1.a.x % 32u)), vec2<i32>(~(-var_4.c.x), var_1.c.x)), var_1.c, -1i);
}

