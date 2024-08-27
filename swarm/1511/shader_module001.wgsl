struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1099i, u_input.b), vec3<i32>(u_input.a, -64555i, u_input.a))), abs(vec3<i32>(u_input.c, -2147483647i, -17251i))) << (vec3<u32>(firstTrailingBit(1u), select(u_input.d.x, ~arg_3.x, arg_1.e.x | false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, u_input.d.x, arg_3.x), vec3<u32>(1u, 25110u, 59775u))) % vec3<u32>(32u)), ~(~countOneBits(-vec3<i32>(-21670i, u_input.a, 2147483647i))));
    var var_1 = vec3<bool>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, arg_3.x), u_input.d.x) != arg_3.x, true, arg_1.c.x);
    let var_2 = arg_3.x;
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -410f, arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0)))), arg_1.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 762f) * vec3<f32>(-775f, -397f, 1000f)) - vec3<f32>(-1000f, 868f, arg_1.a)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, arg_2.x, 1388f), vec3<f32>(arg_1.a, -1008f, arg_2.x), var_1.x)))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 466f) + 1f), arg_2.x);
    return -abs(countOneBits(max(vec4<i32>(var_0, u_input.b, u_input.a, -63292i) & vec4<i32>(u_input.b, var_0, var_0, u_input.c), countOneBits(vec4<i32>(var_0, u_input.b, 2147483647i, var_0)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    let var_0 = !(!select(!(!vec4<bool>(true, false, arg_1, arg_1)), !(!vec4<bool>(arg_1, true, arg_1, arg_1)), all(vec3<bool>(arg_1, arg_1, false))));
    global0 = all(!select(vec3<bool>(var_0.x, all(var_0.wyw), var_0.x), var_0.yzw, !var_0.zxz));
    global0 = var_0.x;
    global0 = any(select(select(var_0.xx, vec2<bool>(true, all(var_0.xx)), true), var_0.ww, true));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-797f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1106f, 2032f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2198f, -638f)))))))));
    return var_1;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1552f, _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.d.x), vec3<u32>(4294967295u, u_input.e, 0u), vec3<u32>(u_input.e, u_input.e, u_input.d.x)), true, func_3(-1000f, Struct_1(737f, true, vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<bool>(false, true, false, true)), vec2<f32>(1000f, -363f), vec2<u32>(u_input.d.x, u_input.e)))))))), !any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), false, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), vec2<bool>(true, !((u_input.d.x >> (u_input.e % 32u)) != _wgslsmith_add_u32(u_input.d.x, 1u))), select(vec4<bool>(!all(vec3<bool>(false, false, true)), true | (0u < u_input.e), ~u_input.e > u_input.e, true), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, any(vec2<bool>(true, true))), vec4<bool>(true, -237f >= _wgslsmith_f_op_f32(trunc(1644f)), _wgslsmith_f_op_f32(f32(-1f) * -1047f) < _wgslsmith_f_op_f32(ceil(-181f)), all(vec4<bool>(true, false, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1763f);
    var var_2 = -_wgslsmith_add_i32(~_wgslsmith_sub_i32(~(-69417i), ~u_input.c), -arg_0.x);
    let var_3 = var_0.c;
    var var_4 = vec4<bool>(any(var_0.e), !any(select(select(var_0.c.zz, var_0.d, var_0.b), select(var_3.xy, var_3.xy, false), true)), all(vec2<bool>(any(vec2<bool>(true, true)), u_input.e > _wgslsmith_sub_u32(u_input.e, 32760u))), (u_input.e | (u_input.d.x << (~u_input.d.x % 32u))) > ~(~(~1u)));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_2(arg_2, -vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 0i, 2147483647i), vec3<i32>(-2147483647i, -1i, arg_3)), 4773i), arg_3 < 1i, vec4<i32>(arg_3, arg_1.x, -1i, 37170i), -15992i);
    var var_1 = !(!arg_2.e);
    var var_2 = vec2<u32>(1u, _wgslsmith_mod_u32(4293u, ~u_input.e));
    let var_3 = ~vec2<u32>(_wgslsmith_mult_u32(~29639u, 1u), _wgslsmith_add_u32(u_input.e, 1u)) << (countOneBits(vec2<u32>(_wgslsmith_div_u32(9050u, u_input.d.x >> (var_2.x % 32u)), abs(41379u))) % vec2<u32>(32u));
    global0 = false;
    return vec3<bool>(var_1.x, false, any(vec4<bool>(arg_2.b && var_0.a.c.x, true, !var_0.c, !var_0.c)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = true;
    var var_1 = Struct_1(468f, all(vec2<bool>(-2147483647i < -u_input.c, !(true | var_0))), select(func_5(-1000f, _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 129i, u_input.a), vec4<i32>(u_input.b, -1i, 1i, u_input.b) ^ vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.c)), func_2(vec4<i32>(u_input.c, -11479i, u_input.c, u_input.a)), 1i), !vec3<bool>(var_0 || false, !var_0, !var_0), !vec3<bool>(false, 1i >= u_input.b, false || var_0)), !vec2<bool>(any(!vec4<bool>(var_0, false, var_0, var_0)), var_0), vec4<bool>(var_0, var_0, !(-174f > _wgslsmith_f_op_f32(exp2(arg_0.x))), !func_2(~vec4<i32>(u_input.b, 0i, u_input.c, -1i)).e.x));
    var var_2 = u_input.d;
    let var_3 = !(!var_1.d.x);
    var_2 = u_input.d | _wgslsmith_add_vec2_u32(abs(~(~vec2<u32>(u_input.d.x, u_input.e))), countOneBits(vec2<u32>(u_input.e, var_2.x) ^ firstTrailingBit(u_input.d)));
    return !all(var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_div_f32(-815f, 779f), _wgslsmith_f_op_f32(-821f * 637f), 679f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, 166f, -1238f, 1532f) - vec4<f32>(-919f, 1387f, 1182f, 289f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1869f, 1000f, 459f, -892f))) * vec4<f32>(_wgslsmith_f_op_f32(-859f - 517f), _wgslsmith_f_op_f32(step(-480f, 218f)), 366f, -321f))));
    let var_0 = func_2(abs(vec4<i32>(_wgslsmith_mod_i32(-14417i, firstTrailingBit(u_input.c)), u_input.b, u_input.b, ~2133i))).e;
    var var_1 = Struct_3(all(var_0.ww), Struct_2(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -26060i, -2046i, u_input.a), select(vec4<i32>(u_input.b, u_input.a, 2147483647i, -38360i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.c), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), vec3<i32>(~u_input.a | (-26092i << (u_input.e % 32u)), -4048i, ~u_input.c | -1i), false, ~vec4<i32>(1i, -2147483647i, -23378i, u_input.b) ^ (-vec4<i32>(u_input.b, u_input.b, u_input.c, -2147483647i) | ~vec4<i32>(31304i, -20584i, u_input.c, 1i)), max(1i, -12024i << (u_input.e % 32u))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32((vec3<i32>(u_input.b, 25312i, u_input.a) >> (vec3<u32>(1u, u_input.e, 18449u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.e, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), -vec3<i32>(u_input.c, 0i, u_input.a)), vec3<i32>(_wgslsmith_mod_i32(u_input.a & u_input.a, _wgslsmith_div_i32(1i, 1i)), ~_wgslsmith_clamp_i32(u_input.b, -1i, u_input.a), -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b), max(vec2<i32>(2147483647i, 13143i) | vec2<i32>(u_input.c, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b, -591i)))), abs(vec2<i32>(~u_input.a, ~(-1i)))));
    var var_2 = var_1.b.a.a;
    var_1 = Struct_3(var_0.x, var_1.b, abs(_wgslsmith_add_vec3_i32(var_1.c << (vec3<u32>(23568u, 4294967295u, u_input.e) % vec3<u32>(32u)), -vec3<i32>(var_1.c.x, 2147483647i, -3203i))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.yy, var_1.c.xx & vec2<i32>(var_1.d.x, u_input.b)) | var_1.c.xz, _wgslsmith_add_vec2_i32(vec2<i32>(1356i, ~(-84350i)), abs(-vec2<i32>(2147483647i, var_1.b.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1292f, _wgslsmith_f_op_f32(func_4(vec3<u32>(u_input.e, u_input.d.x, 1u), !var_0.x, ~vec4<i32>(u_input.c, u_input.b, -2147483647i, -1i)))) + -1515f), _wgslsmith_mult_i32(_wgslsmith_add_i32(-24006i, abs(_wgslsmith_sub_i32(39437i, 2147483647i))), ~select(max(1i, var_1.c.x), firstTrailingBit(-4932i), false)));
}

