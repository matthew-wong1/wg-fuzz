struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -43344i;

var<private> global1: array<f32, 15>;

var<private> global2: Struct_2 = Struct_2(-579f, Struct_1(vec3<i32>(2034i, i32(-2147483648), -26590i), 0u, -469f), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), 1041u, -109f), vec3<i32>(9488i, 1i, 0i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    global2 = Struct_2(-234f, global2.b, Struct_1(vec3<i32>(-1i, _wgslsmith_clamp_i32(global2.b.a.x, ~(-2147483647i), 10049i), select(global2.d.x, -441i, true)), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1736f + -666f) + _wgslsmith_f_op_f32(1000f - global2.a)))), global2.c.a);
    global1 = array<f32, 15>();
    let var_0 = true;
    let var_1 = 901f;
    let var_2 = Struct_2(-1750f, global2.b, Struct_1(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, global2.c.a.x), vec4<i32>(arg_0.x, u_input.a.x, global2.c.a.x, 0i)), global2.b.a.x, reverseBits(arg_0.x)), 4294967295u, -768f), select(reverseBits(vec3<i32>(44464i, max(u_input.a.x, u_input.c), -u_input.a.x)), select(vec3<i32>(abs(-18854i), arg_0.x ^ -48929i, -1i), vec3<i32>(-global2.c.a.x, -1i, 10794i), var_0), var_0));
    return ~_wgslsmith_div_vec2_i32(select(arg_0, ~vec2<i32>(var_2.b.a.x, 36142i), var_0), arg_0);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = !(!vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(1025f, ~vec4<u32>(~_wgslsmith_add_u32(1u, 0u), _wgslsmith_add_u32(firstTrailingBit(global2.b.b), global2.c.b), ~_wgslsmith_mod_u32(1u, u_input.b), abs(_wgslsmith_mod_u32(8306u, u_input.e))), _wgslsmith_dot_vec2_i32(countOneBits(reverseBits(vec2<i32>(52743i, 15850i)) | global2.d.xz), -func_3(global2.b.a.zz)));
    let var_2 = 4294967295u;
    var var_3 = countOneBits((-1i ^ -global2.d.x) & ~global2.c.a.x) <= func_3(abs(-_wgslsmith_mod_vec2_i32(u_input.a, global2.d.yz))).x;
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f - 293f) + _wgslsmith_f_op_f32(max(global2.c.c, global2.a))), vec4<u32>(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(38350u, 39292u), vec2<u32>(4294967295u, var_1.b.x)), (4294967295u << (var_1.b.x % 32u)) | u_input.d), var_2, _wgslsmith_mod_u32(~90235u, abs(global2.c.b)) | var_1.b.x, _wgslsmith_add_u32(var_1.b.x, var_1.b.x)), -24649i);
    return Struct_1(countOneBits(global2.c.a), abs(global2.b.b), 1636f);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1084f), Struct_1(vec3<i32>(21313i, func_3(vec2<i32>(-1730i, -136i) ^ arg_2.a.xz).x, firstLeadingBit(global2.d.x)), 0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-1086f, arg_0.c)))))), func_2(arg_2.c), arg_2.a);
    var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 15u)])), any(vec4<bool>(true, true, true, true)))))), var_0.c, arg_0, global2.c.a);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, func_2(arg_2.c).a.x) << (30579u % 32u), -20224i, arg_1);
    global2 = Struct_2(-571f, Struct_1(arg_2.a | (_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(arg_1, global2.b.a.x, 1i)) >> (countOneBits(vec3<u32>(var_0.c.b, 4294967295u, 4294967295u)) % vec3<u32>(32u))), u_input.e, var_0.c.c), arg_0, ~(~arg_0.a));
    var_0 = Struct_2(arg_2.c, Struct_1(select(arg_0.a, vec3<i32>(global2.d.x, u_input.c, u_input.c), global2.b.c < global2.a) | var_0.c.a, ~(~min(u_input.e, 27852u)), global1[_wgslsmith_index_u32(53785u, 15u)]), func_2(-913f), arg_2.a);
    return Struct_3(func_2(var_0.a).c, countOneBits(reverseBits(vec4<u32>(19633u, _wgslsmith_div_u32(10459u, global2.b.b), 0u, 59328u))), 0i);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = ~arg_0.b;
    let var_1 = vec2<f32>(global1[_wgslsmith_index_u32(~(~(~(~arg_3.b.x))), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) * arg_3.a));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_4(Struct_1(global2.b.a, arg_0.b.x, 746f), abs(arg_3.c), func_2(arg_3.a)).a)) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(var_0.zxx), func_4(global2.b, 0i, global2.c).b.zwy), max(_wgslsmith_dot_vec3_u32(arg_3.b.wxy, vec3<u32>(arg_3.b.x, 54287u, 14921u)), ~30297u)), 15u)])));
    let var_3 = func_4(func_2(_wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(394f)), _wgslsmith_f_op_f32(global2.a - arg_3.a))))), arg_0.c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_3.a)), 1000f))))).b.xy;
    let var_4 = vec4<bool>(!(true | any(vec3<bool>(true, false, true))), !(true & all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), 1i != abs(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, 0i, arg_0.c, global2.b.a.x), vec4<i32>(u_input.a.x, -1i, arg_1.x, 2147483647i))), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, all(vec2<bool>(false, false)), true, all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    return abs(2147483647i);
}

fn func_1() -> Struct_2 {
    var var_0 = min(vec3<u32>(~13532u, ~abs(~4294967295u), u_input.e), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 38052u) << ((global2.c.b >> (u_input.e % 32u)) % 32u), 0u, 0u)));
    var var_1 = global2.c;
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(32693u, 15u)], ~(~min(~vec4<u32>(4294967295u, var_0.x, 4294967295u, 1u), vec4<u32>(4294967295u, var_0.x, u_input.b, 1u))), func_5(func_4(Struct_1(var_1.a ^ vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), global2.c.b, -1000f), var_1.a.x, func_2(_wgslsmith_f_op_f32(min(-122f, 367f)))), func_2(_wgslsmith_f_op_f32(-var_1.c)).a.zx, vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, u_input.c, global2.d.x)), _wgslsmith_sub_i32(36029i, global2.c.a.x)), Struct_3(1717f, ~vec4<u32>(global2.c.b, 50078u, u_input.b, var_1.b) & select(vec4<u32>(0u, global2.b.b, u_input.b, u_input.b), vec4<u32>(54501u, 17358u, 73605u, u_input.e), vec4<bool>(false, true, true, true)), var_1.a.x)));
    global2 = Struct_2(-1018f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(219f, _wgslsmith_f_op_f32(abs(var_1.c)))))), func_2(-1259f), var_1.a);
    global0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.c, -25514i)), var_1.a.xy), global2.c.a.x);
    return Struct_2(func_2(-1025f).c, func_2(_wgslsmith_f_op_f32(-var_1.c)), func_2(var_2.a), ~vec3<i32>(reverseBits(-global2.b.a.x), -var_1.a.x, -7745i));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = func_1();
    var var_1 = var_0.c.a.xz;
    let var_2 = (true | any(!(!vec3<bool>(true, false, arg_2)))) | all(vec4<bool>(any(!vec2<bool>(arg_2, arg_2)), true, arg_2, global2.c.b <= (1u | global2.c.b)));
    var var_3 = Struct_3(150f, func_4(func_1().c, -1i, func_1().b).b, -36138i);
    global2 = func_1();
    return Struct_3(global2.b.c, ~var_3.b, -20647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.b.a.x, -1i, global2.d.x), vec4<i32>(-33472i, 6626i, global2.d.x, global2.d.x)) >> (~1u % 32u)) & 1i, ~_wgslsmith_add_i32(i32(-1i) * -global2.d.x, u_input.a.x), select(true, true, !(all(vec4<bool>(true, true, false, false)) != true)), func_1());
    var var_1 = func_1();
    let var_2 = vec2<u32>(73147u, var_0.b.x);
    global2 = Struct_2(1000f, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-296f * var_0.a))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2106f), func_6(-2147483647i, global2.d.x, true, Struct_2(-1120f, Struct_1(var_1.c.a, 67851u, -1000f), global2.c, vec3<i32>(8538i, var_1.c.a.x, var_0.c))).a)))), func_1().b, _wgslsmith_mult_vec3_i32(firstTrailingBit(max(max(vec3<i32>(48587i, var_0.c, 2147483647i), var_1.b.a), -vec3<i32>(-1i, u_input.a.x, -2147483647i))), var_1.b.a));
    global1 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(step(func_2(var_1.b.c).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c + -820f)), func_4(var_1.b, 35977i, func_1().c).a))), u_input.a, vec3<u32>(~(~u_input.e) & ~_wgslsmith_mult_u32(1u, 0u), var_2.x, 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 1524f, 289f, 1341f) - vec4<f32>(-1068f, global1[_wgslsmith_index_u32(var_0.b.x, 15u)], global1[_wgslsmith_index_u32(var_0.b.x, 15u)], var_0.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -104f, -216f, -1276f) * vec4<f32>(237f, global2.c.c, 3167f, global2.c.c)))), vec4<f32>(global2.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] * var_0.a))), _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(26399u, 15u)]))), var_0.a), vec4<bool>(true, all(vec3<bool>(true, true, false)), false, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false))))));
}

