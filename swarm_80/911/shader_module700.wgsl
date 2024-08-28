struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<i32, 23>;

var<private> global2: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = select(global2.yxw, global2.wzx, any(select(vec4<bool>(!global2.x, any(vec3<bool>(true, true, arg_2.b)), any(vec4<bool>(true, true, arg_2.b, arg_2.b)), !global2.x), vec4<bool>(global2.x, false, false, false), !select(vec4<bool>(true, global2.x, global2.x, arg_2.b), vec4<bool>(true, global2.x, true, true), false))));
    global2 = select(vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true))) && all(global2.yy), var_0.x, all(global2.zw), true), select(select(select(vec4<bool>(true, global2.x, var_0.x, arg_2.b), vec4<bool>(arg_2.b, global2.x, global2.x, global2.x), select(vec4<bool>(var_0.x, false, arg_2.b, false), vec4<bool>(false, var_0.x, var_0.x, true), arg_2.b)), select(!vec4<bool>(false, true, false, var_0.x), select(vec4<bool>(arg_2.b, false, true, var_0.x), vec4<bool>(true, true, false, true), vec4<bool>(arg_2.b, var_0.x, true, false)), !vec4<bool>(var_0.x, global2.x, var_0.x, false)), all(select(vec3<bool>(false, false, false), global2.zzw, arg_2.b))), select(select(select(vec4<bool>(var_0.x, global2.x, true, true), vec4<bool>(var_0.x, false, arg_2.b, arg_2.b), true), !vec4<bool>(arg_2.b, global2.x, false, arg_2.b), vec4<bool>(var_0.x, var_0.x, true, arg_2.b)), vec4<bool>(false, false, !var_0.x, true), global2.x), select(select(vec4<bool>(var_0.x, true, global2.x, false), select(vec4<bool>(false, global2.x, arg_2.b, global2.x), vec4<bool>(true, arg_2.b, var_0.x, var_0.x), arg_2.b), all(var_0.xx)), select(!vec4<bool>(true, arg_2.b, false, var_0.x), !vec4<bool>(global2.x, var_0.x, true, arg_2.b), var_0.x), false)), all(!select(!global2.yz, vec2<bool>(var_0.x, arg_2.b), select(vec2<bool>(false, var_0.x), vec2<bool>(true, arg_2.b), var_0.yy))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-259f, -117f, 327f))))))))));
    global1 = array<i32, 23>();
    var var_2 = -1000f;
    return u_input.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_2.x, ~func_3(i32(-1i) * -4289i, vec2<f32>(404f, 661f), Struct_3(1011f, global2.x, Struct_2(arg_1.a, global0[_wgslsmith_index_u32(arg_0.x, 2u)]))), 302f), arg_0.x);
    return ~(~38534u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = arg_0.a;
    var_1 = arg_0.a;
    global0 = array<u32, 2>();
    let var_2 = select(vec4<bool>(!(!(global2.x && false)), !select(all(vec4<bool>(global2.x, true, true, true)), !global2.x, true), select(select(false, all(vec3<bool>(true, false, true)), global2.x), any(vec2<bool>(true, global2.x)), false), global2.x), !select(vec4<bool>(any(vec3<bool>(true, false, global2.x)), select(true, false, true), true, global2.x && true), select(!vec4<bool>(global2.x, global2.x, global2.x, false), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(true, global2.x, false, global2.x)), true), global2.x), vec4<bool>(true, false, false, global2.x));
    return Struct_1(-1006f, arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))) - _wgslsmith_f_op_f32(f32(-1f) * -885f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = global2.x;
    let var_1 = !(true && (all(vec3<bool>(global2.x, global2.x, false)) && true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)));
    var var_3 = func_4(Struct_2(Struct_1(-195f, -u_input.a >> (~0u % 32u), _wgslsmith_f_op_f32(round(1286f))), global0[_wgslsmith_index_u32(24991u, 2u)] | (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20613u, 2u)], 2u)], 2u)] | func_2(vec4<u32>(global0[_wgslsmith_index_u32(17695u, 2u)], 64381u, 0u, 12448u), Struct_2(Struct_1(-789f, u_input.a, -208f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26898u, 2u)], 2u)], 2u)], 2u)], 2u)]), arg_1, Struct_1(-1413f, u_input.a, 1000f)))), ~(max(~u_input.a, abs(-2147483647i)) | (global1[_wgslsmith_index_u32(select(23310u, 15061u, false), 23u)] >> (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39309u, 0u, global0[_wgslsmith_index_u32(0u, 2u)]), 2u)] % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, 944f)), u_input.a, _wgslsmith_f_op_f32(abs(-1557f))), ~43837u));
    var_3 = func_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(199f - arg_0.x), -778f), max(-12384i, -32217i), _wgslsmith_f_op_f32(-var_3.a)), global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 73279u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19958u, 2u)], 2u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(59825u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], global0[_wgslsmith_index_u32(0u, 2u)])) >> (firstLeadingBit(global0[_wgslsmith_index_u32(1u, 2u)]) % 32u)), 2u)]), -1i, Struct_2(func_4(Struct_2(Struct_1(-2070f, var_3.b, var_3.a), firstLeadingBit(global0[_wgslsmith_index_u32(12818u, 2u)])), (i32(-1i) * -1i) >> (global0[_wgslsmith_index_u32(1u, 2u)] % 32u), Struct_2(Struct_1(arg_1.x, u_input.a, arg_0.x), global0[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(13299u, 2u)]), 0u), 2u)]));
    return vec4<bool>(22049u > _wgslsmith_mod_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 2u)], 2u)], func_2(vec4<u32>(15613u, 34244u, 39596u, 0u), Struct_2(Struct_1(-538f, u_input.a, -2880f), global0[_wgslsmith_index_u32(1u, 2u)]), arg_1, Struct_1(var_2, global1[_wgslsmith_index_u32(0u, 23u)], arg_0.x)), any(global2.wy)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(13279u, 2u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 0u)) >> (~global0[_wgslsmith_index_u32(20985u, 2u)] % 32u)), !(u_input.a != ~select(-2147483647i, 25013i, true)), var_1, !global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!(!(!vec4<bool>(global2.x, false, global2.x, global2.x))), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1099f, -2273f, -1600f, 532f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-399f, -860f, 1000f, 2735f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2068f, 1412f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1643f)))), !vec4<bool>(true, any(vec4<bool>(global2.x, global2.x, global2.x, true)), false, global2.x));
    global0 = array<u32, 2>();
    var var_0 = 9560u;
    global2 = select(select(!select(!vec4<bool>(true, global2.x, false, global2.x), !vec4<bool>(global2.x, global2.x, true, true), true), vec4<bool>(true, true, true, global2.x), !select(select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x)), !vec4<bool>(true, global2.x, global2.x, global2.x), select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, false, false, true)))), select(select(func_1(vec4<f32>(-605f, 642f, 928f, 265f), _wgslsmith_f_op_vec2_f32(vec2<f32>(470f, -296f) + vec2<f32>(546f, -1691f))), vec4<bool>(global2.x, global2.x, true, true), global2.x), select(select(func_1(vec4<f32>(-236f, 499f, 2373f, -1286f), vec2<f32>(-210f, 1000f)), !vec4<bool>(global2.x, false, false, true), true), !(!vec4<bool>(true, global2.x, false, global2.x)), global2.x), global2.x), false | (-28902i > (u_input.a | -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -287f), global0[_wgslsmith_index_u32(~countOneBits(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32414u, 2u)], 2u)]), 2u)]) & 45134u, 2u)]);
}

