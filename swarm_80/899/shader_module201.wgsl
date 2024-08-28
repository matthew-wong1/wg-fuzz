struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8>;

var<private> global1: array<bool, 17> = array<bool, 17>(false, false, false, false, false, false, true, true, true, true, true, true, true, true, false, false, true);

var<private> global2: bool = false;

var<private> global3: u32;

var<private> global4: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(55383u, 60115u), vec2<u32>(16971u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(78535u, 57737u), vec2<u32>(44920u, 0u), vec2<u32>(36393u, 44983u), vec2<u32>(41761u, 45095u), vec2<u32>(4294967295u, 9993u), vec2<u32>(1u, 1u), vec2<u32>(3357u, 19572u), vec2<u32>(70789u, 65069u), vec2<u32>(358u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_4(Struct_3(Struct_2(arg_0.c.x), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), false)), all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])), all(!vec4<bool>(false, global1[_wgslsmith_index_u32(31764u, 17u)], false, global1[_wgslsmith_index_u32(52161u, 17u)])), true || global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(49573u, arg_0.b, 4294967295u), 17u)]), Struct_2(-36809i & arg_0.c.x), arg_0.d.x, arg_0.d.xx), false);
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    var var_1 = 33903u;
    var var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1345f), all(!var_0.a.b.zyy)));
    return var_0.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = arg_1.a.c;
    global0 = array<Struct_5, 8>();
    global4 = array<vec2<u32>, 14>();
    global2 = false;
    global2 = true;
    return select(!vec2<bool>(all(arg_1.a.b) | true, (global1[_wgslsmith_index_u32(32194u, 17u)] & arg_1.b) | (global1[_wgslsmith_index_u32(u_input.b.x, 17u)] && true)), select(select(arg_1.a.b.yz, vec2<bool>(arg_1.a.b.x & false, !arg_1.a.b.x), any(arg_1.a.b.yz)), arg_1.a.b.wz, !vec2<bool>(func_3(Struct_1(arg_1.a.d, 53889u, arg_0, vec4<f32>(-1083f, -735f, -345f, -1001f))), false)), !select(!select(arg_1.a.b.yx, vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, global1[_wgslsmith_index_u32(14597u, 17u)])), arg_1.a.b.zz, select(arg_1.a.b.xw, !vec2<bool>(true, arg_1.b), !arg_1.a.b.zx)));
}

fn func_1() -> u32 {
    let var_0 = !select(vec2<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(61476u, 17u)], false, false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), true), !select(func_2(vec4<i32>(-2147483647i, -18235i, 1i, 5374i), Struct_4(Struct_3(Struct_2(-1i), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], true), Struct_2(19616i), 882f, vec2<f32>(447f, 1319f)), global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(33284u, 17u)]), vec2<bool>(true, true)), true), true);
    var var_1 = global0[_wgslsmith_index_u32(4294967295u << (u_input.b.x % 32u), 8u)];
    global2 = func_2(vec4<i32>(select(-21797i, var_1.b.x, true), i32(-1i) * -1i, -2147483647i >> (~_wgslsmith_mult_u32(0u, u_input.b.x) % 32u), var_1.b.x), Struct_4(var_1.c.a, false)).x;
    global1 = array<bool, 17>();
    var var_2 = Struct_5(abs(var_1.a) & var_1.a, firstLeadingBit(var_1.b), Struct_4(Struct_3(var_1.d.a.a, select(!var_1.c.a.b, !vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(true, true, var_1.d.b, var_1.d.b), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], var_0.x, true, var_1.c.b), var_1.c.a.b)), Struct_2(var_1.d.a.c.a), var_1.c.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a.e.x, var_1.c.a.d)))), false), var_1.c);
    return ~(~(~1u) << (~(~(56615u ^ u_input.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(14116u), 17u)];
    global0 = array<Struct_5, 8>();
    var var_1 = select(~vec3<u32>(0u, ~func_1(), _wgslsmith_mult_u32(82852u, 0u)), vec3<u32>(4294967295u ^ abs(u_input.b.x), 4294967295u, ~5359u), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], false), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), global1[_wgslsmith_index_u32(13097u >> (u_input.a.x % 32u), 17u)]), false), !vec3<bool>(any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(28212u, 17u)], false)), true, true || global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), global1[_wgslsmith_index_u32(~(select(u_input.b.x, 1u, global1[_wgslsmith_index_u32(21473u, 17u)]) << (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.a.x) % 32u)), 17u)]));
    var var_2 = vec4<bool>(true, true, false, true);
    global4 = array<vec2<u32>, 14>();
    let var_3 = ~min(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), reverseBits(vec3<i32>(-1i >> (u_input.a.x % 32u), -42596i, 23187i)));
    global2 = var_2.x;
    global1 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(889f, countOneBits(11332u), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2501f * -838f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1301f, 1825f) - _wgslsmith_f_op_f32(f32(-1f) * -342f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f))), 1f));
}

