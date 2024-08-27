struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
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

var<private> global0: vec3<u32> = vec3<u32>(1u, 75765u, 20215u);

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec2<bool> {
    global2 = !any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(true, true), true));
    let var_0 = Struct_4(~(23214u >> (max(54146u, global0.x) % 32u)), global3.c.x, ~(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 9721u, global0.x, 1u) | vec4<u32>(0u, u_input.b.x, 1u, u_input.a), ~vec4<u32>(0u, 16084u, u_input.b.x, 4294967295u)) << (countOneBits(vec4<u32>(22820u, 4294967295u, 1u, u_input.b.x)) % vec4<u32>(32u))));
    global3 = Struct_1(_wgslsmith_dot_vec3_i32(~(~(-arg_0.xwz)), -firstLeadingBit(arg_0.zyw)), 15756i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b, var_0.b))) + vec2<f32>(1246f, 564f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-693f, 1586f))), 216f), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)), vec4<f32>(1000f, global3.c.x, _wgslsmith_div_f32(global3.c.x, var_0.b), var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 1266f) + global3.d.x), _wgslsmith_div_f32(-441f, 1135f)))));
    var var_1 = global3.d.ywz;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_0.b) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f * -1274f) - global3.d.x)) + var_0.b));
    return select(select(vec2<bool>(false, true), vec2<bool>(false, all(vec2<bool>(true, true))), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, any(vec2<bool>(false, false)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(false, _wgslsmith_f_op_f32(var_1.x * -1926f) == -1189f)));
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(29623i, i32(-1i) * -global3.a, _wgslsmith_clamp_i32(-24322i, _wgslsmith_sub_i32(-13053i, global3.b), global3.b)), vec3<i32>(_wgslsmith_div_i32(min(select(-20309i, 0i, false), u_input.d), ~global3.b), global3.a, _wgslsmith_clamp_i32(_wgslsmith_add_i32(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, 62832i, 2147483647i, 0i), vec4<i32>(u_input.d, global3.a, global3.a, u_input.d))), _wgslsmith_add_i32(_wgslsmith_sub_i32(-63631i, -2147483647i), 0i), _wgslsmith_add_i32(countOneBits(0i), _wgslsmith_clamp_i32(global3.a, -2147483647i, u_input.d)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(global3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(global3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -965f), !arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-397f, 640f, true))) - _wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(abs(-433f)));
    var var_2 = var_0.x;
    var var_3 = any(select(select(vec3<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), true), vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, false, true)), true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, false), arg_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), !vec3<bool>(true, arg_0.x, true))), !select(vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x), true), true));
    global2 = false;
    return -(~(~var_0.x));
}

fn func_2() -> Struct_3 {
    global2 = (abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(global3.a, 32349i, u_input.d), min(vec3<i32>(2503i, global3.a, u_input.d), vec3<i32>(0i, global3.a, 0i)))) <= global3.a) & true;
    let var_0 = ~(~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b.x, 47526u), vec4<u32>(4294967295u, 65992u, 0u, 0u), vec4<u32>(0u, 25248u, global0.x, 7799u)), vec4<u32>(86679u, u_input.c, u_input.a, 1u))));
    let var_1 = (12801i == (1i & global3.b)) && !(3014u > _wgslsmith_sub_u32(global0.x, global0.x));
    var var_2 = Struct_4(~select(firstTrailingBit(var_0.x), _wgslsmith_clamp_u32(~u_input.a, ~72151u, var_0.x), var_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(-738f * global3.c.x)), global3.c.x)))), vec4<u32>(global0.x, _wgslsmith_div_u32(1u, 1u), ~_wgslsmith_div_u32(~0u, var_0.x), ~1390u));
    global3 = Struct_1(func_4(select(!(!vec2<bool>(var_1, false)), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(var_1, true)), func_3(vec4<i32>(u_input.d, u_input.d, -2287i, 3950i) << (vec4<u32>(26852u, 68467u, 0u, var_2.c.x) % vec4<u32>(32u)), global3.b))), _wgslsmith_div_i32(2147483647i, ~1i << (global0.x % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d.x, global3.c.x) * _wgslsmith_f_op_f32(min(322f, var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x + 346f))), vec2<f32>(-655f, 1142f)), global3.d);
    return Struct_3(Struct_1(min(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-24577i, 47875i), global3.b), i32(-1i) * -2147483647i), _wgslsmith_mult_i32(func_4(vec2<bool>(true, false)), abs(1i)) ^ abs(countOneBits(u_input.d)), global3.d.yx, vec4<f32>(_wgslsmith_div_f32(1675f, 344f), 700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.b, var_2.b, true)), -356f)), var_2.b)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_5(func_2(), func_2(), func_2(), -165f);
    global0 = select(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(3121u, 0u, u_input.c) | vec3<u32>(1u, global0.x, u_input.b.x)), ~reverseBits(~vec3<u32>(u_input.c, global0.x, 0u))), vec3<u32>(reverseBits(~global0.x), 14506u, global0.x & global0.x) << (vec3<u32>(80219u, select(~0u, u_input.a, any(vec2<bool>(true, true))), abs(~u_input.b.x)) % vec3<u32>(32u)), arg_0 && true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(var_0.a.a.c.x * global3.c.x), _wgslsmith_f_op_f32(ceil(1001f)), var_0.b.a.c.x);
    var var_2 = vec3<bool>(true, false, arg_0);
    let var_3 = firstLeadingBit(vec2<i32>(-_wgslsmith_div_i32(58891i, -1i), global3.a));
    return _wgslsmith_div_u32(65052u, 41834u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b.x, func_1(false, ~vec2<i32>(1i, 1i)), func_1(true, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.d, 1i))))), vec3<u32>(0u, 23529u, global0.x) ^ vec3<u32>(1u, countOneBits(0u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 1u), global0.x, global0.x)));
    var var_0 = vec2<bool>(select(true | all(vec3<bool>(true, true, false)), u_input.d >= 30708i, !((49032u >= u_input.c) & all(vec2<bool>(true, true)))), (69258u < ~min(4294967295u, u_input.c)) | all(vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) - global3.d.x)) == _wgslsmith_f_op_f32(sign(273f));
    var_0 = !vec2<bool>(select(!(8370i < u_input.d), all(vec2<bool>(false, false)), !var_0.x), var_0.x);
    var var_1 = Struct_4(firstTrailingBit(min(1883u, 1u)), global3.c.x, firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(39199u, 1u, global0.x, 4294967295u), vec4<u32>(0u, u_input.c, global0.x, 22834u) >> (vec4<u32>(1u, global0.x, global0.x, 2447u) % vec4<u32>(32u)))));
    var var_2 = Struct_2(Struct_1(~(_wgslsmith_div_i32(global3.a, global3.b) >> ((var_1.a >> (var_1.c.x % 32u)) % 32u)), abs(u_input.d), _wgslsmith_f_op_vec2_f32(-global3.d.xx), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1497f - -1729f), -721f, _wgslsmith_f_op_f32(-254f + 607f), 1011f), global3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -_wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(31868i, 0i, 9601i, u_input.d), vec4<i32>(2147483647i, global3.a, 12035i, 1i)), (vec4<i32>(0i, var_2.a.b, u_input.d, global3.a) & vec4<i32>(global3.b, -5704i, var_2.a.a, u_input.d)) | ~vec4<i32>(u_input.d, 77202i, global3.a, var_2.a.a)));
}

