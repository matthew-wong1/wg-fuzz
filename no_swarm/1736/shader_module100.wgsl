struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * -137f)) + arg_0.c.a), 1u);
    let var_1 = Struct_4(_wgslsmith_mult_vec2_i32(-abs(abs(vec2<i32>(arg_0.b.b.x, arg_0.b.e))), vec2<i32>(15976i, u_input.d)), arg_0.e.a);
    var var_2 = ~(-36153i);
    let var_3 = var_0;
    var_2 = -2147483647i;
    return -(~min(-24463i, abs(var_1.a.x)) ^ u_input.d);
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, ~_wgslsmith_sub_i32(-50417i, u_input.e), -func_3(Struct_3(true, Struct_1(1910u, vec3<i32>(u_input.e, u_input.d, -1i), u_input.e, vec4<bool>(true, true, false, false), -1i), Struct_2(vec2<f32>(-2175f, 1000f), u_input.b), vec2<bool>(true, false), Struct_2(vec2<f32>(1811f, -267f), 4294967295u)), 1703f), ~1i), -vec4<i32>(2147483647i >> (u_input.b % 32u), func_3(Struct_3(false, Struct_1(u_input.c, vec3<i32>(19607i, -23641i, u_input.d), u_input.d, vec4<bool>(false, false, false, false), u_input.e), Struct_2(vec2<f32>(-123f, -222f), 1u), vec2<bool>(true, false), Struct_2(vec2<f32>(1656f, -466f), u_input.b)), 751f), u_input.e, u_input.e));
    let var_1 = Struct_5(false, 3191i, -140f);
    let var_2 = vec3<bool>(true, false, all(vec4<bool>(select(var_1.a, u_input.e >= 2147483647i, true || var_1.a), select(var_1.a, var_1.a, !var_1.a), true, select(false, true, var_1.a))));
    let var_3 = Struct_5(true, -11517i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c))) * -789f));
    let var_4 = Struct_1(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(63165u, 4294967295u), ~u_input.a.wy)), vec3<i32>(_wgslsmith_add_i32(-40571i, -5262i) & (27939i | var_0), -select(-141i, var_3.b, true), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.b, var_1.b), _wgslsmith_mult_i32(var_0, u_input.d))) >> (firstTrailingBit(u_input.a.xyz >> (~u_input.a.wyy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(0i, var_3.b, var_0)), firstTrailingBit(vec3<i32>(var_1.b, 2147483647i, u_input.e))), ~(-var_1.b), func_3(Struct_3(var_1.a, Struct_1(u_input.b, vec3<i32>(-45868i, 33171i, u_input.e), var_1.b, vec4<bool>(var_2.x, false, var_2.x, false), 2147483647i), Struct_2(vec2<f32>(-1785f, 597f), u_input.a.x), var_2.zz, Struct_2(vec2<f32>(-2181f, var_3.c), 30765u)), var_3.c)), vec4<bool>(!all(select(var_2, var_2, true)), any(vec4<bool>(var_2.x, !var_3.a, var_2.x, var_2.x)), select(false && !var_2.x, any(vec4<bool>(true, var_3.a, true, false)) & !var_1.a, any(var_2.xx)), var_3.a), -(-16072i & (_wgslsmith_sub_i32(u_input.e, -2147483647i) << ((1u >> (0u % 32u)) % 32u))));
    return 1u;
}

fn func_1() -> Struct_3 {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), vec3<bool>(false, u_input.e >= u_input.e, any(vec4<bool>(true, true, false, true)))));
    let var_1 = Struct_1(~func_2(), firstTrailingBit(-vec3<i32>(u_input.e, _wgslsmith_mult_i32(1i, 2788i), u_input.e)), 1i, vec4<bool>(all(select(select(vec2<bool>(var_0.x, false), var_0.zx, vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), var_0.x), !var_0.x)), true == all(vec2<bool>(false, var_0.x)), select(!all(vec4<bool>(false, false, false, true)), var_0.x, !var_0.x), false != (max(u_input.b, u_input.b) > u_input.b)), abs(u_input.e));
    let var_2 = firstTrailingBit(u_input.a);
    var var_3 = var_0.x;
    let var_4 = 1u;
    return Struct_3(false, Struct_1(4294967295u, vec3<i32>(var_1.b.x, select(1i, -4032i, var_0.x), var_1.e), -(select(-9884i, -14962i, var_1.d.x) & min(-2289i, u_input.d)), vec4<bool>(!all(var_0.yx), !all(vec3<bool>(true, var_0.x, var_0.x)), any(var_1.d.zw), 1u >= _wgslsmith_mod_u32(var_1.a, 1u)), firstTrailingBit(u_input.d)), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-501f + -573f), 1926f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(791f, -773f), vec2<f32>(-1237f, 843f)) * vec2<f32>(-1533f, 492f)))), _wgslsmith_div_u32(27885u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(var_2.yz, var_2.yw))), select(!select(select(vec2<bool>(false, false), var_0.zz, vec2<bool>(false, var_0.x)), select(var_0.xy, vec2<bool>(true, var_1.d.x), vec2<bool>(var_1.d.x, var_0.x)), var_1.d.x & false), vec2<bool>(true, false || !var_0.x), !select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), var_1.d.x), var_1.d.yw, !vec2<bool>(var_1.d.x, true))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1371f, 600f), vec2<f32>(-769f, 1000f))) * vec2<f32>(-1353f, 1000f))), 0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = func_1();
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = vec4<i32>(0i, i32(-1i) * -15909i, i32(-1i) * -32845i, arg_1.b.b.x);
    let var_2 = u_input.a;
    return vec4<f32>(arg_1.c.a.x, _wgslsmith_f_op_f32(-func_1().e.a.x), _wgslsmith_div_f32(451f, -472f), arg_0.a.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_add_vec4_i32(-(vec4<i32>(-u_input.d, _wgslsmith_clamp_i32(arg_2.b.e, arg_2.b.b.x, 13651i), arg_2.b.e, -1i) << (~vec4<u32>(1u, arg_3.x, 1u, arg_2.c.b) % vec4<u32>(32u))), ~abs(max(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b.e, 1i, -1i, 30331i), vec4<i32>(64842i, u_input.d, arg_2.b.e, u_input.e)), -vec4<i32>(-2147483647i, arg_2.b.c, u_input.e, -80388i))));
    let var_1 = firstLeadingBit(arg_3.xxx);
    var var_2 = Struct_4(var_0.yx, vec2<f32>(arg_2.e.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-412f, _wgslsmith_f_op_f32(step(arg_0.x, arg_1.x))))))));
    var_2 = Struct_4(vec2<i32>(firstLeadingBit(abs(49468i)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(0i, var_2.a.x)), var_0.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_2.e, arg_2)).wz * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(529f, -422f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b.x, arg_0.x)))))));
    var_2 = Struct_4(-select(arg_2.b.b.xx, abs(vec2<i32>(-6893i, u_input.d) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), vec2<bool>(any(vec2<bool>(arg_2.a, arg_2.d.x)), !arg_2.b.d.x)), arg_0);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + _wgslsmith_f_op_f32(arg_1.x * arg_2.e.a.x))) - _wgslsmith_f_op_f32(max(arg_2.e.a.x, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_vec4_f32(func_4(arg_2.e, arg_2)).x))))), _wgslsmith_f_op_f32(f32(-1f) * -1395f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, _wgslsmith_f_op_f32(-100f + -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec2<f32>(-1708f, 1765f), u_input.b), func_1())) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1150f, -650f, 510f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(537f, -1293f, -558f, -1707f) + vec4<f32>(1000f, 1000f, -2162f, 1623f)), vec4<bool>(true, false, true, false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -115f), 441f, 1251f))), func_1(), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 1u), vec4<u32>(u_input.c, u_input.b, 1u, 5384u)) >> (select(min(u_input.a, select(u_input.a, vec4<u32>(1u, 33936u, u_input.a.x, u_input.b), vec4<bool>(false, false, false, true))), u_input.a, true) % vec4<u32>(32u)));
}

