struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0i), Struct_1(2147483647i), Struct_1(-6561i), Struct_1(-1i), Struct_1(1i), Struct_1(8454i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(43637i), Struct_1(-31089i), Struct_1(19000i), Struct_1(6390i), Struct_1(-61301i), Struct_1(26972i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(all(!vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), true)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-1042f))), -834f, 1903f)));
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 15u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), true)), _wgslsmith_f_op_f32(round(var_1.x)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(384f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_1.x) + _wgslsmith_f_op_f32(-var_1.x)), -358f))), var_1.x);
    return global0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x) >> (~select(vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, u_input.a.x, u_input.a.x), false) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, u_input.a.x, 1u));
    let var_1 = Struct_1(global0.a);
    var_0 = (~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, 37633u) | vec3<u32>(75153u, var_0.x, var_0.x), abs(vec3<u32>(var_0.x, var_0.x, 81788u))) & ~vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 47662u, u_input.a.x ^ var_0.x)) & _wgslsmith_mult_vec3_u32(~firstLeadingBit(~vec3<u32>(4294967295u, var_0.x, var_0.x)), vec3<u32>(~abs(var_0.x), _wgslsmith_clamp_u32(~var_0.x, var_0.x, 60565u), ~115391u));
    var var_2 = select(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(29555i, var_1.a, -16650i), vec3<i32>(0i, global0.a, global0.a)), countOneBits(max(-2147483647i, 2147483647i)), 20797i), abs(vec3<i32>(29343i, min(-8849i, -2147483647i), func_3())), true) & abs(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(24522i, -1i, 15211i)), vec3<i32>(global0.a, 10623i, global0.a)));
    var_2 = countOneBits(vec3<i32>(firstTrailingBit(32485i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_1.a, var_1.a), ~var_2.xz, vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), firstTrailingBit(var_2.yx))), select(-_wgslsmith_mult_i32(-1i, -2147483647i), ~global0.a, false)));
    return Struct_1(firstLeadingBit(min(-max(global0.a, var_2.x), -select(-7401i, -2147483647i, false))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(9096u, 15u)];
    global0 = func_2();
    global0 = Struct_1(~_wgslsmith_div_i32(min(var_0.a, -2147483647i), ~53604i));
    let var_1 = Struct_1(global0.a);
    global0 = global1[_wgslsmith_index_u32(51879u, 15u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 15u)];
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(2430u), 15u)];
    global1 = array<Struct_1, 15>();
    let var_0 = func_1(!(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_1 = all(select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)))));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(u_input.a.x, 79396u, select(var_1, var_1, var_1)), u_input.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2.x, var_2.x, 11270u, 25594u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 51403u, 53243u, u_input.a.x) | vec4<u32>(4294967295u, u_input.a.x, 0u, var_2.x), vec4<u32>(u_input.a.x, 0u, 1u, 1u))), firstTrailingBit(~firstTrailingBit(4294967295u))), func_1(var_1).a, ~var_2.x);
}

