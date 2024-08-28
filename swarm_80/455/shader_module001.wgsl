struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 31> = array<i32, 31>(-62963i, 44277i, -7943i, 42172i, i32(-2147483648), 23395i, 1i, -47103i, 24419i, 6331i, 2147483647i, -1i, 49952i, -55953i, 33825i, -10214i, 2147483647i, 2147483647i, -60549i, -71107i, 66326i, -16267i, -857i, 44530i, 0i, -38045i, -31004i, i32(-2147483648), -28356i, 1i, -1i);

var<private> global2: array<i32, 25> = array<i32, 25>(-8215i, 96i, -23109i, -24269i, -10262i, -12642i, 0i, -1688i, 1i, 1i, -34948i, -19147i, 2147483647i, -27718i, 2147483647i, 0i, 1i, -1i, i32(-2147483648), 20169i, 0i, 9079i, -37689i, -42054i, 13645i);

var<private> global3: Struct_3 = Struct_3(vec3<f32>(-2110f, -1214f, -1445f), 135i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    var var_0 = Struct_2(firstLeadingBit(~u_input.a.x), Struct_1(arg_2, vec2<i32>(-1i) * -arg_3.wy, global3.a.x, vec3<i32>(~10587i, 0i, u_input.b.x), -(2147483647i >> (1u % 32u)) | global3.b), Struct_1(global0.x, vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3.xw, countOneBits(u_input.b.zz)), -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a.x + -716f))), arg_3.ywx, global3.b));
    var var_1 = ~u_input.a;
    let var_2 = vec4<bool>(!(all(!vec4<bool>(true, arg_2, false, false)) || ((false | arg_2) | false)), var_0.b.a, all(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, arg_2)), all(vec4<bool>(arg_2, false, var_0.c.a, global0.x))), any(!vec4<bool>(global0.x, true, var_0.c.a, true)))), any(vec3<bool>(true, global0.x, all(!vec2<bool>(global0.x, true)))));
    var var_3 = Struct_1(arg_2, vec2<i32>(reverseBits(global3.b >> (var_0.a % 32u)) & -_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 25u)], -2147483647i), vec2<i32>(2147483647i, 0i)), abs(_wgslsmith_add_i32(-3867i, arg_1.b)) | 1i), 1550f, countOneBits(select(select(vec3<i32>(-2147483647i, -45991i, u_input.c), -u_input.b.zzz, false), vec3<i32>(-6647i, arg_3.x, -33618i), !global0.x)), global3.b);
    let var_4 = arg_1;
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<i32>) -> u32 {
    global2 = array<i32, 25>();
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    var var_0 = Struct_2(arg_0, arg_1.b, Struct_1(true, ~select(arg_2.zy ^ arg_3.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 52745i), arg_1.c.d.xx, u_input.b.zx), select(vec2<bool>(false, arg_1.b.a), vec2<bool>(global0.x, global0.x), vec2<bool>(false, arg_1.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2226f)) * _wgslsmith_f_op_f32(-arg_1.c.c)) + 1000f), arg_1.c.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, -u_input.b.x, -arg_2.x), -abs(arg_3.yyx))));
    var var_1 = vec4<i32>(~(-_wgslsmith_sub_i32(0i, ~var_0.b.b.x)), 0i ^ _wgslsmith_clamp_i32(1i >> (max(arg_1.a, u_input.a.x) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], 0i, 0i), arg_3), -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.zy ^ var_0.c.d.zz, vec2<i32>(1i, min(arg_1.c.b.x, -1i))), ~_wgslsmith_div_vec2_i32(select(vec2<i32>(-4550i, global3.b), vec2<i32>(2147483647i, 1i), vec2<bool>(true, arg_1.c.a)), vec2<i32>(var_0.c.d.x, global3.b))), ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a, 31913u & arg_1.a), 31u)]);
    return arg_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> vec3<f32> {
    var var_0 = u_input.c & arg_1.x;
    var var_1 = !select(!select(select(vec3<bool>(true, true, global0.x), vec3<bool>(arg_0.c.a, global0.x, global0.x), global0.x), vec3<bool>(arg_0.c.a, false, arg_0.b.a), vec3<bool>(true, global0.x, true)), vec3<bool>(_wgslsmith_div_i32(arg_0.c.b.x, arg_1.x) >= 1i, arg_0.b.a, all(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), vec2<bool>(arg_0.c.a, arg_0.c.a)))), all(select(select(vec2<bool>(global0.x, true), vec2<bool>(arg_0.b.a, false), arg_0.c.a), !vec2<bool>(global0.x, true), false)));
    let var_2 = !vec4<bool>(true, var_1.x && arg_0.b.a, any(!vec4<bool>(arg_0.c.a, true, false, false)), false);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.a)) * global3.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a + global3.a))))));
    var var_4 = arg_0.b;
    return vec3<f32>(-1277f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.c + 217f)))), global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-179f)), 1000f, _wgslsmith_f_op_f32(-194f - global3.a.x))), vec3<f32>(-196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-global3.a.x))) * vec3<f32>(355f, _wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f - 532f))), global3.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3.a.yz);
    var_0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_2(~u_input.a.x & u_input.a.x, Struct_1(all(vec3<bool>(true, false, false)) == !global0.x, u_input.b.zy, 412f, u_input.b.ywx, -(i32(-1i) * -1i)), Struct_1(global0.x, _wgslsmith_clamp_vec2_i32(u_input.b.ww, _wgslsmith_sub_vec2_i32(u_input.b.yw, u_input.b.zy), select(u_input.b.wy, u_input.b.zy, vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, var_0.x) - _wgslsmith_f_op_f32(-global3.a.x)), -u_input.b.wyy, global2[_wgslsmith_index_u32(min(0u, 1u), 25u)])), vec4<i32>(abs(-global2[_wgslsmith_index_u32(1u, 25u)]), -1i, _wgslsmith_sub_i32(-(~global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), -1i), -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], -2147483647i), -1i, -3414i)), func_4(~(~1u | (32479u | u_input.a.x)), Struct_2(func_3(Struct_3(vec3<f32>(global3.a.x, global3.a.x, var_1.x), global3.b), Struct_3(global3.a, 2147483647i), true, firstLeadingBit(u_input.b)), Struct_1(u_input.a.x == u_input.a.x, max(u_input.b.wy, vec2<i32>(-1i, 28447i)), global3.a.x, -u_input.b.zyw, reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), Struct_1(any(vec4<bool>(false, global0.x, global0.x, global0.x)), vec2<i32>(global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), -1313f, -u_input.b.xyw, _wgslsmith_mod_i32(u_input.c, 44204i))), u_input.b.zyz, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10936i, global3.b, 25374i, -2556i), u_input.b), i32(-1i) * -1i), u_input.b))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.a - global3.a) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(163f, var_1.x, -1571f)))) - global3.a)), global3.a);
    var var_2 = Struct_2(4712u, Struct_1(true, -_wgslsmith_mult_vec2_i32(u_input.b.yy, reverseBits(vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -241f) + 765f), -666f, true)), (-u_input.b.wxz ^ _wgslsmith_sub_vec3_i32(u_input.b.wxx, vec3<i32>(global1[_wgslsmith_index_u32(26531u, 31u)], global3.b, u_input.c))) & vec3<i32>(global3.b >> (34430u % 32u), -1i, u_input.c | 1i), u_input.b.x), Struct_1(global0.x, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-2147483647i, global3.b)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 2147483647i)) ^ _wgslsmith_clamp_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], 2147483647i), u_input.b.zw | vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zw << (u_input.a.xw % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + -506f)))), vec3<i32>(-global3.b >> (~u_input.a.x % 32u), reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 25u)] | 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-29524i, 2147483647i), ~vec2<i32>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)]))), (-20220i >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)) & global3.b));
    return Struct_2(_wgslsmith_mod_u32(~(reverseBits(76120u) ^ (var_2.a << (61000u % 32u))), _wgslsmith_mult_u32(u_input.a.x, 6260u)), Struct_1(!all(vec3<bool>(global0.x, true, false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, 19462i), 1i), ~u_input.b.zx, vec2<i32>(~73197i, min(global2[_wgslsmith_index_u32(var_2.a, 25u)], -1i))), _wgslsmith_f_op_f32(126f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + var_2.c.c))), var_2.c.d, 1i), var_2.c);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> vec2<bool> {
    global1 = array<i32, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.a.x) - vec2<f32>(-1292f, arg_0.c.c)) * global3.a.xy))))));
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, var_0.x, -832f))), vec3<f32>(-2528f, 836f, -1713f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global3.a)))))), _wgslsmith_mult_i32((4468i >> (_wgslsmith_clamp_u32(25937u, 8225u, 4294967295u) % 32u)) ^ -_wgslsmith_dot_vec2_i32(arg_0.b.d.zz, vec2<i32>(arg_0.b.d.x, -2147483647i)), 0i));
    return select(select(select(!vec2<bool>(global0.x, false), select(vec2<bool>(arg_0.c.a, global0.x), !vec2<bool>(arg_0.b.a, arg_0.c.a), true), select(vec2<bool>(arg_0.b.a, true), !vec2<bool>(global0.x, arg_0.b.a), all(vec3<bool>(false, arg_0.c.a, arg_0.c.a)))), vec2<bool>(firstLeadingBit(1u) == arg_1.x, true || !arg_0.b.a), !any(vec3<bool>(global0.x, global0.x, true))), select(vec2<bool>(select(arg_2.a.x > arg_0.c.c, arg_0.c.a, true), true), vec2<bool>(all(select(vec2<bool>(true, arg_0.b.a), vec2<bool>(false, true), vec2<bool>(false, false))), true), select(select(select(vec2<bool>(arg_0.c.a, true), vec2<bool>(arg_0.b.a, global0.x), arg_0.b.a), !vec2<bool>(arg_0.b.a, global0.x), global0.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, arg_0.c.a)), !vec2<bool>(true, global0.x), vec2<bool>(arg_0.c.a, true)), !select(vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(arg_0.c.a, true)))), select(vec2<bool>(select(!global0.x, false, true), false), vec2<bool>(true && global0.x, true), vec2<bool>(true, func_2().c.a | true)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec3_i32(-max(abs(vec3<i32>(global2[_wgslsmith_index_u32(1u, 25u)], 12012i, -31136i)) & _wgslsmith_sub_vec3_i32(u_input.b.yww, vec3<i32>(9939i, global3.b, -35729i)), firstLeadingBit(~u_input.b.wzw)), ~u_input.b.zxw >> (select(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 42577u)), u_input.a.zxz, global0.x && true) % vec3<u32>(32u)));
    global0 = func_6(func_2(), ~(u_input.a.wzz >> (~(~vec3<u32>(u_input.a.x, 26915u, 0u)) % vec3<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global3.a.x, global3.a.x)))), firstLeadingBit(func_2().b.b.x)));
    var var_1 = global3.a.x;
    global0 = vec2<bool>(global0.x, true);
    let var_2 = u_input.a.x;
    return StorageBuffer(2147483647i | global3.b, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-826f - 439f)), global3.a.x, func_2().b.c)), _wgslsmith_f_op_vec2_f32(-global3.a.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(26490u, u_input.a.x), 25u)]));
}

