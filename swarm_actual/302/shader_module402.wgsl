struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(4294967295u, 0u, 4294967295u, 20873u, 1u, 1u, 3379u, 25635u, 4294967295u, 25768u, 0u, 0u, 4294967295u, 4294967295u, 30914u, 4294967295u, 4294967295u, 0u, 48133u, 4294967295u, 1u, 4294967295u, 0u, 1u, 29276u, 111159u);

var<private> global1: array<i32, 17>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    global2 = Struct_2(arg_3.a);
    global1 = array<i32, 17>();
    return vec3<f32>(267f, arg_2, _wgslsmith_f_op_f32(trunc(1819f)));
}

fn func_2() -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_sub_u32(29196u, ~(~1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(971f, -931f, 145f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(global2.a), min(_wgslsmith_mod_i32(16778i, global2.a.b), select(2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 17u)], true)), _wgslsmith_div_f32(-1257f, _wgslsmith_f_op_f32(1176f - -1406f)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 17u)], -2147483647i, 2147483647i))))));
    var var_2 = global2.a;
    global1 = array<i32, 17>();
    let var_3 = vec3<u32>(~_wgslsmith_mult_u32((u_input.a & u_input.a) << (select(u_input.a, global0[_wgslsmith_index_u32(15229u, 26u)], true) % 32u), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 26u)] | u_input.a)), 1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 80278u) & u_input.a, u_input.a) | u_input.a);
    return all(select(!vec3<bool>(true, true, var_3.x != 4294967295u), !vec3<bool>(any(vec3<bool>(true, true, false)), true, true), all(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> bool {
    global2 = Struct_2(global2.a);
    let var_0 = ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], u_input.a, 0u, 2345u))), firstTrailingBit(min(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 10674u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)])) ^ vec4<u32>(u_input.a, 13076u, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)])));
    global2 = arg_1;
    let var_1 = 5557u;
    global2 = Struct_2(Struct_1(-abs(reverseBits(63856i)), -global1[_wgslsmith_index_u32(~var_1, 17u)], global1[_wgslsmith_index_u32(~(~var_1), 17u)]));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(all(vec2<bool>(true, true)) || true, any(vec4<bool>(false, true, true, true)) != true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), true), !select(vec4<bool>(true, false, 41287u <= global0[_wgslsmith_index_u32(0u, 26u)], true), vec4<bool>(func_1(-266f, Struct_2(global2.a), false), false, true, any(vec4<bool>(true, true, true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec4<bool>(false, true || any(vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-296f)) * _wgslsmith_f_op_f32(sign(1453f))), Struct_2(global2.a), false), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false))));
    global1 = array<i32, 17>();
    global0 = array<u32, 26>();
    let var_1 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 46683u, global0[_wgslsmith_index_u32(23219u, 26u)], 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, 0u, u_input.a)) << (vec4<u32>(0u, global0[_wgslsmith_index_u32(40547u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17636u, 26u)], 26u)], 26u)], ~u_input.a, select(25601u, global0[_wgslsmith_index_u32(79460u, 26u)], false)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(u_input.a, 55748u, 112067u, global0[_wgslsmith_index_u32(4294967295u, 26u)])) | ~(~vec4<u32>(0u, 53152u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 2543u)));
    global0 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(u_input.a, 17u)] >> (global0[_wgslsmith_index_u32(u_input.a, 26u)] % 32u));
}

