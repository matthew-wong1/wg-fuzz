struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(1u, 36968u, 4294967295u, 7914u, 0u, 1u, 3272u, 4294967295u, 4294967295u, 33799u, 17786u, 95311u, 0u, 1u, 4294967295u, 1u, 55558u, 6765u, 0u, 4585u, 4294967295u, 62613u, 5793u, 40751u, 9033u, 36488u, 1u, 8845u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(8818u, 2112u, true, Struct_1(1i), vec2<bool>(false, false));

var<private> global2: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(23434u, 11795u, 4294967295u), vec3<u32>(0u, 1u, 58473u), vec3<u32>(0u, 37103u, 4294967295u), vec3<u32>(99093u, 4294967295u, 19041u), vec3<u32>(68585u, 0u, 1u), vec3<u32>(26385u, 4294967295u, 46090u), vec3<u32>(4294967295u, 1u, 26822u), vec3<u32>(1u, 1u, 87728u), vec3<u32>(49027u, 105625u, 74021u), vec3<u32>(1u, 0u, 11238u), vec3<u32>(8311u, 0u, 50575u), vec3<u32>(20042u, 1u, 1u), vec3<u32>(4294967295u, 29102u, 0u), vec3<u32>(57525u, 16713u, 1u), vec3<u32>(52918u, 1u, 1u), vec3<u32>(0u, 42634u, 1u), vec3<u32>(1u, 0u, 0u));

var<private> global3: Struct_2 = Struct_2(64712u, 1u, true, Struct_1(13923i), vec2<bool>(false, false));

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(27013i), Struct_1(0i), Struct_1(-1i), Struct_1(2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = true;
    let var_1 = ~(abs(~global3.a) ^ global3.b);
    var var_2 = false;
    var_2 = false;
    let var_3 = Struct_2(u_input.c.x, global0[_wgslsmith_index_u32(firstLeadingBit(~(~(~1u))), 29u)], all(vec2<bool>(false, any(!vec4<bool>(false, global1.c, false, false)))), Struct_1(global3.d.a), global1.e);
    return 20792u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = global1.d.a;
    global3 = Struct_2(arg_0.b ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, func_3(false == global3.c)), 29u)], u_input.c.x, all(vec4<bool>(~global3.a <= _wgslsmith_mod_u32(global1.b, 4294967295u), false, false, select(arg_1.a < global1.d.a, false, global1.e.x && false))), Struct_1(16930i), global1.e);
    var var_1 = min(~_wgslsmith_sub_u32(abs(min(arg_0.b, global0[_wgslsmith_index_u32(global3.a, 29u)])), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 1u, 1u), ~global3.b)), u_input.c.x);
    global3 = Struct_2(select(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global3.a, 1u), vec3<u32>(1u, global1.a, 81886u)) | ~arg_0.b, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(5800u, 4294967295u, arg_0.b, global1.a), ~vec4<u32>(5214u, 87793u, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(71141u, 29u)]))), global3.d.a != (1i >> ((81579u & global0[_wgslsmith_index_u32(11311u, 29u)]) % 32u))), _wgslsmith_mult_u32((u_input.b & ~u_input.b) & ~16715u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 8623u), u_input.c.zx) >> (arg_0.b % 32u)), select(false, true, true), arg_0.d, vec2<bool>(arg_0.e.x, any(vec2<bool>(true, true))));
    global0 = array<u32, 29>();
    return -min(arg_1.a, arg_0.d.a);
}

fn func_4(arg_0: i32) -> bool {
    global0 = array<u32, 29>();
    let var_0 = 1229f;
    global3 = Struct_2(firstLeadingBit(~global1.b) & 4294967295u, ~global1.b, -firstLeadingBit(global3.d.a) >= arg_0, Struct_1(i32(-1i) * -(~(-1i))), global1.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -515f, var_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -799f) - vec4<f32>(var_0, -609f, var_0, 950f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 472f, var_0, var_0), vec4<f32>(1000f, -371f, -1067f, -339f)))))));
    let var_2 = Struct_1(global1.d.a);
    return all(vec4<bool>(false, false, global3.c, global3.e.x)) && true;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<u32, 29>();
    var var_0 = ~firstLeadingBit(~97473u);
    let var_1 = select(vec3<bool>(global1.e.x, all(!select(vec3<bool>(global3.e.x, global1.e.x, true), vec3<bool>(global1.e.x, false, global3.c), false)), true), select(vec3<bool>(false, all(select(vec4<bool>(global1.c, true, global3.e.x, global3.c), vec4<bool>(global1.e.x, false, global3.e.x, true), true)), !(!global1.e.x)), vec3<bool>(true, global3.e.x, true), !vec3<bool>(global1.c, global3.e.x, true)), vec3<bool>(global1.e.x, global1.e.x, func_4(func_2(Struct_2(global0[_wgslsmith_index_u32(48427u, 29u)], 4294967295u, false, global4[_wgslsmith_index_u32(1u, 4u)], global1.e), Struct_1(global3.d.a), global3.c) >> (func_3(false) % 32u))));
    let var_2 = vec3<bool>((_wgslsmith_add_u32(0u | global3.b, 57586u) != 36691u) == func_4(-(-2147483647i << (global3.a % 32u))), false, false);
    let var_3 = Struct_2(1u, 0u, !(!(!var_2.x)) && !(any(vec2<bool>(false, true)) & !var_1.x), global3.d, vec2<bool>(var_1.x, true));
    return u_input.b;
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    global2 = array<vec3<u32>, 19>();
    let var_0 = Struct_1(countOneBits(2147483647i));
    var var_1 = Struct_2(~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global1.a, 29u)], 1u) & 62989u), 22572u ^ ~func_1(Struct_1(var_0.a)), any(vec4<bool>(false, global1.c, func_4(arg_0.d.a), true)), global1.d, select(vec2<bool>(func_4(1i) || true, all(vec3<bool>(global3.e.x, arg_0.e.x, true)) & arg_0.c), !global1.e, select(global3.e, global1.e, vec2<bool>(global1.c, global1.e.x))));
    global0 = array<u32, 29>();
    let var_2 = vec3<f32>(-2089f, -1742f, _wgslsmith_f_op_f32(floor(655f)));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.a, _wgslsmith_mod_u32(~0u, ~(global3.a << (~1987u % 32u))), all(!global3.e), global4[_wgslsmith_index_u32(countOneBits(40385u), 4u)], func_5(Struct_2(func_1(global1.d), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global1.b, global0[_wgslsmith_index_u32(2448u, 29u)], 369u), vec4<u32>(55278u, global3.b, 6168u, global0[_wgslsmith_index_u32(1u, 29u)])), !(global3.b <= 38687u), global1.d, vec2<bool>(true, true))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(607f * -620f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1519f)) - _wgslsmith_f_op_f32(max(1123f, 1150f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)))));
    global3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.b, ~(4294967295u ^ global3.b)), 36600u), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(14043u, 29u)] ^ global0[_wgslsmith_index_u32(global1.b, 29u)], global0[_wgslsmith_index_u32(4311u, 29u)], 4294967295u >> (u_input.b % 32u)) >> (~(~_wgslsmith_mult_u32(4294967295u, global1.b)) % 32u), 29u)], true, global1.d, !global1.e);
    var var_1 = Struct_2(~(~global3.a), firstLeadingBit(1u), global3.e.x, global3.d, global1.e);
    let var_2 = min(1u, func_3(func_4(var_1.d.a)));
    let var_3 = global3.d;
    global0 = array<u32, 29>();
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~((var_3.a >> (var_2 % 32u)) | 2147483647i)), vec2<i32>(-4722i, 34232i));
    global0 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(450f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2115f, var_0.x, 1000f) * vec3<f32>(-1000f, var_0.x, var_0.x)), global3.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x)))), var_1.e.x)));
}

