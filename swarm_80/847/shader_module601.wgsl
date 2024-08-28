struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(67632u, 20078u), Struct_1(-1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    global1 = Struct_3(vec2<u32>(global1.a.x, 4294967295u), global1.b);
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = global1.b;
    let var_1 = Struct_1(var_0.a);
    return -arg_3.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    global1 = Struct_3(select(global1.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 97606u), global1.a), ~vec2<u32>(arg_1.c, u_input.a.x), vec2<u32>(u_input.a.x, 13651u)) & (~global1.a << (_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, 4294967295u), vec2<u32>(1u, global1.a.x)) % vec2<u32>(32u))), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(16934u, 3u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(30009u, 3u)]), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(1386u, 3u)] || global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.c, 3u)])), (3669u < global1.a.x) | global0[_wgslsmith_index_u32(select(u_input.a.x, 4294967295u, false), 3u)])), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * _wgslsmith_f_op_f32(arg_1.a.a * -1169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    let var_0 = ~(vec4<u32>(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_1.c, global1.a.x), vec4<u32>(0u, u_input.a.x, 29857u, global1.a.x)), u_input.a.x, 37926u, 32637u) << ((vec4<u32>(0u >> (global1.a.x % 32u), u_input.a.x, ~u_input.a.x, max(15686u, 54299u)) ^ vec4<u32>(arg_1.c, select(arg_1.c, arg_1.c, global0[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_add_u32(4294967295u, arg_1.c), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global1.a.x, 4294967295u, 4294967295u, u_input.a.x)))) % vec4<u32>(32u)));
    var var_1 = vec4<bool>(true, true, !all(vec2<bool>(!global0[_wgslsmith_index_u32(var_0.x, 3u)], select(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(global1.a.x, 3u)], false))), true);
    var var_2 = -703f;
    global1 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_1.c), u_input.a.x, global1.a.x), u_input.a.zzz), 1u), arg_1.a);
    return ~vec4<i32>(abs(arg_1.b.x), u_input.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.b, 2147483647i), arg_1.b.x), _wgslsmith_mult_i32(109476i, ~1i));
}

fn func_1() -> vec2<bool> {
    global0 = array<bool, 3>();
    let var_0 = ~countOneBits(1u);
    let var_1 = -285f;
    var var_2 = vec3<i32>(~select(1i, u_input.b, !(!global0[_wgslsmith_index_u32(var_0, 3u)])), countOneBits(-23950i), firstLeadingBit(min(~1i, -2147483647i)));
    var_2 = vec3<i32>(_wgslsmith_sub_i32(abs(func_2(abs(u_input.b), firstTrailingBit(vec4<u32>(var_0, 98837u, u_input.a.x, u_input.a.x)), -2147483647i, _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_2.x, u_input.b, 45861i), vec4<i32>(-9139i, var_2.x, 65743i, var_2.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, u_input.b, -u_input.b, abs(var_2.x)), func_3(global1.b, Struct_2(Struct_1(global1.b.a), vec2<i32>(var_2.x, 23370i), 51039u)))), var_2.x, -18642i);
    return !select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] || true, true), vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x) >> (max(26761u, 4294967295u) % 32u), 3u)], all(vec2<bool>(true, true))), !vec2<bool>(global1.a.x >= 1u, all(vec4<bool>(true, global0[_wgslsmith_index_u32(5742u, 3u)], false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<bool, 3>();
    let var_1 = 1i;
    global1 = Struct_3(vec2<u32>(1u, 1u), Struct_1(_wgslsmith_f_op_f32(1522f * -603f)));
    var var_2 = Struct_3(u_input.a.zz, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a, -192f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1451f, global1.b.a), vec2<f32>(-198f, 387f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, global1.b.a) + vec2<f32>(global1.b.a, global1.b.a)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(591f, -1047f), vec2<f32>(-779f, 390f), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.a, 808f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(805f, -665f), vec2<f32>(1061f, -1792f), vec2<bool>(global0[_wgslsmith_index_u32(32730u, 3u)], false))))))));
}

