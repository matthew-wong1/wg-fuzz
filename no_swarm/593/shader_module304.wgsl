struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(vec4<bool>(true, true, false, false), 1256f, Struct_1(vec4<bool>(false, false, true, false)), vec4<i32>(0i, 3354i, 4728i, 10538i))), Struct_3(Struct_2(vec4<bool>(false, true, false, true), -561f, Struct_1(vec4<bool>(false, true, true, true)), vec4<i32>(0i, -1i, 34715i, 2147483647i))), Struct_3(Struct_2(vec4<bool>(false, true, true, false), -569f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(31445i, 2147483647i, 0i, 80077i))), Struct_3(Struct_2(vec4<bool>(true, true, true, true), -295f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(30740i, 0i, -21477i, 18238i))), Struct_3(Struct_2(vec4<bool>(true, false, true, true), -374f, Struct_1(vec4<bool>(true, false, false, true)), vec4<i32>(2147483647i, i32(-2147483648), 51159i, 1i))), Struct_3(Struct_2(vec4<bool>(true, false, false, false), -713f, Struct_1(vec4<bool>(false, false, false, true)), vec4<i32>(0i, -1i, -34345i, 17838i))), Struct_3(Struct_2(vec4<bool>(false, true, true, true), -1000f, Struct_1(vec4<bool>(false, true, true, true)), vec4<i32>(2147483647i, -1i, -31231i, 18953i))), Struct_3(Struct_2(vec4<bool>(true, true, false, true), -1565f, Struct_1(vec4<bool>(true, true, false, true)), vec4<i32>(-39740i, -38444i, 22042i, 44500i))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), 811f, Struct_1(vec4<bool>(false, true, false, false)), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -26026i))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), -241f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(37804i, 0i, 84216i, -1i))), Struct_3(Struct_2(vec4<bool>(false, true, false, false), 974f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(-1i, -21938i, 7096i, i32(-2147483648)))), Struct_3(Struct_2(vec4<bool>(true, true, true, false), 156f, Struct_1(vec4<bool>(true, false, false, true)), vec4<i32>(49029i, i32(-2147483648), 2147483647i, 1i))), Struct_3(Struct_2(vec4<bool>(false, false, true, false), -302f, Struct_1(vec4<bool>(true, true, false, true)), vec4<i32>(-1070i, 16934i, 14778i, -39667i))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), -937f, Struct_1(vec4<bool>(false, true, false, true)), vec4<i32>(0i, -27656i, -10979i, 7810i))), Struct_3(Struct_2(vec4<bool>(false, true, false, false), 633f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(1i, -1i, -10716i, -27146i))), Struct_3(Struct_2(vec4<bool>(false, false, false, false), -131f, Struct_1(vec4<bool>(true, false, true, false)), vec4<i32>(0i, 0i, 2147483647i, 2147483647i))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), -1120f, Struct_1(vec4<bool>(true, true, true, false)), vec4<i32>(33390i, i32(-2147483648), 0i, 36578i))), Struct_3(Struct_2(vec4<bool>(true, true, false, false), -1541f, Struct_1(vec4<bool>(false, false, false, true)), vec4<i32>(0i, -30955i, 48400i, 2322i))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), -609f, Struct_1(vec4<bool>(false, false, false, false)), vec4<i32>(1i, -1i, 2147483647i, 0i))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), 244f, Struct_1(vec4<bool>(true, true, false, false)), vec4<i32>(22978i, 2147483647i, i32(-2147483648), 11070i))), Struct_3(Struct_2(vec4<bool>(true, false, false, false), -1029f, Struct_1(vec4<bool>(true, true, false, true)), vec4<i32>(-27802i, 2147483647i, -6200i, 18975i))), Struct_3(Struct_2(vec4<bool>(false, false, false, false), -666f, Struct_1(vec4<bool>(false, true, true, false)), vec4<i32>(95977i, -17361i, -8862i, -20748i))), Struct_3(Struct_2(vec4<bool>(true, true, true, false), -1609f, Struct_1(vec4<bool>(true, false, true, false)), vec4<i32>(i32(-2147483648), 18210i, 17420i, -15349i))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), 463f, Struct_1(vec4<bool>(true, false, true, true)), vec4<i32>(44718i, 7669i, 35586i, 2147483647i))), Struct_3(Struct_2(vec4<bool>(false, true, false, true), 1975f, Struct_1(vec4<bool>(true, true, true, true)), vec4<i32>(i32(-2147483648), -75426i, 1i, 0i))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<bool> {
    global0 = array<f32, 11>();
    var var_0 = Struct_1(!select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), true), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), false)));
    let var_1 = var_0.a.x;
    global1 = array<Struct_3, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x >= -379f)))))));
    return var_0.a;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(select(arg_0.a.a, arg_0.a.c.a, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, global0[_wgslsmith_index_u32(u_input.e, 11u)], 1000f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.e, u_input.e, u_input.b), vec4<u32>(23305u, 10180u, u_input.e, 16265u)), vec3<i32>(arg_0.a.d.x, -21775i, arg_0.a.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f + 222f) * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b, 11u)]))) + -833f), arg_0.a.c, -arg_0.a.d));
    var var_1 = var_0.a;
    let var_2 = var_1.a.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1775f))) * global0[_wgslsmith_index_u32(~(~(u_input.b << (0u % 32u))), 11u)])));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(firstLeadingBit(u_input.b), 4294967295u, !arg_1) << (select(~u_input.b, ~1224u, true) % 32u), abs(_wgslsmith_mult_u32(abs(u_input.b), u_input.b))), 25u)];
    return !vec4<bool>(true, arg_0.a.c.a.x, all(select(var_0.a.a.xy, !vec2<bool>(arg_1, false), !var_1.a.x)), (_wgslsmith_clamp_i32(2147483647i, u_input.d.x, 23286i) >> (u_input.b % 32u)) != _wgslsmith_clamp_i32(-11855i, _wgslsmith_add_i32(var_1.d.x, -1i), u_input.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(arg_1.x, 20434u);
    var var_1 = Struct_1(!select(select(select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_0, arg_2, false, arg_2), vec4<bool>(arg_2, true, arg_0, arg_0)), select(vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_2, true, false, arg_2), false), vec4<bool>(true, false, true, arg_0)), func_2(global1[_wgslsmith_index_u32(u_input.e, 25u)], arg_0), false));
    var var_2 = Struct_1(var_1.a);
    let var_3 = Struct_2(vec4<bool>(true & !(var_2.a.x & arg_0), arg_0, !all(vec2<bool>(arg_2, var_1.a.x)), all(vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(95902u, 25280u, 96588u, arg_1.x)), 11u)] + -408f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(43463u, 11u)] + _wgslsmith_f_op_f32(502f * -512f)))), Struct_1(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(11548u, 11u)], -449f, -859f), vec3<f32>(469f, -482f, global0[_wgslsmith_index_u32(arg_1.x, 11u)]))))), 1u, -(~u_input.d))), select(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.a, 0i, 0i, 30769i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -28591i), vec4<i32>(-31832i, -51389i, -8685i, 2147483647i))), abs(countOneBits(vec4<i32>(u_input.d.x, 86066i, u_input.c.x, 2147483647i)))), ~(-vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.a)), func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(791f, 1112f, -874f))), 1u, _wgslsmith_div_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(u_input.c.x, u_input.d.x, u_input.d.x))))));
    var_0 = ~(~(~u_input.e)) >> (reverseBits(~(~(~arg_1.x))) % 32u);
    return Struct_2(!var_2.a, 175f, Struct_1(!func_2(global1[_wgslsmith_index_u32(4294967295u, 25u)], all(var_1.a))), max(_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.c.x, var_3.d.x, u_input.c.x, -1i)), var_3.d, vec4<i32>(~u_input.c.x, _wgslsmith_sub_i32(-53440i, u_input.d.x), var_3.d.x, -26144i)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(var_3.d, var_3.d, var_3.c.a), var_3.d & vec4<i32>(u_input.a, var_3.d.x, -2147483647i, u_input.d.x)), vec4<i32>(u_input.c.x, u_input.d.x, i32(-1i) * -4267i, min(u_input.d.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, 0i, 21327i), u_input.d), reverseBits(~vec3<i32>(u_input.c.x, 15797i, u_input.a)))) ^ u_input.d;
    let var_1 = func_1(!(~u_input.e != 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, firstTrailingBit(u_input.b)), max(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.e, u_input.e), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.b), vec2<u32>(u_input.e, 21195u))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.e), reverseBits(vec2<u32>(u_input.b, u_input.e))))), true);
    var var_2 = all(vec2<bool>(var_1.c.a.x, all(var_1.a.xz)));
    var_2 = var_1.c.a.x | !var_1.a.x;
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -2391f))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(reverseBits(var_1.d.wx), min(vec2<i32>(1i, -2147483647i), u_input.c)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(399f, 114f)) - 1266f)));
}

