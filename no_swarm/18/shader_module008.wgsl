struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: array<u32, 15> = array<u32, 15>(0u, 0u, 1u, 1u, 4294967295u, 39372u, 1u, 0u, 45119u, 12527u, 17271u, 4294967295u, 18005u, 103207u, 22038u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>((select(true, all(vec3<bool>(false, true, true)), true) || true) == false, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(4294967295u, 15u)], 33510u, true), 15u)] < 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1153f * -157f), 350f))))) <= 1331f;
    let var_2 = -18551i;
    let var_3 = Struct_1(u_input.b, ~vec2<i32>(var_2, -2147483647i), _wgslsmith_sub_vec4_u32(vec4<u32>(13159u, ~global0[_wgslsmith_index_u32(0u, 15u)], 1u, global0[_wgslsmith_index_u32(~1u, 15u)]), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(10954u, 1u, 15070u, 50419u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(43587u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], 10033u)))) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(1u, 15u)])), ~select(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], true), 1u, 10223u), u_input.a.x, _wgslsmith_div_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 24943u)), _wgslsmith_add_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(32491u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), min(vec2<u32>(15375u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)]), vec2<u32>(22675u, 49426u)))) << (_wgslsmith_mod_vec2_u32(~min(vec2<u32>(0u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 1u)), abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 15u)], 4294967295u)) & vec2<u32>(0u, 0u)) % vec2<u32>(32u)));
    var var_4 = var_3;
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = Struct_1(arg_1.a, vec2<i32>(~_wgslsmith_clamp_i32(func_3(), ~arg_1.b.x, arg_1.d), arg_0.a.x & 40374i), vec4<u32>(55442u, 9520u, arg_0.c.x, abs(1u)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, _wgslsmith_sub_vec2_i32(-vec2<i32>(-21157i, arg_0.a.x), vec2<i32>(u_input.a.x, 2147483647i))), -func_3()), ~vec2<u32>(arg_1.e.x, 0u));
    global0 = array<u32, 15>();
    var_0 = Struct_1(-(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.x, -2147483647i, u_input.a.x), arg_1.a)), vec2<i32>(u_input.b.x, ~(~(-arg_0.d))), ~(vec4<u32>(0u, var_0.c.x, arg_1.c.x, ~var_0.c.x) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(27969u, global0[_wgslsmith_index_u32(arg_0.e.x, 15u)], 1u, global0[_wgslsmith_index_u32(7555u, 15u)])), arg_1.c & var_0.c)), ~_wgslsmith_clamp_i32(abs(firstLeadingBit(var_0.b.x)), -1i, 113799i), ~var_0.c.wx);
    return !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_sub_vec2_i32((-vec2<i32>(arg_1.d, 36630i) ^ ~vec2<i32>(53208i, -2147483647i)) & u_input.b.xx, arg_1.a.xy), ~arg_1.c, ~(-(func_3() << (~arg_1.e.x % 32u))), arg_1.e);
    let var_1 = -1i;
    var_0 = arg_1;
    let var_2 = ~9915u;
    let var_3 = Struct_1(u_input.b, vec2<i32>(var_1, u_input.a.x), ((var_0.c << (var_0.c % vec4<u32>(32u))) ^ var_0.c) | arg_1.c, 26863i, arg_1.e);
    return vec2<bool>(true, !arg_0);
}

fn func_1() -> bool {
    let var_0 = !(!func_4(!func_2(Struct_1(u_input.b, u_input.a, vec4<u32>(4294967295u, 4294967295u, 36175u, 4294967295u), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 68234u)), Struct_1(u_input.b, u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(23131u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], 7604u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20297u, 15u)], 15u)]), u_input.b.x, vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 103642u)), vec4<i32>(u_input.b.x, 8863i, u_input.b.x, -1i)), Struct_1(~vec3<i32>(u_input.b.x, 1i, 2147483647i), vec2<i32>(0i, u_input.b.x) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 1u) % vec2<u32>(32u)), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u, 32668u, 16915u)), max(-1i, u_input.b.x), _wgslsmith_mult_vec2_u32(vec2<u32>(27236u, 14431u), vec2<u32>(68851u, 58593u)))));
    var var_1 = Struct_1(u_input.b, vec2<i32>(-1i, -2147483647i), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(49585u, 15u)], 811u, global0[_wgslsmith_index_u32(0u, 15u)], 24687u))) << ((_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9303u, 15u)], 15u)])), vec4<u32>(1u, 68379u, 4294967295u, global0[_wgslsmith_index_u32(9952u, 15u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15448u, 15u)], 15u)], 15u)], 65036u, global0[_wgslsmith_index_u32(1u, 15u)]) % vec4<u32>(32u))) & (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 14736u, global0[_wgslsmith_index_u32(0u, 15u)]) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11236u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(110750u, 15u)], 16508u), vec4<u32>(88530u, 22527u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89018u, 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 1u)))) % vec4<u32>(32u)), u_input.a.x, select(_wgslsmith_mod_vec2_u32(vec2<u32>(select(global0[_wgslsmith_index_u32(29236u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], var_0.x), 4294967295u | global0[_wgslsmith_index_u32(0u, 15u)]), ~abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))), abs(firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32975u, 15u)], 15u)], 15u)], 15u)], 0u))), !vec2<bool>(!var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43475u, 15u)], 15u)], 15u)], 15u)], 15u)])));
    let var_2 = _wgslsmith_add_vec4_u32(max(countOneBits(vec4<u32>(var_1.c.x, 1u, ~var_1.c.x, global0[_wgslsmith_index_u32(1u, 15u)] ^ var_1.c.x)), min(var_1.c, vec4<u32>(~27719u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 0u), global0[_wgslsmith_index_u32(min(19597u, var_1.e.x), 15u)], ~var_1.c.x))), var_1.c);
    var_1 = Struct_1(vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-35562i, -5397i, u_input.a.x), vec3<i32>(18434i, var_1.a.x, u_input.b.x))), firstTrailingBit(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 8153i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-11187i, -2147483647i, var_1.b.x, -2147483647i), vec4<i32>(58186i, var_1.d, u_input.a.x, var_1.a.x))))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.c.xy, min(vec2<u32>(15395u, var_1.e.x), vec2<u32>(var_1.c.x, global0[_wgslsmith_index_u32(19927u, 15u)]))), _wgslsmith_mult_vec2_u32(var_2.xx >> (vec2<u32>(var_2.x, var_1.c.x) % vec2<u32>(32u)), var_1.c.ww)), ~(~var_1.e.x) & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(42646u, var_2.x), ~var_2.x, _wgslsmith_dot_vec2_u32(var_2.zx, vec2<u32>(22896u, 23393u))), 15u)], 1u, ~(~global0[_wgslsmith_index_u32(1u, 15u)] & (var_1.e.x >> (var_1.e.x % 32u)))), u_input.b.x >> (global0[_wgslsmith_index_u32(select(1u, reverseBits(0u), !var_0.x), 15u)] % 32u), firstTrailingBit(var_2.wy & var_2.wy));
    var var_3 = min(_wgslsmith_add_vec4_u32(abs(var_1.c), ~firstTrailingBit(vec4<u32>(1u, var_1.e.x, 1u, var_2.x))) ^ ~(var_1.c | var_1.c), _wgslsmith_clamp_vec4_u32(~countOneBits(~vec4<u32>(var_2.x, var_1.e.x, 0u, var_2.x)), vec4<u32>(firstLeadingBit(var_2.x ^ 0u), ~(~1u), 30074u, var_1.e.x), vec4<u32>(21866u, ~1u, _wgslsmith_mod_u32(4294967295u, var_1.c.x), ~var_2.x) >> (abs(countOneBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(var_1.e.x, 15u)], 1u, var_2.x))) % vec4<u32>(32u))));
    return true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = arg_2;
    let var_1 = Struct_1(firstLeadingBit(countOneBits(arg_2.a) ^ -reverseBits(vec3<i32>(0i, -40310i, arg_2.a.x))), vec2<i32>(var_0.b.x, u_input.b.x), _wgslsmith_sub_vec4_u32(arg_2.c, arg_2.c), arg_2.b.x, vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c.xxy, _wgslsmith_mult_vec3_u32(arg_2.c.xyx, abs(var_0.c.xxx))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 1u), arg_2.e.x)));
    var var_2 = vec2<f32>(arg_3.x, 805f);
    var var_3 = func_2(var_1, Struct_1(vec3<i32>((-2065i | var_1.a.x) >> (abs(81396u) % 32u), var_0.d | -19640i, func_3()), arg_2.b, ~var_1.c, arg_2.d, abs(vec2<u32>(global0[_wgslsmith_index_u32(~var_0.c.x, 15u)], var_0.e.x | var_0.c.x))), reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(-52714i, -1i, var_0.d, var_0.a.x), -(~vec4<i32>(var_1.d, 1i, 1i, 13124i)))));
    let var_4 = vec3<bool>(true, any(vec2<bool>(arg_1, true)), true);
    return min(~arg_2.e, max(vec2<u32>(~25860u >> (var_0.c.x % 32u), ~1u), vec2<u32>(arg_2.e.x, abs(_wgslsmith_div_u32(var_1.e.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false | !(1i <= u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, 449f, -227f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-624f, 1244f)))))));
    var var_2 = Struct_1(vec3<i32>(3072i, ~2147483647i >> (global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(4294967295u, 15u)]), 15u)] % 32u), 4446i), firstTrailingBit(u_input.b.xx), ~countOneBits(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 0u, 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16299u, 15u)], 15u)], 99786u, global0[_wgslsmith_index_u32(79217u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)])))), 1i, func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x)), func_1(), Struct_1(-(~u_input.b), countOneBits(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(59430u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(32210u, 15u)]), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -19377i, -1i), vec3<i32>(21805i, u_input.b.x, 49530i))), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1356f, -300f, var_1.x, var_1.x), var_1) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1227f, -719f, 390f), vec4<f32>(var_1.x, -1109f, var_1.x, -1296f), vec4<bool>(true, true, false, false)))))));
    var var_3 = Struct_1(vec3<i32>(var_2.a.x, 2147483647i, select(-var_2.a.x ^ -2147483647i, func_3(), !any(vec2<bool>(false, true)))), ~(-vec2<i32>(var_2.d, u_input.a.x)), ~(vec4<u32>(var_2.e.x, ~var_2.c.x, 1u, ~1u) | ((vec4<u32>(18997u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65703u, 15u)], 15u)], 15u)], 22198u) << (var_2.c % vec4<u32>(32u))) ^ var_2.c)), firstLeadingBit(reverseBits(reverseBits(u_input.a.x))), var_2.e);
    var var_4 = vec3<f32>(-314f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.x), 201f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1119f))));
    global0 = array<u32, 15>();
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-6420i);
}

