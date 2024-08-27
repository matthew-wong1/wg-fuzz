struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, false, false, true, false, true, false, true, false, false, true, false, false, true, true, true, false, false, true, false, true, false, true, true, true, true, false, true, true);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_4, 30>;

var<private> global3: array<u32, 24> = array<u32, 24>(4294967295u, 59996u, 56060u, 47564u, 0u, 1u, 4294967295u, 10448u, 1u, 23346u, 18831u, 9792u, 4294967295u, 1u, 56499u, 0u, 1u, 1u, 4294967295u, 17665u, 10442u, 2060u, 4779u, 0u);

var<private> global4: array<Struct_4, 1>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = vec3<i32>(arg_0.c.b.x, abs(-2831i), firstTrailingBit(-1i));
    var var_1 = select(!vec4<bool>(all(vec4<bool>(false, false, arg_0.e.a.x, true)), global0[_wgslsmith_index_u32(select(~2567u, firstLeadingBit(global3[_wgslsmith_index_u32(50623u, 24u)]), all(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 29u)]))), 29u)], false, arg_0.e.a.x), !(!vec4<bool>(0i < arg_0.c.b.x, false, arg_0.e.a.x & global0[_wgslsmith_index_u32(51069u, 29u)], true)), select(!vec4<bool>(arg_0.e.a.x | global0[_wgslsmith_index_u32(65524u, 29u)], true, true, any(vec3<bool>(arg_0.e.a.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c.a, 24u)], 29u)], true))), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(14842u, 29u)], global0[_wgslsmith_index_u32(arg_0.c.a, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 29u)], true, false, false), select(select(vec4<bool>(true, arg_0.e.a.x, true, true), vec4<bool>(arg_0.e.a.x, false, true, true), global0[_wgslsmith_index_u32(4251u, 29u)]), !vec4<bool>(global0[_wgslsmith_index_u32(36813u, 29u)], arg_0.e.a.x, true, global0[_wgslsmith_index_u32(arg_0.e.b, 29u)]), !vec4<bool>(false, arg_0.e.a.x, true, global0[_wgslsmith_index_u32(69415u, 29u)]))), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 24u)], 29u)], global0[_wgslsmith_index_u32(68738u, 29u)], false), vec4<bool>(arg_0.e.a.x, true, true, arg_0.e.a.x), !vec4<bool>(false, arg_0.e.a.x, true, arg_0.e.a.x))));
    var var_2 = false;
    var var_3 = vec4<u32>(abs(1u), 15510u, ~firstLeadingBit(0u), 4294967295u);
    var var_4 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1775f, _wgslsmith_f_op_f32(arg_0.d - arg_0.d), _wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.a), -860f, Struct_2(arg_0.e.b, arg_0.c.b), _wgslsmith_f_op_f32(-arg_0.b), arg_0.e);
    return !(!arg_0.e.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_div_f32(901f, arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), arg_2), 496f, Struct_2(~_wgslsmith_sub_u32(4294967295u & arg_1.a, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)]), -(arg_1.b | arg_1.b)), 966f, Struct_1(!(!func_3(Struct_4(vec3<f32>(-260f, -1191f, arg_2), 111f, arg_1, arg_2, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 29u)], false), 0u)))), u_input.e));
    var var_1 = ~countOneBits(-firstTrailingBit(vec3<i32>(1i, arg_1.b.x, -39328i)));
    let var_2 = false;
    var var_3 = -(reverseBits(-var_1.x) << (abs(16425u) % 32u));
    let var_4 = vec4<i32>(global1.x, -2147483647i, _wgslsmith_div_i32(-22472i, -12939i), firstTrailingBit(0i));
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(180903u, ~41136u | (112399u | arg_0.x), arg_1.a, arg_1.a), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(46079u, arg_0.x, 1u), _wgslsmith_add_vec3_u32(u_input.c, arg_0.wyw)), u_input.c.x, ~60754u, ~countOneBits(50303u))), _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(var_0.c.b, var_0.c.b), vec4<i32>(firstLeadingBit(firstLeadingBit(-23840i)), u_input.b, reverseBits(arg_1.b.x), 1i)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> bool {
    let var_0 = !(!(79326u == select(arg_2, _wgslsmith_add_u32(4477u, 0u), true)));
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1806f))))), vec4<i32>(u_input.a, ~0i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_add_i32(28014i, arg_0.b.x)) & arg_0.b.x, 0i), any(!arg_3.yx), arg_0.b.wy);
    let var_2 = arg_3.xx;
    let var_3 = var_1.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, -536f, var_1.b) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, var_1.b), vec3<f32>(164f, var_1.b, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, var_1.b, var_1.b), vec3<f32>(-612f, 1260f, var_1.b)))))))));
    return all(arg_3);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = 12716i ^ _wgslsmith_div_i32(firstLeadingBit(abs(-global1.x)), ~1i);
    let var_1 = global2[_wgslsmith_index_u32(arg_3.a.a, 30u)];
    var var_2 = true;
    let var_3 = func_2(vec4<u32>(var_1.e.b, ~u_input.e, 0u, ~global3[_wgslsmith_index_u32(~arg_1.e.b, 24u)] | (arg_3.a.a >> (global3[_wgslsmith_index_u32(~var_1.c.a, 24u)] % 32u))), Struct_2(arg_1.e.b | u_input.e, arg_1.c.b), -1464f);
    let var_4 = u_input.e;
    return Struct_1(var_1.e.a, min(select(func_2(~vec4<u32>(23609u, arg_3.a.a, 0u, var_3.a), arg_1.c, _wgslsmith_f_op_f32(sign(var_1.b))).a, global3[_wgslsmith_index_u32(~func_2(vec4<u32>(4294967295u, 0u, 50843u, 37544u), Struct_2(var_3.a, vec4<i32>(-63560i, global1.x, -1i, -27784i)), -1655f).a, 24u)], all(vec4<bool>(false, false, true, arg_3.d))), 16697u));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = -15038i;
    global2 = array<Struct_4, 30>();
    var var_1 = global4[_wgslsmith_index_u32(~26144u, 1u)];
    let var_2 = _wgslsmith_div_f32(323f, var_1.d);
    var var_3 = arg_3.x >> (min(min(~0u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 34984u)) << (global3[_wgslsmith_index_u32(1u & ~arg_2.e.b, 24u)] % 32u), 43335u | func_2(reverseBits(vec4<u32>(115168u, 4294967295u, 4294967295u, arg_0.b)), func_2(vec4<u32>(1105u, arg_0.b, 11600u, arg_2.e.b), Struct_2(4294967295u, arg_2.c.b), var_1.a.x), var_1.b).a) % 32u);
    return Struct_2(u_input.c.x, arg_2.c.b ^ (arg_3 << (vec4<u32>(0u, 0u, 49307u, arg_2.e.b << (4315u % 32u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_add_i32(18666i, -global1.x);
    var var_2 = arg_0;
    let var_3 = Struct_3(func_6(func_5(func_4(func_2(vec4<u32>(global3[_wgslsmith_index_u32(10394u, 24u)], 4294967295u, 0u, global3[_wgslsmith_index_u32(75035u, 24u)]), var_2.a, 1179f), true, ~global3[_wgslsmith_index_u32(49431u, 24u)], vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 29u)], arg_0.d, arg_0.d, false)), global2[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(4294967295u)), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), arg_0), vec2<i32>((arg_0.c.x & 13030i) >> (firstLeadingBit(arg_0.a.a) % 32u), _wgslsmith_mult_i32(global1.x << (57412u % 32u), 0i)), Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-613f, 501f, arg_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, 1274f, var_2.b) - vec3<f32>(var_2.b, -1974f, 113f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(min(u_input.e, 1u), max(arg_0.c, vec4<i32>(arg_0.e.x, arg_1.x, 33909i, arg_0.a.b.x))), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(sign(627f))), Struct_1(func_3(Struct_4(vec3<f32>(-360f, arg_0.b, var_2.b), arg_0.b, Struct_2(arg_0.a.a, vec4<i32>(arg_0.a.b.x, 0i, -7184i, arg_0.e.x)), arg_0.b, Struct_1(vec2<bool>(false, var_0), 0u))), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.a, 24u)], 24u)], 24u)])), var_2.c >> (~vec4<u32>(7593u, 33648u, u_input.c.x, arg_0.a.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_mult_vec4_i32(var_2.a.b, vec4<i32>(-1i) * -vec4<i32>(global1.x, global1.x, -31782i, global1.x)), true, vec2<i32>(-1i, abs(_wgslsmith_clamp_i32(global1.x, u_input.d, 2147483647i))) << (vec2<u32>(arg_0.a.a >> (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(68201u, global3[_wgslsmith_index_u32(arg_0.a.a, 24u)]), 24u)] % 32u), u_input.c.x) % vec2<u32>(32u)));
    global0 = array<bool, 29>();
    return var_2.e;
}

fn func_7(arg_0: vec2<i32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = abs(~vec4<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~arg_1.x, 24u)], 1u), ~abs(arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6554u), abs(arg_1.zw)), arg_1.x));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(global1.x, 1i), func_7(_wgslsmith_div_vec2_i32(~func_1(Struct_3(Struct_2(4294967295u, vec4<i32>(33833i, global1.x, u_input.a, 50250i)), 1869f, vec4<i32>(u_input.a, u_input.a, global1.x, global1.x), true, vec2<i32>(global1.x, u_input.b)), vec3<i32>(0i, u_input.b, -26972i)), vec2<i32>(-9472i, 7831i)), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 971u, ~4294967295u, global3[_wgslsmith_index_u32(1u, 24u)]), firstTrailingBit(firstTrailingBit(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7749u, 24u)], 24u)], u_input.e, global3[_wgslsmith_index_u32(u_input.e, 24u)]))))), u_input.d, -39315i);
    global2 = array<Struct_4, 30>();
    global0 = array<bool, 29>();
    let var_1 = Struct_1(select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12480u, 24u)], 29u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 29u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], false)), false), vec2<bool>(all(vec2<bool>(false, false)), false), !global0[_wgslsmith_index_u32(countOneBits(0u) ^ ~u_input.c.x, 29u)]), ~u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(975f - 439f))))), -205f)) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1071f, -425f) * 362f), -547f)));
    global0 = array<bool, 29>();
    global2 = array<Struct_4, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2, _wgslsmith_f_op_f32(-609f + var_2), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-580f)))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_5(global0[_wgslsmith_index_u32(u_input.e, 29u)] && var_1.a.x, global4[_wgslsmith_index_u32(u_input.e, 1u)], -1000f, Struct_3(Struct_2(0u, var_0), var_2, var_0, false, vec2<i32>(-9513i, u_input.b))).b, 67850u), 24u)], 24u)]);
}

