struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-10384i, -19094i, -19553i, i32(-2147483648), 2147483647i, i32(-2147483648), -54472i, 0i, -41392i, 16118i, -2370i, -1i, 1i, 2147483647i, 8062i, i32(-2147483648), 18528i, 2147483647i, 0i, 0i, -1i);

var<private> global1: array<bool, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global1 = array<bool, 29>();
    return ~0u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2671f), -1241f), vec2<f32>(1f, 1f))));
    var var_1 = Struct_4(_wgslsmith_sub_u32(~u_input.b, firstLeadingBit(abs(20501u))), _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(45813u, ~(u_input.b & u_input.b))), global0[_wgslsmith_index_u32(select(0u, 1u, global1[_wgslsmith_index_u32(48506u ^ func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 1i)), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 21u)], vec2<f32>(var_0.x, var_0.x), vec4<i32>(587i, 0i, -15260i, -1i))), 29u)]), 21u)], vec3<i32>(u_input.c >> (u_input.a.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(u_input.b, 7100u, 47177u), vec3<bool>(global1[_wgslsmith_index_u32(55779u, 29u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_mod_vec3_u32(select(u_input.a.zwy, u_input.a.xxy, vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), vec3<u32>(11154u, u_input.a.x, u_input.a.x))), 21u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u >> (_wgslsmith_sub_u32(u_input.a.x, 34501u) % 32u), 21u)], ~(-1i))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.c, 1i), u_input.c | -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(10041i, -1i), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], 72777i))) & (~(-vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 21u)])) ^ -(~vec2<i32>(-3592i, 25482i))));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(u_input.a, u_input.a, !global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~(u_input.a << (u_input.a % vec4<u32>(32u)))), u_input.a), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(17353u, 55747u, var_1.a), 1u, var_1.a)), max(u_input.b | (var_1.b >> (var_1.a % 32u)), 1u)), u_input.c, (var_1.d >> (~countOneBits(vec3<u32>(34566u, 24305u, var_1.a)) % vec3<u32>(32u))) >> (vec3<u32>((26538u | u_input.a.x) & var_1.b, var_1.b, u_input.b) % vec3<u32>(32u)), reverseBits((countOneBits(vec2<i32>(u_input.c, u_input.c)) ^ vec2<i32>(global0[_wgslsmith_index_u32(12777u, 21u)], 40468i)) & vec2<i32>(~3872i, -var_1.d.x)));
    let var_3 = vec2<bool>(false, global1[_wgslsmith_index_u32(~4294967295u, 29u)]);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1797f, var_0.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), _wgslsmith_div_f32(-146f, -629f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 388f)))))))), var_2.b);
    return Struct_1(_wgslsmith_clamp_i32(var_1.c, 2147483647i, -26741i | _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(var_1.d.xx, vec2<i32>(var_1.d.x, var_2.c)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)), true))), vec4<i32>(var_1.d.x, -(~(-25584i) >> (~var_2.a % 32u)), 1727i, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, 10i, var_1.d.x, var_2.e.x), vec4<i32>(var_2.d.x, -2147483647i, 33i, 2147483647i)), u_input.c | 2147483647i), reverseBits(vec3<i32>(0i, var_1.d.x, 10951i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_3 {
    global1 = array<bool, 29>();
    var var_0 = global1[_wgslsmith_index_u32(53136u, 29u)];
    var var_1 = ~(~u_input.a);
    var var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_1.x, u_input.b, var_1.x)), ~u_input.a.xyw, vec3<u32>(1u, var_1.x >> (22249u % 32u), 0u)), ~select(u_input.a.wyy, u_input.a.ywx, false));
    let var_3 = func_2();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f - arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + var_3.b.x)), u_input.a.xy, vec4<i32>(_wgslsmith_mod_i32(var_3.c.x, 1i), ~(~(-arg_1.a)), _wgslsmith_mod_i32(func_2().a, u_input.c), select(_wgslsmith_mod_i32(reverseBits(u_input.c), func_2().a), u_input.c, true)), _wgslsmith_mod_u32(var_1.x << (1u % 32u), ~abs(u_input.b)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1141f * -1200f), _wgslsmith_f_op_f32(min(-376f, 1195f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, -859f))))), func_2(), Struct_4(~(~u_input.b), _wgslsmith_clamp_u32(3925u, u_input.a.x, u_input.b) << (51388u % 32u), arg_0, min(-vec3<i32>(-6574i, 2147483647i, u_input.c), ~vec3<i32>(-18598i, -36165i, global0[_wgslsmith_index_u32(4294967295u, 21u)])) >> (u_input.a.yww % vec3<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(8585i, arg_0) >> (~u_input.a.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-44009i, 1i)), -vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], arg_0)))));
    var var_1 = func_2();
    var var_2 = 2147483647i;
    global1 = array<bool, 29>();
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), -238f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.a, 960f) * vec3<f32>(-662f, var_0.a, var_1.b.x))))), !all(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, var_1.b.x, var_1.b.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, var_1.b.x, 1059f), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(-2719f, var_1.b.x)), _wgslsmith_f_op_f32(step(var_1.b.x, 2268f)), _wgslsmith_f_op_f32(f32(-1f) * -1035f))))), !select(vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 29u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(640u, 29u)])), false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.x, 30992u), 29u)]), !select(vec3<bool>(false, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], true)), global1[_wgslsmith_index_u32(var_0.b.x, 29u)] | (u_input.b > 7963u))));
    return !vec4<bool>(!any(!vec3<bool>(false, global1[_wgslsmith_index_u32(45494u, 29u)], false)), global1[_wgslsmith_index_u32(11845u, 29u)], any(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(5403u, 29u)], global1[_wgslsmith_index_u32(var_0.d, 29u)], global1[_wgslsmith_index_u32(52160u, 29u)]), !vec4<bool>(global1[_wgslsmith_index_u32(41510u, 29u)], true, false, false), !global1[_wgslsmith_index_u32(var_0.d, 29u)])), true);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = ~func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - vec2<f32>(arg_2.x, arg_0.b.x))))), Struct_1(2147483647i, func_2().b, arg_0.c), Struct_4(abs(131634u), u_input.b, _wgslsmith_mod_i32(func_4(arg_2.yz, arg_0, Struct_4(u_input.a.x, 66700u, u_input.c, arg_0.c.wyz, arg_0.c.xw)).c.x, ~(-2147483647i)), arg_0.c.zwy, -arg_0.c.zy)).c.x;
    var var_1 = vec3<u32>(func_4(vec2<f32>(func_4(arg_2.yy, Struct_1(-2147483647i, arg_2.xy, vec4<i32>(3477i, u_input.c, -44920i, u_input.c)), Struct_4(4294967295u, u_input.b, 1i, arg_0.c.xyy, vec2<i32>(0i, arg_0.c.x))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - -1333f), _wgslsmith_f_op_f32(arg_2.x - -1218f))), Struct_1(0i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.zx - arg_2.zx), vec2<f32>(-1506f, -465f)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(5395u, 21u)], -30640i, arg_0.c.x)), Struct_4(u_input.a.x, u_input.b, min(firstTrailingBit(arg_0.a), u_input.c ^ arg_0.a), abs(~arg_0.c.wyw), ~arg_0.c.wy)).b.x, ~min(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, ~10002u)), u_input.a.x);
    global1 = array<bool, 29>();
    var var_2 = arg_0.a;
    global1 = array<bool, 29>();
    return ~u_input.b;
}

fn func_6(arg_0: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-327f)))));
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(f32(-1f) * -1142f)), -636f)), ~vec4<i32>(12231i, ~0i & u_input.c, abs(func_2().c.x), ~(global0[_wgslsmith_index_u32(51650u, 21u)] >> (1u % 32u))));
    var var_2 = vec2<i32>(1i, var_1.a >> (~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u));
    let var_3 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f * var_1.b.x) + _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -145f)), func_2(), Struct_4(18890u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(func_4(vec2<f32>(var_1.b.x, var_1.b.x), Struct_1(-5137i, vec2<f32>(var_1.b.x, 401f), var_1.c), Struct_4(4294967295u, 4294967295u, var_2.x, var_1.c.zxy, vec2<i32>(56358i, 1i))).d, ~59039u), u_input.b), (-17577i << (func_5(Struct_1(u_input.c, vec2<f32>(-1175f, 612f), var_1.c), vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<f32>(976f, var_1.b.x, var_1.b.x)) % 32u)) & ~_wgslsmith_add_i32(var_2.x, var_1.c.x), abs(func_2().c.xwx), vec2<i32>(var_2.x, (global0[_wgslsmith_index_u32(85918u, 21u)] | 2147483647i) << (~u_input.b % 32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.a)))));
    return StorageBuffer(var_1.b.x, -8472i, var_1.b.x, u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    let x = u_input.a;
    s_output = func_6(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_5(Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, 248f)), min(vec4<i32>(1i, u_input.c, -59783i, 0i), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(29886u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), select(func_1(global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], true, true), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 29u)]), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(-138f + 145f), func_4(vec2<f32>(-2085f, -1063f), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 21u)], vec2<f32>(-1456f, 2214f), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.c, u_input.c, global0[_wgslsmith_index_u32(43656u, 21u)])), Struct_4(u_input.a.x, u_input.b, -28066i, vec3<i32>(-2147483647i, -31670i, u_input.c), vec2<i32>(-51374i, 37888i))).a)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, 17007u), 1u)), 21u)]);
}

