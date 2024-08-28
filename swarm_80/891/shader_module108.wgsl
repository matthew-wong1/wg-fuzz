struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: array<vec3<bool>, 24>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: Struct_1;

var<private> global4: i32 = 29681i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(~(~arg_0), 18u)];
    return vec4<i32>(u_input.a, reverseBits(abs(~u_input.a)), -8887i | u_input.a, min(_wgslsmith_div_i32(14005i, -17101i), _wgslsmith_div_i32(-_wgslsmith_add_i32(-2147483647i, -1i), _wgslsmith_sub_i32(43666i, -1i))));
}

fn func_2() -> u32 {
    global4 = abs(~_wgslsmith_dot_vec4_i32(func_3(~14439u, reverseBits(76039u)), min(abs(vec4<i32>(-18061i, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(759i, u_input.a, u_input.a, 10483i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)))));
    global4 = abs(-1i);
    var var_0 = ~(vec3<i32>(func_3(26026u >> (0u % 32u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)).x, firstTrailingBit(1i), 1i) >> (max(~u_input.b.ywy & (u_input.b.xyx ^ vec3<u32>(14088u, 68900u, u_input.b.x)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.xzx), ~vec3<u32>(12702u, 56544u, 0u))) % vec3<u32>(32u)));
    let var_1 = select(u_input.b.yw, u_input.b.xz ^ ~(u_input.b.xz << (~vec2<u32>(u_input.b.x, 7377u) % vec2<u32>(32u))), false);
    global4 = max(-1i, i32(-1i) * -firstTrailingBit(u_input.a)) >> ((_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x), var_1.x) >> (82398u % 32u)) % 32u);
    return ~var_1.x & ~var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<f32>(112f, arg_0.a.x);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), func_2()) ^ 4294967295u, 18u)];
    let var_2 = 971f;
    var var_3 = 1352f;
    var var_4 = global3.a.x;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(false, func_4(~(~u_input.b.x), func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(u_input.b.x, u_input.b.x)), 18u)], vec4<bool>(true, true, false, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], vec4<f32>(global3.a.x, 1397f, 1000f, -260f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(-720f, 214f, 331f, -224f), vec4<f32>(global3.a.x, 1000f, -182f, 1593f))))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~select(~u_input.b, firstTrailingBit(u_input.b), global3.a.x == global3.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, reverseBits(u_input.b)), max(~u_input.b, min(u_input.b, vec4<u32>(u_input.b.x, 77576u, u_input.b.x, u_input.b.x)))), countOneBits(~abs(u_input.b)))), 18u)];
    let var_2 = -1000f;
    var var_3 = func_1(func_1(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_2 * var_2), global3.a.x)), select(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), func_4(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), select(vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), true), !vec4<bool>(var_0.x, true, true, true)), vec4<bool>(false, var_0.x, true, !var_0.x))), select(select(select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, false, true, u_input.a <= 2147483647i), false), select(select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, false, var_0.x), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), true)), select(!vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), var_0.x), false), false));
    global4 = reverseBits(_wgslsmith_sub_i32(u_input.a, reverseBits(u_input.a)));
    global3 = global2[_wgslsmith_index_u32(~30742u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(-40367i, -581f);
}

