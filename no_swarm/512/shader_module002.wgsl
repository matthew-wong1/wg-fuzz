struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1988f, -1661f);

var<private> global1: array<f32, 6> = array<f32, 6>(-315f, -1300f, -1544f, -335f, 393f, 765f);

var<private> global2: array<Struct_1, 2>;

var<private> global3: vec2<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~abs(vec2<u32>(1u, 1u))), ~0u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(countOneBits(vec3<u32>(4294967295u, 0u, 77877u))))), 2u)];
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = firstLeadingBit(-vec4<i32>(var_2.b.x, -firstLeadingBit(u_input.a), arg_2.a, -(~38840i)));
    return 36085u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global3 = u_input.b;
    var var_0 = max(vec4<u32>(~1u, 1u, ~44019u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16003u, 0u, 0u, 50099u), vec4<u32>(25434u, 9980u, 36794u, 0u)), 1u, 4294967295u), ~40128u << (firstTrailingBit(72993u) % 32u))), vec4<u32>(17671u, 0u, ~func_3(Struct_1(-1i, vec4<i32>(global3.x, global4.b.x, 2730i, -1i)), vec2<bool>(arg_0, false), arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(24413u, 1u), vec2<u32>(4294967295u, 7414u))) << (~(~(~vec4<u32>(1849u, 27345u, 80977u, 51482u))) % vec4<u32>(32u)));
    var var_1 = arg_2.x;
    let var_2 = arg_3;
    return global4.b.x;
}

fn func_1(arg_0: i32) -> i32 {
    global3 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, reverseBits(func_2(true, global2[_wgslsmith_index_u32(28821u, 2u)], vec3<bool>(false, false, false), Struct_1(u_input.c, global4.b)) << (min(0u, 95840u) % 32u))), select(select(countOneBits(~global4.b.xz), select(abs(vec2<i32>(arg_0, -15828i)), -global4.b.wz, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(false, false, false)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, global4.b.zy & vec2<i32>(global3.x, 0i)), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_0, -32130i), vec2<i32>(global4.b.x, 13704i))), !select(vec2<bool>(false, true), vec2<bool>(true, false), select(false, false, false))));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~4294967295u), 4021u), 2u)];
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 10130u), vec3<u32>(35356u, 0u, 4294967295u)), 6u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(253f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(7473u, 6u)], global0.x)))), _wgslsmith_f_op_f32(278f - global0.x))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, global0.x)), 1000f) + global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x)))))));
    var var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4242u, 0u, 10789u), vec3<u32>(0u, 1u, 0u)), ~57375u, _wgslsmith_dot_vec2_u32(vec2<u32>(32351u, 1u), vec2<u32>(1u, 1u))), vec4<u32>(firstLeadingBit(6546u), select(1u, 37797u, false), 7107u, 1u) ^ ~vec4<u32>(0u, 0u, 71813u, 9986u), vec4<u32>(12767u, firstLeadingBit(~0u), ~firstTrailingBit(93654u), 35622u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(!vec2<bool>(any(vec2<bool>(true, true)), select(false, true, true)));
    let var_1 = ~firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, global3.x) & global4.b.xzx, global4.b.ywx), -u_input.b.x, firstTrailingBit(u_input.b.x) >> (~35032u % 32u), ~func_1(2147483647i)));
    global2 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_f32(max(-879f, _wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(965f - global0.x))));
    let var_3 = vec3<u32>(1u, 1u, 1u);
    global3 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(~0i, -40438i)), ~countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(43297i, global3.x), vec2<i32>(global3.x, global4.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-18386i, u_input.c), vec2<i32>(global4.a, 47466i), vec2<i32>(-31849i, 48356i)))));
    let var_4 = vec3<u32>(var_3.x, _wgslsmith_sub_u32(func_3(global2[_wgslsmith_index_u32(~(~4294967295u), 2u)], vec2<bool>(any(vec3<bool>(true, false, true)), false), global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(25286u)), 2u)]), _wgslsmith_div_u32(49520u, var_3.x)), 25776u);
    let x = u_input.a;
    s_output = StorageBuffer(54390u, vec4<i32>(~global3.x, ~(_wgslsmith_sub_i32(var_1.x, 1i) >> (~37731u % 32u)), -57251i, func_1(_wgslsmith_mult_i32(1i >> (0u % 32u), global3.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x + 253f), -858f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(301f, global1[_wgslsmith_index_u32(var_3.x, 6u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 663f)))))));
}

