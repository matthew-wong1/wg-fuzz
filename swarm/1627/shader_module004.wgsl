struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(733f, -808f, -275f), vec3<f32>(638f, 1931f, 1010f), vec3<f32>(1311f, 1716f, -1911f), vec3<f32>(1211f, -779f, -1202f), vec3<f32>(-641f, -1154f, 996f), vec3<f32>(626f, 865f, -1804f), vec3<f32>(-681f, -624f, 1000f), vec3<f32>(809f, 394f, 1232f));

var<private> global1: Struct_4 = Struct_4(vec4<i32>(-11437i, 1i, 0i, 2147483647i), Struct_3(Struct_1(vec3<f32>(-137f, -222f, 125f), 4294967295u, vec2<f32>(671f, -542f), vec3<i32>(-20226i, 71i, 15133i), 4804i)), -356f, -1i);

var<private> global2: Struct_4 = Struct_4(vec4<i32>(i32(-2147483648), -31832i, 1i, 18370i), Struct_3(Struct_1(vec3<f32>(-1763f, -1000f, 1040f), 3368u, vec2<f32>(323f, -113f), vec3<i32>(-1i, -2070i, 0i), 0i)), -1215f, 15298i);

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(0i, false, Struct_1(vec3<f32>(-251f, 397f, 2645f), 8810u, vec2<f32>(-896f, 773f), vec3<i32>(0i, -1i, 30291i), -37276i), Struct_1(vec3<f32>(480f, 1000f, -1059f), 9235u, vec2<f32>(-474f, -2342f), vec3<i32>(-21776i, -37399i, -1514i), 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<vec3<f32>, 8>();
    let var_0 = global2.a;
    global4 = Struct_2(global2.a.x, global4.b, global1.b.a, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global4.c.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, arg_0.a.x, global1.c) * _wgslsmith_f_op_vec3_f32(abs(global4.c.a)))), 1u, global4.c.a.xy, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.a.x), max(arg_0.d.xz, var_0.zz)), var_0.x, ~(global4.c.e | global2.d)), global1.d));
    global1 = Struct_4(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global4.d.e & global4.d.d.x, global2.d ^ 2147483647i, -920i, arg_0.d.x)), (global1.a << (firstLeadingBit(vec4<u32>(global2.b.a.b, u_input.b, 60713u, 0u)) % vec4<u32>(32u))) & global1.a), global2.b, 1000f, firstTrailingBit(_wgslsmith_add_i32(-var_0.x, arg_0.d.x)) << (global1.b.a.b % 32u));
    global1 = Struct_4(global1.a, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.a.x, -594f, 1010f) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, -1637f, -794f), global4.d.a)), 4294967295u, global1.b.a.a.yy, -vec3<i32>(global1.b.a.d.x, 2147483647i, 51807i), 45285i)), global4.d.c.x, 1i);
    return !select(vec4<bool>(global4.b | true, true, true, select(true, !global4.b, all(vec4<bool>(true, global4.b, global4.b, global4.b)))), select(vec4<bool>(true, all(vec3<bool>(global4.b, global4.b, true)), true, arg_0.b < 105880u), !(!vec4<bool>(false, global4.b, true, false)), select(global4.b, false, !global4.b)), select(!select(vec4<bool>(global4.b, global4.b, true, global4.b), vec4<bool>(global4.b, global4.b, true, global4.b), vec4<bool>(global4.b, true, false, true)), select(!vec4<bool>(true, global4.b, global4.b, true), vec4<bool>(global4.b, global4.b, false, false), vec4<bool>(false, global4.b, true, false)), vec4<bool>(!global4.b, true, true, global4.b)));
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_clamp_i32(global4.c.d.x | 1i, -1743i, _wgslsmith_add_i32(max(i32(-1i) * -53161i, ~22798i), -2147483647i));
    var var_1 = select(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -_wgslsmith_div_i32(global2.a.x, -30915i), i32(-1i) * -36604i), global1.a.zzw), vec3<i32>(~(~_wgslsmith_div_i32(10773i, 46028i)), max(1i, abs(_wgslsmith_sub_i32(global1.d, -59202i))), _wgslsmith_div_i32(global4.c.e, 1i)), vec3<bool>(any(select(vec4<bool>(global4.b, true, false, true), vec4<bool>(false, true, true, false), func_3(global2.b.a))), !global4.b | global4.b, true));
    let var_2 = -global1.d;
    var var_3 = 4294967295u;
    var_1 = ~(-(-vec3<i32>(62618i, 2147483647i, -12979i) >> (~(~vec3<u32>(4294967295u, global1.b.a.b, 1u)) % vec3<u32>(32u))));
    return Struct_3(global2.b.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(min(global4.c.a.x, -529f))), _wgslsmith_f_op_f32(f32(-1f) * -1085f), -1000f, _wgslsmith_div_f32(-256f, -945f))));
    var var_1 = min(1i, ~(-28180i));
    return arg_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = !global4.b;
    global0 = array<vec3<f32>, 8>();
    let var_1 = global2.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, -755f, global4.c.a.x, global2.b.a.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(915f, 690f, global4.c.a.x, 848f) * vec4<f32>(var_1.a.c.x, -362f, -1439f, 2278f))))), vec4<f32>(_wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(sign(global2.c))), _wgslsmith_f_op_f32(-802f - global4.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_div_f32(global1.b.a.c.x, _wgslsmith_div_f32(407f, _wgslsmith_f_op_f32(f32(-1f) * -875f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + 733f))));
    return Struct_3(func_4(func_2(), Struct_4(firstLeadingBit(~global2.a), global1.b, var_1.a.a.x, func_2().a.d.x), countOneBits(global4.d.d.x)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = global2.b.a.b;
    var var_1 = false;
    return Struct_2(arg_2.e, ~abs(countOneBits(arg_0.b.a.b)) > 0u, Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, firstLeadingBit(vec2<u32>(1u, 4294967295u) << (u_input.c % vec2<u32>(32u)))), 8u)], ~12391u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.a.x, 790f)), _wgslsmith_add_vec3_i32(global4.c.d, _wgslsmith_sub_vec3_i32(arg_3.d, func_2().a.d)), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_3.d, vec3<i32>(arg_2.e, -15031i, -2147483647i)), 1i))), func_4(func_2(), arg_0, _wgslsmith_div_i32(-(~45047i), func_1().a.d.x)));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_4(min(global2.a, select(reverseBits(_wgslsmith_add_vec4_i32(global2.a, global1.a)), global1.a, select(any(vec2<bool>(global4.b, false)), arg_0.b, global4.b))), Struct_3(func_1().a), 1223f, -(0i | global1.d));
    let var_1 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.b.a.b, global4.c.b, u_input.b), vec4<u32>(arg_0.d.b, 10937u, 0u, 4294967295u)) ^ vec4<u32>(17906u, var_0.b.a.b, global4.d.b, ~global2.b.a.b)));
    global1 = Struct_4(_wgslsmith_mult_vec4_i32(global1.a, ~var_0.a >> (((vec4<u32>(4294967295u, 4294967295u, u_input.c.x, global4.d.b) | vec4<u32>(global2.b.a.b, 0u, 59339u, var_1.x)) << (~vec4<u32>(0u, 4294967295u, arg_0.c.b, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), max(_wgslsmith_clamp_i32(13533i, 31602i, ~var_0.b.a.d.x & -35397i), global4.d.e));
    global0 = array<vec3<f32>, 8>();
    let var_2 = var_0.b.a.d.yz << (~var_1.zx % vec2<u32>(32u));
    return Struct_4(firstLeadingBit(var_0.a), Struct_3(global1.b.a), 199f, -_wgslsmith_sub_i32(_wgslsmith_div_i32(global1.b.a.e, 56696i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_4(firstLeadingBit(global2.a >> (vec4<u32>(u_input.c.x, 0u, global4.d.b, global1.b.a.b) % vec4<u32>(32u))), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-472f)), 1137f), firstLeadingBit(-global2.b.a.e)), Struct_2(-2147483647i, false, Struct_1(global0[_wgslsmith_index_u32(global1.b.a.b, 8u)], 30043u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1537f)), global1.b.a.d, 1i), func_1().a), global4.d, Struct_1(global4.d.a, abs(global1.b.a.b), global4.d.a.xx, vec3<i32>(u_input.d.x, -global2.a.x, 2147483647i), global4.c.d.x)), -210f, global2.b.a.c);
    global3 = -1000f;
    global3 = global4.c.a.x;
    global3 = _wgslsmith_f_op_f32(global1.c - global2.c);
    var var_1 = -var_0.b.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, -global4.a) ^ var_0.d, i32(-1i) * -2147483647i));
}

