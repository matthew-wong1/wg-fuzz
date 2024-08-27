struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<u32>(55273u, 76067u), 1i, vec3<f32>(520f, -620f, 284f), 24011u, Struct_1(4294967295u, vec3<f32>(-446f, -503f, 1072f), vec2<f32>(1665f, -992f))), Struct_2(vec2<u32>(7140u, 34746u), 0i, vec3<f32>(1245f, 246f, 627f), 0u, Struct_1(4294967295u, vec3<f32>(-1355f, 1000f, -964f), vec2<f32>(604f, -130f))), Struct_2(vec2<u32>(4294967295u, 23850u), 55207i, vec3<f32>(2136f, 1191f, -956f), 0u, Struct_1(4294967295u, vec3<f32>(113f, -668f, -507f), vec2<f32>(1403f, 628f))), Struct_2(vec2<u32>(4294967295u, 16896u), -31050i, vec3<f32>(-1219f, -1544f, -1079f), 0u, Struct_1(62963u, vec3<f32>(-706f, -624f, -1000f), vec2<f32>(219f, 433f))), Struct_2(vec2<u32>(7229u, 14251u), -1i, vec3<f32>(655f, -466f, -212f), 33499u, Struct_1(40447u, vec3<f32>(-1076f, 322f, 763f), vec2<f32>(-1000f, 357f))), Struct_2(vec2<u32>(1u, 1u), -1i, vec3<f32>(-694f, -1940f, 289f), 0u, Struct_1(7117u, vec3<f32>(1351f, 192f, -764f), vec2<f32>(1000f, -1618f))), Struct_2(vec2<u32>(36647u, 0u), -1i, vec3<f32>(-1000f, 1641f, 421f), 40618u, Struct_1(4294967295u, vec3<f32>(482f, -409f, 155f), vec2<f32>(-757f, -1000f))), Struct_2(vec2<u32>(0u, 1u), 1i, vec3<f32>(2853f, 1450f, -2499f), 4294967295u, Struct_1(35892u, vec3<f32>(1000f, -810f, -368f), vec2<f32>(220f, 1070f))), Struct_2(vec2<u32>(60856u, 1u), 1i, vec3<f32>(1000f, 250f, 732f), 4294967295u, Struct_1(1u, vec3<f32>(-338f, -2699f, 1000f), vec2<f32>(248f, 910f))), Struct_2(vec2<u32>(23833u, 4294967295u), -6234i, vec3<f32>(-1000f, 2130f, -1000f), 4294967295u, Struct_1(16742u, vec3<f32>(-999f, -263f, 1259f), vec2<f32>(976f, 332f))), Struct_2(vec2<u32>(28439u, 4294967295u), 3256i, vec3<f32>(-168f, -1726f, -1000f), 1u, Struct_1(1u, vec3<f32>(-796f, -1192f, -272f), vec2<f32>(-757f, -1000f))), Struct_2(vec2<u32>(16777u, 0u), 22815i, vec3<f32>(780f, -580f, 182f), 9084u, Struct_1(5350u, vec3<f32>(-404f, -289f, 1612f), vec2<f32>(-790f, 577f))), Struct_2(vec2<u32>(0u, 12079u), -14858i, vec3<f32>(-426f, 265f, 562f), 36424u, Struct_1(0u, vec3<f32>(551f, 405f, -809f), vec2<f32>(1366f, 702f))), Struct_2(vec2<u32>(53922u, 32342u), 23549i, vec3<f32>(-187f, -506f, -1142f), 0u, Struct_1(14165u, vec3<f32>(375f, 1607f, 1601f), vec2<f32>(-624f, -568f))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mod_vec2_u32((vec2<u32>(u_input.a, 111924u) | vec2<u32>(0u, u_input.d.x)) << (reverseBits(u_input.d.zy) % vec2<u32>(32u)), u_input.d.xx), u_input.b.x, vec3<f32>(466f, -845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * -861f))), u_input.d.x, Struct_1(37608u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2071f, 558f, -1000f) + vec3<f32>(-186f, 1413f, -196f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1257f, 247f, -304f) * vec3<f32>(-474f, -1370f, 653f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(177f, -752f))), vec2<f32>(375f, 838f))))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(u_input.a, 55372u)), u_input.d.zy), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(266f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-201f + _wgslsmith_f_op_f32(-778f + 203f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(977f, 2748f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(189f, -515f))))), vec3<bool>(true, true, true), vec2<bool>(u_input.d.x > u_input.d.x, true));
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var_0 = Struct_3(global0[_wgslsmith_index_u32(883u, 14u)], Struct_1(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(var_0.a.c.x * -1642f), _wgslsmith_f_op_f32(var_0.a.e.c.x + -1307f)) + vec3<f32>(215f, _wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(var_0.b.b.x * var_0.b.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.c.yy) * var_0.b.c) + _wgslsmith_f_op_vec2_f32(-var_0.a.e.c))), select(var_0.c, select(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.c.x), var_0.c, true), all(vec4<bool>(var_0.c.x, true, var_0.d.x, var_0.d.x))), vec2<bool>(false, !any(vec3<bool>(true, true, true))));
    var var_1 = var_0.a;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * _wgslsmith_div_f32(-317f, var_0.a.e.b.x)) + var_0.b.c.x)), var_0.b.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(667f, 1070f, arg_3.e.b.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1784f, arg_3.e.c.x, arg_1.x, -613f)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1773f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.c.x)) + 1000f), _wgslsmith_f_op_f32(arg_3.e.c.x - 277f), -1050f)));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(317f, arg_3.e.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2195f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1559f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1000f) + arg_3.e.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(-452f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(arg_1.x)))))));
    var var_1 = select(!select(vec2<bool>(true, arg_3.e.a == 67339u), vec2<bool>(true, true), true), vec2<bool>(true, select(all(vec2<bool>(true, true)), true, true)), vec2<bool>(!all(vec4<bool>(true, true, false, true)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))));
    var_1 = !select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), var_1.x)), vec2<bool>(true, _wgslsmith_f_op_vec2_f32(func_3()).x > var_0.x), vec2<bool>(false, all(!vec2<bool>(false, var_1.x))));
    var var_2 = all(vec3<bool>(var_1.x, var_1.x, true)) != all(select(select(select(vec2<bool>(false, false), vec2<bool>(var_1.x, false), var_1.x), vec2<bool>(true, true), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x))), vec2<bool>(select(true, true, true), false), all(vec2<bool>(true, true))));
    return 969f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -381f);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - _wgslsmith_f_op_f32(2531f * arg_3.c.x))) * arg_2.x), _wgslsmith_div_f32(arg_2.x, arg_3.e.b.x), _wgslsmith_f_op_f32(func_4(select(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(0u, arg_3.a.x, 17648u)), _wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(4294967295u, arg_3.a.x, arg_3.d)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, arg_3.a.x, 1u), vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u)), select(select(vec3<bool>(true, true, var_0), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, true), var_0), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec2_f32(arg_3.e.b.xy * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.c.x, arg_3.e.b.x))), true))), u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~min(1u, arg_3.d)), 14u)])));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(~(~(~60300u)) << (~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_0.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.a.a.x), vec2<u32>(arg_0.a.d, 90930u))) % 32u), u_input.d.x);
    global0 = array<Struct_2, 14>();
    let var_1 = select(!select(!arg_0.d, arg_0.d, arg_0.c.x), arg_0.c.yy, vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var_0 = _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(max(countOneBits(vec3<u32>(14038u, arg_0.a.e.a, u_input.a)), ~min(u_input.d, vec3<u32>(u_input.a, arg_0.b.a, 1u))), _wgslsmith_clamp_vec3_u32(~(~u_input.d), u_input.d, abs(~u_input.d))));
    var var_2 = Struct_2(vec2<u32>(~arg_0.b.a, 4294967295u >> (0u % 32u)), arg_0.a.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.c - vec3<f32>(-1570f, -1000f, arg_0.a.e.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-474f, _wgslsmith_f_op_f32(-arg_0.a.e.c.x), arg_0.b.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, -1407f, arg_0.a.e.b.x))))), ~1u, arg_0.a.e);
    return Struct_3(global0[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(4294967295u, ~55798u), 0u), 14u)], Struct_1(firstTrailingBit(u_input.a & abs(5296u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.e.b.xx), var_2.c.zz, var_1)), arg_0.a.c.yz)), select(vec3<bool>(any(!vec4<bool>(arg_0.c.x, arg_0.d.x, false, false)), false, any(!var_1)), select(select(vec3<bool>(false, arg_0.d.x, arg_0.c.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, false, false)), !arg_0.c, select(arg_0.c, select(arg_0.c, vec3<bool>(false, true, var_1.x), arg_0.c), true)), (_wgslsmith_mod_i32(u_input.c, arg_0.a.b) >= 59756i) & true), arg_0.c.zy);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = func_5(func_5(arg_0, abs(~vec4<i32>(2646i, -45639i, 1i, arg_1.b))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~min(vec4<i32>(arg_1.b, arg_1.b, arg_0.a.b, arg_0.a.b), vec4<i32>(23001i, arg_0.a.b, arg_1.b, u_input.c)), firstLeadingBit(vec4<i32>(231i, arg_0.a.b, arg_1.b, -1i)) >> (vec4<u32>(arg_0.a.e.a, 0u, 16753u, 27703u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, -1i, -1737i, arg_0.a.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.c), vec4<i32>(0i, 55424i, 2147483647i, -12348i), vec4<i32>(arg_0.a.b, -32170i, u_input.b.x, arg_1.b))))).a.e;
    global0 = array<Struct_2, 14>();
    let var_1 = arg_0;
    let var_2 = 1u;
    let var_3 = arg_0;
    return func_5(var_3, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, var_3.a.b), _wgslsmith_mod_i32(6102i, 12009i), ~7101i, -2147483647i), firstTrailingBit(vec4<i32>(var_1.a.b, 0i, arg_1.b, var_3.a.b))), ~select(vec4<i32>(-18147i, -1704i, arg_0.a.b, arg_0.a.b), vec4<i32>(-1i, 1i, 2147483647i, 0i), vec4<bool>(arg_0.d.x, true, false, true))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(firstTrailingBit(82202u), _wgslsmith_f_op_vec3_f32(vec3<f32>(590f, _wgslsmith_f_op_f32(arg_0.e.c.x * arg_0.e.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)) + arg_0.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e.b.x), 889f, all(vec3<bool>(false, false, true))))), 688f));
    var var_1 = ~(var_0.a & (4294967295u << ((select(4294967295u, 41133u, false) & arg_0.a.x) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1113f);
    var var_3 = func_6(func_5(Struct_3(global0[_wgslsmith_index_u32(arg_0.e.a, 14u)], Struct_1(arg_0.a.x << (3755u % 32u), _wgslsmith_f_op_vec3_f32(func_2(u_input.b, u_input.b, arg_0.e.b, arg_0)), _wgslsmith_f_op_vec2_f32(arg_0.c.xy - vec2<f32>(var_2, var_2))), vec3<bool>(any(vec3<bool>(true, true, true)), true, var_0.a < var_0.a), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec4<bool>(false, false, true, true)))), -(min(vec4<i32>(-2147483647i, 9272i, u_input.b.x, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, 1i)) >> (vec4<u32>(57088u, 64487u, var_0.a, arg_0.d) % vec4<u32>(32u)))), arg_0);
    global0 = array<Struct_2, 14>();
    return Struct_3(func_6(func_6(func_6(func_6(Struct_3(Struct_2(u_input.d.xz, 1324i, var_0.b, u_input.a, Struct_1(arg_0.a.x, vec3<f32>(-832f, arg_0.e.c.x, -448f), vec2<f32>(-1000f, var_3.a.e.c.x))), arg_0.e, var_3.c, var_3.c.yy), arg_0), Struct_2(var_3.a.a, var_3.a.b, vec3<f32>(-939f, 431f, 949f), var_0.a, Struct_1(var_0.a, arg_0.c, vec2<f32>(-470f, -587f)))), func_6(Struct_3(global0[_wgslsmith_index_u32(var_3.b.a, 14u)], Struct_1(71206u, vec3<f32>(var_3.a.c.x, arg_0.c.x, arg_0.e.c.x), vec2<f32>(905f, -445f)), var_3.c, var_3.d), var_3.a).a), var_3.a).a, arg_0.e, select(vec3<bool>(any(func_5(Struct_3(var_3.a, Struct_1(59331u, var_3.a.e.b, var_0.c), var_3.c, var_3.d), vec4<i32>(u_input.b.x, u_input.c, 2860i, u_input.b.x)).d), func_5(func_5(Struct_3(Struct_2(vec2<u32>(0u, 37522u), -10123i, arg_0.c, var_0.a, var_3.a.e), arg_0.e, var_3.c, vec2<bool>(var_3.d.x, true)), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, var_3.a.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -1i, 2147483647i, 2147483647i), vec4<i32>(u_input.b.x, -1i, -1i, var_3.a.b))).d.x, true), !var_3.c, !(!(!var_3.c))), vec2<bool>(!var_3.d.x || func_6(func_6(Struct_3(Struct_2(var_3.a.a, 2147483647i, vec3<f32>(var_0.b.x, 2310f, -1065f), u_input.d.x, Struct_1(51371u, vec3<f32>(var_0.c.x, var_2, arg_0.c.x), var_3.a.c.xz)), Struct_1(var_3.b.a, vec3<f32>(arg_0.e.c.x, arg_0.e.c.x, 503f), vec2<f32>(-491f, var_2)), var_3.c, vec2<bool>(var_3.c.x, false)), var_3.a), arg_0).c.x, var_3.d.x));
}

fn func_7(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = vec3<i32>(-(select(-16056i, arg_0.a.b, arg_0.d.x) >> (abs(1u) % 32u)), 1i | arg_3.a.b, -27641i);
    global0 = array<Struct_2, 14>();
    let var_1 = func_5(func_1(Struct_2(select(func_1(arg_0.a).a.a, vec2<u32>(42220u, arg_3.a.a.x), !vec2<bool>(false, arg_3.d.x)), func_5(Struct_3(Struct_2(vec2<u32>(arg_2, 0u), 61464i, vec3<f32>(arg_0.b.c.x, 583f, 946f), u_input.a, arg_3.b), arg_3.a.e, arg_3.c, vec2<bool>(true, arg_0.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.a.b, -675i, arg_0.a.b, 2147483647i), vec4<i32>(u_input.c, u_input.c, arg_1.x, -20269i))).a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, arg_0.a.e.b.x, 488f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.a.e.c.x, 1066f, arg_3.b.b.x)))), _wgslsmith_mult_u32(func_5(arg_0, vec4<i32>(-56730i, -2147483647i, var_0.x, arg_3.a.b)).a.d, firstTrailingBit(arg_0.b.a)), func_1(Struct_2(arg_3.a.a, -26178i, vec3<f32>(arg_0.b.b.x, 517f, arg_0.b.c.x), 46841u, Struct_1(arg_3.a.e.a, vec3<f32>(-1121f, arg_3.b.b.x, -1166f), vec2<f32>(arg_0.a.c.x, -1371f)))).b)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(func_5(Struct_3(Struct_2(vec2<u32>(4294967295u, 0u), 0i, arg_3.b.b, arg_0.a.d, arg_0.b), arg_0.a.e, arg_3.c, vec2<bool>(arg_3.c.x, arg_3.c.x)), vec4<i32>(9942i, arg_3.a.b, -24920i, arg_3.a.b)).a.b, _wgslsmith_div_i32(-2147483647i, 1i)), ~firstLeadingBit(1i)), _wgslsmith_mod_i32(-1i, arg_1.x), 1i, arg_3.a.b)).c.yx;
    let var_2 = vec4<i32>(arg_0.a.b, ~31994i, abs(~_wgslsmith_div_i32(func_6(arg_3, Struct_2(arg_3.a.a, -27934i, arg_0.b.b, 24275u, arg_0.b)).a.b, firstLeadingBit(var_0.x))), u_input.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1253f, -1000f, -688f, 1149f), vec4<f32>(arg_3.b.b.x, arg_3.a.c.x, arg_3.b.b.x, -1000f))))))), vec4<f32>(-346f, _wgslsmith_f_op_f32(f32(-1f) * -1907f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(820f, arg_0.a.c.x) * arg_0.a.c.x)), vec4<bool>(true, arg_3.d.x | true, arg_0.d.x, !select(arg_3.d.x, var_1.x, false)))));
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec2<bool>(true, u_input.d.x >= 17381u)), !func_7(func_1(Struct_2(vec2<u32>(1u, 0u), u_input.b.x, vec3<f32>(-1722f, -1580f, -728f), 12183u, Struct_1(0u, vec3<f32>(-621f, -1000f, 306f), vec2<f32>(1472f, -2357f)))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), ~_wgslsmith_add_u32(u_input.d.x, u_input.d.x), func_5(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(u_input.a, vec3<f32>(1662f, 178f, 222f), vec2<f32>(-139f, 1216f)), vec3<bool>(true, false, true), vec2<bool>(false, false)), vec4<i32>(u_input.c, -1i, -7523i, u_input.b.x))), all(func_5(func_1(func_5(Struct_3(global0[_wgslsmith_index_u32(44257u, 14u)], Struct_1(u_input.d.x, vec3<f32>(538f, 295f, 111f), vec2<f32>(1482f, 627f)), vec3<bool>(true, true, true), vec2<bool>(false, true)), vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.c)).a), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.c, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, 1i, 0i), vec4<i32>(u_input.b.x, 1i, 52749i, -617i)), any(vec2<bool>(false, false)))).c.yz));
    let var_1 = ~u_input.a;
    let var_2 = Struct_2(u_input.d.yx, ~_wgslsmith_add_i32(u_input.b.x, max(u_input.b.x ^ -2147483647i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(func_6(func_6(func_6(Struct_3(Struct_2(vec2<u32>(var_1, 30731u), u_input.c, vec3<f32>(-1032f, 865f, 930f), u_input.a, Struct_1(u_input.a, vec3<f32>(-1148f, 1000f, 723f), vec2<f32>(-1000f, 126f))), Struct_1(26165u, vec3<f32>(636f, -395f, 1590f), vec2<f32>(1190f, 1000f)), vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(var_0.x, false)), global0[_wgslsmith_index_u32(24409u, 14u)]), func_5(Struct_3(global0[_wgslsmith_index_u32(var_1, 14u)], Struct_1(var_1, vec3<f32>(-532f, 692f, -391f), vec2<f32>(-1220f, 2307f)), vec3<bool>(false, false, var_0.x), vec2<bool>(var_0.x, true)), vec4<i32>(2147483647i, 63485i, u_input.c, u_input.c)).a), Struct_2(vec2<u32>(16233u, u_input.a), u_input.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(252f, 1314f, 858f))), 87688u, func_6(Struct_3(global0[_wgslsmith_index_u32(var_1, 14u)], Struct_1(var_1, vec3<f32>(363f, -1000f, -116f), vec2<f32>(-298f, 1368f)), vec3<bool>(var_0.x, false, var_0.x), var_0), global0[_wgslsmith_index_u32(35539u, 14u)]).a.e)).a.e.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-513f, 951f, 774f))))), ~(~abs(_wgslsmith_div_u32(37561u, var_1))), Struct_1(~((var_1 & 114012u) << (var_1 % 32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(func_6(Struct_3(global0[_wgslsmith_index_u32(var_1, 14u)], Struct_1(17197u, vec3<f32>(-1167f, 938f, -309f), vec2<f32>(-602f, 1187f)), vec3<bool>(true, var_0.x, true), vec2<bool>(var_0.x, var_0.x)), Struct_2(u_input.d.xz, u_input.b.x, vec3<f32>(2117f, -421f, 197f), var_1, Struct_1(4294967295u, vec3<f32>(-293f, 943f, 540f), vec2<f32>(-404f, 385f)))).b.b, vec3<f32>(-2485f, 840f, 442f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, 591f, 459f) * vec3<f32>(-861f, -1000f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-685f, 331f, -532f) - vec3<f32>(473f, 1730f, 1290f))))), vec2<f32>(-653f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) - 192f))));
    var var_3 = ~max(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 30563u, var_2.d, var_1), ~vec4<u32>(13402u, var_2.e.a, 21896u, var_1)), ~firstLeadingBit(vec4<u32>(u_input.a, var_2.a.x, 60768u, var_2.a.x)), func_6(Struct_3(global0[_wgslsmith_index_u32(0u, 14u)], var_2.e, vec3<bool>(false, false, false), vec2<bool>(true, var_0.x)), global0[_wgslsmith_index_u32(~4294967295u, 14u)]).c.x), vec4<u32>(abs(min(var_2.d, var_2.d)), ~func_6(Struct_3(Struct_2(vec2<u32>(34385u, 44161u), var_2.b, vec3<f32>(var_2.c.x, var_2.e.c.x, var_2.c.x), var_2.a.x, Struct_1(var_2.e.a, vec3<f32>(1503f, -1000f, var_2.c.x), var_2.c.yz)), var_2.e, vec3<bool>(true, var_0.x, true), vec2<bool>(var_0.x, var_0.x)), var_2).b.a, ~var_2.d >> (var_2.a.x % 32u), 57691u));
    global0 = array<Struct_2, 14>();
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(func_6(func_5(Struct_3(Struct_2(vec2<u32>(19191u, 19862u), -21074i, var_2.e.b, 1u, Struct_1(4294967295u, vec3<f32>(var_2.e.c.x, -587f, var_2.c.x), var_2.e.c)), func_6(Struct_3(var_2, var_2.e, vec3<bool>(var_0.x, var_0.x, var_0.x), var_0), global0[_wgslsmith_index_u32(u_input.d.x, 14u)]).b, !vec3<bool>(var_0.x, false, var_0.x), !vec2<bool>(var_0.x, true)), ~(vec4<i32>(var_2.b, -4649i, u_input.b.x, 2147483647i) & vec4<i32>(-1i, -2147483647i, var_2.b, 12877i))), func_6(func_5(func_1(Struct_2(u_input.d.xy, u_input.b.x, vec3<f32>(-1072f, -534f, -115f), 11886u, var_2.e)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b.x, 24087i), vec4<i32>(2147483647i, -40348i, 12053i, 2147483647i))), Struct_2(var_3.yy >> (var_2.a % vec2<u32>(32u)), ~var_2.b, _wgslsmith_div_vec3_f32(vec3<f32>(var_2.e.c.x, var_2.e.c.x, 351f), var_2.c), var_1 & 1u, var_2.e)).a).a.e.a, 14u)], func_5(Struct_3(global0[_wgslsmith_index_u32(27887u, 14u)], func_5(func_1(Struct_2(vec2<u32>(0u, u_input.d.x), 1i, vec3<f32>(var_2.e.b.x, 787f, var_2.c.x), 1u, var_2.e)), ~vec4<i32>(var_2.b, u_input.b.x, var_2.b, u_input.b.x)).a.e, vec3<bool>(true, var_0.x, var_0.x), !vec2<bool>(true, var_0.x)), select(vec4<i32>(var_2.b, 2147483647i, u_input.b.x, _wgslsmith_div_i32(-1i, u_input.b.x)), vec4<i32>(3119i, 1i, 673i, var_2.b) ^ _wgslsmith_div_vec4_i32(vec4<i32>(1i, -14166i, var_2.b, u_input.c), vec4<i32>(-38302i, var_2.b, var_2.b, -1i)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x), select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), var_0.x))).b, vec3<bool>(true, var_0.x, true), !(!var_0));
    var_3 = ~select(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1, var_4.b.a), vec4<u32>(19772u, 1u, 5505u, 0u)), vec4<u32>(var_2.e.a, u_input.a, var_3.x, var_1)), ~(~vec4<u32>(var_1, 3042u, var_1, var_1))), vec4<u32>(_wgslsmith_add_u32(1u, var_3.x >> (var_1 % 32u)), 0u, var_3.x, ~1u), !(!vec4<bool>(var_4.d.x, false, var_4.c.x, var_4.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(7889u, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1760u, var_4.a.d, var_3.x), var_3.yyw), _wgslsmith_sub_u32(var_3.x, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(58150u, var_3.x, 24223u, var_1), select(vec4<u32>(0u, 10951u, var_4.b.a, 1u), vec4<u32>(var_2.a.x, 13012u, 15042u, var_2.e.a), var_4.d.x)), var_1) | (((vec4<u32>(1u, 5773u, var_4.a.e.a, u_input.a) | vec4<u32>(var_3.x, 573u, 1u, 10933u)) & min(vec4<u32>(0u, 25976u, 17094u, 1u), vec4<u32>(4294967295u, var_1, var_2.d, 5509u))) ^ countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, var_3.x, var_2.e.a), vec4<u32>(52211u, 12394u, u_input.a, 45371u)))));
}

