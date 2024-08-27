struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: i32 = 17993i;

var<private> global2: Struct_1;

var<private> global3: array<i32, 30> = array<i32, 30>(0i, 0i, -15797i, -1i, -44155i, -6084i, -62501i, -18311i, 2147483647i, -1i, -10581i, -20998i, i32(-2147483648), 1i, -28402i, -16193i, 0i, i32(-2147483648), 0i, 15652i, 2147483647i, -4843i, 0i, 1i, i32(-2147483648), 2147483647i, 2147483647i, -8204i, 38629i, -2809i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_4(Struct_1(-1i), countOneBits(firstLeadingBit(~reverseBits(vec3<u32>(1u, 82494u, u_input.b.x)))), global0[_wgslsmith_index_u32(4294967295u, 28u)], ~_wgslsmith_mult_i32(_wgslsmith_add_i32(25923i, 16302i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 35035i)), arg_0.xz)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1162f, var_0.c)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -889f))))) + -145f);
    return var_0.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = max(func_3(max(-select(vec4<i32>(arg_1, var_0, global2.a, global3[_wgslsmith_index_u32(4294967295u, 30u)]), arg_0, vec4<bool>(false, false, false, false)), ~(~vec4<i32>(13143i, arg_1, -1095i, arg_0.x)))), vec3<u32>(u_input.c.x, u_input.b.x, abs(abs(u_input.c.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 1u), vec4<u32>(4294967295u, 21569u, u_input.c.x, u_input.b.x)))));
    global3 = array<i32, 30>();
    var var_2 = Struct_2(Struct_1(-(~firstTrailingBit(1i))), vec3<i32>(22678i, _wgslsmith_mult_i32(~u_input.a, ~0i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 0i), vec3<i32>(27294i, global2.a, 2147483647i))) << (vec3<u32>(55866u, 0u, 48250u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1956f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) ^ 1u, 28u)]) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1215f, -1030f)))))), all(vec3<bool>(any(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, true)))));
    var_2 = Struct_2(var_2.a, max(arg_0.xwy, vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, arg_1, -40853i), vec3<i32>(var_0, var_0, -11158i)), ~vec3<i32>(var_2.b.x, -24773i, global3[_wgslsmith_index_u32(42790u, 30u)])), 11175i, -(~38280i))), var_2.c, false);
    return var_2.a;
}

fn func_1() -> Struct_1 {
    global3 = array<i32, 30>();
    global1 = ~(-2147483647i);
    global2 = func_2(vec4<i32>(global3[_wgslsmith_index_u32(1u, 30u)], -(_wgslsmith_dot_vec3_i32(vec3<i32>(-30801i, global2.a, u_input.a), vec3<i32>(0i, global2.a, global3[_wgslsmith_index_u32(u_input.c.x, 30u)])) & _wgslsmith_mod_i32(u_input.a, global2.a)), -1i, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]), global3[_wgslsmith_index_u32(~(~((0u << (u_input.c.x % 32u)) | u_input.c.x)), 30u)]);
    var var_0 = -1i;
    let var_1 = select(!vec3<bool>(any(vec4<bool>(false, false, true, true)) | true, !any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, false, true))), !vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), true, true), vec3<bool>(true, true, true));
    return func_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], global3[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<i32>(-47789i, u_input.a)), select(0i, u_input.a, false), _wgslsmith_mod_i32(-1i, 2147483647i), -2147483647i << (u_input.b.x % 32u)), ~min(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global2.a, -45734i, u_input.a), vec4<i32>(1i, global3[_wgslsmith_index_u32(1u, 30u)], -1i, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]))), vec4<i32>(_wgslsmith_div_i32(u_input.a, global3[_wgslsmith_index_u32(abs(0u), 30u)]), 0i, _wgslsmith_add_i32(abs(73522i), global2.a), global3[_wgslsmith_index_u32(~(~u_input.b.x), 30u)])), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 23210i, 8145i)) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, global2.a, global2.a), vec3<i32>(u_input.a, global2.a, 11198i)), vec3<i32>(max(u_input.a, 1i) | u_input.a, 2147483647i, global2.a)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 1u << (u_input.b.x % 32u);
    var var_1 = ~vec4<u32>(_wgslsmith_mult_u32(var_0, ~1u) | 4294967295u, ~(38592u | ~u_input.b.x), 0u, ~_wgslsmith_mod_u32(~u_input.c.x, ~var_0));
    global3 = array<i32, 30>();
    let var_2 = -823f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(857f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] * global0[_wgslsmith_index_u32(25131u, 28u)])))));
    var var_3 = Struct_3(Struct_1(72396i), arg_0, ~1u, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_0, 28u)])));
    return Struct_3(arg_0, Struct_1(-28740i), firstTrailingBit(1u << ((var_1.x << (~20916u % 32u)) % 32u)), -1032f);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global3 = array<i32, 30>();
    global3 = array<i32, 30>();
    global2 = arg_0.a;
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5351u & _wgslsmith_add_u32(1u, arg_0.c), abs(~33827u), 41882u), countOneBits(vec4<u32>(u_input.c.x >> (0u % 32u), ~9167u, arg_0.c, ~1u))) & min(59411u, reverseBits(func_4(Struct_1(arg_0.b.a)).c)), 30u)];
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    return Struct_1(arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(func_1()));
    let var_0 = func_2(-(vec4<i32>(-global2.a, i32(-1i) * -5377i, 21063i, -45034i) & -firstTrailingBit(vec4<i32>(u_input.a, global2.a, u_input.a, 45131i))), i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.a), -global3[_wgslsmith_index_u32(4294967295u, 30u)]));
    var var_1 = global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(14209u, u_input.b.x, 75131u), vec3<u32>(33612u, 1u, 0u)), ~u_input.b)), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), firstTrailingBit(36265u), true && (true || any(vec2<bool>(true, true)))), 28u)];
    let var_2 = Struct_4(Struct_1(-10465i), _wgslsmith_add_vec3_u32(u_input.b, countOneBits(countOneBits(vec3<u32>(u_input.c.x, 0u, u_input.b.x)))), global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 28u)], select(_wgslsmith_mult_i32(global2.a, _wgslsmith_add_i32(-40601i, ~global3[_wgslsmith_index_u32(u_input.c.x, 30u)])), reverseBits(-5825i), 1f <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-358f, global0[_wgslsmith_index_u32(0u, 28u)])))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), -857f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 30000u), 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27105u, 28u)] - var_2.c) * -1727f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f + global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) + var_2.c))));
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(func_3(vec4<i32>(var_2.a.a, global2.a, -12800i, -8495i) << (vec4<u32>(1318u, 492u, u_input.b.x, 1585u) % vec4<u32>(32u))), select(vec3<u32>(93096u, 47481u, var_2.b.x), var_2.b, vec3<bool>(true, false, false))), reverseBits(_wgslsmith_mod_vec3_u32(u_input.b | var_2.b, u_input.b))), var_2.b);
    var var_5 = abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(func_4(Struct_1(317i)).a.a, var_0.a, global3[_wgslsmith_index_u32(var_2.b.x, 30u)] >> (5083u % 32u), ~(-1i)), vec4<i32>(2147483647i, _wgslsmith_div_i32(-38891i, -1088i), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], var_2.d), firstTrailingBit(0i)), _wgslsmith_add_vec4_i32(-vec4<i32>(var_2.d, var_0.a, 14347i, global2.a), min(vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], var_2.d, 0i), vec4<i32>(u_input.a, 2147483647i, 1i, 0i)))));
    var_5 = vec4<i32>(firstTrailingBit(2147483647i), u_input.a, func_5(Struct_3(Struct_1(_wgslsmith_sub_i32(var_2.a.a, 11424i)), var_2.a, 59899u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))))).a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_5.xwz, vec3<i32>(~var_5.x, var_5.x, 1i)) & abs(vec3<i32>(-global2.a, func_5(Struct_3(Struct_1(30051i), var_2.a, 62829u, var_3.x)).a, ~global3[_wgslsmith_index_u32(var_2.b.x, 30u)])), min(vec2<i32>(global2.a, -var_0.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, u_input.a, var_5.x, -51978i), vec4<i32>(0i, u_input.a, u_input.a, -1i))), (var_5.xz << (~var_2.b.zx % vec2<u32>(32u))) >> (abs(reverseBits(vec2<u32>(u_input.b.x, 4294967295u))) % vec2<u32>(32u))));
}

