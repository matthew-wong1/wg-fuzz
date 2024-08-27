struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 1i, 3595i);

var<private> global1: u32;

var<private> global2: vec2<i32>;

var<private> global3: f32 = -1005f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = vec4<bool>(!(false && select(38501i >= arg_0, true, true)), select(false, true, true), true, false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(1411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-398f - 1746f), -732f)) + _wgslsmith_div_f32(-1434f, _wgslsmith_f_op_f32(f32(-1f) * -250f))))), vec3<bool>(all(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wzw)), true, all(var_0) & any(select(var_0, var_0, var_0))), ~_wgslsmith_mult_u32(~(~u_input.d), firstTrailingBit(1u)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, 103f, -1406f))))));
    var var_2 = u_input.a;
    var var_3 = true;
    let var_4 = ~(~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -13008i, -46395i, u_input.c.x), vec4<i32>(-64535i, global2.x, 42310i, 33204i)) >> (u_input.b % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) + var_1.a), 924f)) + _wgslsmith_f_op_f32(var_1.a * var_1.e.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.x | u_input.c.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2049f + 256f))), -122f, var_0)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1829f * 320f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1), -407f, var_1);
    global1 = u_input.d;
    let var_3 = vec3<u32>(u_input.b.x, 1u, u_input.a.x);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(reverseBits(0i)))), var_0 & (false & all(vec2<bool>(false, var_0)))), !any(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0, true, var_0, true), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-603f)), var_2.x, var_2.x < 699f))), vec3<bool>(any(!vec4<bool>(var_0, false, var_0, var_0)), !all(vec2<bool>(var_0, true)), all(vec4<bool>(true, var_0, true, true))), 2120u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(var_3.x, 7114u)), _wgslsmith_add_u32(25962u, var_3.x) >> (4294967295u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.x, var_2.x), var_1)), var_1, 719f)), _wgslsmith_f_op_vec2_f32(var_2.xz - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1198f * 504f), _wgslsmith_f_op_f32(var_1 - 128f)), vec2<f32>(-421f, -1000f))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(917f, !(!any(vec4<bool>(arg_2.b, arg_0.b, arg_2.b, false)))), firstLeadingBit(abs(u_input.b)), !func_2().c.b.zy, arg_0.c.b.x || (_wgslsmith_f_op_f32(select(749f, _wgslsmith_f_op_f32(abs(arg_0.c.e.x)), all(arg_0.c.b.yz))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f + arg_2.a))));
    var var_1 = _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(40983u, arg_0.c.d, arg_0.c.c), vec3<u32>(u_input.b.x, 1u, 4294967295u))), u_input.b.zxy)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(max(871f, 715f))), var_0.d), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_1, 56290u, var_0.b.x, arg_1)), ~vec4<u32>(arg_0.c.c, var_0.b.x, 834u, 21991u) >> (~vec4<u32>(arg_1, arg_1, var_0.b.x, var_0.b.x) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(u_input.b.x), 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, 0u), u_input.b.zwx))), select(var_0.c, var_0.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, u_input.c), _wgslsmith_add_vec2_i32(global0.xx, global0.xz)) > 65908i), false);
    var var_3 = var_0.b;
    let var_4 = var_0.b.x;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.a)) + arg_0.a.a))), select(arg_0.c.b, arg_0.c.b, arg_0.c.b), _wgslsmith_dot_vec4_u32(var_0.b, ~var_2.b >> (~var_2.b % vec4<u32>(32u))), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a + -851f))), var_0.a.a)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = u_input.c;
    let var_0 = vec4<f32>(arg_1.x, 1303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1300f)) * _wgslsmith_f_op_f32(2210f * arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f * -1279f))) * -178f));
    var var_1 = Struct_4(Struct_2(1369f, arg_0.b), all(arg_0.c.b), func_4(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(79909u), 442u | arg_0.c.d), u_input.a), Struct_2(arg_1.x, arg_0.c.c <= u_input.a.x)), _wgslsmith_f_op_vec2_f32(arg_0.d - vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f + arg_1.x)))));
    global2 = ~u_input.c >> (vec2<u32>(min(4294967295u, ~(~4294967295u)), u_input.d) % vec2<u32>(32u));
    let var_2 = select(vec4<bool>(arg_0.a.b, !arg_0.b, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(u_input.d, arg_0.c.c, 35031u, 5513u)) >= u_input.b.x, 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, 2147483647i, -1i, 2147483647i) >> (u_input.b % vec4<u32>(32u)), min(vec4<i32>(global2.x, 1i, global0.x, 1i), vec4<i32>(12092i, u_input.c.x, 34547i, -637i)))), !(!vec4<bool>(arg_0.a.b, arg_0.a.b, !var_1.b, 4294967295u >= arg_0.c.c)), !select(!(!vec4<bool>(var_1.b, false, arg_0.a.b, true)), !(!vec4<bool>(var_1.b, false, false, true)), !vec4<bool>(arg_0.a.b, var_1.a.b, arg_0.b, arg_0.c.b.x)));
    return func_2().c.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1437f, -337f, -1012f) - vec3<f32>(arg_1, 569f, -614f))), func_2().c.e, !func_4(Struct_4(arg_2, false, Struct_1(arg_1, arg_0, 51465u, 25378u, vec3<f32>(-464f, arg_2.a, -1403f)), vec2<f32>(arg_1, -1563f)), ~arg_3.x, func_2().a).b)) - vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - -1000f)));
    let var_1 = u_input.c;
    global3 = _wgslsmith_f_op_f32(-1089f - arg_2.a);
    global1 = arg_3.x;
    let var_2 = arg_2;
    return select(1u, firstLeadingBit(u_input.a.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -918f;
    global1 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * -422f));
    var var_1 = u_input.b.zy;
    let var_2 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), countOneBits(vec2<u32>(1u, 0u))) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, var_1.x), _wgslsmith_mod_u32(var_1.x, 4294967295u)) % 32u)) & _wgslsmith_clamp_u32(10771u, firstTrailingBit(0u), func_5(func_1(Struct_4(Struct_2(-1000f, false), false, Struct_1(-555f, vec3<bool>(false, false, true), var_1.x, 62787u, vec3<f32>(-145f, -564f, -657f)), vec2<f32>(204f, -549f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-928f, 305f) - vec2<f32>(-726f, -341f)), 1i, vec3<i32>(u_input.c.x, u_input.c.x, 66836i) << (vec3<u32>(11509u, 13758u, var_1.x) % vec3<u32>(32u))), func_4(Struct_4(Struct_2(-200f, false), false, Struct_1(455f, vec3<bool>(true, true, false), var_1.x, var_1.x, vec3<f32>(488f, -657f, 1258f)), vec2<f32>(403f, 157f)), ~92u, Struct_2(274f, false)).e.x, Struct_2(_wgslsmith_f_op_f32(ceil(-188f)), true), reverseBits(~u_input.b.zzw)));
    var var_3 = ~_wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(u_input.b.yww, vec3<u32>(1u, var_2, 30500u)), vec3<u32>(0u, u_input.d, var_1.x) << (vec3<u32>(var_1.x, 4294967295u, 44781u) % vec3<u32>(32u))) ^ ((u_input.b.xyy >> (u_input.b.wzz % vec3<u32>(32u))) >> (select(vec3<u32>(62847u, u_input.a.x, 71592u), vec3<u32>(var_1.x, var_1.x, var_2), true) % vec3<u32>(32u))), u_input.b.xwy);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(20799i, global0.x, global0.x) << (vec3<u32>(var_2, var_1.x, u_input.d) % vec3<u32>(32u)), ~vec3<i32>(global0.x, 1i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f))))), -_wgslsmith_clamp_i32(select(10496i, global0.x, false) >> (_wgslsmith_clamp_u32(u_input.b.x, var_3.x, 4294967295u) % 32u), global2.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.c.x, global0.x), vec3<i32>(u_input.c.x, -18533i, global2.x)), min(global2.x, u_input.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(u_input.c.x))))), -1254f)), countOneBits(-global0.xz));
}

