struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 71090u, 96559u, 0u), true, vec2<f32>(-1051f, 299f), vec2<bool>(true, true), vec4<f32>(1000f, 251f, 1063f, 931f));

var<private> global1: vec3<i32>;

var<private> global2: vec3<f32> = vec3<f32>(1357f, 1640f, -155f);

var<private> global3: array<vec3<bool>, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(arg_2.c.b.a ^ vec4<u32>(arg_2.c.b.a.x, 1u, global0.a.x, arg_2.c.b.a.x), vec4<u32>(arg_2.c.b.a.x, 73847u, 0u, arg_1.a.x)) >> (abs(vec4<u32>(global0.a.x, arg_2.c.b.a.x, 33009u, arg_0.a.x)) % vec4<u32>(32u)), -_wgslsmith_add_i32(-47989i, arg_2.b) >= 2147483647i, arg_2.c.b.c, select(global0.d, vec2<bool>(all(vec3<bool>(arg_0.b, false, arg_1.b)), global0.d.x), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1685f, global2.x, -180f, 1454f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.e.zxx + _wgslsmith_f_op_vec3_f32(-vec3<f32>(341f, global2.x, global2.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, arg_2.c.b.c.x, global0.e.x), arg_1.e.xwz)) - _wgslsmith_f_op_vec3_f32(select(arg_0.e.xxx, _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, arg_2.c.c, arg_1.e.x), vec3<f32>(arg_2.d, -1245f, global0.c.x)), vec3<bool>(true, true, true)))), firstTrailingBit(~vec3<u32>(arg_1.a.x, max(global0.a.x, arg_1.a.x), _wgslsmith_mult_u32(4294967295u, arg_1.a.x))));
    global1 = ~(-max(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -44340i, 43106i), vec3<i32>(-54369i, 29863i, u_input.a)), vec3<i32>(arg_2.b, global1.x, arg_2.b)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 0i, -1i), -global1.x, firstTrailingBit(global1.x)), max(vec3<i32>(2147483647i, arg_2.b, arg_2.b) ^ vec3<i32>(30328i, u_input.c, -34270i), select(vec3<i32>(11588i, u_input.c, 0i), vec3<i32>(-39888i, -41181i, 1i), global3[_wgslsmith_index_u32(1u, 15u)]))));
    let var_1 = arg_0.e.wy;
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(~arg_1.a, abs(var_0.a.a), _wgslsmith_mult_vec4_u32(vec4<u32>(69861u, global0.a.x, 1u, arg_1.a.x), abs(global0.a))), true, global0.c, vec2<bool>(true, global0.b), _wgslsmith_div_vec4_f32(var_0.a.e, vec4<f32>(_wgslsmith_f_op_f32(global0.e.x - 816f), var_1.x, _wgslsmith_div_f32(-1119f, 446f), _wgslsmith_f_op_f32(f32(-1f) * -2696f)))), arg_1.e.yyz, arg_1.a.wxz);
    var var_3 = arg_1.a;
    return var_0.a.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = u_input.c;
    var var_1 = false;
    global0 = Struct_1(reverseBits(vec4<u32>(~51075u, 47960u, ~(~arg_3.a.a.x), 26292u)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-1000f - 575f))), arg_3.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_3.a, Struct_1(_wgslsmith_add_vec4_u32(global0.a, arg_3.a.a), arg_3.a.d.x, _wgslsmith_f_op_vec2_f32(-global0.e.zw), select(global0.d, arg_3.a.d, vec2<bool>(false, true)), vec4<f32>(global2.x, -714f, global2.x, 2894f)), Struct_4(vec3<f32>(arg_3.a.c.x, -1214f, arg_3.a.c.x), 1i, Struct_2(vec2<bool>(arg_3.a.b, true), arg_3.a, 608f), _wgslsmith_f_op_f32(step(arg_3.a.e.x, 512f)))))));
    let var_2 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(global0.a, ~vec4<u32>(arg_1.x, 0u, 1u, 1u)), firstLeadingBit(arg_1.x), ~(~global0.a.x) >> (~countOneBits(64304u) % 32u), ~(~arg_3.a.a.x)), arg_3.a.d.x, _wgslsmith_f_op_vec2_f32(global0.e.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(256f * arg_3.a.c.x), 496f))), !vec2<bool>(global2.x >= _wgslsmith_f_op_vec4_f32(func_3(arg_3.a, Struct_1(vec4<u32>(arg_1.x, global0.a.x, global0.a.x, global0.a.x), arg_3.a.b, global2.yx, arg_3.a.d, arg_3.a.e), Struct_4(global0.e.zzy, arg_0.x, Struct_2(global0.d, Struct_1(arg_3.a.a, arg_3.a.d.x, arg_3.a.e.xx, arg_3.a.d, global0.e), 1120f), -821f))).x, select(all(vec3<bool>(global0.b, true, true)), all(global3[_wgslsmith_index_u32(global0.a.x, 15u)]), arg_3.a.b)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.a.e.x, arg_3.a.e.x)), _wgslsmith_f_op_f32(step(1000f, 204f)), _wgslsmith_f_op_f32(select(global0.e.x, global0.e.x, false)), _wgslsmith_div_f32(-1161f, global0.e.x)) - _wgslsmith_f_op_vec4_f32(global0.e * arg_3.a.e)))));
    var var_3 = var_2.d.x;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -326f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.e.x)) * arg_3.b.x), var_2.e.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(-vec2<i32>(arg_0, 0i)), ~(vec2<u32>(0u, 38245u) & _wgslsmith_mult_vec2_u32(global0.a.zz, vec2<u32>(18017u, global0.a.x))), 0i, arg_3)));
    global0 = arg_3.a;
    var var_0 = Struct_1(countOneBits(abs(vec4<u32>(_wgslsmith_mult_u32(1u, global0.a.x), _wgslsmith_add_u32(1u, arg_2), global0.a.x, 1u))), (1u != _wgslsmith_mult_u32(global0.a.x, select(global0.a.x, global0.a.x, false))) & false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, _wgslsmith_div_f32(685f, 1000f)))), arg_3.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -205f, _wgslsmith_f_op_f32(-global2.x), -369f))));
    var_0 = Struct_1(vec4<u32>(~(~(~arg_2)), 32549u, ~max(_wgslsmith_mult_u32(var_0.a.x, arg_2), ~38203u), firstTrailingBit(0u ^ var_0.a.x)), all(select(select(vec4<bool>(var_0.b, false, var_0.d.x, global0.b), !vec4<bool>(global0.b, true, var_0.b, arg_3.a.b), false), vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x <= -549f, any(vec4<bool>(false, var_0.d.x, arg_3.a.b, arg_3.a.b)), false, any(global0.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a.e.xz)), !select(vec2<bool>(false, false), arg_3.a.d, vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(arg_3.a.e * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e * arg_3.a.e)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1092f, global2.x, -1844f) - global0.e) * _wgslsmith_f_op_vec4_f32(arg_3.a.e - vec4<f32>(169f, global0.c.x, -1079f, var_0.e.x))))));
    global0 = arg_3.a;
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_3 + arg_3))), _wgslsmith_dot_vec2_i32(max(vec2<i32>(~3247i, _wgslsmith_mod_i32(global1.x, u_input.b)), ~global1.yz), reverseBits(_wgslsmith_clamp_vec2_i32(~global1.xy, global1.yz, ~global1.zz))), Struct_2(arg_0.a.d, func_1(-_wgslsmith_add_i32(u_input.c, u_input.c), arg_0.b, abs(0u), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), global0.b, vec2<f32>(global0.e.x, -623f), global0.d, arg_0.a.e), vec3<f32>(arg_0.b.x, global2.x, arg_3.x), arg_0.a.a.yyz | vec3<u32>(4294967295u, 3137u, arg_0.a.a.x))).a, -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(1u, arg_1, 29960u, global0.a.x), !global0.d.x, vec2<f32>(601f, global2.x), vec2<bool>(false, global0.b), _wgslsmith_f_op_vec4_f32(func_3(arg_0.a, arg_0.a, Struct_4(vec3<f32>(global0.c.x, -248f, global2.x), global1.x, Struct_2(global0.d, Struct_1(vec4<u32>(global0.a.x, 1u, 8659u, global0.a.x), true, vec2<f32>(arg_0.a.e.x, global0.e.x), arg_0.a.d, vec4<f32>(global2.x, -1000f, -487f, arg_0.a.e.x)), arg_0.b.x), global0.e.x)))), Struct_1(~vec4<u32>(35200u, 49782u, 1u, 0u), true, arg_3.zz, !global0.d, _wgslsmith_f_op_vec4_f32(arg_0.a.e * global0.e)), Struct_4(vec3<f32>(-899f, 1393f, global2.x), _wgslsmith_div_i32(u_input.a, u_input.b), Struct_2(global0.d, Struct_1(global0.a, global0.b, arg_3.xx, global0.d, vec4<f32>(arg_2, -380f, global2.x, 1312f)), -769f), _wgslsmith_div_f32(-969f, global0.e.x)))).x));
    global1 = ~(~vec3<i32>(~(var_0.b >> (15918u % 32u)), max(var_0.b & 1i, 10477i & var_0.b), countOneBits(var_0.b)));
    var var_1 = func_1(_wgslsmith_div_i32(19828i, 21296i), arg_0.a.e.yxx, arg_1 ^ countOneBits(~_wgslsmith_mod_u32(4294967295u, global0.a.x)), func_1(28307i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.c.x, -1707f, -765f))) - _wgslsmith_f_op_vec3_f32(-arg_0.a.e.xyy)) - arg_0.a.e.zzx), global0.a.x, func_1(abs(global1.x) | 28338i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, arg_3.x, var_0.a.x)), 4294967295u, func_1(var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, arg_3.x, var_0.c.c)), countOneBits(39185u), Struct_3(Struct_1(var_0.c.b.a, global0.d.x, arg_3.xx, var_0.c.a, arg_0.a.e), arg_3, arg_0.c))))).a;
    var var_2 = !arg_0.a.b;
    var var_3 = vec2<u32>(4294967295u, ~func_1(global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, 748f, -955f)), 35264u, arg_0).c.x);
    return Struct_4(arg_3, _wgslsmith_add_i32(countOneBits(~(-63794i)), countOneBits(-firstTrailingBit(-1i))), Struct_2(vec2<bool>(any(select(vec4<bool>(global0.b, true, arg_0.a.d.x, false), vec4<bool>(false, arg_0.a.d.x, var_0.c.b.b, true), global0.d.x)), all(select(vec4<bool>(arg_0.a.d.x, true, true, var_1.d.x), vec4<bool>(true, true, var_0.c.b.b, var_1.d.x), false))), func_1(global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global2.x, arg_2)))), 103570u, func_1(1i, vec3<f32>(arg_0.b.x, var_1.c.x, var_1.e.x), 4294967295u, arg_0)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(-31238i, arg_3, arg_1, arg_0).a.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-375f, 216f))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    let var_0 = func_1(countOneBits(_wgslsmith_mult_i32(firstLeadingBit(global1.x), 28383i)), _wgslsmith_f_op_vec3_f32(-global0.e.xzy), ~(~1u), func_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.b, _wgslsmith_add_i32(13298i, -3621i)), arg_1.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(566f, -806f, 1255f) - arg_1.a), vec3<f32>(-1000f, -204f, -1000f), true)))), reverseBits(~1u), func_1(~(~30696i), _wgslsmith_f_op_vec3_f32(-global0.e.yyx), _wgslsmith_dot_vec4_u32(global0.a, ~vec4<u32>(4294967295u, 39458u, global0.a.x, 25263u)), Struct_3(arg_1.c.b, global0.e.xyx, countOneBits(global0.a.yxx))))).a;
    let var_1 = arg_1.c.b.a.x;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(select(global0.c.x, func_1(-9664i, vec3<f32>(_wgslsmith_f_op_f32(193f * var_0.e.x), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(-1000f))), ~var_1, func_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b.e.x, global2.x, 1236f)), global0.a.x, func_1(-1i, var_0.e.xyz, 66400u, Struct_3(var_0, vec3<f32>(global0.c.x, arg_2, -1000f), vec3<u32>(1u, global0.a.x, global0.a.x))))).a.c.x, !global0.b)), arg_1.c.c, -1153f);
    let var_2 = !arg_1.c.a.x != global0.b;
    global1 = select(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(1i, global1.x, global1.x) & (vec3<i32>(2147483647i, 0i, arg_1.b) ^ vec3<i32>(1i, -29681i, arg_1.b))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(global1.x, -1i, 36099i)), vec3<i32>(global1.x, abs(global1.x), ~global1.x), max(~vec3<i32>(0i, 52980i, u_input.a), countOneBits(vec3<i32>(u_input.c, arg_1.b, arg_1.b))))), max(vec3<i32>(-max(0i, -22977i), _wgslsmith_mod_i32(0i, -2147483647i), 1i), -(~(vec3<i32>(u_input.a, -2147483647i, arg_1.b) | vec3<i32>(global1.x, global1.x, -1i)))), false);
    return arg_1.c.b;
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = global1.x;
    let var_1 = arg_0.a.b;
    var var_2 = func_4(func_1(1i, global0.e.xyz, 20895u, Struct_3(func_5(!vec2<bool>(false, var_1), func_4(Struct_3(arg_0.a, global0.e.zzz, arg_0.a.a.xxz), global0.a.x, -1000f, arg_0.b), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(global0.a.x, 26824u, global0.a.x, 30241u), true, global2.xy, vec2<bool>(global0.d.x, true), vec4<f32>(global0.c.x, -207f, 403f, 1750f)), Struct_1(vec4<u32>(arg_0.a.a.x, 47957u, 0u, 1u), global0.b, global2.zy, vec2<bool>(var_1, false), vec4<f32>(global0.c.x, arg_1, -504f, -133f)), Struct_4(global0.e.zwy, -2147483647i, Struct_2(vec2<bool>(global0.d.x, false), Struct_1(global0.a, true, global0.e.xw, arg_0.a.d, arg_0.a.e), 877f), -1650f))).zyy, vec3<u32>(1u, arg_0.a.a.x, 4294967295u))), global0.a.x, 1306f, vec3<f32>(445f, -722f, -231f)).c.b;
    global1 = vec3<i32>(global1.x, u_input.b, -(_wgslsmith_add_i32(-36272i, global1.x) << (~0u % 32u)));
    return func_1(_wgslsmith_sub_i32(abs(global1.x), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.e.www)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global2.x, global0.c.x) * vec3<f32>(arg_0.b.x, 266f, 206f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.e.x, global2.x, arg_0.b.x)))))), max(20333u, 0u | reverseBits(_wgslsmith_add_u32(var_2.a.x, arg_0.c.x))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(func_5(select(!vec2<bool>(true, global0.b), select(global0.d, vec2<bool>(true, global0.b), vec2<bool>(global0.b, false)), vec2<bool>(true, true)), func_4(func_1(u_input.a, global0.e.xzw, 1u, Struct_3(Struct_1(vec4<u32>(0u, global0.a.x, global0.a.x, global0.a.x), global0.b, vec2<f32>(839f, global2.x), vec2<bool>(global0.d.x, global0.d.x), vec4<f32>(-2354f, global0.e.x, -179f, global2.x)), vec3<f32>(global2.x, -1766f, global2.x), global0.a.ywz)), global0.a.x, -1457f, _wgslsmith_f_op_vec3_f32(step(global0.e.zzz, vec3<f32>(global2.x, global0.c.x, -181f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec3_f32(-func_5(global0.d, Struct_4(global0.e.wxz, u_input.c, Struct_2(global0.d, Struct_1(vec4<u32>(48105u, global0.a.x, global0.a.x, 1u), global0.d.x, global0.c, vec2<bool>(false, global0.d.x), global0.e), global0.c.x), -167f), _wgslsmith_f_op_f32(-global0.e.x)).e.zyz), global0.a.yyx), _wgslsmith_f_op_f32(-1773f - global2.x));
    let var_1 = func_4(Struct_3(Struct_1(vec4<u32>(global0.a.x, reverseBits(var_0.a.a.x), countOneBits(var_0.c.x), 45494u), 4294967295u < var_0.a.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e.x, -1186f)), _wgslsmith_f_op_vec2_f32(-global2.yy)), func_1(u_input.b, func_5(vec2<bool>(true, true), Struct_4(global0.e.yxz, global1.x, Struct_2(vec2<bool>(var_0.a.d.x, true), Struct_1(global0.a, global0.b, vec2<f32>(global0.c.x, 1216f), vec2<bool>(global0.d.x, true), var_0.a.e), global0.e.x), var_0.b.x), var_0.b.x).e.wzy, 1u, Struct_3(var_0.a, vec3<f32>(global2.x, 940f, 1782f), vec3<u32>(global0.a.x, var_0.a.a.x, var_0.c.x))).a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, 1302f, -470f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e.zwz - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0.c.x, -490f) * vec3<f32>(global2.x, var_0.a.e.x, var_0.b.x)))), global0.a.ywy), global0.a.x, global2.x, var_0.b).c;
    var var_2 = Struct_1(countOneBits(vec4<u32>(var_0.a.a.x, var_1.b.a.x, ~0u, 1u) ^ ((global0.a ^ vec4<u32>(4294967295u, global0.a.x, 66546u, var_1.b.a.x)) & ~vec4<u32>(21908u, var_0.c.x, 0u, var_0.a.a.x))), !global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_6(var_0, var_0.a.c.x).b.zy) - var_0.a.c)), select(global0.d, func_4(func_1(-u_input.b, var_1.b.e.www, _wgslsmith_mult_u32(0u, 23221u), Struct_3(Struct_1(global0.a, var_0.a.b, vec2<f32>(502f, -673f), var_0.a.d, global0.e), global0.e.xzz, vec3<u32>(var_1.b.a.x, 0u, 34914u))), 13522u, func_4(Struct_3(Struct_1(var_1.b.a, var_1.a.x, var_1.b.c, global0.d, var_1.b.e), var_1.b.e.zzz, vec3<u32>(var_1.b.a.x, 0u, 1998u)), ~var_1.b.a.x, -216f, _wgslsmith_div_vec3_f32(vec3<f32>(-518f, var_0.b.x, 295f), vec3<f32>(global2.x, 329f, -481f))).d, _wgslsmith_f_op_vec3_f32(var_1.b.e.wzw * _wgslsmith_f_op_vec3_f32(-var_1.b.e.yyz))).c.b.d, var_0.a.d.x), _wgslsmith_f_op_vec4_f32(func_3(func_4(Struct_3(func_4(var_0, var_1.b.a.x, var_1.b.c.x, vec3<f32>(global0.c.x, global0.c.x, 2074f)).c.b, vec3<f32>(1000f, var_0.b.x, -679f), ~var_0.a.a.zzz), ~3553u, global2.x, var_0.b).c.b, Struct_1(~(~var_1.b.a), func_5(func_6(Struct_3(var_0.a, vec3<f32>(var_1.b.e.x, -134f, global0.e.x), vec3<u32>(global0.a.x, global0.a.x, 0u)), var_1.c).a.d, func_4(var_0, var_1.b.a.x, global2.x, var_0.b), global2.x).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, 864f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, var_1.b.e.x), var_1.b.c)), !vec2<bool>(var_0.a.d.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.e * var_0.a.e))), func_4(var_0, 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1081f), 1128f), func_1(10250i | u_input.a, vec3<f32>(-399f, global2.x, var_0.b.x), _wgslsmith_dot_vec3_u32(var_0.a.a.yzy, var_1.b.a.xxw), var_0).b))));
    var var_3 = -(vec3<i32>(-1i) * -vec3<i32>(min(u_input.c, u_input.c), 1i, reverseBits(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_2.a.xw, vec2<u32>(0u, var_0.a.a.x)), global0.a.wz), abs(vec2<u32>(0u, var_1.b.a.x))));
}

