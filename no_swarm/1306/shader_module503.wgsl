struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(1u, i32(-2147483648), vec4<f32>(-1839f, 1329f, 1502f, -119f), vec2<bool>(false, true), vec4<i32>(-1i, -1i, 2147483647i, -1i)), Struct_3(4294967295u, 0i, vec4<f32>(2650f, 661f, -1465f, -273f), vec2<bool>(true, true), vec4<i32>(21093i, -15762i, i32(-2147483648), i32(-2147483648))), Struct_3(432u, 2147483647i, vec4<f32>(522f, 835f, 1191f, -669f), vec2<bool>(true, true), vec4<i32>(-25289i, -29709i, -7023i, 17261i)), Struct_3(245u, 2147483647i, vec4<f32>(-747f, -1625f, 1273f, 561f), vec2<bool>(false, true), vec4<i32>(1i, i32(-2147483648), 9240i, i32(-2147483648))), Struct_3(71633u, 37767i, vec4<f32>(847f, -430f, 763f, 1217f), vec2<bool>(true, true), vec4<i32>(1i, 5007i, -33081i, -1i)), Struct_3(4294967295u, -3750i, vec4<f32>(286f, 396f, 775f, -803f), vec2<bool>(true, false), vec4<i32>(31252i, 1i, -6811i, -1106i)), Struct_3(1u, 83996i, vec4<f32>(1000f, -1359f, -928f, 877f), vec2<bool>(false, true), vec4<i32>(-42789i, 10232i, 2147483647i, i32(-2147483648))), Struct_3(1u, 2147483647i, vec4<f32>(-839f, 2077f, -283f, -1620f), vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, -19424i, 24649i)), Struct_3(17177u, -1i, vec4<f32>(569f, 341f, -148f, -860f), vec2<bool>(false, true), vec4<i32>(0i, 28222i, 50182i, 0i)), Struct_3(4294967295u, i32(-2147483648), vec4<f32>(1000f, -968f, -1395f, -498f), vec2<bool>(true, false), vec4<i32>(53959i, 0i, 1i, -1i)));

var<private> global1: array<vec3<f32>, 4>;

var<private> global2: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    let var_0 = Struct_3(arg_0.x, 0i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(997f * -454f), -1736f, true)), -483f), _wgslsmith_f_op_f32(ceil(-345f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -632f)), 1f), vec2<bool>(u_input.a.x != (i32(-1i) * -2147483647i), false), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, select(-23135i << (arg_0.x % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(36598i, 2147483647i, -10124i, -1i)), all(vec4<bool>(true, false, true, true))), ~_wgslsmith_sub_i32(2147483647i, u_input.b.x))));
    global0 = array<Struct_3, 10>();
    let var_1 = var_0.c.zy;
    return Struct_3(4294967295u, u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(_wgslsmith_f_op_f32(select(737f, var_0.c.x, false)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2329f), _wgslsmith_f_op_f32(max(591f, var_1.x))))), !select(!(!var_0.d), var_0.d, !var_0.d), vec4<i32>(max(29971i, abs(var_0.e.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.a.x, u_input.b.x), firstLeadingBit(-9170i)), u_input.a.yz), var_0.e.x, var_0.e.x));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_1(reverseBits(arg_0.e.yy));
    let var_1 = Struct_2(Struct_1(vec2<i32>(1i, 78066i)), ~(~(~(~vec3<u32>(4294967295u, arg_0.a, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-arg_0.c.yz), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(func_2(vec3<u32>(arg_0.a, arg_0.a, arg_0.a)).e, u_input.a), arg_0.b)), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a, 29376u, 77627u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, 36834u, 94562u)), vec4<u32>(1u << (arg_0.a % 32u), firstTrailingBit(arg_0.a), arg_0.a, ~arg_0.a))));
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.x)));
    return 27317i;
}

fn func_1() -> vec3<bool> {
    global2 = true;
    let var_0 = 2907i;
    let var_1 = func_2(abs(~vec3<u32>(1u, ~4294967295u, _wgslsmith_clamp_u32(1u, 1u, 4294967295u))));
    let var_2 = var_1.a ^ ~(~4294967295u);
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-35281i, 2147483647i), countOneBits(0i)), -vec2<i32>(-4817i, 2147483647i), firstLeadingBit(vec2<i32>(-1i, var_1.e.x)))), vec3<u32>(var_1.a, 1u, ~1u), vec2<f32>(-3018f, var_1.c.x), func_3(global0[_wgslsmith_index_u32(countOneBits(0u), 10u)]) | -(~_wgslsmith_mod_i32(0i, -2147483647i)), ~vec4<u32>(~(4294967295u << (var_1.a % 32u)), 76972u, 0u, var_1.a));
    return select(select(!vec3<bool>(func_2(var_3.e.zwy).d.x, false, false), !(!(!vec3<bool>(var_1.d.x, false, var_1.d.x))), !(var_2 > var_1.a)), select(!vec3<bool>(var_1.d.x, false, !var_1.d.x), select(vec3<bool>(var_1.d.x && var_1.d.x, all(vec3<bool>(false, false, false)), !var_1.d.x), select(!vec3<bool>(true, var_1.d.x, true), vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(var_1.d.x, true, false)), true), vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), ~(~var_2) <= _wgslsmith_add_u32(select(1u, var_2, var_2 <= 4294967295u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !any(vec4<bool>(false, all(vec4<bool>(true, true, true, false)) || false, any(func_1()), true));
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(func_2(vec3<u32>(1u, 0u, 1u)).e.xy, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -14293i), vec2<i32>(1i, -10473i)), u_input.a.xy << (vec2<u32>(4294967295u, 27920u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x) ^ vec2<i32>(-1i, u_input.b.x), u_input.a.zy))), _wgslsmith_div_vec3_u32(max(select(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 26022u, 9934u), true) << (vec3<u32>(4294967295u, 0u, 4297u) % vec3<u32>(32u)), ~vec3<u32>(10344u, 106576u, 58091u)), ~(~select(vec3<u32>(0u, 67489u, 1u), vec3<u32>(46588u, 0u, 30200u), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1052f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, -457f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(664f, 264f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, -1000f) + vec2<f32>(1034f, 256f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), -1683f))), -1721i, reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = var_0.a;
    let var_2 = var_0.a;
    global0 = array<Struct_3, 10>();
    let var_3 = Struct_2(Struct_1(abs(abs(vec2<i32>(u_input.b.x, 19966i)))), _wgslsmith_div_vec3_u32(~((var_0.e.zwz | vec3<u32>(5235u, var_0.b.x, var_0.e.x)) << (~vec3<u32>(0u, 69604u, 0u) % vec3<u32>(32u))), var_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(abs(var_0.c.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, true)))), _wgslsmith_f_op_vec2_f32(-var_0.c), vec2<bool>(true, true)))), ~(-(~var_2.a.x)) & -44213i, _wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.e.x, 1u, var_0.b.x, var_0.e.x) << (countOneBits(vec4<u32>(var_0.e.x, var_0.b.x, 27835u, var_0.e.x)) % vec4<u32>(32u))), var_0.e));
    let var_4 = Struct_2(Struct_1(var_3.a.a), select(abs(var_0.e.xzx), vec3<u32>(~4294967295u, reverseBits(var_3.e.x), 47831u), true), var_3.c, i32(-1i) * -8289i, firstLeadingBit(vec4<u32>(83404u, ~(~47342u), 1u, ~abs(0u))));
    var_1 = Struct_1(-vec2<i32>(firstLeadingBit(i32(-1i) * -13055i), var_2.a.x));
    var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a, -vec2<i32>(-41802i, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.c.x, -1119f)) - -1287f), _wgslsmith_f_op_f32(var_3.c.x - var_4.c.x))), _wgslsmith_f_op_f32(-551f + var_0.c.x), _wgslsmith_f_op_f32(trunc(var_4.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))) + -350f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.c.x))), _wgslsmith_div_vec2_f32(var_3.c, vec2<f32>(581f, -351f)));
}

