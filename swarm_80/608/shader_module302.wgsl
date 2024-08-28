struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0u), Struct_1(1u), Struct_1(63077u), Struct_1(1u), Struct_1(50881u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(62012u), Struct_1(10112u), Struct_1(1u), Struct_1(4294967295u), Struct_1(29660u), Struct_1(33884u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(18918u));

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    global1 = array<vec4<u32>, 3>();
    let var_0 = Struct_1(~_wgslsmith_mult_u32(0u, 50269u));
    let var_1 = vec3<bool>(all(vec2<bool>(false, true)), !arg_0, arg_0 | select(-u_input.b.x != u_input.b.x, (arg_0 && true) && true, true));
    var var_2 = u_input.a;
    global0 = array<Struct_1, 16>();
    return !var_1.zy;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(33609u, _wgslsmith_add_u32(firstLeadingBit(arg_1.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(8440u, arg_1.a), vec2<u32>(arg_1.a, arg_1.a))));
    var var_1 = ~(1u << (arg_1.a % 32u));
    var_1 = var_0;
    var var_2 = select(select(!func_3(true, u_input.a ^ 2147483647i), select(vec2<bool>(false, all(vec4<bool>(false, false, true, false))), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, u_input.a < -19770i)), func_3(true, 1274i)), vec2<bool>(func_3(!any(vec2<bool>(false, false)), _wgslsmith_mult_i32(arg_0.x, firstLeadingBit(arg_0.x))).x, !(arg_0.x > 13507i)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    var var_3 = Struct_1(1u);
    return firstTrailingBit(~(~global1[_wgslsmith_index_u32(~(~0u), 3u)]));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(~(~(~global1[_wgslsmith_index_u32(4294967295u, 3u)])) >> (func_2(vec4<i32>(-48707i, countOneBits(24655i), 19363i, u_input.a >> (1u % 32u)), global0[_wgslsmith_index_u32(0u, 16u)]) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 46954u, 1u, 17537u), global1[_wgslsmith_index_u32(70399u, 3u)])), _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(func_2(vec4<i32>(1i, 0i, u_input.b.x, u_input.b.x), Struct_1(9972u)).x, 3u)], select(vec4<u32>(0u, 1u, 58293u, 0u), global1[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(true, true, true, true)))), vec4<u32>(~(~0u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(reverseBits(27177u), 3u)], vec4<u32>(81142u, 0u, 3494u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 13767u), vec2<u32>(23341u, 4294967295u)), 1u)));
    var_0 = select(vec4<u32>(abs(0u) >> (~func_2(vec4<i32>(u_input.a, -2147483647i, -9172i, u_input.b.x), Struct_1(4294967295u)).x % 32u), ~0u, var_0.x, abs(40945u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x ^ 83154u, ~(83846u | var_0.x), var_0.x, firstLeadingBit(var_0.x)), vec4<u32>(~(~var_0.x), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.a, 19275i), vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.b.x)), global0[_wgslsmith_index_u32(max(1u, 0u), 16u)]).x, 61547u, reverseBits(~var_0.x)), vec4<u32>(firstTrailingBit(28237u), 0u, ~72216u, _wgslsmith_div_u32(~var_0.x, 85375u))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(step(767f, 424f))) > 566f) || func_3(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), -15221i).x);
    let var_1 = true;
    let var_2 = Struct_1(firstTrailingBit(abs(abs(50592u))));
    let var_3 = var_2;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(80353u, 16u)];
    global1 = array<vec4<u32>, 3>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(max(83667u >> (firstTrailingBit(var_0.a) % 32u), _wgslsmith_mod_u32(~33418u, _wgslsmith_mult_u32(1u, var_0.a)))), var_0.a), 16u)];
    let var_2 = func_1();
    var_1 = func_1();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(32075u, 1u)), u_input.b.x, (select(var_2.a, 13610u << (var_2.a % 32u), var_3) & max(0u, 1u | var_0.a)) << (~var_2.a % 32u));
}

