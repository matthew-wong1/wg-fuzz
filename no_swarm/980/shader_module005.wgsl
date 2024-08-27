struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: array<u32, 18>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1357f - -675f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-709f, -1215f, false)), _wgslsmith_f_op_f32(-217f - 270f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2703f)))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-684f - 343f))))), -375f, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, ~0u, ~u_input.a), select(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(51083u, 18u)], arg_0.c.x, 41463u), vec4<u32>(u_input.c.x, 29699u, 64971u, arg_0.c.x), vec4<bool>(true, true, false, false)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.c.x, u_input.c.x, arg_0.c.x), vec4<u32>(48334u, u_input.c.x, 78562u, 7623u)) % vec4<u32>(32u))) <= firstTrailingBit(global1[_wgslsmith_index_u32(~35256u, 18u)] >> ((arg_0.c.x & arg_0.b.x) % 32u)), Struct_1(-486f), Struct_1(327f));
    let var_2 = var_1.c == all(vec4<bool>(var_1.c, arg_0.d == -23490i, true, var_1.c));
    global1 = array<u32, 18>();
    global0 = array<vec4<i32>, 5>();
    return var_1.d;
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    var var_0 = u_input.c;
    global0 = array<vec4<i32>, 5>();
    var_0 = u_input.c;
    var var_1 = arg_0.a.xww;
    var_0 = u_input.c;
    return arg_0;
}

fn func_1() -> Struct_3 {
    var var_0 = func_3(Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-114f, -413f, -1586f, 2565f), vec4<f32>(542f, -1000f, -405f, -486f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, -303f) - -768f)), true, Struct_1(_wgslsmith_f_op_f32(311f + -903f)), func_2(Struct_2(-9006i >> (global1[_wgslsmith_index_u32(4294967295u, 18u)] % 32u), u_input.c.xx, u_input.c, 1i))), reverseBits(u_input.c.x));
    global1 = array<u32, 18>();
    var var_1 = ~_wgslsmith_dot_vec3_u32(~(~min(u_input.c, u_input.c)), ~reverseBits(vec3<u32>(60640u, 56477u, 27080u)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_f32(step(1000f, func_3(func_3(Struct_3(vec4<f32>(var_0.b, var_0.b, var_0.e.a, var_0.e.a), 525f, false, var_0.d, Struct_1(var_0.e.a)), max(9000u, u_input.c.x)), ~21840u).a.x)), true, Struct_1(-1196f), var_0.d);
    var_1 = ~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yz);
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(14853u, reverseBits(arg_1.x) << (~arg_1.x % 32u)), 5u)] ^ -(~(-_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30823u, 18u)], 5u)], vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~1i, -42404i, min(34099i, 19096i)), ~vec3<i32>(18392i, u_input.b.x, u_input.b.x)) & _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x) & vec4<i32>(-14474i, -1538i, u_input.b.x, 0i)), firstLeadingBit(vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, var_0.x))), -(((-8345i << (0u % 32u)) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 18u)] % 32u)) ^ -60164i));
    let var_2 = reverseBits(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(min(arg_2.x, global1[_wgslsmith_index_u32(0u, 18u)]), 4294967295u)), 5u)]);
    let var_3 = Struct_2(1i, _wgslsmith_mult_vec2_u32(arg_1.zx, select(vec2<u32>(arg_1.x, 67774u) | vec2<u32>(1u, u_input.a), countOneBits(vec2<u32>(u_input.a, 20629u)), !all(vec4<bool>(arg_0.c, false, false, arg_0.c)))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 2075u, arg_1.x), arg_1) ^ arg_1, ~(~u_input.c << (~vec3<u32>(32881u, arg_2.x, 35764u) % vec3<u32>(32u)))), _wgslsmith_div_i32(-28263i, -1i));
    let var_4 = !vec4<bool>(true, !(!arg_0.c) && !(arg_0.c && false), true, true);
    return Struct_2(abs(1i), _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 18u)], 18u)], abs(7194u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(14933u, 18u)], 22923u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4351u, arg_2.x, arg_1.x), 4294967295u | arg_1.x, _wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(1u, 4294967295u))))), _wgslsmith_add_vec3_u32(var_3.c | vec3<u32>(firstTrailingBit(u_input.a), 21234u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(50140u, 18u)], var_3.b.x)), countOneBits(~(vec3<u32>(0u, 0u, 1u) | arg_1))), min(_wgslsmith_div_i32(var_2.x, var_1.x), var_0.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = func_3(func_1(), global1[_wgslsmith_index_u32(~106342u, 18u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1().a * var_0.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.a)), _wgslsmith_f_op_vec4_f32(-var_0.a)))));
    var var_2 = arg_1.x;
    global0 = array<vec4<i32>, 5>();
    let var_3 = arg_0;
    return u_input.c;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(!vec2<bool>(arg_0.a > (2147483647i >> (u_input.c.x % 32u)), true == all(vec3<bool>(false, false, true))), vec2<bool>(func_3(func_3(Struct_3(vec4<f32>(189f, 1437f, 1000f, -868f), -372f, true, Struct_1(-663f), Struct_1(-1344f)), func_4(Struct_3(vec4<f32>(816f, -1028f, 772f, -848f), -1183f, true, Struct_1(1000f), Struct_1(-203f)), u_input.c, vec2<u32>(4294967295u, 1u)).b.x), global1[_wgslsmith_index_u32(4294967295u, 18u)]).c, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec2<bool>(true != all(vec4<bool>(false, true, false, true)), false));
    let var_1 = true;
    global0 = array<vec4<i32>, 5>();
    var_0 = vec2<bool>(func_3(func_3(func_1(), arg_0.c.x), ~(~_wgslsmith_sub_u32(u_input.a, arg_0.c.x))).c, var_1);
    global0 = array<vec4<i32>, 5>();
    return Struct_2(u_input.b.x ^ abs(47255i), countOneBits((arg_0.c.zz >> (u_input.c.xz % vec2<u32>(32u))) & reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50512u, 18u)], 18u)], arg_0.b.x))), min(_wgslsmith_div_vec3_u32(func_5(func_4(Struct_3(vec4<f32>(-150f, 671f, -1167f, 1000f), -2058f, var_0.x, Struct_1(-1569f), Struct_1(276f)), u_input.c, arg_0.c.xz), select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), true), _wgslsmith_f_op_f32(-1438f + 1000f)), vec3<u32>(abs(0u), 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(~u_input.c, _wgslsmith_mult_vec3_u32(min(arg_0.c, u_input.c), vec3<u32>(57826u, 43439u, arg_0.c.x) ^ vec3<u32>(0u, 4294967295u, 0u)))), firstLeadingBit(_wgslsmith_mult_i32(-14880i, min(-u_input.b.x, reverseBits(57768i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(-(~(-57901i)), firstLeadingBit(countOneBits(firstLeadingBit(vec2<u32>(17032u, u_input.c.x)))), func_5(func_4(func_1(), u_input.c, u_input.c.yx), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f))), 1i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(807f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) * -671f)));
    global1 = array<u32, 18>();
    global0 = array<vec4<i32>, 5>();
    var var_2 = func_6(Struct_2(~func_6(Struct_2(u_input.b.x, var_0.c.yy, vec3<u32>(17066u, u_input.c.x, 1u), var_0.a)).d, u_input.c.yz, var_0.c, abs(_wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(0i, u_input.b.x))))));
    var_2 = func_6(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -618f, -1351f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -717f))), true, func_3(Struct_3(vec4<f32>(199f, var_1.a, -754f, var_1.a), -581f, false, Struct_1(-427f), Struct_1(var_1.a)), 106270u >> (0u % 32u)).d, Struct_1(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 18u)], 18u)], 18u)], u_input.a), ~vec3<u32>(var_0.b.x, 54904u, global1[_wgslsmith_index_u32(u_input.a, 18u)])), ~var_2.c.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(firstTrailingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(18297i, -1i, 43802i), vec3<i32>(0i, u_input.b.x, var_0.a))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_2.d, var_2.a, var_0.d), vec3<i32>(2147483647i, var_2.a, -1i)), ~(vec3<i32>(var_2.d, -45025i, 1i) ^ vec3<i32>(u_input.b.x, var_2.d, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, -277f, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1179f, -1000f, var_1.a, var_1.a)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1347f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a)))))));
}

