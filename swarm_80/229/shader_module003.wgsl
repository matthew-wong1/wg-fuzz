struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(true, false, true, vec4<f32>(1420f, -1000f, 1141f, -259f)), Struct_2(true, false, true, vec4<f32>(-393f, 1853f, -126f, -1064f)), Struct_2(true, false, false, vec4<f32>(990f, -1000f, -1255f, 1375f)), Struct_2(false, false, false, vec4<f32>(836f, -791f, -628f, 2122f)));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(false, false, false), -37919i, 355f), Struct_1(vec3<bool>(false, false, false), 0i, 631f), Struct_1(vec3<bool>(true, true, false), 0i, 894f), Struct_1(vec3<bool>(false, true, false), 55627i, -566f), Struct_1(vec3<bool>(false, false, false), 1i, 850f), Struct_1(vec3<bool>(true, false, true), -1i, -246f), Struct_1(vec3<bool>(true, false, false), 0i, -909f), Struct_1(vec3<bool>(true, true, true), 1917i, -114f), Struct_1(vec3<bool>(true, true, true), -32228i, 322f), Struct_1(vec3<bool>(true, true, true), 63686i, 1211f), Struct_1(vec3<bool>(false, true, true), -1i, 1000f), Struct_1(vec3<bool>(false, false, false), -34234i, 336f), Struct_1(vec3<bool>(false, true, false), -49577i, 463f), Struct_1(vec3<bool>(true, true, true), 2147483647i, 711f), Struct_1(vec3<bool>(false, true, true), -31639i, -1269f), Struct_1(vec3<bool>(true, false, true), 10745i, 527f), Struct_1(vec3<bool>(true, false, false), -8138i, -1000f), Struct_1(vec3<bool>(true, true, true), 2147483647i, 1200f), Struct_1(vec3<bool>(true, true, true), 2147483647i, -218f), Struct_1(vec3<bool>(false, false, false), -46323i, 768f), Struct_1(vec3<bool>(true, true, false), 21858i, -256f), Struct_1(vec3<bool>(true, false, false), 6359i, -1466f), Struct_1(vec3<bool>(false, true, false), 1i, -1608f), Struct_1(vec3<bool>(true, false, true), -35970i, -908f));

var<private> global3: array<i32, 10> = array<i32, 10>(-23596i, 1i, 2147483647i, -41309i, -9535i, 2147483647i, -32154i, i32(-2147483648), 0i, i32(-2147483648));

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 4>();
    let var_0 = all(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), false), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), select(false, false, false)), vec3<bool>(true, true, -2147483647i > global4.x)));
    global4 = vec2<i32>(abs(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.a.zz), 10u)] << (~_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u)), -12812i);
    let var_1 = vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x >> (34525u % 32u), 10u)] | _wgslsmith_mult_i32(reverseBits(-18661i), global4.x ^ select(2147483647i, -2147483647i, false)), countOneBits(~global4.x), i32(-1i) * -34995i, 0i);
    let var_2 = true;
    return min(11830u, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.yyw), vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x) << ((u_input.c.zxw >> (_wgslsmith_div_vec3_u32(u_input.c.yxw, u_input.a.xxx) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(true, (any(!vec2<bool>(arg_1.a.x, arg_0.a.x)) & arg_1.a.x) || true, true, arg_2);
    global4 = vec2<i32>(arg_1.b, select(u_input.d.x, reverseBits(0i), all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.c)), -225f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 685f)))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.x, 993f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.yy, vec2<f32>(-1664f, var_0.d.x), arg_0.a.x))))))));
    var var_2 = var_0;
    let var_3 = arg_1;
    return vec3<bool>(arg_1.c >= 1729f, !select(!any(vec4<bool>(arg_1.a.x, arg_0.a.x, var_0.a, true)), true, all(select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, true), var_2.b))), true);
}

fn func_2(arg_0: i32) -> f32 {
    global3 = array<i32, 10>();
    let var_0 = func_4(Struct_1(vec3<bool>(true, true, true), 1i, -910f), global2[_wgslsmith_index_u32(~((func_3() << (u_input.a.x % 32u)) & u_input.a.x), 24u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, 137f, -703f, 1343f)))) - vec4<f32>(_wgslsmith_div_f32(745f, _wgslsmith_div_f32(-514f, 944f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2003f + -1238f) - _wgslsmith_f_op_f32(-1461f - 1613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1013f, -679f))), _wgslsmith_f_op_f32(trunc(-1000f)))));
    global3 = array<i32, 10>();
    global1 = array<Struct_2, 4>();
    var var_1 = vec3<f32>(-1109f, _wgslsmith_f_op_f32(trunc(276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2080f)) * 1314f) * -1665f));
    return 1000f;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = select(vec4<bool>(false, all(arg_0.a.zz), (_wgslsmith_dot_vec2_i32(arg_3.yx, vec2<i32>(1i, 1409i)) ^ arg_3.x) > ~abs(arg_1), all(!select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), vec4<bool>(true, true, true, arg_2.a), vec4<bool>(arg_0.a.x, arg_2.c, arg_0.a.x, arg_2.a)))), select(vec4<bool>(false, true, all(select(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(arg_2.a, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_2.a, true, true, arg_2.a))), true), vec4<bool>(arg_2.c, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 0u, 28219u), 10u)] < arg_1, any(select(arg_0.a.xz, arg_0.a.xz, arg_0.a.x)), 241f <= _wgslsmith_div_f32(arg_0.c, arg_0.c)), !select(vec4<bool>(arg_0.a.x, false, false, true), select(vec4<bool>(arg_0.a.x, false, false, false), vec4<bool>(arg_0.a.x, arg_2.c, false, arg_0.a.x), arg_0.a.x), true)), !(!(arg_0.a.x | true)));
    global4 = u_input.d;
    global1 = array<Struct_2, 4>();
    global3 = array<i32, 10>();
    var var_1 = Struct_3(arg_0.a, global2[_wgslsmith_index_u32(62965u, 24u)]);
    return Struct_3(vec3<bool>(!all(select(vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(false, true, false, var_1.b.a.x), vec4<bool>(var_0.x, var_0.x, false, var_1.b.a.x))), any(var_1.b.a.yx), true), Struct_1(select(!(!vec3<bool>(false, var_1.b.a.x, arg_2.a)), vec3<bool>(true, true, true), !var_1.a.x && true), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_2(arg_1))) - _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(184f - var_1.b.c)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = func_5(Struct_1(!(!arg_0.a), 34279i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.d.x, _wgslsmith_f_op_f32(step(arg_1.d.x, 680f)), true)), _wgslsmith_f_op_f32(trunc(1000f))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -12264i), _wgslsmith_dot_vec4_i32(vec4<i32>(18682i, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], global4.x), vec4<i32>(arg_0.b.b, u_input.b, arg_0.b.b, arg_0.b.b)), 1i), _wgslsmith_div_vec3_i32(max(vec3<i32>(global3[_wgslsmith_index_u32(133918u, 10u)], -3754i, -7757i), vec3<i32>(-1i, global4.x, 12999i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 55132i), vec3<i32>(-16699i, global4.x, 19848i)))), arg_1, -(~vec3<i32>(global4.x, reverseBits(u_input.b), _wgslsmith_add_i32(global4.x, -1i))));
    global2 = array<Struct_1, 24>();
    var var_1 = var_0.b;
    let var_2 = ~abs(u_input.c);
    var_1 = func_5(var_0.b, _wgslsmith_mod_i32(var_0.b.b & global4.x, arg_0.b.b), Struct_2(var_0.a.x, !arg_1.c, var_0.b.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1661f, arg_0.b.c, 214f, 481f), vec4<f32>(var_1.c, var_0.b.c, -1056f, arg_0.b.c), vec4<bool>(var_1.a.x, arg_0.b.a.x, arg_2, true)))))), vec3<i32>(14543i, 42160i, -47320i)).b;
    return any(var_1.a.xz);
}

fn func_1() -> i32 {
    let var_0 = vec4<bool>(~min(~0u, ~63043u) > u_input.c.x, true, func_6(func_5(Struct_1(vec3<bool>(true, true, true), ~(-25435i), _wgslsmith_f_op_f32(func_2(-20348i))), global4.x, Struct_2(true, true, all(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 381f, 957f, 545f)))), abs(vec3<i32>(u_input.d.x, u_input.b, -2147483647i))), Struct_2(!(u_input.c.x != u_input.a.x), !any(vec3<bool>(true, false, true)), any(vec2<bool>(false, false)) || true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-775f, -1002f, 868f, 105f) - vec4<f32>(-1009f, -101f, 784f, -1304f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-653f, 1393f, 753f, 646f), vec4<f32>(-1277f, 1796f, 558f, 1291f), false)))), func_5(func_5(Struct_1(vec3<bool>(false, true, false), -61670i, -683f), firstTrailingBit(global4.x), global1[_wgslsmith_index_u32(5134u, 4u)], -vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], -2147483647i)).b, _wgslsmith_dot_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], global4.x), vec3<i32>(u_input.d.x, u_input.b, -10281i) | vec3<i32>(-10011i, 0i, global4.x)), global1[_wgslsmith_index_u32(firstLeadingBit(min(67391u, u_input.a.x)), 4u)], _wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 76382i, u_input.d.x), select(vec3<i32>(-2147483647i, 19531i, -10538i), vec3<i32>(-2147483647i, -58174i, 2147483647i), vec3<bool>(false, false, false)))).b.a.x), !(12439i < _wgslsmith_dot_vec2_i32(~u_input.d, u_input.d)));
    var var_1 = firstTrailingBit(vec4<i32>(6472i, firstLeadingBit(u_input.b), -2147483647i, -2147483647i) << (vec4<u32>(1u, u_input.a.x, max(_wgslsmith_mult_u32(10836u, 23483u), ~0u), ~u_input.c.x ^ ~51619u) % vec4<u32>(32u)));
    let var_2 = vec2<i32>(2147483647i, 1i);
    var var_3 = firstTrailingBit(_wgslsmith_mult_i32(func_5(func_5(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 557i, 2147483647i, var_1.x), vec4<i32>(33502i, var_2.x, 1i, 20856i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.a.x), 4u)], vec3<i32>(331i, global3[_wgslsmith_index_u32(4294967295u, 10u)], 2147483647i)).b, _wgslsmith_sub_i32(~global4.x, func_5(Struct_1(var_0.xwy, 2147483647i, -126f), -45674i, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_1.zxw).b.b), Struct_2(!var_0.x, false, true, vec4<f32>(-1205f, 316f, 996f, 706f)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -44438i), vec3<i32>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(84547u, 10u)])), _wgslsmith_sub_vec3_i32(var_1.xxx, var_1.wzy), true)).b.b, -_wgslsmith_dot_vec4_i32(-vec4<i32>(31136i, 0i, -16366i, 3097i), ~vec4<i32>(u_input.b, u_input.b, 1i, global4.x))));
    let var_4 = -400f;
    return _wgslsmith_add_i32(~(-66180i), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(-1i, u_input.d.x), countOneBits(-1i)), reverseBits(var_1.zz)));
}

fn func_7(arg_0: i32) -> bool {
    global3 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f));
    var var_1 = u_input.a.yw;
    var var_2 = Struct_3(select(vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(var_0)) < _wgslsmith_f_op_f32(-var_0), (u_input.a.x << (13642u % 32u)) <= _wgslsmith_dot_vec4_u32(u_input.c, u_input.a)), vec3<bool>(true, true, true && all(vec4<bool>(false, true, false, true))), select(vec3<bool>(func_5(Struct_1(vec3<bool>(true, false, false), u_input.d.x, 1053f), global3[_wgslsmith_index_u32(var_1.x, 10u)], global1[_wgslsmith_index_u32(1u, 4u)], vec3<i32>(global4.x, -1i, u_input.b)).a.x, true, true), vec3<bool>(true, all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~func_3()), _wgslsmith_div_u32(1u, u_input.a.x)), 24u)]);
    let var_3 = -1i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~4294967295u);
    let var_0 = Struct_3(vec3<bool>(func_7(_wgslsmith_add_i32(~0i, func_1())), true, true), global2[_wgslsmith_index_u32(7708u, 24u)]);
    let var_1 = func_1();
    global0 = ~0u;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c));
    var var_4 = vec4<bool>(func_4(Struct_1(!var_0.a, i32(-1i) * -18685i, _wgslsmith_div_f32(430f, var_2.b.c)), Struct_1(var_0.b.a, 0i, _wgslsmith_f_op_f32(-var_2.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c, -1000f, 742f, -576f)))).x & (-2147483647i < _wgslsmith_div_i32(~u_input.d.x, var_2.b.b)), all(var_2.a.yx) || var_0.a.x, true, true);
    var var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.b.b, ~global3[_wgslsmith_index_u32(4294967295u, 10u)]), 0i, _wgslsmith_add_i32(u_input.d.x, -18181i), u_input.b), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_1, u_input.d.x, var_0.b.b, u_input.d.x)), reverseBits(reverseBits(vec4<i32>(var_0.b.b, -1i, 546i, var_2.b.b))))) | (select(max(vec4<i32>(10690i, var_2.b.b, u_input.d.x, global4.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(44050i, -1i, var_2.b.b, -12819i))), firstTrailingBit(vec4<i32>(1691i, 2147483647i, var_0.b.b, var_1)) >> (~vec4<u32>(0u, 73655u, u_input.c.x, u_input.a.x) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, var_0.b.a.x, true), vec4<bool>(var_4.x, true, var_4.x, var_4.x), vec4<bool>(var_2.a.x, var_4.x, true, var_4.x)), !vec4<bool>(var_2.a.x, true, var_2.a.x, true), vec4<bool>(false, var_4.x, false, false))) & _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_0.b.b, var_2.b.b, var_2.b.b, 42577i)), firstLeadingBit(vec4<i32>(-40896i, var_1, var_2.b.b, 13897i)), -reverseBits(vec4<i32>(10140i, 47792i, -1i, 2831i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-281f - -504f), ~34570u, ~0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.b.c, var_3))), _wgslsmith_f_op_f32(f32(-1f) * -611f))), 40674u);
}

