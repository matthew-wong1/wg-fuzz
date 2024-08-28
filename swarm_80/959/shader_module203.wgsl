struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(31849i);

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(1u, 53094u, 0u), vec3<u32>(0u, 49903u, 8286u), vec3<u32>(34877u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 11370u), vec3<u32>(1u, 26129u, 34110u), vec3<u32>(41468u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(311u, 71047u, 24999u), vec3<u32>(0u, 53335u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(7143u, 0u, 17416u), vec3<u32>(23812u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 0u));

var<private> global3: array<Struct_2, 26>;

var<private> global4: array<i32, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    global0 = Struct_1(-2147483647i);
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), !select(vec2<bool>(true, all(vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), false);
    let var_1 = (max(_wgslsmith_sub_u32(_wgslsmith_sub_u32(8784u, u_input.a), countOneBits(u_input.a)), u_input.a) <= 31946u) == var_0.x;
    global4 = array<i32, 15>();
    var_0 = !vec2<bool>(false, var_0.x);
    return 2530u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> u32 {
    global2 = array<vec3<u32>, 15>();
    var var_0 = _wgslsmith_f_op_f32(-1155f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(760f - _wgslsmith_f_op_f32(-532f + -262f)), -1324f, true)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1034f)))))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(805f, 2004f), _wgslsmith_f_op_f32(f32(-1f) * -956f))))));
    let var_2 = !(!vec4<bool>(~u_input.a < ~4294967295u, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), false, true));
    let var_3 = _wgslsmith_f_op_f32(-546f - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1778f)));
    return select(11939u, u_input.a, select(any(vec2<bool>(2147483647i >= u_input.d, var_2.x | var_2.x)), 1u < u_input.a, true));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_4(4294967295u, u_input.b | (u_input.c >> (select(~vec2<u32>(arg_0, arg_0), arg_2.zy, arg_1.c || arg_1.c) % vec2<u32>(32u))), arg_1.c, -_wgslsmith_mod_vec4_i32(~(vec4<i32>(2147483647i, 31661i, -1i, global4[_wgslsmith_index_u32(arg_0, 15u)]) << (arg_2 % vec4<u32>(32u))), -abs(vec4<i32>(u_input.d, -23005i, 0i, global0.a))), u_input.b);
    global3 = array<Struct_2, 26>();
    let var_1 = countOneBits(firstTrailingBit(arg_2.x));
    let var_2 = any(select(!select(select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(false, var_0.c, true), vec3<bool>(true, var_0.c, false)), !vec3<bool>(true, var_0.c, false), true), !(!(!vec3<bool>(arg_1.c, arg_1.c, arg_1.c))), vec3<bool>(!(false || arg_1.c), arg_1.c, any(select(vec3<bool>(false, true, arg_1.c), vec3<bool>(var_0.c, var_0.c, arg_1.c), arg_1.c)))));
    var_0 = Struct_4(_wgslsmith_div_u32(21531u >> (1u % 32u), abs(var_0.a) | 0u), u_input.c >> (arg_2.wy % vec2<u32>(32u)), all(vec4<bool>(!var_0.c, true, !var_2, var_0.c)), var_0.d, vec2<i32>(firstLeadingBit(1i), global0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1595f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
}

fn func_1() -> f32 {
    global2 = array<vec3<u32>, 15>();
    global2 = array<vec3<u32>, 15>();
    global0 = Struct_1(~select(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.a, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_mod_i32(-2147483647i, -25352i), any(vec4<bool>(true, false, false, true))) << (firstTrailingBit(u_input.a) % 32u));
    let var_0 = Struct_3(global0.a);
    var var_1 = vec4<i32>(0i, -13403i, global4[_wgslsmith_index_u32(func_2(), 15u)] << (firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(27449u, u_input.a, u_input.a), ~global2[_wgslsmith_index_u32(1u, 15u)])) % 32u), _wgslsmith_mod_i32(var_0.a, ~(-1i ^ global0.a)));
    return _wgslsmith_f_op_f32(func_4(func_3(Struct_1(~(-5883i)), _wgslsmith_mod_i32(var_1.x, -u_input.c.x), Struct_3(1i)), Struct_5(_wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1922f)), _wgslsmith_f_op_f32(-1834f - 1012f), 2147483647i >= var_0.a))), -483f, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))), ~(abs(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, 41726u, 4294967295u))) | ~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.e);
    var var_0 = true;
    global3 = array<Struct_2, 26>();
    var var_1 = true;
    var var_2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    global0 = Struct_1(-1i >> (~_wgslsmith_clamp_u32(u_input.a ^ 1u, 0u, 34731u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(~u_input.a, ~u_input.a, u_input.a, u_input.a)), vec4<u32>(44554u, ~(~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(16335u, 1u, u_input.a, 20579u), vec4<u32>(u_input.a, 4294967295u, 16281u, u_input.a) >> (vec4<u32>(0u, u_input.a, 1436u, 34320u) % vec4<u32>(32u))), 4294967295u)), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, var_2.x)));
}

