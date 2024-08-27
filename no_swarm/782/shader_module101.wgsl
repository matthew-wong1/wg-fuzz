struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(33925u, vec2<bool>(false, false)), Struct_1(1u, vec2<bool>(true, true)), Struct_1(1u, vec2<bool>(false, false)), Struct_1(1u, vec2<bool>(false, false)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(false, false)), Struct_1(52408u, vec2<bool>(true, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -462f) <= arg_2;
    global2 = max(max(-20615i, i32(-1i) * -38371i), ~_wgslsmith_add_i32(-_wgslsmith_mod_i32(-55664i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x)));
    let var_2 = ~vec2<u32>(u_input.b, countOneBits(4294967295u & max(arg_1.a, u_input.b)));
    global1 = array<vec3<i32>, 23>();
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> vec3<bool> {
    let var_0 = (~(~_wgslsmith_mod_u32(0u, u_input.b)) << (arg_0.x % 32u)) <= arg_0.x;
    global3 = ~arg_0.x;
    let var_1 = u_input.b;
    global1 = array<vec3<i32>, 23>();
    global0 = array<f32, 25>();
    return vec3<bool>(false, any(vec2<bool>(all(!vec3<bool>(true, var_0, var_0)), !func_3(Struct_1(u_input.b, vec2<bool>(var_0, var_0)), global4[_wgslsmith_index_u32(17471u, 8u)], -194f))), false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<vec3<i32>, 23>();
    global0 = array<f32, 25>();
    global2 = u_input.a.x;
    global4 = array<Struct_1, 8>();
    var var_0 = select(select(func_2(vec3<u32>(u_input.b, reverseBits(0u), 4294967295u ^ arg_1.a), vec3<u32>(~arg_1.a, 57508u, 1u), -679f), vec3<bool>(!(arg_1.b.x | true), arg_0.b.x, select(global0[_wgslsmith_index_u32(4294967295u, 25u)] <= global0[_wgslsmith_index_u32(65215u, 25u)], arg_0.b.x || arg_0.b.x, all(arg_1.b))), vec3<bool>(any(!vec4<bool>(true, false, arg_0.b.x, arg_1.b.x)), true, countOneBits(arg_0.a) <= (9287u >> (u_input.b % 32u)))), func_2(vec3<u32>(countOneBits(0u), arg_0.a, _wgslsmith_mod_u32(arg_1.a, arg_0.a) ^ ~1u), vec3<u32>(arg_1.a, ~4294967295u, arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(firstLeadingBit(84894u), 25u)], global0[_wgslsmith_index_u32(arg_1.a << (arg_0.a % 32u), 25u)], func_3(Struct_1(arg_0.a, vec2<bool>(false, arg_1.b.x)), Struct_1(1u, vec2<bool>(false, true)), global0[_wgslsmith_index_u32(arg_1.a, 25u)]))))), select(!(!(!vec3<bool>(arg_1.b.x, arg_1.b.x, true))), vec3<bool>(arg_0.b.x, !func_2(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(arg_1.a, 0u, arg_0.a), -388f).x, true), !vec3<bool>(true, true, any(vec3<bool>(arg_1.b.x, arg_0.b.x, false)))));
    return StorageBuffer(1u, arg_0.a, 1197f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b, select(vec2<bool>(true, true), vec2<bool>(false, true), false));
    let var_1 = global4[_wgslsmith_index_u32(reverseBits(0u), 8u)];
    let var_2 = var_1.b.x;
    var var_3 = _wgslsmith_mod_vec2_i32(u_input.a.xz, abs(abs(max(u_input.a.zz, vec2<i32>(u_input.a.x, -2147483647i)))));
    var var_4 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(reverseBits(vec3<u32>(53437u, 34128u, u_input.b)) ^ vec3<u32>(var_1.a, 26207u, 1u)), abs(vec3<u32>(0u, 30340u, var_0.a)) ^ reverseBits(abs(vec3<u32>(7271u, var_1.a, 4294967295u)))), 8u)];
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_div_u32(abs(0u), var_1.a), !(!(!vec2<bool>(var_1.b.x, true)))), Struct_1(87608u, var_4.b));
}

