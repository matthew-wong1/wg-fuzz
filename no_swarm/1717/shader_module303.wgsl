struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = Struct_3(arg_0.a);
    let var_1 = vec4<bool>(any(select(select(!global0.xx, select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, false)), any(vec4<bool>(global0.x, global0.x, true, global1.x))), vec2<bool>(false, global0.x & false), vec2<bool>(true, true))), global1.x, any(vec3<bool>(true, global1.x, select(all(vec2<bool>(global1.x, global0.x)), false, false))), false);
    let var_2 = ~23641u;
    let var_3 = ~_wgslsmith_div_u32(max(var_2, ~21335u), u_input.a);
    global0 = vec4<bool>(((!global1.x & all(vec2<bool>(global0.x, global1.x))) & global0.x) | all(vec4<bool>(all(var_1.zz), true, false, arg_0.a.x > 34779i)), global0.x, true, false);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2085f, 232f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1463f, 148f, 1000f) + vec3<f32>(931f, 1313f, -1863f)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1018f - 759f)) + -1341f), 116f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2078f, -222f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -357f))), global1.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), vec2<i32>(-73445i, arg_0.x)), -1i, max(48409i, -35112i)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 0i, 0i), arg_0.zwy), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 0i, -1i), arg_0.xxw)), -1i | _wgslsmith_div_i32(arg_1.x, arg_0.x), arg_1.x, ~(arg_1.x << (88453u % 32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, var_0, arg_0.x), abs(arg_0.xzx))))));
    global1 = !(!(!(!global0.zw)));
    var var_2 = Struct_3(abs(min(arg_1.zyz, select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, 1605i, -1i), arg_0.xxw), abs(arg_0.wyw), global0.ywx))));
    let var_3 = Struct_2(Struct_1(~(~(~vec3<u32>(u_input.a, u_input.a, 35384u))), ~(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, 1u)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(53728u, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-681f, arg_2.x, 1184f, arg_3.x)))))), select(vec3<bool>(true, global0.x && global1.x, global1.x), select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, global1.x, global0.x), global0.yxz, vec3<bool>(global0.x, global1.x, false)), vec3<bool>(false, global0.x, false)), true || (var_2.a.x == -46848i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3), vec2<f32>(-1273f, arg_2.x)))), all(vec4<bool>(true, !global0.x, -438f > var_1.x, true)) & (true && select(global1.x | global0.x, !global1.x, true)), !global1.x, Struct_1(vec3<u32>(~(~u_input.a), ~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 51564u, u_input.a, u_input.a), abs(vec4<u32>(0u, 4294967295u, 25386u, 1u)))), ~abs(vec2<u32>(4294967295u, u_input.a)) ^ vec2<u32>(select(1421u, u_input.a, true), _wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, var_1.x, arg_3.x, arg_3.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, 1511f, -1074f, 1863f), vec4<f32>(var_1.x, 174f, arg_2.x, 161f))))) * vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * -1439f), arg_3.x, _wgslsmith_f_op_f32(901f - -863f), _wgslsmith_f_op_f32(exp2(var_1.x)))), !select(select(global0.ywz, vec3<bool>(global1.x, true, true), global0.yzz), select(vec3<bool>(false, true, false), vec3<bool>(true, true, global1.x), global0.zzx), !global0.wzz), var_1.xx), true);
    return var_3.d.b;
}

fn func_1() -> Struct_4 {
    global1 = global0.yy;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1195f);
    let var_1 = select((abs(reverseBits(vec2<u32>(u_input.a, 1u))) & ~(~vec2<u32>(4294967295u, u_input.a))) & ~(~vec2<u32>(u_input.a, 4294967295u) >> (~vec2<u32>(34680u, u_input.a) % vec2<u32>(32u))), firstTrailingBit(func_2(-vec4<i32>(2147483647i, -2147483647i, -961i, -46171i), ~vec4<i32>(14662i, -1i, 2147483647i, -43443i), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -104f, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1209f, 917f, var_0) - vec3<f32>(1000f, var_0, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1810f, 1895f))))), vec2<bool>(select(global1.x, false, all(vec3<bool>(global1.x, global1.x, global0.x))) | false, global1.x & global1.x));
    let var_2 = _wgslsmith_mult_u32(var_1.x & min(_wgslsmith_add_u32(~7001u, firstLeadingBit(u_input.a)), min(~33331u, _wgslsmith_sub_u32(var_1.x, 4294967295u))), u_input.a);
    var var_3 = 1u;
    return Struct_4(Struct_3(vec3<i32>(-(-43569i << (var_1.x % 32u)), select(1i, max(0i, 24940i), !global1.x), _wgslsmith_sub_i32(-1i, 19416i))), 34793i, _wgslsmith_div_u32(var_1.x, ~1u) >> (var_2 % 32u), Struct_1(vec3<u32>(_wgslsmith_sub_u32(~0u, 1u), func_2(~vec4<i32>(1i, 1i, -43624i, -3224i), abs(vec4<i32>(-2147483647i, 1110i, -1i, 5309i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 512f), vec2<f32>(var_0, var_0)))).x, 0u), var_1, vec4<f32>(_wgslsmith_f_op_f32(817f + _wgslsmith_f_op_f32(var_0 - -1629f)), -381f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0)))), var_0), !vec3<bool>(global1.x & true, global0.x, all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(149f, var_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), true))), ~vec2<u32>(29370u, ~91419u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = -727f;
    let var_1 = arg_1.e;
    let var_2 = arg_1.a.a;
    let var_3 = global0.x;
    var var_4 = arg_1.a;
    return func_1().d;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_1().d;
    var var_1 = var_0.e.x;
    global0 = vec4<bool>(false, true, all(var_0.d.zx), func_4(func_1(), Struct_4(Struct_3(vec3<i32>(1i, 1i, 1i)), 68876i, _wgslsmith_clamp_u32(0u, arg_1.d.b.x, arg_1.a.b.x), arg_1.a, vec2<u32>(arg_1.d.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 1u, u_input.a), arg_1.a.a))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(arg_1.a.c)), vec4<f32>(201f, _wgslsmith_f_op_f32(1179f - 689f), _wgslsmith_f_op_f32(-arg_0), 990f))), vec2<f32>(-1681f, func_4(Struct_4(Struct_3(vec3<i32>(-2147483647i, 2147483647i, -1i)), 17248i, 54935u, Struct_1(arg_1.a.a, vec2<u32>(4294967295u, arg_1.a.b.x), vec4<f32>(-491f, arg_1.d.e.x, var_0.c.x, -351f), vec3<bool>(true, false, false), var_0.e), vec2<u32>(1u, u_input.a)), Struct_4(Struct_3(vec3<i32>(-1i, -15961i, -1i)), -1i, var_0.b.x, Struct_1(var_0.a, vec2<u32>(arg_1.d.a.x, 0u), var_0.c, vec3<bool>(false, true, true), var_0.c.yz), vec2<u32>(var_0.a.x, arg_1.a.a.x)), var_0.c, vec2<f32>(476f, var_0.c.x)).c.x)).d.x);
    let var_2 = arg_1;
    let var_3 = var_2;
    return Struct_1(~(vec3<u32>(~12576u, firstTrailingBit(5194u), var_0.a.x) << ((var_0.a ^ vec3<u32>(69392u, arg_1.d.b.x, var_0.a.x)) % vec3<u32>(32u))), ~vec2<u32>(var_0.b.x, abs(~arg_1.a.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), var_2.a.e.x), !(!select(func_1().d.d, vec3<bool>(true, true, true), arg_0 > arg_1.d.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), var_3.d.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.d.e * var_3.a.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2202f - _wgslsmith_f_op_f32(-1000f * -2072f)))), Struct_2(func_4(func_1(), Struct_4(Struct_3(vec3<i32>(1i, -60449i, 1i)), -41001i, 0u, Struct_1(vec3<u32>(u_input.a, 35317u, 68116u), vec2<u32>(35305u, u_input.a), vec4<f32>(-573f, -528f, 544f, 103f), vec3<bool>(false, true, false), vec2<f32>(-522f, -204f)), vec2<u32>(0u, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -922f, -497f, -469f) + vec4<f32>(189f, -1875f, -672f, -370f)), vec2<f32>(-276f, -903f)), global0.x, false, func_1().d, !(!global1.x))), global0.x || true, true, func_5(1f, Struct_2(func_1().d, global1.x, true, Struct_1(func_1().d.a, func_4(Struct_4(Struct_3(vec3<i32>(2147483647i, 28124i, -1i)), 25160i, 44015u, Struct_1(vec3<u32>(u_input.a, 4294967295u, 1u), vec2<u32>(75370u, 4294967295u), vec4<f32>(-388f, -1543f, 275f, 702f), global0.zzy, vec2<f32>(638f, -1844f)), vec2<u32>(48694u, 1u)), Struct_4(Struct_3(vec3<i32>(11356i, 28923i, 33172i)), -2147483647i, 0u, Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u), vec4<f32>(-1815f, 172f, 1008f, 1000f), global0.xwx, vec2<f32>(-1375f, 2923f)), vec2<u32>(1u, u_input.a)), vec4<f32>(-830f, -253f, -1251f, 901f), vec2<f32>(-1000f, -1000f)).a.zz, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -441f, 151f, -543f))), global0.yyx, vec2<f32>(-272f, 904f)), true)), func_4(func_1(), func_1(), vec4<f32>(1685f, -994f, _wgslsmith_f_op_f32(-1461f + 875f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-328f, 899f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 182f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1188f, 516f)))).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.e.x)) - var_0.d.e.x), ~62982i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(firstLeadingBit(vec3<i32>(0i, -65638i, -2147483647i))))).xy, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + var_0.d.c.x)), var_0).c.wx)));
}

