struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = Struct_3(select(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), select(false, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), true)), select(vec3<bool>(u_input.b.x <= 4294967295u, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false))), vec3<bool>(true, !select(false, true, false), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)))), ~vec3<i32>(-max(-2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(arg_2.c.a.zz, select(arg_2.d.a.zx, arg_2.d.a.yy, true)), u_input.a), Struct_1(-(-arg_2.d.a | -arg_2.d.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zy - _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.b.x, arg_2.c.b.x), arg_1.xz)))));
    var_0 = Struct_3(select(var_0.a, vec3<bool>(false, !var_0.a.x, all(!vec2<bool>(true, var_0.a.x))), false), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(select(arg_2.b.a, var_0.c.a, var_0.a.x), vec3<i32>(arg_3, -76342i, u_input.a)), var_0.b), -((var_0.b >> (vec3<u32>(u_input.b.x, arg_2.a.x, arg_2.a.x) % vec3<u32>(32u))) & vec3<i32>(-2147483647i, arg_2.c.a.x, 2147483647i))), Struct_1(arg_2.d.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_1.zy, arg_2.d.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.b.x, arg_2.d.b.x))))))));
    var var_1 = Struct_3(vec3<bool>(any(select(!var_0.a.zx, !vec2<bool>(false, var_0.a.x), false)), arg_2.a.x >= u_input.b.x, var_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, -51026i, ~_wgslsmith_mod_i32(u_input.a, var_0.c.a.x)), -vec3<i32>(-arg_2.d.a.x, ~u_input.a, ~arg_3)), Struct_1(vec3<i32>(select(-36376i, var_0.b.x, true), arg_2.c.a.x, -22295i), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.b.x * -1514f), arg_1.x)))));
    let var_2 = Struct_2(arg_2.a, Struct_1(~(-var_0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.zy)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.b.x, var_1.c.b.x), var_0.c.b)))))), var_0.c, Struct_1(-var_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.b) - var_0.c.b), _wgslsmith_f_op_vec2_f32(var_1.c.b + vec2<f32>(441f, 853f)))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x)), var_1.c.b.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u, vec3<f32>(-1193f, 1479f, -1899f), Struct_2(vec4<u32>(5853u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec3<i32>(u_input.a, arg_0.x, arg_0.x), vec2<f32>(211f, -641f)), Struct_1(arg_0, vec2<f32>(332f, 1848f)), Struct_1(arg_0, vec2<f32>(1467f, -516f))), u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1459f)) * _wgslsmith_f_op_f32(f32(-1f) * -829f))))));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, arg_0.x, arg_0.x), -arg_0), abs(_wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(50660i, u_input.a, u_input.a)))), arg_0) ^ u_input.a;
    var var_2 = Struct_1(firstTrailingBit(vec3<i32>(var_1 << (u_input.b.x % 32u), _wgslsmith_add_i32(0i, -1i), _wgslsmith_dot_vec3_i32(arg_0, arg_0))) ^ abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), arg_0)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-882f, 2932f), _wgslsmith_div_vec2_f32(vec2<f32>(196f, -157f), vec2<f32>(-768f, -181f)), arg_1.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, 543f))))));
    let var_3 = Struct_3(!select(!arg_1, arg_1, !(!arg_1)), vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_mod_i32(-arg_0.x, -17875i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2.a, vec3<i32>(var_1, 22888i, -33605i)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(arg_0, arg_0), vec3<i32>(arg_0.x, -17900i, var_2.a.x)))), Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.b)) * _wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, -1217f))))));
    var var_4 = vec2<bool>(arg_1.x, var_3.a.x);
    return !(false & (all(!vec4<bool>(var_3.a.x, false, true, var_3.a.x)) & (_wgslsmith_f_op_f32(var_2.b.x + var_3.c.b.x) == -2475f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = vec4<bool>(arg_1.x, !(~4294967295u == _wgslsmith_mult_u32(u_input.b.x, 24383u)), !arg_1.x, u_input.b.x < 10396u);
    var_0 = !vec4<bool>(var_0.x, !func_2(-arg_0.a, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), func_2(select(max(arg_0.a, vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(arg_0.a, arg_0.a), var_0.yzx), arg_1));
    let var_1 = arg_0;
    let var_2 = arg_0.a.x;
    var var_3 = u_input.b.x;
    return Struct_4(vec3<bool>(var_0.x || any(var_0.zy), var_0.x, !any(!var_0.yzx)), arg_0.b.x, Struct_3(select(var_0.yzz, vec3<bool>(true, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), var_0.x), vec3<bool>(!var_0.x, false || var_0.x, 1u >= u_input.b.x)), vec3<i32>(arg_0.a.x, u_input.a, -arg_0.a.x), var_1), max(select(_wgslsmith_div_vec2_u32(~u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b)), countOneBits(u_input.b | vec2<u32>(53121u, u_input.b.x)), vec2<bool>(any(vec4<bool>(true, arg_1.x, false, false)), !arg_1.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b, u_input.b), ~abs(u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -260f, arg_0.b.x, -2024f)) * vec4<f32>(-500f, 1045f, -414f, 371f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = func_1(Struct_1(select(-select(vec3<i32>(2463i, -2147483647i, arg_0.x), vec3<i32>(arg_1.c.b.x, 0i, u_input.a), arg_1.a), select(firstTrailingBit(vec3<i32>(u_input.a, arg_0.x, arg_1.c.b.x)), vec3<i32>(arg_0.x, -2147483647i, u_input.a), arg_1.c.a.x), select(!arg_1.a, vec3<bool>(true, arg_1.c.a.x, arg_1.a.x), arg_1.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.c.b))))), arg_1.c.a).c.c;
    var var_1 = arg_1.c.c;
    return Struct_4(select(vec3<bool>(true, func_1(arg_1.c.c, vec3<bool>(false, false, arg_1.c.a.x)).c.a.x, true), vec3<bool>(arg_1.c.a.x != true, ~arg_0.x != ~arg_1.c.c.a.x, !any(vec2<bool>(false, arg_1.a.x))), arg_1.a), _wgslsmith_f_op_f32(1795f * var_1.b.x), Struct_3(vec3<bool>(all(arg_1.a), func_2(func_1(Struct_1(arg_0, var_1.b), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)).c.b, !arg_1.a), arg_1.a.x), select(var_1.a, abs(var_0.a), false), arg_1.c.c), _wgslsmith_mult_vec2_u32(~arg_1.d, arg_1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(vec3<i32>(u_input.a, 26248i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(2147483647i, -68422i, 13215i))))), func_1(Struct_1(vec3<i32>(firstLeadingBit(u_input.a), -u_input.a, reverseBits(41448i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1332f, -375f)), vec2<f32>(-368f, 335f)))), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -563f), 1000f)), -1664f, 839f, _wgslsmith_f_op_f32(-1387f * _wgslsmith_f_op_f32(round(-373f))))));
    var var_1 = u_input.a;
    let var_2 = Struct_2(vec4<u32>(28528u, func_4(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 2147483647i, -2147483647i), func_1(var_0.c.c, vec3<bool>(var_0.c.a.x, var_0.a.x, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, var_0.c.c.b.x, var_0.c.c.b.x), vec4<f32>(var_0.b, -2109f, var_0.c.c.b.x, var_0.e.x)) - _wgslsmith_div_vec4_f32(var_0.e, vec4<f32>(var_0.b, -1927f, var_0.c.c.b.x, -446f)))).d.x, var_0.d.x, ~(~(~4294967295u))), func_1(var_0.c.c, vec3<bool>((var_0.a.x | var_0.c.a.x) | (var_0.c.c.b.x == var_0.e.x), var_0.c.a.x, true)).c.c, Struct_1(vec3<i32>(var_0.c.b.x, ~(-2147483647i), max(u_input.a, 1i)), _wgslsmith_f_op_vec2_f32(var_0.e.wz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.c.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2224f, 1000f) + var_0.e.xw)))), func_4(abs(var_0.c.b), Struct_4(func_4(_wgslsmith_div_vec3_i32(var_0.c.b, vec3<i32>(var_0.c.c.a.x, 1i, -25840i)), func_4(var_0.c.b, Struct_4(vec3<bool>(false, var_0.a.x, var_0.a.x), -1496f, var_0.c, u_input.b, vec4<f32>(-133f, 153f, var_0.e.x, var_0.b)), var_0.e), _wgslsmith_f_op_vec4_f32(var_0.e - var_0.e)).a, var_0.b, func_1(func_4(vec3<i32>(var_0.c.c.a.x, var_0.c.c.a.x, var_0.c.c.a.x), Struct_4(vec3<bool>(false, true, var_0.c.a.x), -1000f, Struct_3(var_0.a, vec3<i32>(0i, -2147483647i, 50997i), Struct_1(var_0.c.c.a, vec2<f32>(var_0.b, var_0.c.c.b.x))), vec2<u32>(4294967295u, var_0.d.x), vec4<f32>(var_0.c.c.b.x, var_0.c.c.b.x, var_0.c.c.b.x, var_0.e.x)), var_0.e).c.c, var_0.a).c, var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.b.x, var_0.e.x, -102f, var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1787f, -843f, -1000f, -271f), vec4<f32>(545f, var_0.e.x, var_0.e.x, 1516f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2162f, var_0.e.x, -222f, -269f)) - vec4<f32>(var_0.e.x, 1101f, 981f, var_0.e.x)))).c.c);
    var_0 = Struct_4(var_0.c.a, _wgslsmith_f_op_f32(trunc(-1392f)), func_4(var_2.b.a, Struct_4(vec3<bool>(var_0.a.x, var_0.a.x, var_0.c.a.x), var_2.b.b.x, var_0.c, var_0.d, vec4<f32>(_wgslsmith_div_f32(var_2.b.b.x, var_2.b.b.x), -2065f, 1000f, _wgslsmith_f_op_f32(-var_2.d.b.x))), _wgslsmith_f_op_vec4_f32(-var_0.e)).c, firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.b, ~u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.b.x), _wgslsmith_f_op_f32(abs(1000f)), true)), var_0.c.c.b.x, var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x)) + _wgslsmith_f_op_vec4_f32(-var_0.e)));
    var var_3 = ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, ~u_input.b.x, firstTrailingBit(var_2.a.x)), vec3<u32>(56434u, func_1(Struct_1(vec3<i32>(u_input.a, var_2.b.a.x, -2147483647i), vec2<f32>(663f, -673f)), vec3<bool>(true, false, var_0.a.x)).d.x, _wgslsmith_sub_u32(1u, u_input.b.x)), vec3<u32>(_wgslsmith_div_u32(var_0.d.x, var_0.d.x), max(u_input.b.x, 1u), 4294967295u)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.a.zyz, var_2.a.xxx) << ((var_0.d.x & u_input.b.x) % 32u), var_2.a.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 32193u, var_0.d.x), vec3<u32>(4294967295u, 39604u, var_2.a.x)), var_0.d.x & var_0.d.x)) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(201f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, -876f)), var_0.e.x)));
    var var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -321f), 275f, var_0.d.x == 4351u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_u32(countOneBits(1u), var_2.a.x)), select(vec4<i32>(-55552i >> (1u % 32u), u_input.a, var_0.c.b.x, -79809i), vec4<i32>(abs(-u_input.a), ~var_2.d.a.x, max(var_0.c.c.a.x, -8375i << (var_3.x % 32u)), func_1(Struct_1(vec3<i32>(var_0.c.c.a.x, var_0.c.b.x, u_input.a), var_2.d.b), vec3<bool>(true, true, var_0.c.a.x)).c.b.x & select(17114i, -7026i, var_0.a.x)), vec4<bool>(true && (var_0.a.x & var_0.a.x), (u_input.a >> (u_input.b.x % 32u)) <= var_0.c.b.x, !var_0.c.a.x & (u_input.b.x > var_3.x), true)));
}

