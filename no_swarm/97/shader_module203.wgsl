struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: array<u32, 11>;

var<private> global3: array<u32, 25>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_0, 11u)], arg_0), 1u), vec3<u32>(1154u, ~global3[_wgslsmith_index_u32(4294967295u, 25u)], ~0u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, 79230u, global3[_wgslsmith_index_u32(1u, 25u)]), countOneBits(u_input.a.zxw), any(global0.b.yw)) & (vec3<u32>(51158u, global3[_wgslsmith_index_u32(25040u, 25u)], 4294967295u) << (u_input.a.xzx % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d, 75659u), vec3<u32>(global3[_wgslsmith_index_u32(21119u, 25u)], 90319u, 63776u), u_input.a.xzw), u_input.a.wyy), u_input.a.xzz));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(global0.a.c, global0.a.c);
    let var_1 = global0.a.b;
    let var_2 = _wgslsmith_div_i32(u_input.c.x, 1i);
    let var_3 = Struct_2(global0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~min(abs(~1u), ~func_3(23728u, 1i, vec2<f32>(var_1.x, -2610f), global0.a.b.x)), 11u)], 11u)], _wgslsmith_mult_u32(1u | ~(~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2915u, 25u)], 11u)]), abs(select(19298u, 4706u, true) & select(4294967295u, 0u, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(~reverseBits(5402u), 11u)], _wgslsmith_dot_vec3_u32(u_input.a.wwx, vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 25u)], 11u)], 1u, 55613u)) << ((global3[_wgslsmith_index_u32(u_input.d, 25u)] | 10634u) % 32u), 48633u, 35738u), _wgslsmith_add_vec4_u32(vec4<u32>(min(0u, 26607u), u_input.d | 0u, ~u_input.a.x, abs(70577u)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(22608u, 5710u, global3[_wgslsmith_index_u32(0u, 25u)], 34467u)), vec4<u32>(global2[_wgslsmith_index_u32(16692u, 11u)], u_input.d, u_input.d, global2[_wgslsmith_index_u32(4294967295u, 11u)]) << (vec4<u32>(1u, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(0u, 11u)], 1u)))));
    var var_4 = select(global0.b, !(!vec4<bool>(!var_3.a.c, true, var_0.x, false)), vec4<bool>(!var_3.a.c, var_0.x, !(!select(true, var_3.a.c, true)), var_0.x));
    return var_3.a;
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global0 = Struct_3(func_2(), !select(select(vec4<bool>(global0.b.x, false, false, global0.b.x), global0.b, !global0.a.c), vec4<bool>(true, any(vec4<bool>(false, false, true, arg_0)), true, !arg_0), true), -(~(vec2<i32>(-1i) * -u_input.c.xw)));
    var var_0 = ~vec4<u32>(select(max(~1u, 1u), firstLeadingBit(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 25u)], 40494u)), true), 1u, select(u_input.a.x & firstTrailingBit(global3[_wgslsmith_index_u32(11326u, 25u)]), 1u, global0.a.c), 0u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x + 2446f), global0.a.a.x, _wgslsmith_f_op_f32(select(885f, global0.a.b.x, true))))), global0.a.a, all(!vec2<bool>(arg_0, true))), 65113u, _wgslsmith_clamp_u32(42590u, 1u, _wgslsmith_div_u32(reverseBits(1u), ~(~var_0.x))), countOneBits(min(_wgslsmith_mod_vec4_u32(vec4<u32>(53797u, 89857u, 24211u, arg_1), vec4<u32>(arg_1, 19029u, 61333u, global2[_wgslsmith_index_u32(u_input.d, 11u)])), ~vec4<u32>(0u, u_input.a.x, arg_1, 25589u))));
    let var_2 = firstLeadingBit(4294967295u);
    global0 = Struct_3(func_2(), global0.b, abs(~(-(global0.c << (vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 25u)]) % vec2<u32>(32u))))));
    return ~(~u_input.d) >= (~(~global2[_wgslsmith_index_u32(abs(11079u), 11u)]) << ((~4294967295u ^ var_1.c) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = global0.a;
    global1 = array<vec4<u32>, 9>();
    var var_1 = func_2();
    let var_2 = global0.a;
    global2 = array<u32, 11>();
    return arg_2;
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = 0i;
    let var_1 = _wgslsmith_clamp_i32(0i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(1i, reverseBits(abs(-2147483647i)))));
    global2 = array<u32, 11>();
    global3 = array<u32, 25>();
    let var_2 = countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.yzy, vec3<u32>(~4294967295u, global3[_wgslsmith_index_u32(~4294967295u, 25u)], _wgslsmith_div_u32(~u_input.a.x, ~1u))));
    return global0.b.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(select(false, !global0.a.c, func_1(global0.b.x, global2[_wgslsmith_index_u32(23490u, 11u)])) && !any(global0.b.xyx), _wgslsmith_add_i32(~1i, abs(1i)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(917f, -1000f, global0.a.a.x) * vec3<f32>(global0.a.b.x, -704f, -1000f)), _wgslsmith_f_op_vec3_f32(-global0.a.b), false), select(select(global0.b, vec4<bool>(global0.b.x, false, true, global0.a.c), true), vec4<bool>(false, global0.a.c, global0.b.x, true), vec4<bool>(false, false, false, true)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(global0.c.x, u_input.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.x, -25409i), vec2<i32>(-84303i, -1761i)), global0.c))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -725f);
    let var_2 = ~u_input.a.xyw;
    let var_3 = true;
    let var_4 = vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_2.x, 0u), 4294967295u) & u_input.a.zw, select(max(~vec2<u32>(global3[_wgslsmith_index_u32(25127u, 25u)], 34190u), abs(var_2.xy)), firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], 25u)], 1016u)), !global0.b.x)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~countOneBits(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 11u)]), 25u)], 11u)], 11u)], global3[_wgslsmith_index_u32(4294967295u | _wgslsmith_div_u32((global3[_wgslsmith_index_u32(39830u, 25u)] | 125687u) << (51159u % 32u), 1u), 25u)]);
    var var_5 = var_4;
    var_5 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~u_input.a), vec4<u32>(1u, abs(select(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_4.x, 25u)], 11u)], 0u, var_0.x)), ~(~var_2.x), 28093u)), global1[_wgslsmith_index_u32(firstLeadingBit(~var_5.x), 9u)]);
    var_5 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 25u)], ~var_4.x, _wgslsmith_add_u32(var_2.x, 32448u), _wgslsmith_mod_u32(1u, var_4.x)), global1[_wgslsmith_index_u32(~28576u, 9u)]) | vec4<u32>(39291u, select(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 25u)] | 39393u, ~1u, global0.b.x), 43440u, var_4.x), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]), var_4 >> (vec4<u32>(var_2.x, 1u, var_4.x, var_5.x) % vec4<u32>(32u))), ~(~var_4), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32((0u & global3[_wgslsmith_index_u32(3961u, 25u)]) & var_5.x, 25u)], 9u)])), vec4<u32>(~4744u, _wgslsmith_mod_u32(23025u, _wgslsmith_dot_vec4_u32(var_4, var_4)), 2743u, 4294967295u) ^ ~global1[_wgslsmith_index_u32(1u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0.c.x, 0i, i32(-1i) * -10124i, _wgslsmith_add_i32(17714i, ~reverseBits(0i))), reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~36206u, 8565u, ~var_5.x), (vec3<u32>(global2[_wgslsmith_index_u32(75025u, 11u)], 84100u, 8351u) << (vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], var_5.x, var_5.x) % vec3<u32>(32u))) & var_4.zzw), 25u)]), var_4.yz);
}

