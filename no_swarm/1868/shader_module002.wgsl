struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(44820u, 23261u, 4294967295u, 40582u);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(60560u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 86366u)), Struct_1(vec3<u32>(1u, 4294967295u, 82390u)), Struct_1(vec3<u32>(4294967295u, 1u, 101834u)), Struct_1(vec3<u32>(4294967295u, 16107u, 26252u)), Struct_1(vec3<u32>(0u, 67496u, 0u)), Struct_1(vec3<u32>(1u, 112371u, 0u)), Struct_1(vec3<u32>(1u, 72579u, 31390u)), Struct_1(vec3<u32>(0u, 1u, 66211u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 10078u)), Struct_1(vec3<u32>(17798u, 0u, 44936u)), Struct_1(vec3<u32>(39857u, 52618u, 45704u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    global1 = array<Struct_1, 13>();
    let var_0 = global1[_wgslsmith_index_u32(45822u, 13u)];
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(23957u, 1u)) & _wgslsmith_clamp_vec2_u32(min(arg_2.yz, arg_1.yy), firstTrailingBit(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, arg_2.x)), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 4u)]) | abs(vec2<u32>(global0[_wgslsmith_index_u32(6813u, 4u)], 4294967295u))), firstTrailingBit(63566u), 16630u);
    var var_2 = arg_2.x ^ (arg_2.x >> (arg_1.x % 32u));
    let var_3 = Struct_1(var_0.a);
    return select(vec3<bool>(true, true, true), vec3<bool>(!(!arg_0), any(vec3<bool>(arg_0, true, arg_0)), !(true && (true || arg_0))), arg_0);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = !select(vec3<bool>(true, true, true), !func_3(true, reverseBits(vec3<u32>(13017u, 69587u, var_0.a.x)), arg_0.a), true);
    var var_2 = any(select(!select(func_3(true, arg_0.a, vec3<u32>(var_0.a.x, u_input.c, u_input.c)), !vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, false)), !(!vec3<bool>(var_1.x, false, var_1.x)), var_1.x && any(!vec3<bool>(var_1.x, true, false))));
    global1 = array<Struct_1, 13>();
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, ~_wgslsmith_div_u32(1051u, 4294967295u)), 13u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-536f))))));
    var_0 = arg_0;
    var var_1 = func_2(Struct_1(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1388u), 4u)], 4u)], u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(69160u, 63619u, 36198u, 4294967295u) >> (vec4<u32>(56875u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]) % vec4<u32>(32u))))));
    global1 = array<Struct_1, 13>();
    var_0 = arg_0;
    return global1[_wgslsmith_index_u32(firstTrailingBit(var_1.a.x & _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 32777u, u_input.c), vec3<u32>(_wgslsmith_add_u32(4543u, 1u), 0u, 1u))), 13u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    var var_1 = true;
    let var_2 = Struct_1(arg_2.a & (arg_0.a << (arg_3.a % vec3<u32>(32u))));
    var_1 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, _wgslsmith_f_op_f32(499f * 1880f)))))));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global0 = array<u32, 4>();
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(~(~global0[_wgslsmith_index_u32(u_input.c, 4u)])), 13u)];
    let var_1 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, ~4294967295u), _wgslsmith_mult_u32(countOneBits(1u), global0[_wgslsmith_index_u32(firstTrailingBit(25130u), 4u)])), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29843u, u_input.c), ~var_0.a.yy), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 4u)] ^ 4294967295u))), 13u)], u_input.b.x, func_1(-256f), func_1(-1129f));
    var_0 = func_2(Struct_1(var_1.a));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, max(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.c, 68695u, global0[_wgslsmith_index_u32(u_input.c, 4u)]) & vec4<u32>(0u, var_1.a.x, var_1.a.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(12028u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], var_0.a.x, u_input.c) & vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], 1u, 64429u, u_input.c))), ~global0[_wgslsmith_index_u32(~(u_input.c ^ u_input.c), 4u)]), vec3<u32>(0u, ~1u >> (_wgslsmith_add_u32(var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)]) % 32u), 60776u) & ~(~vec3<u32>(var_0.a.x, 12319u, 63330u)));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-240f, -606f), _wgslsmith_f_op_f32(492f - -2329f))))), u_input.b);
}

