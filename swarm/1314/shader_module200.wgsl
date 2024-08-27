struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true, -1840f, 419i, -648f);

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(37801i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, -37384i, 39972i), vec3<i32>(i32(-2147483648), 2147483647i, 2300i), vec3<i32>(2147483647i, i32(-2147483648), -37948i), vec3<i32>(1i, 2147483647i, 4587i), vec3<i32>(2147483647i, 31325i, 15354i), vec3<i32>(36043i, 25394i, 514i), vec3<i32>(0i, 2147483647i, -63311i), vec3<i32>(-14333i, 0i, 22592i), vec3<i32>(19842i, -22550i, i32(-2147483648)), vec3<i32>(53540i, -1i, 5478i), vec3<i32>(i32(-2147483648), -75128i, 1i), vec3<i32>(1i, -1i, 0i), vec3<i32>(7374i, 2147483647i, -16272i), vec3<i32>(-10375i, 1i, -20974i));

var<private> global3: Struct_1 = Struct_1(true, false, 1000f, 0i, 1000f);

var<private> global4: array<vec2<f32>, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(global1.x), min(47187u, 0u)), ~(~4294967295u)), global1.x);
    let var_1 = countOneBits(_wgslsmith_mod_vec3_u32(abs(global1.wwy), global1.yzz >> (vec3<u32>(global1.x, global1.x, 59103u) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_mult_u32(global1.x, ~0u), global1.x, 0u));
    global3 = arg_1.b;
    let var_2 = Struct_1(!any(!(!vec3<bool>(arg_0, arg_1.b.b, global3.a))), global3.a, arg_1.c, _wgslsmith_div_i32(global0.d, global0.d), 376f);
    let var_3 = Struct_2(var_2, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -732f));
    return _wgslsmith_add_vec4_i32(max(min(u_input.b, vec4<i32>(arg_1.a.d, -30936i, arg_1.b.d, 18198i)), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global3.d), ~var_3.a.d, countOneBits(var_3.b.d), global3.d)) >> ((~abs(vec4<u32>(var_1.x, 30384u, 16467u, 1u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, var_1.x, 19911u), vec4<u32>(4326u, 4294967295u, var_1.x, 70130u)) % vec4<u32>(32u))) % vec4<u32>(32u)), min(u_input.b, abs(vec4<i32>(~2147483647i, var_2.d, global0.d, 1i))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(func_3(global0.a, Struct_2(Struct_1(global3.b, global3.b, global3.e, global3.d, 2019f), Struct_1(false, true, global0.e, -1909i, -1000f), global3.c)), u_input.a) >= 2147483647i, !(!global3.a), global0.c, 0i, global0.e), Struct_1(true, true && (global0.c > _wgslsmith_f_op_f32(-global0.e)), _wgslsmith_f_op_f32(-global0.e), _wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(0i, ~u_input.a.x, global3.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c, global0.e, true))), _wgslsmith_f_op_f32(-global0.e)))), _wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(-842f * 778f)));
    var var_1 = Struct_2(Struct_1(any(!select(vec4<bool>(false, true, var_0.b.b, false), vec4<bool>(var_0.a.a, true, global0.a, true), vec4<bool>(false, false, var_0.b.a, false))), false, 189f, -15838i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(abs(global0.e)))), global0.e));
    var var_2 = countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(5794u, global1.x, 39307u)), global1.x), 2837u));
    global3 = Struct_1(var_1.a.a, false, -1785f, _wgslsmith_add_i32(~(~(-1i)), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-8345i, var_0.b.d, global3.d, u_input.a.x) << (vec4<u32>(37249u, global1.x, global1.x, 1u) % vec4<u32>(32u))), vec4<i32>(var_1.a.d, global0.d, var_0.a.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.d, global3.d, -44150i), vec3<i32>(u_input.a.x, 15127i, 17682i))))), -1743f);
    var var_3 = abs(countOneBits(vec2<i32>(~(-22642i) & ~var_0.a.d, global0.d)));
    return Struct_2(Struct_1(false, global3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1572f - _wgslsmith_f_op_f32(round(-1000f))))), 18313i, _wgslsmith_f_op_f32(var_1.a.e * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global3.e, -1166f, false)))))), var_1.a, var_0.a.c);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> bool {
    global3 = Struct_1(func_2().b.a, false, global3.c, max(-_wgslsmith_mult_i32(-2748i, ~(-2426i)), -(~2147483647i)), -580f);
    global3 = func_2().b;
    return global1.x > _wgslsmith_sub_u32(2873u, countOneBits(_wgslsmith_add_u32(1717u, global1.x)) << (_wgslsmith_sub_u32(select(global1.x, 1u, global0.b), abs(global1.x)) % 32u));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_4(func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-546f)), global0.e))), !arg_0.b.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, -1794f))), func_3(false, Struct_2(Struct_1(global0.b, false, 1085f, u_input.a.x, -1774f), arg_0.b, -1000f)).x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.c))), arg_0.a, global0.c);
    global1 = _wgslsmith_mod_vec4_u32(select(~firstLeadingBit(~vec4<u32>(global1.x, global1.x, 71759u, 112887u)), ~countOneBits(~vec4<u32>(global1.x, global1.x, global1.x, global1.x)), true), ~_wgslsmith_div_vec4_u32(~vec4<u32>(90978u, global1.x, 4294967295u, 33236u) >> (~vec4<u32>(global1.x, global1.x, global1.x, global1.x) % vec4<u32>(32u)), ~vec4<u32>(0u, global1.x, 0u, 5742u)));
    return func_2().a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(global1.x, 23u)]);
    let var_1 = Struct_1(!global0.a, arg_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_1(Struct_2(Struct_1(false, global3.b, arg_2.c, arg_2.d, global0.e), arg_2, 419f), true, vec4<f32>(var_0.x, var_0.x, 678f, arg_1.c), global3.d).e, arg_1.e))), arg_1.c)), -(~global0.d | -max(3905i, arg_1.d)), -846f);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(13543u, 4294967295u), vec2<u32>(45482u, 1u)), global1.x, ~global1.x, global1.x) >> (~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 0u, 15290u, 32783u), vec4<u32>(global1.x, global1.x, 7077u, 5529u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 0u), vec4<u32>(4294967295u, global1.x, 1u, 18173u), vec4<u32>(52729u, 137825u, global1.x, global1.x)), reverseBits(vec4<u32>(40315u, global1.x, global1.x, global1.x)))), ~(~vec4<u32>(global1.x, 8870u, 70599u, 117445u)) >> (_wgslsmith_div_vec4_u32(max(vec4<u32>(1u, 26421u, 1u, global1.x), vec4<u32>(global1.x, 4294967295u, 83829u, 898u)), ~vec4<u32>(global1.x, global1.x, global1.x, global1.x)) % vec4<u32>(32u))));
    global0 = arg_1;
    let var_3 = Struct_3(Struct_2(arg_2, Struct_1(func_2().b.b, true, _wgslsmith_f_op_f32(-var_0.x), 11463i, -305f), _wgslsmith_div_f32(165f, -1000f)), func_2(), vec4<i32>(global3.d, firstLeadingBit(arg_1.d) << (firstLeadingBit(~35583u) % 32u), -arg_2.d, -9287i));
    return var_3;
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> bool {
    global2 = array<vec3<i32>, 15>();
    var var_0 = Struct_3(arg_0.a, Struct_2(Struct_1(global0.b, func_5(_wgslsmith_div_f32(global0.c, 747f), func_2().b, Struct_1(global0.a, true, -147f, global3.d, global3.e)).a.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e), -471f)), 2147483647i, global0.e), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f) - _wgslsmith_f_op_f32(round(-655f))), func_2().b, func_2().b).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-767f))))), vec4<i32>(_wgslsmith_add_i32(~u_input.a.x, func_2().a.d << (_wgslsmith_mult_u32(arg_1, 57687u) % 32u)), max(u_input.b.x, arg_0.c.x | -2815i), _wgslsmith_sub_i32((global0.d | arg_0.c.x) & global0.d, firstLeadingBit(-30405i << (global1.x % 32u))), 1i));
    global2 = array<vec3<i32>, 15>();
    global1 = vec4<u32>(global1.x, ~global1.x, global1.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 9592u) ^ _wgslsmith_mult_u32(global1.x, 42838u), ~1u)) & reverseBits(select(~abs(vec4<u32>(49685u, global1.x, 1u, arg_1)), ~vec4<u32>(80863u, 1u, global1.x, global1.x) >> (~vec4<u32>(global1.x, arg_1, arg_1, 55741u) % vec4<u32>(32u)), !(!var_0.a.b.b)));
    var var_1 = -246f;
    return global3.b || func_1(arg_0.b, arg_0.a.b.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1264f, global0.e, arg_0.a.b.c, 1371f) * vec4<f32>(-540f, -2517f, var_0.a.c, global0.e)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-154f, global0.e, var_0.b.b.c, -1000f), vec4<f32>(arg_0.a.c, global3.c, global0.c, -382f)))), vec4<f32>(arg_0.b.b.e, _wgslsmith_f_op_f32(arg_0.b.c - -674f), global0.c, _wgslsmith_f_op_f32(max(-581f, 632f)))), ~max(var_0.a.b.d, global0.d >> (arg_1 % 32u))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 23>();
    global1 = countOneBits(~abs(vec4<u32>(_wgslsmith_mult_u32(global1.x, global1.x), firstLeadingBit(global1.x), ~0u, ~global1.x)));
    global3 = Struct_1(true, func_6(func_5(_wgslsmith_f_op_f32(-global3.c), func_1(Struct_2(Struct_1(global3.b, false, global0.c, global3.d, -268f), Struct_1(global0.b, false, global0.c, global3.d, global3.c), 488f), !global3.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e, 2021f, global0.c, 779f), vec4<f32>(global3.c, global3.c, -297f, 215f))), max(-2147483647i, 35241i)), func_2().a), 1u), -107f, global3.d, global0.c);
    let var_0 = vec3<bool>(global3.b, global0.e > _wgslsmith_f_op_f32(sign(global0.e)), func_2().b.b);
    global0 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-723f - -1000f), _wgslsmith_mult_i32(global0.d, ~countOneBits(u_input.b.x)) & 2147483647i, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-296f, 1014f))), u_input.a.x, vec3<f32>(-1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -944f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_f32(select(global3.c, global3.c, !any(vec2<bool>(false, global0.a))))));
}

