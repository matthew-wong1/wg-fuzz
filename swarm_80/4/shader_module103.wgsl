struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1795i, -1i);

var<private> global1: Struct_1 = Struct_1(-36102i, 2147483647i, vec2<f32>(2188f, 353f), 17400u);

var<private> global2: array<vec4<u32>, 30>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_4, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_1.a;
    global2 = array<vec4<u32>, 30>();
    var var_1 = vec3<bool>(false, var_0.d, all(!arg_0.yx));
    global3 = !(!arg_0.zz);
    var var_2 = firstTrailingBit(u_input.b) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.b.x), 60939u, 4294967295u | arg_2), vec3<u32>(33314u, _wgslsmith_mod_u32(1u, 17604u), abs(1u))), countOneBits(4294967295u)) % vec2<u32>(32u));
    return vec2<bool>(all(!vec2<bool>(true, -740f < global1.c.x)), arg_1.a.d);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(24555u, global1.d, 30704u, global1.d))), vec4<u32>(arg_2.d, (_wgslsmith_sub_u32(4294967295u, 36075u) | u_input.b.x) << (countOneBits(abs(arg_2.d)) % 32u), 4294967295u, _wgslsmith_add_u32(~(~18700u), 0u)));
    var var_1 = -vec4<i32>(-2147483647i, min(-10044i, -1i), -global1.a, -39093i ^ global1.b);
    var var_2 = vec4<bool>(!global3.x, global3.x, select(select(any(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, true), global3.x)), any(func_3(vec3<bool>(true, true, false), Struct_3(Struct_2(global3.x, u_input.a, vec4<i32>(18474i, arg_2.b, arg_2.a, -6155i), false)), var_0.x)), true), true, false), !(!(!(global3.x | false))));
    global2 = array<vec4<u32>, 30>();
    let var_3 = arg_2.c.x;
    return Struct_2(u_input.a <= 1i, -global1.b, vec4<i32>(~(-_wgslsmith_dot_vec3_i32(var_1.wxy, vec3<i32>(8104i, -1i, arg_1))), var_1.x, max(max(var_1.x, -2147483647i), arg_1) << (var_0.x % 32u), firstLeadingBit(-26099i & max(var_1.x, arg_1))), func_3(vec3<bool>(true, all(!var_2.wzx), all(!vec4<bool>(global3.x, true, var_2.x, false))), Struct_3(Struct_2(true, global1.b | arg_1, ~vec4<i32>(global0.x, arg_2.a, u_input.a, 2147483647i), all(var_2.zz))), u_input.b.x).x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>) -> bool {
    global2 = array<vec4<u32>, 30>();
    var var_0 = Struct_4(!vec4<bool>(arg_0.a.d, true != all(vec4<bool>(true, arg_0.a.d, true, arg_0.a.d)), any(vec3<bool>(arg_0.a.d, false, arg_0.a.d)) && arg_0.a.a, true), arg_0.a.c.zw, _wgslsmith_f_op_f32(-arg_2.x), false);
    global0 = vec2<i32>(var_0.b.x, global0.x);
    global3 = vec2<bool>(!any(vec2<bool>(any(vec3<bool>(false, true, true)), var_0.a.x == var_0.a.x)), select(any(select(vec4<bool>(arg_0.a.d, global3.x, arg_0.a.d, false), var_0.a, vec4<bool>(arg_0.a.a, false, var_0.d, true))), true, arg_0.a.d));
    var var_1 = Struct_1(17205i, -u_input.a, arg_2.yw, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b.x, min(u_input.b.x, global1.d)), u_input.b.x));
    return true != var_0.a.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = !vec2<bool>(func_4(Struct_3(func_2(arg_0.x, 54484i, Struct_1(-1i, -37297i, arg_0, 1u))), vec3<u32>(min(52632u, 4294967295u), 0u, u_input.b.x ^ 4294967295u), vec4<f32>(617f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), -577f, _wgslsmith_f_op_f32(ceil(global1.c.x)))), false);
    let var_1 = Struct_1(min(-19365i, global0.x), arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, global1.c.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-505f, global1.c.x), global1.c), global1.c)))), _wgslsmith_add_u32(arg_1.x, max(abs(min(28206u, 8382u)), ~arg_1.x)));
    let var_2 = var_1.c.x;
    global2 = array<vec4<u32>, 30>();
    global2 = array<vec4<u32>, 30>();
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(34513i, -51996i), vec2<i32>(-8869i, 1i)), vec2<i32>(-1i, u_input.a) | _wgslsmith_div_vec2_i32(vec2<i32>(global1.a, -26430i), vec2<i32>(arg_2, arg_2))), global1.a << (_wgslsmith_mult_u32(global1.d, ~u_input.b.x) % 32u)), global1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0), _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(-global1.c), !(!vec2<bool>(arg_3, false))))), _wgslsmith_sub_u32(0u << (_wgslsmith_clamp_u32(u_input.b.x, global1.d, 56455u) % 32u), abs(max(4294967295u, u_input.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_4) -> bool {
    var var_0 = Struct_4(vec4<bool>(func_3(!select(vec3<bool>(false, false, arg_3.d), arg_3.a.zwy, vec3<bool>(true, global3.x, global3.x)), Struct_3(func_2(arg_1, global0.x, Struct_1(u_input.a, global0.x, vec2<f32>(arg_2.x, -308f), arg_0.d))), 1u).x, all(select(arg_3.a.ww, arg_3.a.zz, arg_3.a.wx)), ~(-u_input.a) == 2184i, arg_3.d), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(func_1(vec2<f32>(arg_1, 363f), vec4<u32>(76985u, arg_0.d, global1.d, arg_0.d), 0i, global3.x).c.x - 144f)), u_input.a, func_1(global1.c, global2[_wgslsmith_index_u32(~countOneBits(35323u), 30u)], -1i, false && func_2(arg_1, -1i, Struct_1(-15866i, global1.b, vec2<f32>(arg_2.x, arg_3.c), arg_0.d)).d)).c.wy, global1.c.x, any(select(!select(arg_3.a.xxy, vec3<bool>(arg_3.a.x, arg_3.d, global3.x), true), select(vec3<bool>(false, global3.x, arg_3.d), !arg_3.a.yzx, arg_1 < -1000f), global3.x)));
    global3 = arg_3.a.yz;
    global0 = min(-firstTrailingBit(firstTrailingBit(var_0.b)) | ~(-(vec2<i32>(global0.x, arg_0.b) | arg_3.b)), func_2(arg_0.c.x, 2147483647i, Struct_1(~(-42457i), 42400i & arg_0.b, arg_0.c, ~(~arg_0.d))).c.xx);
    var var_1 = Struct_4(vec4<bool>(arg_3.d, var_0.a.x, any(func_3(arg_3.a.zzx, Struct_3(Struct_2(true, arg_0.a, vec4<i32>(u_input.a, -10094i, u_input.a, global0.x), arg_3.d)), 44132u)), any(var_0.a.wxy) && true), ~var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_0.c.x)))), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_2)));
    return any(select(var_0.a, !var_1.a, arg_3.a)) == true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(func_1(global1.c, ~vec4<u32>(0u, 24841u, global1.d, 4294967295u), _wgslsmith_mod_i32(global1.a, -2147483647i) & 0i, (global1.b ^ -1i) <= _wgslsmith_add_i32(global1.a, 1797i)), 184f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -130f, -866f, 548f) + vec4<f32>(global1.c.x, 443f, global1.c.x, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(347f, global1.c.x, global1.c.x, -819f) - vec4<f32>(441f, global1.c.x, 337f, global1.c.x)))), global4[_wgslsmith_index_u32(0u, 3u)]);
    let var_1 = _wgslsmith_mod_vec3_i32(func_2(global1.c.x, -(~16036i), func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-global1.c.x)), ~(vec4<u32>(50939u, u_input.b.x, 0u, 10731u) << (global2[_wgslsmith_index_u32(u_input.b.x, 30u)] % vec4<u32>(32u))), abs(0i) ^ u_input.a, func_4(Struct_3(Struct_2(global3.x, 5323i, vec4<i32>(2147483647i, 1i, global0.x, global1.a), false)), vec3<u32>(global1.d, global1.d, 1u), vec4<f32>(global1.c.x, global1.c.x, global1.c.x, 1478f)))).c.yww, ~_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, 1i), vec3<i32>(31354i, u_input.a, -1i)), -vec3<i32>(global0.x, 8290i, 48789i) & _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, 1367i), vec3<i32>(global0.x, global1.a, u_input.a)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global1.b, 4598i, -1i), countOneBits(vec3<i32>(u_input.a, 0i, 2147483647i)), ~vec3<i32>(36502i, global0.x, 3951i))));
    global1 = func_1(global1.c, ~(~global2[_wgslsmith_index_u32(global1.d, 30u)]), firstLeadingBit(0i), !(!(_wgslsmith_div_i32(-93883i, 33985i) != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, global1.b), vec3<i32>(global0.x, var_1.x, global1.b)))));
    var var_2 = _wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_div_f32(global1.c.x, global1.c.x))), vec4<u32>(select(_wgslsmith_mult_u32(4294967295u, 1u), u_input.b.x, all(vec4<bool>(var_0, global3.x, var_0, true))), _wgslsmith_mult_u32(17417u, 1u), 1u, 1u), u_input.a, select(_wgslsmith_dot_vec3_i32(var_1, var_1) != 0i, select(var_0, global0.x <= 0i, true), true)).c.x - global1.c.x);
    global1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), ~global2[_wgslsmith_index_u32(~min(countOneBits(12819u), 0u), 30u)], _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(reverseBits(~(-1i)), u_input.a), global0.x & firstTrailingBit(-41466i)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, reverseBits(~(~abs(vec3<u32>(global1.d, global1.d, 48232u)))), abs(select(~min(vec3<i32>(-50762i, var_1.x, global1.a), var_1), -_wgslsmith_sub_vec3_i32(var_1, var_1), vec3<bool>(!var_0, !var_0, !var_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-291f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.c.x, 1262f)), -725f)), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(633f, global1.c.x), vec2<f32>(global1.c.x, global1.c.x), vec2<bool>(var_0, false))), abs(global2[_wgslsmith_index_u32(global1.d, 30u)]), reverseBits(global0.x), true).c.x, _wgslsmith_f_op_f32(f32(-1f) * -945f)))), vec4<f32>(_wgslsmith_div_f32(global1.c.x, 956f), -764f, 2119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x)))));
}

