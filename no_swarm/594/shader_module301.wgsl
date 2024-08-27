struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec4<i32> = vec4<i32>(17934i, 9308i, 9762i, -30470i);

var<private> global2: Struct_2 = Struct_2(-82196i, Struct_1(false), vec4<i32>(-19511i, -459i, i32(-2147483648), 12353i), vec2<f32>(-1645f, -1522f));

var<private> global3: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = firstTrailingBit(vec4<i32>(~(i32(-1i) * -12681i), -(~(-22479i)) ^ (28687i | u_input.b), ~(~global2.c.x), select(-_wgslsmith_dot_vec2_i32(vec2<i32>(11879i, u_input.b), vec2<i32>(u_input.b, global2.a)), ~1i, !global2.b.a)));
    global2 = Struct_2(~(-9624i), global2.b, ~(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(11931i, 4338i, -2147483647i, 18802i), global2.c))), global2.d);
    global1 = vec4<i32>(select(global2.a, -_wgslsmith_dot_vec2_i32(select(global2.c.yy, vec2<i32>(28355i, -2147483647i), vec2<bool>(arg_0.x, global2.b.a)), global2.c.zx), !global3.c.x), -36890i & global1.x, _wgslsmith_dot_vec2_i32(~global1.yx, global2.c.yz), _wgslsmith_div_i32(17853i, 0i << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.d.x) % 32u)));
    global2 = Struct_2(1i, Struct_1(global1.x >= global1.x), ~global2.c, vec2<f32>(-1245f, -1464f));
    var var_0 = Struct_1(true);
    return u_input.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = arg_1.c.yz;
    let var_1 = ~(max(global1.wwy, _wgslsmith_mod_vec3_i32(arg_3.c.wwy | vec3<i32>(90i, -1i, -2147483647i), vec3<i32>(arg_3.c.x, 0i, 0i) & global1.www)) << (vec3<u32>(_wgslsmith_mult_u32(38510u, countOneBits(0u)), u_input.c, _wgslsmith_clamp_u32(u_input.d.x, u_input.c, max(27179u, u_input.a))) % vec3<u32>(32u)));
    var var_2 = var_1.x;
    var var_3 = ~vec4<u32>(75756u, 6878u, 0u, ~u_input.c);
    global1 = arg_3.c;
    return _wgslsmith_add_i32(~_wgslsmith_add_i32(-31124i, firstTrailingBit(0i)) ^ (min(_wgslsmith_add_i32(var_1.x, global1.x), 9883i) >> (~(u_input.d.x >> (0u % 32u)) % 32u)), ~u_input.b);
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = global1.x;
    var_0 = func_4(!global3.c.ww, Struct_3(global2.b, Struct_1(all(vec3<bool>(global0[_wgslsmith_index_u32(57370u, 12u)], global3.b.a, global3.c.x))), vec4<bool>(arg_1, !global2.b.a | global0[_wgslsmith_index_u32(func_3(vec2<bool>(false, true)), 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)], global3.b.a)), _wgslsmith_div_i32(-2147483647i, -24533i ^ firstLeadingBit(global1.x)), Struct_2(global1.x, global3.b, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, global1.x, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.x, -41901i, global2.a), global2.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-14461i, global1.x, -2147483647i, -15658i), vec4<i32>(global2.c.x, 0i, 19308i, global1.x)) ^ vec4<i32>(u_input.b, 2185i, -10506i, 390i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global2.d.x) * global2.d) + _wgslsmith_f_op_vec2_f32(global2.d * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1541f, 300f) - vec2<f32>(-995f, -893f))))));
    global3 = Struct_3(Struct_1(any(vec3<bool>(global3.c.x, global2.b.a, true))), global3.a, !select(global3.c, vec4<bool>(global2.a >= u_input.b, true, global3.a.a && true, false), !(!global3.c)));
    let var_1 = all(!(!global3.c.yyx));
    var var_2 = global2.b;
    return !all(!global3.c.zyw);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_3(global2.b, Struct_1(global3.b.a && func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 43868u), vec4<u32>(u_input.c, 35099u, u_input.d.x, u_input.c)), all(arg_1.c.wx))), select(arg_1.c, vec4<bool>(true, true, all(vec3<bool>(arg_2.a, false, true)), u_input.a <= 55385u), select(select(select(arg_1.c, arg_1.c, true), vec4<bool>(true, global2.b.a, false, arg_0.a.a), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_2.a, global0[_wgslsmith_index_u32(u_input.d.x, 12u)])), !select(arg_1.c, arg_0.c, vec4<bool>(true, arg_0.c.x, false, true)), true)));
    var var_1 = arg_1.a;
    let var_2 = arg_1;
    var var_3 = !global3.c.x;
    var var_4 = var_2;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = select(global3.c.zwz, !vec3<bool>(true, global0[_wgslsmith_index_u32(~32839u, 12u)], true), vec3<bool>(true, !global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, u_input.d.x), 12u)], global0[_wgslsmith_index_u32(max(u_input.c, ~(~1u)), 12u)]));
    let var_2 = -vec3<i32>(countOneBits(u_input.b) >> (~4294967295u % 32u), _wgslsmith_clamp_i32(global2.a, _wgslsmith_clamp_i32(func_1(Struct_3(global3.b, Struct_1(global0[_wgslsmith_index_u32(18855u, 12u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false, global0[_wgslsmith_index_u32(18566u, 12u)])), Struct_3(global3.b, Struct_1(global2.b.a), vec4<bool>(false, global3.b.a, false, true)), Struct_1(false)), ~u_input.b, max(24895i, global1.x)), _wgslsmith_dot_vec3_i32(global2.c.yxz, countOneBits(vec3<i32>(0i, u_input.b, u_input.b)))), -_wgslsmith_dot_vec4_i32(~global2.c, vec4<i32>(-1i, 1i, u_input.b, u_input.b)));
    var var_3 = !global3.c;
    var var_4 = ~u_input.b;
    var_0 = u_input.c;
    let var_5 = var_1.x;
    let var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.x))), -1067f, !all(!var_3.yxz)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(~vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(168u, 1995u, u_input.c, u_input.a) >> (vec4<u32>(4294967295u, 1u, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(29057u, 58487u, u_input.a, 0u), vec4<u32>(0u, 60599u, u_input.a, u_input.a))))), vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(var_2)), global2.c.yyw << (max(vec3<u32>(u_input.d.x, 0u, 41753u), vec3<u32>(u_input.d.x, u_input.c, 1u)) % vec3<u32>(32u))), countOneBits(_wgslsmith_mod_i32(0i, ~0i)), _wgslsmith_mult_i32(-34446i, -var_2.x)), _wgslsmith_f_op_f32(-1859f * _wgslsmith_f_op_f32(-global2.d.x)), ~(~abs(firstTrailingBit(u_input.d.x))), -515f);
}

