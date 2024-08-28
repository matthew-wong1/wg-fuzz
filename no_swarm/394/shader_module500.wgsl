struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f * -764f));
    let var_1 = arg_2.b;
    var_0 = 561f;
    var var_2 = select(vec4<u32>(1u, _wgslsmith_add_u32(min(arg_3.b, ~var_1), var_1), _wgslsmith_mod_u32(~70079u, ~u_input.a.x), ~_wgslsmith_mod_u32(arg_3.b, 1u) << (select(abs(arg_2.b), arg_3.b, false) % 32u)), vec4<u32>(~var_1, arg_2.b, abs(abs(min(24811u, arg_2.b))), 3172u), true);
    let var_3 = Struct_2(-473f, select(!global0.xxw, !global0.zxz, global0.zwy), arg_2, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(710f, -1620f, arg_0) * vec3<f32>(arg_0, arg_0, -747f)))))));
    return _wgslsmith_f_op_f32(floor(-352f));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -512f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, var_0, -281f, var_0) - vec4<f32>(var_0, 1528f, -620f, var_0))), vec4<f32>(var_0, -1072f, _wgslsmith_f_op_f32(-2188f + var_0), _wgslsmith_f_op_f32(-2402f * var_0))))) - vec4<f32>(1291f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -630f), -398f));
    var var_2 = ~countOneBits(i32(-1i) * -2147483647i);
    var var_3 = min(-1i, firstTrailingBit(select(~(-1i) << ((u_input.a.x << (37485u % 32u)) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -24729i, 57377i), abs(vec3<i32>(-1i, 2492i, 29336i))), global0.x)));
    var var_4 = -(i32(-1i) * -62379i);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) * 1265f), abs(-2147483647i), Struct_1(1i, ~u_input.b), Struct_1(~(-2147483647i), ~u_input.b)))), !(!select(global0.xyy, select(vec3<bool>(global0.x, false, global0.x), global0.wzw, global0.wxz), true)), Struct_1(_wgslsmith_mult_i32(-21649i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -30018i))), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.a.x, 0u, 4294967295u)), countOneBits(~vec3<u32>(u_input.b, 1731u, 4294967295u)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.zxz, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -572f) * _wgslsmith_f_op_vec3_f32(var_1.xzw - var_1.wyw))), _wgslsmith_f_op_vec3_f32(max(var_1.xyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yzy) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -360f, 1000f))))))));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = Struct_4(func_2().b.zx, Struct_1(abs(1i) & var_0.c.a, var_0.c.b), _wgslsmith_f_op_vec3_f32(round(var_0.d)), -2147483647i, var_0);
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(max(4294967295u | var_1.e.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.c.b, var_1.e.c.b) & vec3<u32>(u_input.b, var_0.c.b, 0u), ~vec3<u32>(70423u, var_0.c.b, 17018u))), _wgslsmith_div_u32(u_input.a.x, var_1.b.b)), ~max(u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.b, u_input.b), u_input.a) >> (~vec2<u32>(var_0.c.b, 20680u) % vec2<u32>(32u))));
    var var_3 = var_0.c.b;
    var var_4 = 1u;
    return var_0.c.b & ((var_2.x << (firstTrailingBit(var_2.x) % 32u)) & select(0u, 0u, var_0.b.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = u_input.a;
    global0 = select(vec4<bool>(true, func_2().b.x | any(!vec4<bool>(global0.x, false, true, global0.x)), all(!vec3<bool>(global0.x, global0.x, global0.x)), true), select(vec4<bool>(global0.x && global0.x, global0.x, ~u_input.b == var_0.x, any(!vec4<bool>(false, global0.x, global0.x, global0.x))), !vec4<bool>(!global0.x, false, true, false), !select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x))), !select(!vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(true, false, false, global0.x)));
    global0 = select(select(!select(select(vec4<bool>(global0.x, true, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, true, global0.x, true)), any(vec4<bool>(false, global0.x, global0.x, true))), !select(vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(select(global0.xzx, !global0.zxw, true))), select(!vec4<bool>(global0.x, any(global0.zwz), global0.x, global0.x), select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(any(vec4<bool>(global0.x, false, global0.x, global0.x)), true, false, all(vec2<bool>(global0.x, true))), vec4<bool>(global0.x && true, false, all(vec4<bool>(true, true, global0.x, global0.x)), false)), select(vec4<bool>(global0.x, !global0.x, any(global0.yy), global0.x), vec4<bool>(all(vec4<bool>(true, global0.x, global0.x, true)), true, global0.x, 0u == u_input.a.x), true)), select(!vec4<bool>(arg_0.x == -9385i, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, all(global0.xzw), true), !func_2().b.x));
    return Struct_2(_wgslsmith_f_op_f32(-2445f + _wgslsmith_div_f32(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1324f - -910f)))), global0.yyz, Struct_1(-arg_1.a, 1u << (u_input.a.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f * 1835f) + _wgslsmith_f_op_f32(f32(-1f) * -378f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) * _wgslsmith_f_op_f32(-344f * _wgslsmith_div_f32(141f, 320f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(479f))) * 140f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(global0.x && true, true, true), select(select(!select(global0.wzz, vec3<bool>(false, global0.x, global0.x), global0.x), vec3<bool>(!global0.x, global0.x, !global0.x), _wgslsmith_f_op_f32(ceil(410f)) < _wgslsmith_f_op_f32(abs(-660f))), vec3<bool>(global0.x, !all(vec4<bool>(global0.x, global0.x, global0.x, false)), global0.x), !vec3<bool>(global0.x, !global0.x, any(vec2<bool>(global0.x, true)))), global0.x);
    var var_1 = ~11402u;
    var var_2 = func_4(-max(vec2<i32>(0i, -44407i), min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-35563i, -1i))) >> (~(~(~u_input.a)) % vec2<u32>(32u)), Struct_1(~0i, reverseBits(_wgslsmith_clamp_u32(2502u, 43064u, func_1()))));
    var var_3 = vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 13140u, u_input.b), vec3<u32>(u_input.a.x, 1u, 1u)), vec3<u32>(1u, var_2.c.b, min(0u, u_input.a.x))), u_input.a.x));
    let var_4 = Struct_3(vec4<i32>(var_2.c.a, abs(-22571i), var_2.c.a, 7193i) | vec4<i32>(var_2.c.a, -40595i, var_2.c.a, _wgslsmith_add_i32(1i, -var_2.c.a)));
    let var_5 = -(~var_2.c.a);
    let var_6 = _wgslsmith_mod_i32(min(func_4(reverseBits(vec2<i32>(0i, var_4.a.x)), Struct_1(-29938i, 10275u)).c.a >> (~(~14632u) % 32u), -2147483647i), _wgslsmith_add_i32(1i, -1i));
    let var_7 = Struct_4(select(global0.zy, var_0.xx, false), Struct_1(var_2.c.a, 0u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.d.x, 1000f), _wgslsmith_f_op_f32(750f + var_2.a), _wgslsmith_f_op_f32(1000f * var_2.a)) + var_2.d))), ~(-(~var_4.a.x)), Struct_2(_wgslsmith_f_op_f32(sign(func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(-35264i, 52514i), var_4.a.ww), Struct_1(var_2.c.a, 0u)).d.x)), vec3<bool>(false, true, func_4(reverseBits(vec2<i32>(var_4.a.x, var_2.c.a)), Struct_1(var_5, var_2.c.b)).b.x), Struct_1(_wgslsmith_mult_i32(var_5 << (var_2.c.b % 32u), 2147483647i), select(func_4(vec2<i32>(var_4.a.x, var_6), var_2.c).c.b, ~4294967295u, func_2().b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b, var_7.e.d.zz);
}

