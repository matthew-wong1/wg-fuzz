struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<f32, 27> = array<f32, 27>(761f, 2021f, 1603f, -1000f, 325f, -176f, -566f, 246f, 933f, 1000f, 264f, -981f, 1006f, -2373f, 2268f, 705f, -669f, -1000f, -747f, 301f, 981f, -478f, -806f, -584f, 2620f, 1299f, 399f);

var<private> global3: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-14429i, -50066i, -16506i, 30663i), vec4<i32>(-1i, -27004i, -28855i, -22645i), vec4<i32>(-20466i, -48433i, -48390i, -15436i), vec4<i32>(2147483647i, -50335i, -1i, -56909i), vec4<i32>(-32215i, i32(-2147483648), i32(-2147483648), -29695i), vec4<i32>(2147483647i, -61956i, 1i, -20967i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -63916i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 0i), vec4<i32>(-42404i, -11121i, 2147483647i, -61105i), vec4<i32>(23725i, 2147483647i, -63656i, 2147483647i), vec4<i32>(2906i, 36007i, 34493i, 0i), vec4<i32>(-1i, 33336i, -71880i, 25629i), vec4<i32>(0i, 0i, -1i, 2147483647i), vec4<i32>(12675i, 2147483647i, 1i, 11225i), vec4<i32>(-6295i, 0i, i32(-2147483648), -32307i), vec4<i32>(-1i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 25876i, 0i, 30664i), vec4<i32>(0i, -11289i, -1i, -1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(52599i, -48305i, 0i, -73055i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    return abs(~(arg_0.x ^ 4294967295u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global3 = array<vec4<i32>, 20>();
    global0 = select(global1[_wgslsmith_index_u32(~arg_1.b, 23u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(countOneBits(vec3<u32>(arg_1.b, 1u, arg_1.b))), ~firstTrailingBit(abs(vec3<u32>(0u, arg_1.b, 4294967295u)))), 23u)], !vec2<bool>(global0.x, false));
    global3 = array<vec4<i32>, 20>();
    var var_0 = any(select(!vec2<bool>(!arg_1.a, global0.x), select(select(select(global1[_wgslsmith_index_u32(arg_1.b, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], vec2<bool>(false, global0.x)), global1[_wgslsmith_index_u32(arg_1.b, 23u)], any(vec4<bool>(global0.x, arg_0, false, arg_1.a))), !select(global1[_wgslsmith_index_u32(arg_1.b, 23u)], global1[_wgslsmith_index_u32(44238u, 23u)], true), select(global1[_wgslsmith_index_u32(func_1(vec4<u32>(arg_1.b, 1u, arg_1.b, 121000u)), 23u)], vec2<bool>(global0.x, arg_1.a), 64085u > arg_1.b)), arg_0));
    var var_1 = -15576i == _wgslsmith_mult_i32(u_input.a, abs(-u_input.b) & -u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)]) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(842u, 27u)]));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f + _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(func_3(global0.x, Struct_1(global0.x, 4294967295u))), firstLeadingBit(-2147483647i) != abs(u_input.b)))));
    global1 = array<vec2<bool>, 23>();
    var var_1 = vec4<f32>(-132f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(31092u, func_1(~vec4<u32>(4294967295u, 37661u, 0u, 23111u)), ~0u), 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(2499u, 0u)), 27u)])), _wgslsmith_f_op_f32(-arg_0)), global2[_wgslsmith_index_u32(~73320u, 27u)]);
    global2 = array<f32, 27>();
    let var_2 = Struct_1(global0.x && global0.x, ~18656u);
    return select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(reverseBits(1u), 23u)], _wgslsmith_f_op_f32(-var_1.x) <= -513f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((func_1(~vec4<u32>(0u, 1u, 1u, 0u)) ^ 1u) | ~0u);
    let var_1 = u_input.a;
    var_0 = 4294967295u;
    global0 = !select(!func_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10639u, 20880u, 4294967295u), 27u)]), func_2(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~4294967295u, 27u)], global2[_wgslsmith_index_u32(~60828u, 27u)]))), global1[_wgslsmith_index_u32(28539u, 23u)]);
    var var_2 = Struct_1(global0.x, 1u);
    let var_3 = Struct_1(all(select(vec4<bool>(false, all(vec3<bool>(false, true, var_2.a)), any(vec2<bool>(false, global0.x)), !var_2.a), select(vec4<bool>(false, true, true, true), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, global0.x, global0.x, false), false), !vec4<bool>(var_2.a, true, global0.x, global0.x)), vec4<bool>(var_2.b > var_2.b, false, all(vec3<bool>(false, false, false)), u_input.a != -19739i))), abs(reverseBits(0u)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(49001i, -1i, _wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(18287i, -2147483647i)), u_input.b) & (_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, 15264i, 66932i, 1i), ~vec4<i32>(var_1, var_1, var_1, 2147483647i)) ^ (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 46950u), vec2<u32>(4294967295u, 29377u)), 20u)] << (~vec4<u32>(6203u, var_4.b, var_2.b, var_2.b) % vec4<u32>(32u)))), vec3<i32>(19943i, abs(_wgslsmith_mod_i32(-20602i, u_input.a)), 0i) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 4030u, var_4.b), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(12220u, 15829u, 3010u), vec3<u32>(var_2.b, var_4.b, var_3.b)), firstLeadingBit(vec3<u32>(42328u, 0u, var_4.b)))) % vec3<u32>(32u)));
}

