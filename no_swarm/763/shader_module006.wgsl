struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<f32, 19> = array<f32, 19>(-1000f, -101f, -183f, 932f, 1266f, 3539f, 449f, 1290f, -829f, 1000f, 1873f, -301f, -752f, -1137f, 1932f, -1667f, -735f, 966f, -993f);

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<i32, 4> = array<i32, 4>(1i, 21493i, -1i, 24407i);

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    var var_0 = 1u;
    global3 = array<i32, 4>();
    global1 = array<f32, 19>();
    global4 = vec2<bool>(!(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)]) >= global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(arg_1.b.x), abs(0u)), 19u)]), true);
    var var_1 = vec3<bool>(true, true, true);
    return vec4<u32>(u_input.b, u_input.b, u_input.b, 1u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global1 = array<f32, 19>();
    let var_0 = -u_input.a.x ^ -(arg_1.a.x & global3[_wgslsmith_index_u32(u_input.b, 4u)]);
    var var_1 = !(true || arg_0.x);
    var var_2 = Struct_2(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(var_0, select(_wgslsmith_mult_i32(-35391i, arg_1.a.x), arg_1.a.x, all(vec3<bool>(arg_1.d, true, false))))), vec2<u32>(select(0u, 0u, true), u_input.b), vec3<bool>(!global4.x, global4.x, !((global3[_wgslsmith_index_u32(4294967295u, 4u)] >= -2147483647i) && false)), -1491f, firstTrailingBit(arg_1.b.x));
    var var_3 = global2[_wgslsmith_index_u32(~4294967295u, 21u)];
    return all(!select(vec3<bool>(global4.x, any(vec4<bool>(arg_0.x, arg_1.e, var_2.c.x, true)), var_3.c.x), select(select(vec3<bool>(var_2.c.x, true, false), var_3.c, vec3<bool>(false, arg_1.e, true)), vec3<bool>(global4.x, global4.x, true), vec3<bool>(arg_0.x, var_2.c.x, false)), var_3.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(u_input.d & u_input.d, ~(abs(func_2(global3[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(u_input.a.yy, vec4<u32>(0u, arg_1.e, arg_1.e, arg_1.b.x), arg_1.d, arg_1.c.x, arg_1.c.x), u_input.a.x)) >> (firstLeadingBit(firstLeadingBit(vec4<u32>(arg_0.x, u_input.b, 70873u, arg_0.x))) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(58970u, 16u)], arg_1.c.x, false);
    var var_1 = var_0;
    var var_2 = i32(-1i) * -13740i;
    let var_3 = !select(vec2<bool>(func_3(select(vec2<bool>(false, true), arg_1.c.xx, false), Struct_1(vec2<i32>(0i, var_1.a.x), vec4<u32>(var_1.b.x, arg_0.x, arg_1.e, 6182u), global0[_wgslsmith_index_u32(arg_1.b.x, 16u)], true, false)), u_input.b <= max(var_1.b.x, var_1.b.x)), arg_1.c.yz, vec2<bool>(true | !var_0.d, true));
    let var_4 = Struct_1(-abs(_wgslsmith_sub_vec2_i32(abs(u_input.a.xy), countOneBits(vec2<i32>(65617i, 9363i)))), ~_wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(var_0.b.x, 66182u, u_input.b, var_1.b.x)) << (var_1.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - arg_1.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3421f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 19u)])))), true, ~var_1.b.x >= 45443u);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.c)) * _wgslsmith_f_op_f32(min(-1551f, _wgslsmith_div_f32(343f, -855f))))), global0[_wgslsmith_index_u32(~(~(~(arg_0.x ^ 40431u))), 16u)]);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 21u)];
    global3 = array<i32, 4>();
    var var_1 = Struct_2(~(-14161i), func_2(-1i, Struct_1(~(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b, 4u)]) | u_input.d), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, var_0.e, arg_1)), countOneBits(vec4<u32>(0u, u_input.b, arg_1, arg_1))), _wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(f32(-1f) * -474f)), !var_0.c.x, global4.x), abs(~abs(u_input.a.x))).zw, vec3<bool>(global4.x, var_0.c.x, any(select(!var_0.c.xx, !vec2<bool>(true, var_0.c.x), true))), global1[_wgslsmith_index_u32(0u, 19u)], u_input.b);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(1u, 0u, u_input.b), 1u >> (~var_1.b.x % 32u)), arg_1), 21u)];
    let var_3 = arg_0;
    return StorageBuffer(vec3<i32>(~(i32(-1i) * -u_input.e), ~_wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], var_2.a, var_0.a)), -var_0.a), -2147483647i, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 660f) - vec2<f32>(973f, -1175f)) + _wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(26496u, 37311u), global2[_wgslsmith_index_u32(u_input.b, 21u)]))) * vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(ceil(-176f)))), vec2<f32>(global0[_wgslsmith_index_u32(reverseBits(min(1u, u_input.b)), 16u)], _wgslsmith_f_op_f32(f32(-1f) * -1132f)))), u_input.b);
}

