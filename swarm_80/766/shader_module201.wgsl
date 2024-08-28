struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1730f))));
    let var_1 = Struct_1(~vec4<u32>(39281u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.a.x), vec2<u32>(51729u, u_input.c.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 124u, 24044u), arg_2.a.zxw)));
    let var_2 = arg_1.a.a.x;
    global0 = arg_1;
    global0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(arg_1.a.a, ~vec4<u32>(46466u, global0.a.a.x, 62833u, 1u))), global0.b);
    return vec4<bool>(all(vec4<bool>(true, true, true, !any(vec2<bool>(true, true)))), ~_wgslsmith_clamp_u32(arg_3.a.x, 26170u >> (arg_2.a.x % 32u), 74143u) != (~arg_2.a.x & ~(~arg_1.a.a.x)), true, true);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = !select(!select(vec4<bool>(false, false, false, true), func_3(vec4<f32>(504f, -1478f, 1000f, -790f), Struct_2(global0.a, arg_0.x), global0.a, Struct_1(global0.a.a)), func_3(vec4<f32>(911f, -1670f, 1112f, 2549f), Struct_2(global0.a, arg_0.x), global0.a, global0.a)), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true)));
    global0 = Struct_2(Struct_1(select(vec4<u32>(~u_input.a, ~u_input.a, 10273u, abs(5755u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15386u, u_input.a, 61981u), global0.a.a.xzw), countOneBits(global0.a.a.x), global0.a.a.x, u_input.b.x), func_3(vec4<f32>(119f, -348f, -386f, -1218f), Struct_2(global0.a, -51907i), global0.a, Struct_1(global0.a.a)))), arg_0.x);
    let var_1 = Struct_1(global0.a.a);
    global0 = Struct_2(Struct_1(select(~(var_1.a | global0.a.a), vec4<u32>(1u, 1u, ~1u, 4294967295u), select(!vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, false, true, var_0.x), func_3(vec4<f32>(678f, -328f, -480f, 549f), Struct_2(global0.a, -1i), Struct_1(var_1.a), Struct_1(vec4<u32>(0u, 17341u, var_1.a.x, 58222u)))))), firstLeadingBit(_wgslsmith_sub_i32(~(-u_input.d), 25871i)));
    var var_2 = _wgslsmith_div_vec2_i32(firstTrailingBit(~min(vec2<i32>(1480i, -1i), arg_0.xx)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-10921i, u_input.d) << (~global0.a.a.wx % vec2<u32>(32u))), -select(~vec2<i32>(2147483647i, arg_0.x), _wgslsmith_mult_vec2_i32(arg_0.xw, vec2<i32>(-2147483647i, 0i)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0.x))));
    return Struct_2(Struct_1(~(~(vec4<u32>(4883u, var_1.a.x, 1654u, 92330u) ^ var_1.a))), global0.b);
}

fn func_1() -> i32 {
    global0 = func_2(vec4<i32>(0i, u_input.d, u_input.d, -_wgslsmith_mod_i32(abs(global0.b), global0.b)));
    var var_0 = Struct_2(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(19270i, 41563i, func_2(vec4<i32>(u_input.d, 24331i, global0.b, -1i)).b, 0i), vec4<i32>(u_input.d, u_input.d & 23834i, min(u_input.d, u_input.d), 2147483647i))).a, u_input.d);
    let var_1 = -(vec3<i32>(func_2(min(vec4<i32>(22390i, global0.b, u_input.d, -2924i), vec4<i32>(var_0.b, u_input.d, global0.b, u_input.d))).b, global0.b, ~var_0.b) ^ firstTrailingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, u_input.d, var_0.b), vec3<i32>(u_input.d, -19591i, global0.b), vec3<bool>(true, true, true)), -vec3<i32>(global0.b, 18765i, 16720i))));
    let var_2 = 219f;
    let var_3 = func_2(~vec4<i32>(2147483647i, ~(-25592i), var_0.b, -50395i));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = -select(~vec4<i32>(_wgslsmith_mod_i32(1i, global0.b), _wgslsmith_clamp_i32(global0.b, 33422i, -17007i), u_input.d, global0.b & -2147483647i), vec4<i32>(-global0.b, func_1(), -u_input.d, -19419i), true);
    let var_2 = global0.a;
    let var_3 = Struct_1((global0.a.a << (vec4<u32>(var_2.a.x, 0u, ~4294967295u, ~4294967295u) % vec4<u32>(32u))) ^ ~global0.a.a);
    global0 = Struct_2(func_2(firstLeadingBit(~(-vec4<i32>(u_input.d, u_input.d, global0.b, 1i)))).a, _wgslsmith_dot_vec3_i32((vec3<i32>(var_1.x, var_1.x, global0.b) | -vec3<i32>(-11760i, u_input.d, global0.b)) << (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(u_input.d, -2147483647i, -5629i)), vec3<i32>(u_input.d, -5080i, abs(80432i)))));
    let x = u_input.a;
    s_output = StorageBuffer(683f);
}

