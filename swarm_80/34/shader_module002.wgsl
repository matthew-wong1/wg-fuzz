struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, 57219i, i32(-2147483648), -38022i), vec4<i32>(56213i, 0i, 2147483647i, -57633i), vec4<i32>(1i, 21798i, -33209i, i32(-2147483648)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = arg_2.a;
    var var_1 = arg_2;
    var var_2 = var_0;
    var var_3 = vec4<bool>((var_0.b.c.x != _wgslsmith_add_u32(var_2.b.c.x, ~70944u)) && !(!any(vec2<bool>(true, true))), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), any(!vec4<bool>(true, false, all(vec3<bool>(true, false, false)), true)), !(true || !(var_2.b.c.x <= var_0.b.c.x)));
    let var_4 = var_0.c;
    return firstLeadingBit(select(arg_2.a.b.c, ~(~var_1.a.b.c) << (vec3<u32>(~var_2.b.c.x, ~arg_2.a.b.c.x, arg_2.a.b.c.x) % vec3<u32>(32u)), select(vec3<bool>(var_3.x, true, var_3.x), var_3.zxw, var_3.zzw)));
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1047f, -966f, !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-109f)) - 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f - 878f)))));
    global0 = array<vec3<u32>, 4>();
    let var_1 = _wgslsmith_add_i32(-2147483647i, 15067i);
    var var_2 = firstLeadingBit(vec4<i32>(~(-var_1 >> (~arg_0.x % 32u)), countOneBits(0i), ~u_input.c.x, -firstTrailingBit(var_1 & -2147483647i)));
    var var_3 = var_0.x;
    return func_3(_wgslsmith_div_i32(-7536i, u_input.c.x), _wgslsmith_sub_i32(u_input.a, 14753i), Struct_5(Struct_4(Struct_1(vec2<f32>(var_0.x, var_0.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, var_0.x, -993f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1580f, var_0.x, var_0.x)), ~vec3<u32>(arg_0.x, 61363u, 1385u), Struct_1(vec2<f32>(var_0.x, -342f))), ~(-1i), -var_2.xx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = select(-(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, 1028i, u_input.b)) >> (func_2(countOneBits(vec4<u32>(1u, 109097u, 62074u, arg_1.c.x))) % vec3<u32>(32u))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 6252i, u_input.a) | vec3<i32>(-2147483647i, -1i, -727i), vec3<i32>(u_input.a, u_input.a, u_input.c.x)) & vec3<i32>(13022i, ~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.c.x)))), !(!arg_3.zzz));
    var var_1 = ~((~(vec4<u32>(0u, 26880u, 0u, arg_1.c.x) >> (vec4<u32>(1u, arg_0.c.x, arg_0.c.x, arg_0.c.x) % vec4<u32>(32u))) >> (vec4<u32>(~21053u, ~1041u, 1u, arg_0.c.x) % vec4<u32>(32u))) << (~(~countOneBits(vec4<u32>(arg_0.c.x, 118409u, arg_0.c.x, 0u))) % vec4<u32>(32u)));
    global0 = array<vec3<u32>, 4>();
    var var_2 = arg_1;
    let var_3 = Struct_2(vec3<f32>(219f, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d.a.x)) + _wgslsmith_f_op_f32(-arg_1.b.x))), var_2.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2894f, _wgslsmith_f_op_f32(select(arg_1.b.x, arg_0.a.x, true)), _wgslsmith_div_f32(922f, -629f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-819f, var_2.d.a.x, arg_0.d.a.x), vec3<f32>(-482f, 1000f, arg_0.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.a.x + arg_1.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1264f + -1049f) * var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_2.b.x) + 1789f))), ~reverseBits(vec3<u32>(var_2.c.x, 0u, firstLeadingBit(0u))), Struct_1(var_2.a.yz));
    return 1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_2, 4u)], u_input.b, ~25499u);
    var_0 = Struct_3(~(~var_0.a), var_0.b, 5754u);
    var var_1 = vec3<u32>(countOneBits(~arg_1 << (4294967295u % 32u)), _wgslsmith_sub_u32(arg_2, max(45207u, func_3(_wgslsmith_mod_i32(u_input.b, 1i), firstLeadingBit(2147483647i), Struct_5(Struct_4(Struct_1(vec2<f32>(1552f, -1086f)), Struct_2(vec3<f32>(820f, -587f, 757f), vec3<f32>(-1114f, 1229f, 842f), vec3<u32>(3105u, var_0.a.x, 42874u), Struct_1(vec2<f32>(1000f, -2310f))), var_0.b, u_input.c, 1000f))).x)), 25039u);
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 4294967295u, 27236u, var_0.a.x) | vec4<u32>(0u, arg_1, arg_1, arg_1), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, arg_1, 10112u, 1u) & vec4<u32>(var_1.x, 15533u, var_0.c, 1u), min(vec4<u32>(1u, 0u, arg_2, 29106u), vec4<u32>(var_1.x, 4294967295u, 45948u, 67055u)))), ~firstLeadingBit(arg_1), max(var_1.x >> (4669u % 32u), 1u) ^ 1u), firstTrailingBit(select(~vec4<u32>(arg_2, var_1.x, arg_2, 63206u), ~vec4<u32>(arg_1, arg_1, arg_2, 82934u), true)) << (abs(select(~vec4<u32>(var_1.x, 4294967295u, 0u, 0u), ~vec4<u32>(4294967295u, 4294967295u, arg_1, 1u), vec4<bool>(arg_0, arg_0, true, true))) % vec4<u32>(32u)));
    let var_3 = ~1u;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-329f, -1551f)))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-173f, -558f, -367f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(414f, -146f, -183f))), arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1340f, -1934f, -985f) + vec3<f32>(-1072f, 1565f, -845f)) - vec3<f32>(1539f, -297f, -1472f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(278f, -2382f, 351f)))), _wgslsmith_mult_vec3_u32(~(~var_0.a), _wgslsmith_div_vec3_u32(~global0[_wgslsmith_index_u32(69180u, 4u)], ~var_2.wzy)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1528f, 1057f) * vec2<f32>(-640f, -543f)))), var_0.b, vec2<i32>(-1i) * -select(countOneBits(u_input.c), reverseBits(vec2<i32>(var_0.b, 17082i)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(869f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !(!any(vec4<bool>(true, false, false, true))), false, countOneBits(-firstLeadingBit(u_input.a)) != ~(-(u_input.b | u_input.c.x)));
    var var_1 = func_4(false, ~31044u, _wgslsmith_clamp_u32(~(~35758u), abs(func_1(Struct_2(vec3<f32>(573f, -1006f, -1000f), vec3<f32>(-1000f, -1651f, 460f), global0[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(vec2<f32>(-543f, -2166f))), Struct_2(vec3<f32>(-296f, -1094f, 1004f), vec3<f32>(1000f, -1707f, -733f), global0[_wgslsmith_index_u32(59637u, 4u)], Struct_1(vec2<f32>(482f, -1070f))), true, var_0)), _wgslsmith_mult_u32(min(40872u, 4294967295u), ~4294967295u)) >> (abs(23643u) % 32u));
    global0 = array<vec3<u32>, 4>();
    var var_2 = func_4(var_0.x, ~_wgslsmith_mod_u32(var_1.b.c.x, _wgslsmith_mod_u32(var_1.b.c.x, var_1.b.c.x ^ var_1.b.c.x)), 4294967295u).a;
    var var_3 = var_0.x;
    var var_4 = vec3<bool>(var_0.x, !(-select(var_1.d.x, 34731i, var_0.x) < (u_input.c.x ^ (var_1.c | var_1.d.x))), var_0.x);
    var_3 = false;
    var_1 = Struct_4(func_4(false, 14347u & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42023u, var_1.b.c.x, 16608u), vec3<u32>(var_1.b.c.x, var_1.b.c.x, 1u)), ~1u), var_1.b.c.x).b.d, func_4(all(select(select(vec4<bool>(var_4.x, true, true, true), vec4<bool>(var_0.x, var_4.x, false, false), vec4<bool>(var_4.x, true, true, var_4.x)), var_0, var_0.x)), firstLeadingBit(_wgslsmith_mod_u32(~var_1.b.c.x, var_1.b.c.x | 1u)), func_1(func_4(true, func_4(var_0.x, var_1.b.c.x, 0u).b.c.x, _wgslsmith_mult_u32(var_1.b.c.x, 65906u)).b, Struct_2(var_1.b.b, _wgslsmith_div_vec3_f32(var_1.b.b, vec3<f32>(2074f, var_2.a.x, var_1.b.a.x)), global0[_wgslsmith_index_u32(var_1.b.c.x, 4u)], Struct_1(vec2<f32>(1030f, -536f))), !any(var_0.yx), select(vec4<bool>(true, false, true, true), var_0, !var_0.x))).b, select(u_input.c.x, _wgslsmith_add_i32(-23436i, 41857i), !(_wgslsmith_f_op_f32(var_1.a.a.x - var_2.a.x) == _wgslsmith_f_op_f32(var_1.a.a.x + var_2.a.x))), vec2<i32>(var_1.d.x, -(~u_input.c.x) ^ -63124i), _wgslsmith_f_op_f32(492f * 1000f));
    var var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2068f, var_1.a.a.x, 2075f, var_1.e)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.d.a.x * -199f), _wgslsmith_f_op_f32(ceil(var_1.a.a.x)), _wgslsmith_f_op_f32(step(-865f, var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x * var_1.b.d.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a.x, var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1917f, -1022f, 115f, var_1.e) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, -191f, -423f, 363f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(384f, var_2.a.x, 1337f, 256f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-296f + 428f), -358f, _wgslsmith_div_f32(var_2.a.x, 467f)), _wgslsmith_f_op_vec3_f32(-var_1.b.a), all(var_0.zxw) | (u_input.a >= var_1.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -661f));
}

