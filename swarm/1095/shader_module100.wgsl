struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(4294967295u, 757f, vec2<u32>(6101u, 84687u)), Struct_1(0u, 1508f, vec2<u32>(4294967295u, 11608u)), Struct_1(11739u, -1307f, vec2<u32>(4294967295u, 14232u)), Struct_1(0u, -317f, vec2<u32>(1u, 22570u)), Struct_1(8651u, -1378f, vec2<u32>(53184u, 35117u)), Struct_1(26928u, -568f, vec2<u32>(0u, 0u)), Struct_1(2906u, 920f, vec2<u32>(4294967295u, 0u)), Struct_1(0u, 1387f, vec2<u32>(42314u, 14458u)), Struct_1(4294967295u, 150f, vec2<u32>(22473u, 1u)), Struct_1(50667u, -274f, vec2<u32>(1u, 0u)), Struct_1(0u, -729f, vec2<u32>(4294967295u, 29615u)), Struct_1(4294967295u, 1593f, vec2<u32>(0u, 31500u)), Struct_1(33039u, -514f, vec2<u32>(69011u, 987u)), Struct_1(104782u, -493f, vec2<u32>(69253u, 1u)), Struct_1(48609u, 1292f, vec2<u32>(16404u, 11523u)), Struct_1(22655u, 300f, vec2<u32>(57651u, 1u)), Struct_1(31604u, -2226f, vec2<u32>(12575u, 26253u)), Struct_1(11027u, 319f, vec2<u32>(80595u, 1u)), Struct_1(12135u, 1000f, vec2<u32>(0u, 57243u)), Struct_1(1u, -161f, vec2<u32>(11423u, 1u)), Struct_1(1u, -209f, vec2<u32>(65032u, 42115u)), Struct_1(73496u, -1799f, vec2<u32>(24466u, 40479u)), Struct_1(0u, -1863f, vec2<u32>(0u, 36218u)), Struct_1(4294967295u, -764f, vec2<u32>(20054u, 40235u)), Struct_1(0u, -895f, vec2<u32>(4294967295u, 76952u)), Struct_1(1u, 1152f, vec2<u32>(33255u, 44710u)), Struct_1(39160u, -2080f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(0u, -1318f, vec2<u32>(1u, 4294967295u)));

var<private> global1: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_1(max(~4294967295u, reverseBits(116872u << (1u % 32u)) ^ ~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))) * -361f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1238f))))), vec2<u32>(abs(u_input.b.x), 4294967295u) >> (select(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 0u), arg_1.b.zy ^ vec2<u32>(arg_1.c.x, arg_1.c.x)), ~arg_1.c, select(select(arg_3.zx, arg_3.yx, arg_2.a), select(arg_3.zx, vec2<bool>(false, global1.a), false), !arg_3.x)) % vec2<u32>(32u)));
    let var_1 = max(_wgslsmith_mod_i32(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(2147483647i, 0i))), i32(-1i) * -997i), -2147483647i);
    var var_2 = 29996i;
    return reverseBits(29156i);
}

fn func_2() -> i32 {
    let var_0 = -312f;
    let var_1 = select(~_wgslsmith_div_vec2_i32(-(~vec2<i32>(58636i, u_input.a)), (vec2<i32>(-2147483647i, u_input.d) << (u_input.b.yy % vec2<u32>(32u))) >> (firstLeadingBit(vec2<u32>(u_input.c, 15238u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2536i, u_input.d), vec2<i32>(u_input.a, 1i) << (u_input.b.zy % vec2<u32>(32u))), func_3(Struct_3(false), Struct_4(Struct_2(Struct_1(u_input.c, -405f, u_input.b.xx), global0[_wgslsmith_index_u32(u_input.c, 28u)]), u_input.b, vec2<u32>(u_input.c, 4294967295u), vec4<f32>(-451f, var_0, 1097f, 173f)), Struct_3(global1.a), vec3<bool>(true, false, false)) & _wgslsmith_dot_vec4_i32(vec4<i32>(41420i, u_input.d, u_input.a, 1i), vec4<i32>(u_input.a, 32769i, 0i, u_input.a))) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), u_input.b.zx) & u_input.b.zz) % vec2<u32>(32u)), global1.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(454f, -443f)));
    global1 = Struct_3(global1.a);
    return u_input.a;
}

fn func_1() -> Struct_4 {
    global1 = Struct_3(any(vec3<bool>(any(!vec4<bool>(global1.a, true, global1.a, true)), any(!vec4<bool>(global1.a, false, false, true)), true)));
    var var_0 = vec2<bool>(true, !any(!(!vec4<bool>(global1.a, global1.a, true, true))));
    let var_1 = select(_wgslsmith_div_i32(1i, ~func_2()), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, countOneBits(u_input.d), ~1i), vec3<i32>(select(u_input.a, u_input.a, false), 2147483647i, u_input.a)), select(min(-11742i, firstTrailingBit(u_input.d)), _wgslsmith_sub_i32(reverseBits(u_input.d), ~u_input.a), u_input.d >= firstTrailingBit(43147i))), var_0.x);
    global0 = array<Struct_1, 28>();
    var var_2 = true;
    return Struct_4(Struct_2(Struct_1(select(4294967295u, 0u, global1.a) << (_wgslsmith_sub_u32(87937u, u_input.c) % 32u), _wgslsmith_f_op_f32(max(-2241f, _wgslsmith_f_op_f32(step(914f, 1000f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.c)), global0[_wgslsmith_index_u32(54932u, 28u)]), vec3<u32>(select(abs(107523u), ~50686u, true), ~(~u_input.b.x), u_input.c) ^ (vec3<u32>(u_input.c, u_input.c, u_input.b.x) ^ vec3<u32>(~u_input.b.x, u_input.c, max(0u, u_input.b.x))), vec2<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 28867u, u_input.c), u_input.b), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), true) << (min(u_input.b.x & 4294967295u, reverseBits(u_input.b.x)) % 32u), ~1u | u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(199f, -511f, 2547f, -1834f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = func_1();
    let var_1 = Struct_3(!all(!select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, true), vec2<bool>(false, global1.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 255f, var_0.d.x) - var_0.d.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2195f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-414f * var_0.d.x))), var_0.d)));
}

