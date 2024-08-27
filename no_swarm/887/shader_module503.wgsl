struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-35975i, 23091i, 31760i, 0i, 1i, 10844i, i32(-2147483648), 1i, -1i, i32(-2147483648), i32(-2147483648), 1i, 0i, -1i, -1i, -4790i, 10607i, -22004i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = u_input.b.x;
    var var_1 = ~(u_input.b ^ u_input.b);
    var_1 = ~min(u_input.b, ~vec4<u32>(max(u_input.b.x, u_input.b.x), u_input.b.x, 53679u, u_input.b.x ^ 0u));
    global0 = array<i32, 18>();
    var_1 = vec4<u32>(26840u, ~u_input.b.x, var_1.x, _wgslsmith_add_u32(~reverseBits(26082u), min(_wgslsmith_add_u32(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 30137u, u_input.b.x), u_input.b)), abs(firstTrailingBit(var_1.x)))));
    return _wgslsmith_mult_vec2_i32(u_input.a.xw, vec2<i32>(-1i, ~select(arg_3.b, 0i, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1514f), -1382f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1371f + 1267f))), 658f))));
    global0 = array<i32, 18>();
    return u_input.a.x ^ -38260i;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    global0 = array<i32, 18>();
    let var_1 = Struct_1(!(!vec4<bool>(any(vec3<bool>(arg_1.x, false, var_0)), var_0, arg_1.x, false)), -select(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -37149i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(34477u, 18u)], global0[_wgslsmith_index_u32(14774u, 18u)])), ~_wgslsmith_add_i32(0i, global0[_wgslsmith_index_u32(1u, 18u)]), select(var_0, arg_1.x, var_0)));
    let var_2 = Struct_1(var_1.a, 0i);
    let var_3 = Struct_1(var_2.a, _wgslsmith_mult_i32(func_4(func_3(Struct_1(var_2.a, -2147483647i), Struct_1(var_2.a, -44440i), var_1, Struct_1(vec4<bool>(arg_1.x, var_2.a.x, false, var_0), global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), var_1.a.x), 2147483647i) >> (~1u % 32u));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = ~u_input.b;
    global0 = array<i32, 18>();
    var var_1 = func_2(56657u, !arg_0.a.wz);
    global0 = array<i32, 18>();
    var_1 = arg_0;
    return !var_1.a;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(vec4<bool>(true, all(vec2<bool>(true, arg_1.a.x & arg_1.a.x)), !(!(!arg_1.a.x)), any(arg_1.a.xzz)), -2147483647i);
    let var_1 = arg_1;
    var var_2 = Struct_1(select(!vec4<bool>(func_2(1u, vec2<bool>(false, var_0.a.x)).a.x, arg_1.a.x, true, !var_1.a.x), arg_1.a, arg_1.a), ~(-44172i | _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.wxy), ~vec3<i32>(0i, var_1.b, u_input.a.x))));
    var_2 = func_2(~firstLeadingBit(4294967295u), !vec2<bool>(true, all(var_2.a)));
    let var_3 = func_2(u_input.b.x, vec2<bool>((926f <= _wgslsmith_f_op_f32(ceil(429f))) | var_2.a.x, true));
    return vec4<u32>(0u, min(0u, ~u_input.b.x), 36825u, _wgslsmith_mult_u32(max(arg_0.x, 580u) & 4294967295u, ~3812u) & u_input.b.x);
}

fn func_1() -> bool {
    var var_0 = func_6(reverseBits(vec2<u32>(21515u, 0u)), Struct_1(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, false, true), any(vec4<bool>(false, false, true, false))), func_5(func_2(u_input.b.x, vec2<bool>(false, true)), vec4<f32>(-1127f, 666f, -207f, -190f)), all(vec4<bool>(true, true, true, true))), reverseBits(29641i)));
    global0 = array<i32, 18>();
    let var_1 = !select(vec3<bool>(true, select(true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)] < u_input.a.x, select(false, false, false)), false), vec3<bool>(true, true, true), any(func_2(1u, vec2<bool>(true, true)).a.yw));
    var_0 = ~countOneBits(_wgslsmith_mod_vec4_u32(~u_input.b, u_input.b));
    var_0 = u_input.b ^ ~abs(vec4<u32>(~4294967295u, u_input.b.x, ~1u, u_input.b.x));
    return any(select(var_1.yz, var_1.yx, select(vec2<bool>(!var_1.x, !var_1.x), vec2<bool>(true, var_1.x), func_2(var_0.x, select(var_1.zx, var_1.xy, var_1.x)).a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    var var_0 = ~vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 5320i), -1i, 0i, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.a.x), 15765i));
    global0 = array<i32, 18>();
    var var_1 = select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true))), !any(vec4<bool>(false, false, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) & false), vec3<bool>(func_1(), func_1(), false & (u_input.b.x > u_input.b.x)), !select(vec3<bool>(69616u != u_input.b.x, any(vec2<bool>(true, true)), -2147483647i == global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), any(vec2<bool>(true, false))), true));
    global0 = array<i32, 18>();
    var var_2 = func_2(min(u_input.b.x, 7030u), vec2<bool>(true, var_1.x));
    let var_3 = ~u_input.b.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(~var_0.x, -1i), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_3.x, 18u)], -1i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(55408u, 43699u), 18u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(var_3.x, 0u), 1u), 18u)]), u_input.a, vec3<u32>(~20133u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, u_input.b.x), firstLeadingBit(u_input.b.yx)), ~u_input.b.x, max(122068u >> (countOneBits(u_input.b.x) % 32u), _wgslsmith_mod_u32(133548u, var_3.x) & firstTrailingBit(9940u))));
}

