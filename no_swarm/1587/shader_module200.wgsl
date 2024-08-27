struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(107f, vec3<bool>(true, true, true), vec2<bool>(true, false), false);

var<private> global1: vec4<u32>;

var<private> global2: f32;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = u_input.c;
    var var_1 = -_wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b.x >> (global1.x % 32u), u_input.c), _wgslsmith_mult_i32(var_0, ~(i32(-1i) * -7480i)));
    let var_2 = !any(!vec2<bool>(all(arg_0.c.c), arg_1.c.b.x));
    let var_3 = u_input.b.yx | _wgslsmith_mult_vec2_i32(reverseBits(u_input.b.xx) << (~_wgslsmith_add_vec2_u32(global1.zw, vec2<u32>(17872u, 0u)) % vec2<u32>(32u)), u_input.b.zz);
    let var_4 = ~select(global1.xw, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 44359u)), global1.wx), global1.wz), all(vec4<bool>(global0.a < -1000f, all(vec4<bool>(true, global0.d, var_2, arg_1.c.b.x)), any(vec3<bool>(arg_1.c.c.x, true, arg_1.a.b.x)), true)));
    return all(vec4<bool>(all(select(!vec2<bool>(arg_0.b, arg_1.c.c.x), !arg_1.c.b.xz, !global0.c)), max(30247u, ~var_4.x) >= 0u, !(var_2 != all(vec4<bool>(false, false, arg_1.c.d, false))), arg_0.b));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global0.b;
    let var_1 = u_input.b.wwz;
    let var_2 = -24266i < select(var_1.x, u_input.b.x, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-488f, global0.a), vec2<f32>(global0.a, 1435f), !var_0.zx)), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, 244f))))))));
    var var_4 = Struct_1(global3.x, vec3<bool>(all(vec2<bool>(!var_2, var_0.x)), true, !(all(vec4<bool>(var_0.x, true, true, var_0.x)) & var_0.x)), select(select(vec2<bool>(global3.x >= -1410f, 2147483647i >= u_input.b.x), vec2<bool>(-123f <= var_3.x, global0.b.x), true), global0.c, 0u != _wgslsmith_add_u32(abs(u_input.a), 60231u)), !(_wgslsmith_f_op_f32(-108f + 3323f) == _wgslsmith_f_op_f32(trunc(-192f))) || true);
    return Struct_2(Struct_1(var_3.x, global0.b, !(!select(global0.b.yx, vec2<bool>(false, global0.b.x), false)), true), func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_4.b, var_4.b, true), vec2<bool>(true, var_0.x), false), var_0.x, Struct_1(_wgslsmith_f_op_f32(-2425f * global0.a), vec3<bool>(var_2, false, true), select(var_0.yy, var_4.b.yx, var_4.d), true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(1467f - 741f), global0.b, select(vec2<bool>(true, var_4.d), var_0.yy, true), var_4.d), !global0.d, Struct_1(_wgslsmith_f_op_f32(-1503f * 1751f), global0.b, vec2<bool>(true, true), var_2))), Struct_1(_wgslsmith_f_op_f32(min(-745f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-520f + global0.a), _wgslsmith_f_op_f32(global0.a + 932f), true)))), !select(select(vec3<bool>(var_2, true, true), var_4.b, true), select(global0.b, vec3<bool>(false, global0.d, var_0.x), vec3<bool>(var_0.x, true, false)), vec3<bool>(true, false, var_2)), vec2<bool>(any(vec3<bool>(var_2, var_4.c.x, var_4.d)), !(!global0.c.x)), true));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec2<bool> {
    global1 = ~_wgslsmith_div_vec4_u32(~select(vec4<u32>(global1.x, 0u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, global1.x, 20248u), vec4<bool>(false, arg_0.c.d, global0.d, arg_0.c.c.x)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global1.x, 68319u, u_input.a), vec4<u32>(global1.x, u_input.a, 1u, u_input.a)))) | ~(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global1.x, 38458u, 64126u), _wgslsmith_mod_vec4_u32(vec4<u32>(20269u, 148u, u_input.a, 15019u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))) & ~(~vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)));
    var var_0 = vec4<u32>(u_input.a, global1.x, max(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x)), vec2<u32>(134224u, 81849u)), global1.x), firstTrailingBit(7295u));
    var var_1 = global1.yy;
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-586f)) - _wgslsmith_f_op_f32(arg_0.c.a - arg_2)))))));
    var var_2 = arg_0;
    return global0.b.zz;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1917f)), _wgslsmith_f_op_f32(global3.x * 2772f), true | all(global0.b))), !select(select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.b, vec3<bool>(true, true, global0.b.x)), select(global0.b, global0.b, vec3<bool>(false, global0.c.x, true)), vec3<bool>(true, global0.d, global0.c.x)), !func_4(func_2(u_input.b.x), u_input.b.x, -1323f), -671f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.a, global3.x)), -886f))), !global0.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1271f)))), func_2(_wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(u_input.b.x, u_input.c, u_input.c) | u_input.b.xyx)).a.b, vec2<bool>(any(vec2<bool>(true, true)), ~u_input.b.x <= firstLeadingBit(u_input.c)), true));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) + _wgslsmith_div_f32(var_0.c.a, global3.x)))))));
    let var_2 = Struct_2(func_2(u_input.b.x).a, false, var_0.c);
    let var_3 = var_0.c;
    var_0 = func_2(-min(u_input.c, reverseBits(_wgslsmith_mult_i32(-50468i, 1i))));
    return _wgslsmith_f_op_f32(global3.x - var_1);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - 2589f), _wgslsmith_f_op_f32(f32(-1f) * -1622f)), vec3<bool>(!all(vec4<bool>(global0.c.x, true, false, global0.d)), arg_1.x, any(!vec2<bool>(true, arg_1.x))), arg_1.zz, any(arg_1.zz)), true, func_2(firstLeadingBit(countOneBits(-u_input.c))).c);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, max(i32(-1i) * -2147483647i, -6885i)), ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, u_input.c, 4187i, 37850i), vec4<i32>(1i, -3180i, u_input.c, u_input.b.x)), vec4<i32>(-2147483647i, u_input.b.x, u_input.c, 1i) ^ vec4<i32>(16728i, u_input.c, 0i, u_input.c))) << (_wgslsmith_mult_u32(global1.x, _wgslsmith_clamp_u32(1u, 0u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(54121u, 126769u, 8959u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), 1u, true))) % 32u);
    var_0 = u_input.b.x << ((_wgslsmith_clamp_u32(global1.x, ~(~32508u), global1.x) & global1.x) % 32u);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1314f);
    global1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~select(global1.zx, global1.xy, arg_1)), vec2<u32>(global1.x, select(67365u, 23512u, global0.d)) | ~vec2<u32>(4294967295u, 27626u)), _wgslsmith_dot_vec2_u32(min(~firstLeadingBit(vec2<u32>(u_input.a, 45534u)), ~_wgslsmith_add_vec2_u32(global1.wy, vec2<u32>(44750u, global1.x))), global1.wz), ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(global1.yx >> (vec2<u32>(4294967295u, 46246u) % vec2<u32>(32u)), vec2<u32>(1u, 33732u))), 4294967295u);
    return func_5(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(global1.x, u_input.a), ~global1.x), global1.wz)), vec3<bool>(arg_1, arg_0.a.c.x, arg_0.c.d & arg_0.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.a)) - -1194f)) * arg_0.c.a), _wgslsmith_f_op_f32(sign(global3.x))).c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    global2 = 111f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    let var_0 = _wgslsmith_add_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a, arg_3, 7789u)), _wgslsmith_div_vec4_u32(vec4<u32>(84976u, 0u, arg_3, arg_3), vec4<u32>(0u, arg_3, u_input.a, 28378u)), vec4<u32>(global1.x, arg_3, u_input.a, arg_3) & vec4<u32>(u_input.a, arg_3, arg_3, 0u))), abs(vec4<u32>(arg_3, _wgslsmith_div_u32(global1.x, 13574u), 57109u, arg_3)));
    var var_1 = func_6(func_5(89737u << (~arg_3 % 32u), !global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(ceil(global0.a))), false);
    var var_2 = ~_wgslsmith_mod_vec3_i32(u_input.b.ywx << (max(~global1.yzx, _wgslsmith_div_vec3_u32(vec3<u32>(20997u, u_input.a, 1u), vec3<u32>(u_input.a, 44715u, 1u))) % vec3<u32>(32u)), u_input.b.zzw);
    return Struct_2(Struct_1(-294f, arg_1.b, var_1.b.zx, true || (~global1.x < ~4294967295u)), any(func_2(reverseBits(i32(-1i) * -81432i)).a.b), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(520f * arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, var_1.a))))), select(!(!global0.b), vec3<bool>(arg_0.b.x, arg_1.b.x, true), any(var_1.b)), arg_1.b.zz, global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 24414u;
    var var_1 = func_7(func_6(func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25489u, u_input.a, 102739u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.x, 29053u, 4294967295u), vec4<u32>(7150u, u_input.a, u_input.a, 1u), vec4<u32>(global1.x, 54638u, 0u, global1.x))), !(!global0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.x, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(-922f, global0.a)))), true), func_6(func_5(firstTrailingBit(~u_input.a), !global0.b, -1000f, global0.a), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1402f), global3.x, -1300f)), abs(_wgslsmith_mult_u32(max(abs(u_input.a), u_input.a), u_input.a)));
    var var_2 = !global0.b;
    let var_3 = ~(-u_input.b);
    var var_4 = var_1.a;
    var var_5 = var_1.a;
    let var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-789f)) + -1917f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(-6458i).c.a)), -1876f));
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.b.x), _wgslsmith_f_op_f32(1006f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_6.x)))), -11227i, 1i ^ ~_wgslsmith_clamp_i32(var_3.x, min(-1i, var_3.x), ~(-1i)), abs(var_3.xz));
}

