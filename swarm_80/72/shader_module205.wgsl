struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-1878f, -884f, 633f, 394f, 1775f, 944f, 400f, -1303f, -232f, -287f);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(330f, vec4<u32>(4294967295u, 1u, 55525u, 4294967295u), 2147483647i, vec2<f32>(910f, -1158f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~abs(min(vec3<u32>(4294967295u, u_input.c, 53834u), vec3<u32>(29432u, 2370u, arg_1.b.x))), ~arg_0.b.wxx), ~(~(~arg_1.b.xyx)));
    global2 = arg_1;
    global0 = array<f32, 10>();
    var var_1 = arg_0;
    var var_2 = ~(~(~44998u));
    return 50074u;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_1(arg_0.x, global1.b, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(global2.c, 13117i) ^ 15171i, ~global2.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a, -137f))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1733f))))), abs(vec4<u32>(u_input.c, func_3(var_0, var_0, 1i, u_input.b), ~global2.b.x, arg_1) ^ ~firstTrailingBit(global1.b)), -29951i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -828f), _wgslsmith_div_f32(-1580f, global1.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(-global1.a))));
    var var_2 = 78509u;
    global1 = var_0;
    return 4294967295u;
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    global2 = Struct_1(global0[_wgslsmith_index_u32(45704u, 10u)], vec4<u32>(4294967295u, 46016u | arg_0.x, ((1u & global2.b.x) << (_wgslsmith_mod_u32(arg_0.x, 0u) % 32u)) ^ ~select(1u, u_input.c, false), 4294967295u), -max(1i, global1.c), vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40766u, 10u)]))) * -1365f)));
    global0 = array<f32, 10>();
    var var_0 = false;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * 1f), vec4<u32>(0u, ~1360u, ~_wgslsmith_mult_u32(global1.b.x, 9872u), func_2(_wgslsmith_f_op_vec2_f32(abs(global1.d)), 32745u >> (global2.b.x % 32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, u_input.c, u_input.c, _wgslsmith_sub_u32(global1.b.x, 26984u)), countOneBits(global2.b)), -7789i, _wgslsmith_div_vec2_f32(global2.d, global1.d));
    global1 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 10u)] * 119f), vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 9167u | arg_0.x), select(firstTrailingBit(2035u), 46278u, true), ~(~27397u)), ~reverseBits(min(u_input.c, global1.b.x)), 1u), _wgslsmith_add_i32(u_input.d.x, countOneBits(-u_input.d.x | firstTrailingBit(2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-843f)) + 750f))));
    return min(_wgslsmith_mult_vec4_u32(global1.b, vec4<u32>(_wgslsmith_sub_u32(abs(58236u), u_input.c), func_3(Struct_1(-1274f, vec4<u32>(global1.b.x, u_input.c, 0u, 0u), global1.c, global2.d), Struct_1(-728f, vec4<u32>(1u, 68309u, global1.b.x, global1.b.x), -65861i, vec2<f32>(global2.a, global1.a)), _wgslsmith_div_i32(global1.c, 71876i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, global2.c), u_input.b)), (22954u >> (1u % 32u)) << (func_2(global2.d, global2.b.x) % 32u), ~0u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, global1.b.x, 50367u, 1u) << (vec4<u32>(1u, u_input.c, 4294967295u, global2.b.x) % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, global2.b.x, 4294967295u, 0u)), ~(~vec4<u32>(12641u, arg_0.x, 27633u, arg_0.x))) | vec4<u32>(_wgslsmith_mod_u32(~1u, 4294967295u), _wgslsmith_clamp_u32(4294967295u, global1.b.x, 52692u), 4294967295u, ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1786f * -1561f) - global1.a)), _wgslsmith_mult_vec4_u32(func_1(vec4<u32>(78544u, global2.b.x, firstTrailingBit(global2.b.x), 1u)), vec4<u32>(select(_wgslsmith_dot_vec3_u32(global2.b.ywz, global2.b.ywx), 1u, true), 4294967295u, 47643u, select(~4294967295u, u_input.c | global2.b.x, false))), global1.c, global1.d);
    let var_2 = vec2<i32>(-max(-var_1.c << (abs(73642u) % 32u), -31447i), -3425i);
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(ceil(-666f))))) - 514f), abs(~(vec4<u32>(11014u, 14882u, global1.b.x, 10388u) | (vec4<u32>(global1.b.x, u_input.c, 29399u, global1.b.x) << (vec4<u32>(250u, u_input.c, global1.b.x, var_1.b.x) % vec4<u32>(32u))))), var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1013f, global2.a))), global2.d)))));
    var var_3 = ~select(global1.b.zw, ~(reverseBits(var_1.b.yy) >> (vec2<u32>(1u, 21769u) % vec2<u32>(32u))), all(vec4<bool>(true, true, true, true)));
    let var_4 = _wgslsmith_clamp_vec4_u32(var_1.b, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 24573u, var_3.x, global2.b.x), vec4<u32>(var_1.b.x, 51984u, 1u, 50413u)) ^ abs(vec4<u32>(var_3.x, var_3.x, u_input.c, 0u))), vec4<u32>(var_3.x, ~(global1.b.x >> (1u % 32u)), 82351u, reverseBits(27954u | var_1.b.x))) << (max(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(48027u, var_1.b.x, 57468u, var_1.b.x), var_1.b)) << (abs(select(global1.b, var_1.b, true)) % vec4<u32>(32u)), select(~(var_1.b >> (vec4<u32>(u_input.c, global1.b.x, global2.b.x, u_input.c) % vec4<u32>(32u))), var_1.b, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))))) % vec4<u32>(32u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.a)))), firstTrailingBit(reverseBits(global2.b)), -40201i, _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.d.x)) - _wgslsmith_f_op_vec2_f32(-global1.d)) - var_1.d)));
    var var_5 = vec4<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), false, true, abs(u_input.b.x) != var_1.c)), true, !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), true);
    global0 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~abs(1u | global1.b.x), global1.b.x), _wgslsmith_div_i32(~global2.c, _wgslsmith_dot_vec2_i32(u_input.b, reverseBits(vec2<i32>(-3203i, global1.c)))), var_4.x, firstLeadingBit(~vec2<i32>(global1.c, -8072i) >> (~firstLeadingBit(global1.b.wx) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(var_2, ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 57240i), var_2) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.b.x), vec2<u32>(1u, var_1.b.x)) % vec2<u32>(32u))));
}

