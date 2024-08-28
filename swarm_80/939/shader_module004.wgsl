struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-1i, -14279i, -1i, 1916i), 4294967295u, 1u, -209f);

var<private> global1: Struct_3 = Struct_3(vec4<u32>(15104u, 34040u, 0u, 4294967295u), Struct_2(vec4<i32>(-50644i, 1i, -37139i, 1i), 4294967295u, 13865u, 119f));

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<u32>(1u, 4294967295u, 77576u, 10475u), Struct_2(vec4<i32>(5779i, -144i, i32(-2147483648), 1i), 41759u, 1u, 212f)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 0u, 32509u), Struct_2(vec4<i32>(i32(-2147483648), -8779i, i32(-2147483648), -1i), 19367u, 30596u, 975f)), Struct_3(vec4<u32>(4294967295u, 0u, 17430u, 10033u), Struct_2(vec4<i32>(-14244i, 1i, 1i, 32348i), 0u, 11194u, -3035f)), Struct_3(vec4<u32>(74396u, 1u, 19834u, 2868u), Struct_2(vec4<i32>(0i, 2147483647i, -54530i, 28857i), 5169u, 4294967295u, 289f)), Struct_3(vec4<u32>(4617u, 106030u, 1u, 0u), Struct_2(vec4<i32>(-524i, -11430i, 23422i, -50625i), 104460u, 4294967295u, 909f)), Struct_3(vec4<u32>(0u, 1u, 47832u, 1u), Struct_2(vec4<i32>(9415i, 37639i, -1i, 84254i), 8667u, 1u, 917f)), Struct_3(vec4<u32>(4294967295u, 105349u, 6040u, 75827u), Struct_2(vec4<i32>(32805i, 2147483647i, 0i, 44836i), 4294967295u, 27120u, 216f)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), Struct_2(vec4<i32>(1i, 1i, 0i, 0i), 4294967295u, 30316u, 1939f)), Struct_3(vec4<u32>(0u, 49554u, 0u, 93993u), Struct_2(vec4<i32>(i32(-2147483648), 41571i, 55054i, i32(-2147483648)), 95246u, 4294967295u, 1000f)), Struct_3(vec4<u32>(0u, 0u, 0u, 14531u), Struct_2(vec4<i32>(17393i, 0i, 0i, 0i), 42211u, 4294967295u, -175f)), Struct_3(vec4<u32>(4294967295u, 1u, 34052u, 0u), Struct_2(vec4<i32>(0i, -1i, 2147483647i, -11353i), 37114u, 1745u, 675f)), Struct_3(vec4<u32>(0u, 6160u, 48575u, 0u), Struct_2(vec4<i32>(-1i, -58959i, 1i, -16887i), 97400u, 4294967295u, 235f)), Struct_3(vec4<u32>(18116u, 1u, 4294967295u, 13223u), Struct_2(vec4<i32>(1i, 1i, 1i, 0i), 1u, 4294967295u, 186f)), Struct_3(vec4<u32>(1u, 4294967295u, 1u, 20886u), Struct_2(vec4<i32>(-1i, 35301i, 2147483647i, 2147483647i), 56924u, 15591u, -2609f)), Struct_3(vec4<u32>(70015u, 21430u, 27147u, 0u), Struct_2(vec4<i32>(-13582i, -14931i, 2147483647i, 63659i), 0u, 22966u, 565f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_2 {
    global1 = Struct_3(global1.a, global1.b);
    return global1.b;
}

fn func_3() -> vec2<i32> {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 15u)];
    let var_0 = _wgslsmith_f_op_f32(-global1.b.d);
    let var_1 = any(vec4<bool>(~_wgslsmith_sub_i32(29148i, global1.b.a.x) == _wgslsmith_dot_vec4_i32(global0.a, func_1().a), var_0 == global0.d, any(vec4<bool>(true, true, true, true)), true));
    var var_2 = !(!select(!(!vec4<bool>(var_1, false, true, true)), !vec4<bool>(var_1, true, var_1, false), true));
    global2 = array<Struct_3, 15>();
    return -global0.a.yz;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global2 = array<Struct_3, 15>();
    let var_0 = true;
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.b, ~u_input.a, u_input.a, ~arg_1.c) & reverseBits(vec4<u32>(1u, global0.b, 66408u, global0.c)), ~select(vec4<u32>(arg_0.c, global0.c, global0.c, 55251u), _wgslsmith_div_vec4_u32(global1.a, vec4<u32>(1u, 4258u, 28869u, arg_1.c)), true)), 15u)];
    let var_1 = Struct_2(global0.a, 71886u, abs(757u), -893f);
    return Struct_2(vec4<i32>(global1.b.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(global0.a.x, 15490i, -2147483647i, var_1.a.x)), _wgslsmith_div_vec4_i32(var_1.a, var_1.a))), ~(i32(-1i) * -1i), arg_0.a.x), global1.b.c, 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f)), 1015f));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = func_4(Struct_1(func_3(), _wgslsmith_f_op_f32(-418f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f))), global0.c & (~global0.b ^ ~4294967295u)), Struct_1(_wgslsmith_add_vec2_i32(global0.a.zw, vec2<i32>(-1i, func_1().a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.d - global0.d))), 67491u));
    global1 = Struct_3(vec4<u32>(u_input.a, 0u ^ abs(global1.b.b), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c, u_input.a, u_input.a), global1.a.wyy), ~_wgslsmith_sub_vec3_u32(global1.a.xww, vec3<u32>(global0.b, 0u, 0u)))), global1.b);
    global1 = global2[_wgslsmith_index_u32(69230u, 15u)];
    var var_2 = Struct_1(~var_1.a.yx, global0.d, ~(~var_1.b));
    return Struct_3(vec4<u32>(global1.a.x, _wgslsmith_div_u32(firstTrailingBit(u_input.a), _wgslsmith_add_u32(4732u, u_input.a)), ~u_input.a, u_input.a) >> (global1.a % vec4<u32>(32u)), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-9827i, var_1.a.x), -53143i, -var_2.a.x, 9310i), global1.b.a), var_1.c, var_2.c, func_1().d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = func_2();
    global1 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~27900u), _wgslsmith_mult_vec2_u32(global1.a.xz, global1.a.yz)), func_2().b.c, _wgslsmith_dot_vec4_u32(global1.a, _wgslsmith_add_vec4_u32(global1.a >> (vec4<u32>(0u, 0u, u_input.a, global0.c) % vec4<u32>(32u)), vec4<u32>(u_input.a, 51985u, u_input.a, 20134u))), (~var_0.b >> (~19757u % 32u)) & ~1u), var_0);
    let var_1 = Struct_1(func_4(Struct_1(global1.b.a.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1458f))), 40721u), Struct_1(vec2<i32>(var_0.a.x, firstLeadingBit(1i)), _wgslsmith_div_f32(1238f, var_0.d), var_0.c)).a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1193f)) - -265f)))), 31577u);
    let var_2 = select(vec3<bool>(true, var_0.d >= 1038f, all(vec2<bool>(true, any(vec4<bool>(true, false, false, true))))), vec3<bool>(true, false, any(vec3<bool>(true, true, all(vec2<bool>(false, true))))), vec3<bool>(true, any(vec3<bool>(var_0.b > 0u, true, true)), !(any(vec4<bool>(true, false, true, false)) & true)));
    global0 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, 26702i, var_0.a.x, 2147483647i) ^ vec4<i32>(u_input.b, 2147483647i, var_0.a.x, global1.b.a.x), ~(vec4<i32>(1i, 2147483647i, -9359i, u_input.b) >> (vec4<u32>(global1.b.c, global1.b.b, global1.a.x, u_input.a) % vec4<u32>(32u))), countOneBits(vec4<i32>(u_input.b, -40432i, -24018i, 40657i))), vec4<i32>(global1.b.a.x, u_input.b, global0.a.x << (_wgslsmith_mult_u32(22894u, var_1.c) % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.a.x, -2147483647i, -2147483647i), ~0i))), firstTrailingBit(~global0.b), 0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-992f, _wgslsmith_div_f32(var_0.d, -2214f)) - _wgslsmith_f_op_f32(func_1().d - -235f)));
    var var_3 = (i32(-1i) * -_wgslsmith_div_i32(~(-2147483647i), -global1.b.a.x)) ^ var_1.a.x;
    var var_4 = ~_wgslsmith_mod_u32(abs(130620u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -517f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -879f, global1.b.d, global1.b.d)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.d, 1124f, var_1.b, global0.d) + vec4<f32>(-1204f, var_0.d, 430f, 476f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.d, 1191f, -505f, var_1.b))))))), _wgslsmith_sub_i32(reverseBits(~(~0i)), _wgslsmith_add_i32(firstLeadingBit(var_0.a.x) ^ _wgslsmith_add_i32(u_input.b, -2147483647i), i32(-1i) * -2147483647i)), global1.a.xz, 0u);
}

