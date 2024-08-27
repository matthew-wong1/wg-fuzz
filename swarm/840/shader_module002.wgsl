struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(-874f), Struct_3(638f), Struct_3(645f), Struct_3(1333f), Struct_3(-795f), Struct_3(934f), Struct_3(1000f), Struct_3(-1010f), Struct_3(-649f), Struct_3(2275f), Struct_3(750f), Struct_3(1196f), Struct_3(908f), Struct_3(-138f), Struct_3(-546f), Struct_3(-143f), Struct_3(-263f), Struct_3(679f), Struct_3(-491f), Struct_3(-283f), Struct_3(1052f), Struct_3(-433f), Struct_3(-578f), Struct_3(1449f), Struct_3(-942f), Struct_3(2549f), Struct_3(240f), Struct_3(219f), Struct_3(-1000f), Struct_3(1000f), Struct_3(-1649f));

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 11207u, 36619u), vec3<u32>(1u, 60500u, 8021u), vec3<u32>(55110u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 30058u), vec3<u32>(20675u, 11178u, 1u));

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-59086i, 0i, -2301i), vec3<i32>(-33279i, 25013i, -4003i), vec3<i32>(1i, 10428i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(-25836i, -18727i, -13784i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-23593i, i32(-2147483648), -72081i), vec3<i32>(1i, 13906i, 7599i));

var<private> global3: i32 = 1i;

var<private> global4: Struct_1 = Struct_1(58541i, vec2<bool>(false, false), 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = array<Struct_3, 31>();
    var var_0 = Struct_2(Struct_1(1i, vec2<bool>(34145u == ~arg_0.x, true), u_input.a.x));
    let var_1 = arg_0.x;
    let var_2 = var_0.a;
    global1 = array<vec3<u32>, 5>();
    return 172f;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.c ^ u_input.c))) * 2229f), -2005f);
    var var_1 = vec2<u32>(0u | u_input.c.x, u_input.b);
    var var_2 = ~(-2147483647i);
    let var_3 = vec4<u32>(~1u, _wgslsmith_mod_u32((arg_1.x >> (firstLeadingBit(90671u) % 32u)) ^ (u_input.c.x ^ _wgslsmith_mult_u32(u_input.b, 1u)), ~u_input.c.x), u_input.d, _wgslsmith_mod_u32(4903u, arg_1.x));
    var var_4 = vec4<i32>(firstTrailingBit(global4.c), global4.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x), 0i), _wgslsmith_sub_i32(2147483647i, -(u_input.a.x & -2147483647i)));
    return 749f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b.x;
    var var_1 = vec2<bool>(global4.b.x, global4.b.x);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.d, 31u)], u_input.c, vec3<bool>(var_1.x, true, true)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.c.x, u_input.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1539f, 756f)) - _wgslsmith_f_op_f32(-1773f * -894f)))), -630f));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(1424f - _wgslsmith_f_op_f32(-var_2))));
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ((i32(-1i) * -1i) | reverseBits(_wgslsmith_clamp_i32(-2147483647i, -1i, 43773i))) | 1i);
}

