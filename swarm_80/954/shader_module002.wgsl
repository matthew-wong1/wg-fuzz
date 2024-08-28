struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = arg_1.a;
    var var_1 = ~(~0u);
    let var_2 = abs(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.b.a.a.yww), arg_0.a.a.yzy), ~(~0u), u_input.c.x));
    var_1 = firstTrailingBit(~(~(~u_input.c.x & arg_1.d.c.a.x)));
    var_1 = ~(~_wgslsmith_dot_vec4_u32(~select(arg_0.e.a, arg_1.a.a, true), firstTrailingBit(vec4<u32>(35882u, arg_1.b.d.a.x, 78733u, var_2))));
    return ~vec4<i32>(2147483647i, u_input.d.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, arg_0.e.c.x, arg_1.a.c.x), vec3<i32>(-1i) * -arg_1.b.d.c), abs(_wgslsmith_dot_vec2_i32(arg_0.d.c.zy, vec2<i32>(-1i, -2955i) & vec2<i32>(13824i, var_0.c.x))));
}

fn func_2() -> vec4<bool> {
    global0 = u_input.b;
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -38216i ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, u_input.e, u_input.d.x, -1i), vec4<i32>(-15578i, -30532i, 0i, u_input.e)), vec4<i32>(u_input.e, 12092i, -4706i, -1i)), -u_input.d.x, -(i32(-1i) * -1i)), select(firstLeadingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(20438i, 15546i, -1i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-15829i, 1i, 2147483647i, u_input.d.x), vec4<i32>(u_input.e, u_input.e, u_input.e, -1i)))), func_3(Struct_2(Struct_1(vec4<u32>(41309u, u_input.c.x, u_input.a, u_input.c.x), false, vec3<i32>(-2147483647i, 2147483647i, u_input.e), true), 0i, Struct_1(vec4<u32>(4294967295u, u_input.a, u_input.c.x, 9236u), false, vec3<i32>(u_input.e, u_input.e, -35453i), false), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.c.x, u_input.b), false, vec3<i32>(u_input.e, u_input.d.x, 1i), true), Struct_1(vec4<u32>(u_input.b, 51806u, u_input.c.x, u_input.b), true, vec3<i32>(u_input.d.x, u_input.e, u_input.e), true)), Struct_3(Struct_1(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), false, vec3<i32>(u_input.d.x, -43427i, -1i), false), Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 0u), false, vec3<i32>(-45544i, u_input.e, u_input.d.x), false), -4977i, Struct_1(vec4<u32>(0u, u_input.c.x, 1u, u_input.b), true, vec3<i32>(2147483647i, 28531i, -1i), true), Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.b, 69465u), false, vec3<i32>(-2147483647i, u_input.d.x, 0i), false), Struct_1(vec4<u32>(0u, u_input.a, 0u, u_input.c.x), true, vec3<i32>(u_input.d.x, 12613i, 0i), true)), vec4<u32>(46483u, 0u, u_input.c.x, 23502u), Struct_2(Struct_1(vec4<u32>(39328u, u_input.b, 45387u, u_input.b), true, vec3<i32>(-44021i, u_input.d.x, u_input.e), true), 0i, Struct_1(vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.b), false, vec3<i32>(27398i, -2147483647i, u_input.e), false), Struct_1(vec4<u32>(16721u, u_input.c.x, 0u, 4294967295u), true, vec3<i32>(-1i, u_input.e, u_input.e), false), Struct_1(vec4<u32>(u_input.b, 20367u, u_input.b, u_input.c.x), true, vec3<i32>(13352i, 24406i, -1i), false))), _wgslsmith_div_vec4_f32(vec4<f32>(1108f, -881f, -1161f, -1000f), vec4<f32>(-793f, -330f, 1641f, -198f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, -1000f) * vec2<f32>(-338f, -142f))) ^ vec4<i32>(12726i, min(1i, -25356i), min(u_input.e, 37185i), select(u_input.e, 1i, false)), true));
    global0 = 15459u;
    global0 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(22842u, u_input.a, _wgslsmith_mod_u32(4294967295u, u_input.a), 4915u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.c.x), ~vec4<u32>(u_input.b, 0u, 1u, 1792u))), vec4<u32>(u_input.b, ~(~4294967295u), 0u, ~abs(u_input.a))));
    var var_1 = Struct_4(Struct_1(vec4<u32>(u_input.b, u_input.c.x, u_input.a, ~(u_input.a ^ u_input.c.x)), any(vec2<bool>(any(vec3<bool>(false, true, true)), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.e, var_0.x, firstTrailingBit(u_input.d.x)), vec3<i32>(-1i, _wgslsmith_div_i32(0i, u_input.d.x), u_input.d.x)), select(true, true, any(vec4<bool>(true, true, true, true)))));
    return !vec4<bool>(20370u < ~firstTrailingBit(99505u), all(vec4<bool>(true, true, true, true)), false, var_1.a.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = !arg_1;
    let var_1 = 536f;
    global0 = 1u;
    var var_2 = any(!(!func_2()));
    var_2 = select(true, (all(vec2<bool>(arg_0.b, arg_1.x)) | true) != false, func_2().x);
    return _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, ~(~firstLeadingBit(69298u)), ~0u, ~(~arg_0.a.x)), vec4<u32>(_wgslsmith_div_u32(arg_0.a.x, select(~arg_0.a.x, arg_0.a.x, any(vec3<bool>(arg_1.x, true, false)))), firstLeadingBit(arg_0.a.x), min(max(select(arg_0.a.x, 4294967295u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(8674u, 4294967295u, 31241u), vec3<u32>(1u, 34400u, arg_0.a.x))), ~(~34810u)), _wgslsmith_mod_u32(~arg_0.a.x, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_add_vec4_i32(~(select(vec4<i32>(u_input.e, u_input.e, 25406i, u_input.e), vec4<i32>(0i, u_input.e, u_input.d.x, u_input.e), false) << (abs(vec4<u32>(4294967295u, u_input.a, u_input.c.x, 4294967295u)) % vec4<u32>(32u))), select(vec4<i32>(u_input.d.x, 1i, countOneBits(-11586i), 14430i), ~(-vec4<i32>(-8432i, -2147483647i, 25953i, u_input.e)), false)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-u_input.e, u_input.d.x, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, -52705i), vec3<i32>(u_input.d.x, u_input.e, u_input.d.x)))), ~vec4<i32>(u_input.e, 5500i, 1i, u_input.d.x) >> (~(~vec4<u32>(0u, 62356u, u_input.c.x, 38159u)) % vec4<u32>(32u))));
    let var_1 = firstTrailingBit(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 5237i, u_input.e, 1i), vec4<i32>(-1i, -2147483647i, var_0.x, 1i))) << (~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, 0u, 10200u)), vec4<u32>(6211u, u_input.a, 56871u, 39859u) | vec4<u32>(31972u, u_input.a, u_input.b, u_input.a)) % vec4<u32>(32u)));
    var_0 = var_1 << ((~func_1(Struct_1(vec4<u32>(u_input.a, u_input.b, u_input.b, 40837u), true, var_0.xxw, false), vec2<bool>(false, false)) << (max(func_1(Struct_1(vec4<u32>(22099u, u_input.b, 92556u, 17067u), false, var_0.xzz, false), vec2<bool>(true, false)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, u_input.b, u_input.c.x, 92662u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = 104657u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-925f, 313f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -705f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2307f * 658f), 110f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) - 642f) * _wgslsmith_f_op_f32(round(497f))), -756f);
    var var_3 = Struct_4(Struct_1(min(vec4<u32>(~47413u, 1u, 11689u, reverseBits(u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 3108u, u_input.c.x, u_input.b), vec4<u32>(0u, 1u, 54004u, u_input.c.x), vec4<u32>(0u, u_input.b, u_input.a, 67470u)) << (vec4<u32>(1u, 1u, u_input.c.x, 13457u) % vec4<u32>(32u))), true, var_0.wxx & var_0.xyw, 1u > firstTrailingBit(min(0u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_3.a.a);
}

