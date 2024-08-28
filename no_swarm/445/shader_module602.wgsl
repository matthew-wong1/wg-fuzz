struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(9130u, vec4<f32>(-1214f, -231f, 306f, 771f), -91624i, true, vec3<i32>(0i, 5361i, 14153i)), vec3<bool>(true, true, false), vec4<bool>(true, false, true, true), -1i, vec3<i32>(21076i, i32(-2147483648), 1i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = Struct_2(global1.a, vec3<bool>(arg_3.b.x, all(global1.c), !all(select(arg_1.c, vec4<bool>(true, false, false, global1.b.x), true))), global1.c, -arg_0.e.x, -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_1.a.c, -1i, -2147483647i)) << (~vec3<u32>(arg_0.a, global0.a, 1u) % vec3<u32>(32u)), vec3<i32>(arg_1.a.e.x, arg_0.c, u_input.c) & countOneBits(vec3<i32>(global1.e.x, global1.a.c, -1i))));
    let var_0 = global1.a;
    return -38408i;
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(global1.a, global1.c.www, global1.c, -1i << (global0.a % 32u), ~global1.a.e);
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.yy ^ (select(vec2<u32>(global0.a, 37511u), vec2<u32>(1u, 47331u), vec2<bool>(true, global0.d)) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(global1.a.a, 1u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.wx), u_input.b.wy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global1.a.b.x, _wgslsmith_div_f32(-577f, global1.a.b.x))), global1.a.b.x, _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(397f, global0.b.x), global1.a.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global1.a.b.x))), _wgslsmith_f_op_f32(max(2402f, global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 2490f))))), _wgslsmith_sub_i32(min(-64180i, 0i), _wgslsmith_clamp_i32(global0.c, _wgslsmith_mod_i32(u_input.c, global0.e.x), ~(-24098i))) & global1.d, false, global0.e);
    global0 = Struct_1(15917u, global0.b, global1.d, global0.d, global0.e);
    var var_0 = global1.a;
    var var_1 = _wgslsmith_clamp_i32(global1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, max(func_3(global1.a, Struct_2(Struct_1(var_0.a, global0.b, global1.e.x, true, vec3<i32>(var_0.e.x, 1i, u_input.c)), global1.c.yzz, global1.c, global1.d, vec3<i32>(-23707i, var_0.e.x, u_input.c)), global0.b.x, Struct_2(global1.a, vec3<bool>(false, true, var_0.d), global1.c, -1i, global0.e)), var_0.c)), global1.a.e.xy), ~firstTrailingBit(u_input.c));
    return global1.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.b.zw)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b.yy) * _wgslsmith_f_op_vec2_f32(arg_3.zx - vec2<f32>(global0.b.x, arg_3.x)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x) - 952f)), _wgslsmith_f_op_f32(-arg_1.b.x))));
    var var_1 = func_2();
    let var_2 = global0.e.yz;
    var var_3 = _wgslsmith_f_op_f32(ceil(arg_3.x));
    let var_4 = Struct_2(arg_1, vec3<bool>(!(~1u > _wgslsmith_dot_vec3_u32(u_input.b.yzx, u_input.b.wxw)), (~65377u << ((u_input.b.x >> (0u % 32u)) % 32u)) > 55236u, arg_2.b.x), !vec4<bool>(false, all(!global1.c.xzw), global0.d, _wgslsmith_mod_u32(global1.a.a, global0.a) != 64773u), global1.e.x, _wgslsmith_mult_vec3_i32(vec3<i32>(-global1.d, 32494i, u_input.c), vec3<i32>(u_input.c, _wgslsmith_mod_i32(var_1.e.x, 62841i), 1i)));
    return _wgslsmith_sub_i32(abs(~global1.e.x), func_3(global1.a, Struct_2(Struct_1(~var_4.a.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.x, global1.a.b.x, global0.b.x, arg_3.x))), _wgslsmith_add_i32(9488i, -17276i), arg_1.d, vec3<i32>(global0.e.x, arg_1.e.x, var_1.e.x)), var_4.c.yxy, select(select(arg_2.c, arg_2.c, true), global1.c, vec4<bool>(arg_1.d, true, false, true)), 0i, vec3<i32>(abs(2147483647i), var_4.d, arg_0.x)), _wgslsmith_f_op_f32(arg_1.b.x + global1.a.b.x), arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_2 {
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) * _wgslsmith_f_op_f32(ceil(405f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-144f)) * _wgslsmith_f_op_f32(global1.a.b.x - arg_0.b.x)), arg_0.b.x, -635f), abs(abs(-45630i)), all(vec2<bool>(true, false)), global0.e), global1.b, !select(!vec4<bool>(true, true, global0.d, true), !select(global1.c, global1.c, global1.c), select(global1.c, !global1.c, true)), _wgslsmith_dot_vec2_i32(max(~arg_1, arg_1), _wgslsmith_mult_vec2_i32(-select(arg_1, arg_3.wz, global1.b.yy), select(vec2<i32>(2147483647i, u_input.c), vec2<i32>(0i, global0.e.x) << (u_input.a % vec2<u32>(32u)), arg_0.d && arg_0.d))), _wgslsmith_div_vec3_i32(global1.e, vec3<i32>(global1.d, 11141i, global1.e.x) ^ arg_0.e));
    let var_0 = 434f;
    let var_1 = Struct_2(global1.a, select(vec3<bool>(arg_2.x, all(select(global1.c.wzw, vec3<bool>(global1.c.x, true, false), global1.c.x)), func_2().d), global1.b, select(vec3<bool>(!arg_2.x, global0.d, false), arg_2, !(!vec3<bool>(arg_0.d, arg_0.d, true)))), vec4<bool>(any(!global1.c), !arg_0.d, true, true), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.x, -8513i << (0u % 32u), ~arg_1.x), (6822i >> (global1.a.a % 32u)) << (abs(1013u) % 32u)), arg_0.e << (max(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(14216u, global1.a.a, u_input.a.x)), _wgslsmith_add_vec3_u32(u_input.b.yzw, vec3<u32>(global1.a.a, arg_0.a, global1.a.a))), u_input.b.wwz) % vec3<u32>(32u)));
    var var_2 = vec3<bool>(global1.b.x, select(var_1.b.x, true, reverseBits(4294967295u) == ~global0.a), arg_0.d);
    let var_3 = firstTrailingBit(vec2<u32>(58806u, global0.a)) >> (select(select(firstTrailingBit(u_input.a), vec2<u32>(global0.a, arg_0.a), false) << (u_input.a % vec2<u32>(32u)), vec2<u32>(func_2().a, global1.a.a), vec2<bool>(arg_0.d, !var_2.x | any(vec3<bool>(false, true, false)))) % vec2<u32>(32u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_1(_wgslsmith_sub_u32(66454u, u_input.b.x), global1.a.b, -func_1(-vec4<i32>(4449i, -2147483647i, u_input.c, u_input.c), global1.a, Struct_2(Struct_1(62172u, vec4<f32>(global0.b.x, global1.a.b.x, 381f, -1353f), global1.a.e.x, global1.b.x, global1.e), vec3<bool>(global1.b.x, global1.c.x, true), global1.c, global0.e.x, vec3<i32>(global1.a.e.x, u_input.c, -30657i)), global0.b.yzw), true, vec3<i32>(global1.e.x << (abs(14626u) % 32u), -1i, -8394i)), _wgslsmith_clamp_vec2_i32(func_2().e.xx, vec2<i32>(global1.d, max(u_input.c, 9263i) ^ u_input.c), vec2<i32>(-20243i, ~(global1.d << (global0.a % 32u)))), global1.c.wyy, abs(min(-vec4<i32>(global0.e.x, global0.e.x, -71655i, -2147483647i), ~countOneBits(vec4<i32>(-2147483647i, -1i, 8531i, 0i)))));
    global0 = Struct_1(func_4(Struct_1(global1.a.a, vec4<f32>(global1.a.b.x, global0.b.x, global0.b.x, 1731f), global0.e.x >> (15190u % 32u), global0.a <= _wgslsmith_dot_vec3_u32(u_input.b.xyy, u_input.b.yyy), global0.e), _wgslsmith_div_vec2_i32(func_2().e.xz, select(~vec2<i32>(u_input.c, u_input.c), global1.e.xz, global1.c.zy)), !select(global1.b, global1.b, all(vec3<bool>(true, false, global1.c.x))), ~reverseBits(firstTrailingBit(vec4<i32>(-9849i, 1i, 2147483647i, global0.c)))).a.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.b - vec4<f32>(-295f, 645f, 918f, 247f))))), -29101i, global0.d, abs(global0.e));
    var var_0 = 2147483647i;
    var var_1 = Struct_2(Struct_1(~min(min(1u, global0.a), 36099u | global0.a), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(min(-276f, _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-479f, global0.b.x) * _wgslsmith_f_op_f32(-global1.a.b.x)), -1309f), func_2().c, global0.d, _wgslsmith_mult_vec3_i32(global1.a.e, abs(firstLeadingBit(global0.e)))), select(global1.b, global1.c.zxz, !(!global1.b)), select(global1.c, global1.c, !(!any(vec4<bool>(global0.d, false, true, global0.d)))), _wgslsmith_sub_i32(global0.e.x, global0.c), countOneBits(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.e.x, global0.e.x, 29980i, 50822i), vec4<i32>(20353i, global0.e.x, u_input.c, global1.a.e.x), global1.c.x), vec4<i32>(-45649i, -2147483647i, global1.e.x, u_input.c)), global1.a.c)));
    global0 = Struct_1(countOneBits(global1.a.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, 817f, global1.a.b.x, var_1.a.b.x), _wgslsmith_f_op_vec4_f32(global0.b - global1.a.b))))))), 0i, select(var_1.a.a >= _wgslsmith_mod_u32(max(1u, u_input.a.x), 22950u), var_1.a.d, var_1.c.x), reverseBits((-vec3<i32>(2147483647i, -33273i, u_input.c) & _wgslsmith_mult_vec3_i32(global1.a.e, vec3<i32>(2147483647i, 2147483647i, 38528i))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c, 23205i, 22120i), vec3<i32>(-1i, -11885i, global0.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, global1.e.x, 63277i), global1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(-_wgslsmith_add_i32(global1.d, 52644i), 46811i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(50312i, -26193i), 1i), select(countOneBits(global0.e.x), -2147483647i, func_4(Struct_1(67157u, vec4<f32>(-1347f, global0.b.x, global1.a.b.x, -2037f), global1.e.x, true, global0.e), var_1.e.zx, global1.c.zww, vec4<i32>(-2147483647i, var_1.a.c, -32026i, global1.e.x)).b.x))), 51379u ^ _wgslsmith_sub_u32(38942u, _wgslsmith_sub_u32(~38429u, func_4(Struct_1(19043u, vec4<f32>(var_1.a.b.x, global0.b.x, var_1.a.b.x, global1.a.b.x), 2147483647i, var_1.c.x, global0.e), vec2<i32>(var_1.d, global1.a.c), var_1.b, vec4<i32>(-61731i, global1.a.c, -2147483647i, 37948i)).a.a)), var_1.a.b);
}

