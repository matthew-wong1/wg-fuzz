struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(2147483647i, -35322i, -1i, 2147483647i), vec4<i32>(-18982i, 12006i, 14974i, -56498i), vec4<i32>(-29747i, -28431i, 2147483647i, -27575i), vec4<i32>(-1i, -16391i, -9455i, 1i), vec4<i32>(1i, 0i, i32(-2147483648), 34961i), vec4<i32>(1i, 2147483647i, -36569i, -61971i), vec4<i32>(i32(-2147483648), -55813i, 0i, 1i), vec4<i32>(40609i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -6338i, -1i), vec4<i32>(-17559i, 8478i, -1i, 7239i), vec4<i32>(0i, 39119i, -1i, -10568i), vec4<i32>(10807i, -1i, -1i, -17194i), vec4<i32>(3021i, 1i, 0i, 2147483647i), vec4<i32>(1i, 1i, i32(-2147483648), 0i), vec4<i32>(0i, 1i, -5516i, 62797i), vec4<i32>(-62877i, 0i, i32(-2147483648), 0i), vec4<i32>(0i, 1i, -1i, -22724i), vec4<i32>(-16909i, i32(-2147483648), 19613i, 0i), vec4<i32>(0i, -75676i, 78341i, 1i), vec4<i32>(20832i, -1i, -25846i, 2147483647i), vec4<i32>(7544i, 2147483647i, -10216i, -9638i), vec4<i32>(15979i, 0i, 2147483647i, 54910i), vec4<i32>(33628i, 1035i, i32(-2147483648), -13618i), vec4<i32>(19703i, -53362i, -426i, -92764i), vec4<i32>(1i, 0i, -23034i, 2147483647i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = global0.c;
    global0 = Struct_1(u_input.a.xz, !select(vec2<bool>(any(vec2<bool>(global0.b.x, true)), global0.b.x), global0.b, true), _wgslsmith_f_op_f32(666f * global0.c));
    global1 = array<vec4<i32>, 25>();
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~min(~9658i, -2147483647i), -2147483647i, 1i), u_input.a, firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(~4752i, countOneBits(7315i), u_input.a.x), ~(~vec3<i32>(u_input.a.x, u_input.a.x, -41819i)), ~u_input.a)));
    global0 = Struct_1(vec2<i32>(-32370i, i32(-1i) * -1i), global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-588f))), -762f));
    return global0.b;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -8360i, 1i)), select(u_input.a, u_input.a, arg_0.yzy)), ~1i) & _wgslsmith_mod_vec2_i32(global0.a, (global0.a ^ global0.a) | firstTrailingBit(vec2<i32>(-61630i, global0.a.x))), !select(func_3(), !vec2<bool>(arg_0.x, true), global0.b), _wgslsmith_f_op_f32(select(-781f, 551f, global0.b.x)));
    var var_0 = 60642u;
    let var_1 = Struct_2(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global0.a.x, 12225i), u_input.a)), ~vec3<i32>(3766i, global0.a.x, 55314i)), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, global0.a.x, 0i), vec4<i32>(global0.a.x, u_input.a.x, 19681i, 0i)) & global1[_wgslsmith_index_u32(u_input.b, 25u)]), arg_0, Struct_1(~(~vec2<i32>(u_input.a.x, global0.a.x)) << (select(vec2<u32>(u_input.b, u_input.b), countOneBits(vec2<u32>(1u, u_input.b)), true) % vec2<u32>(32u)), func_3(), 255f), Struct_1(global0.a, func_3(), -372f));
    let var_2 = -14672i;
    let var_3 = _wgslsmith_f_op_f32(sign(-883f));
    return var_1.d.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~reverseBits(vec4<i32>(func_2(!vec4<bool>(true, false, true, global0.b.x)), firstTrailingBit(~u_input.a.x), -12692i, -min(u_input.a.x, 35140i)));
    global1 = array<vec4<i32>, 25>();
    global1 = array<vec4<i32>, 25>();
    var var_1 = Struct_1(-select(vec2<i32>(global0.a.x ^ 43514i, i32(-1i) * -8381i), global0.a, select(global0.b, vec2<bool>(false, false), global0.b.x)), global0.b, arg_1.x);
    var var_2 = !(~arg_0.x < _wgslsmith_dot_vec3_u32(vec3<u32>(abs(1u), arg_0.x >> (u_input.b % 32u), arg_0.x), ~arg_0.xyz));
    return Struct_1(~vec2<i32>(0i, countOneBits(0i)), vec2<bool>(global0.b.x, var_1.b.x), 688f);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_i32(-(u_input.a & _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, global0.a.x, -9901i), vec3<i32>(arg_0.a.x, -7131i, 0i))), _wgslsmith_add_vec3_i32(u_input.a, ~vec3<i32>(global0.a.x, arg_0.a.x, arg_0.a.x))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, ~arg_0.a.x, 0i, 2147483647i), global1[_wgslsmith_index_u32(1u, 25u)]), ~min(select(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], true), firstLeadingBit(vec4<i32>(arg_0.a.x, -2147483647i, arg_0.a.x, u_input.a.x)))), vec4<bool>(global0.b.x != arg_0.b.x, arg_0.b.x, any(vec3<bool>(func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<f32>(global0.c, arg_0.c, global0.c), 2147483647i).b.x, !global0.b.x, all(vec3<bool>(false, false, true)))), min(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_add_u32(u_input.b, u_input.b)) <= 89012u), func_1(~vec4<u32>(~u_input.b, 9439u ^ u_input.b, 1u, ~62727u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, _wgslsmith_f_op_f32(813f * -986f), arg_0.c))), arg_0.a.x), arg_0);
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b.yx, u_input.a.yy), max(var_0.a.yy, reverseBits(abs(arg_0.a))), _wgslsmith_div_vec2_i32(firstTrailingBit(reverseBits(var_0.e.a)), ~u_input.a.xx)), global0.b, _wgslsmith_f_op_f32(min(433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * arg_0.c)))));
    global1 = array<vec4<i32>, 25>();
    var var_2 = arg_0;
    var var_3 = var_1;
    return func_1(vec4<u32>(u_input.b, 18863u, _wgslsmith_mult_u32(~u_input.b, 1u), u_input.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c), 522f, var_1.c))), arg_0.a.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<vec4<i32>, 25>();
    var var_0 = Struct_2(_wgslsmith_div_vec3_i32(arg_3, ~arg_3), (global1[_wgslsmith_index_u32(80405u | arg_2.x, 25u)] << (_wgslsmith_add_vec4_u32(~vec4<u32>(59601u, u_input.b, u_input.b, arg_2.x), vec4<u32>(1u, u_input.b, arg_2.x, u_input.b) & vec4<u32>(u_input.b, 131u, 0u, 47459u)) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~u_input.b, 25u)], global1[_wgslsmith_index_u32(arg_2.x, 25u)]), min(global0.a.x, ~33418i), 1i, 3482i), vec4<bool>(global0.a.x == min(2147483647i, -2147483647i), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_2), abs(arg_2)) != _wgslsmith_mod_u32(~u_input.b, select(38416u, u_input.b, arg_1.b.x)), arg_1.b.x, arg_1.b.x), arg_1, func_4(Struct_1(vec2<i32>(1i, 9608i), select(select(arg_1.b, vec2<bool>(true, true), global0.b.x), global0.b, global0.b), 338f)));
    var_0 = Struct_2(vec3<i32>(~_wgslsmith_add_i32(~global0.a.x, -11671i), 2147483647i, u_input.a.x), vec4<i32>(abs(1i), _wgslsmith_mult_i32(-2147483647i, ~arg_3.x), max(u_input.a.x, 885i), ~arg_0 << (arg_2.x % 32u)), select(select(var_0.c, vec4<bool>(arg_1.b.x, select(false, true, global0.b.x), 21504u <= arg_2.x, true), select(var_0.c, select(var_0.c, vec4<bool>(arg_1.b.x, true, global0.b.x, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_0.e.b.x, arg_1.b.x, true, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, false, global0.b.x), global0.b.x))), var_0.c, !(!(!vec4<bool>(true, false, var_0.e.b.x, true)))), Struct_1(vec2<i32>(~firstLeadingBit(u_input.a.x), -select(-1238i, arg_1.a.x, var_0.c.x)), !(!(!vec2<bool>(false, var_0.d.b.x))), _wgslsmith_f_op_f32(step(-932f, arg_1.c))), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx, countOneBits(vec2<i32>(u_input.a.x, 40645i))), firstTrailingBit(0i)), select(select(var_0.d.b, func_4(Struct_1(vec2<i32>(-8198i, 200i), vec2<bool>(arg_1.b.x, arg_1.b.x), var_0.d.c)).b, !vec2<bool>(arg_1.b.x, true)), func_1(vec4<u32>(u_input.b, 4294967295u, 5951u, 55706u), vec3<f32>(global0.c, -1000f, arg_1.c), -var_0.e.a.x).b, arg_1.b.x), global0.c));
    var_0 = Struct_2(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(u_input.a.x, u_input.a.x, var_0.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1.a.x, max(0i, global0.a.x)), min(vec3<i32>(u_input.a.x, 10425i, 12384i) | arg_3, vec3<i32>(33503i, var_0.d.a.x, 6130i)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b >> (vec4<u32>(u_input.b, arg_2.x, arg_2.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.x, -33727i, arg_3.x, 36767i), global1[_wgslsmith_index_u32(0u, 25u)])), vec4<i32>(func_4(arg_1).a.x, 22630i, select(20893i, 2147483647i, arg_1.b.x), func_4(var_0.e).a.x)), select(vec4<bool>(true, var_0.c.x, global0.b.x, true), select(vec4<bool>(!global0.b.x, false, true, !arg_1.b.x), vec4<bool>(func_1(vec4<u32>(u_input.b, 72944u, 4294967295u, 0u), vec3<f32>(global0.c, arg_1.c, global0.c), var_0.e.a.x).b.x, false, any(var_0.c.zw), true), var_0.c), arg_1.b.x), arg_1, var_0.e);
    let var_1 = !vec3<bool>(select(func_1(abs(vec4<u32>(arg_2.x, arg_2.x, 85603u, 4294967295u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c, global0.c, arg_1.c))), _wgslsmith_add_i32(-2147483647i, 41717i)).b.x, true, func_1(vec4<u32>(0u, u_input.b, arg_2.x, 10989u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1665f, arg_1.c, 811f)), select(19564i, u_input.a.x, arg_1.b.x)).b.x), var_0.d.b.x, !global0.b.x);
    return Struct_2(abs(~max(-vec3<i32>(var_0.e.a.x, -15585i, arg_0), arg_3)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, -18584i, arg_3.x, u_input.a.x)), vec4<i32>(arg_3.x, -22019i, -53524i, global0.a.x) | vec4<i32>(global0.a.x, global0.a.x, arg_0, 0i)) ^ _wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(-2147483647i, 53296i, global0.a.x, arg_3.x)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -63266i, var_0.d.a.x), var_0.b)) | vec4<i32>(abs(-31572i), _wgslsmith_sub_i32(arg_1.a.x, -4689i), -arg_1.a.x, func_1(vec4<u32>(8980u, 41337u, 1u, 22731u), vec3<f32>(-209f, 409f, 541f), -1i).a.x), vec4<i32>(_wgslsmith_mult_i32(arg_3.x, ~arg_1.a.x), -arg_1.a.x >> (1u % 32u), 1i, u_input.a.x)), select(select(!select(vec4<bool>(global0.b.x, var_1.x, global0.b.x, false), vec4<bool>(true, var_1.x, var_1.x, global0.b.x), var_0.c), vec4<bool>(all(var_0.c), var_1.x, !var_1.x, func_4(var_0.d).b.x), func_3().x), var_0.c, select(vec4<bool>(true, all(vec2<bool>(false, true)), var_1.x, !arg_1.b.x), vec4<bool>(true, !var_1.x, true, arg_1.b.x), select(var_0.c, var_0.c, true))), var_0.d, func_1(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), ~vec4<u32>(62630u, 4294967295u, 19947u, 121691u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.c, _wgslsmith_f_op_f32(var_0.d.c - var_0.d.c), _wgslsmith_f_op_f32(-global0.c))), -_wgslsmith_div_i32(min(1i, u_input.a.x), max(u_input.a.x, -37747i))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = vec2<u32>(~(u_input.b ^ 1u), min(~29071u, u_input.b));
    var var_1 = !(~func_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), vec3<f32>(global0.c, -626f, -1467f), ~18720i).a.x != ~func_1(countOneBits(vec4<u32>(u_input.b, 48083u, 89664u, var_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-356f, 1365f, arg_1.e.c))), u_input.a.x | arg_1.b.x).a.x);
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~(-arg_2.a), countOneBits(vec2<i32>(-2147483647i, 5066i))), min(_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_1.d.a), ~u_input.a.zy), -select(vec2<i32>(arg_0, arg_1.e.a.x), arg_1.b.xx, true))), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - 1000f));
    return StorageBuffer(global1[_wgslsmith_index_u32(var_0.x, 25u)], _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, var_2.a.x, 0i, var_2.a.x), vec4<i32>(50265i, 1i, -2147483647i, 4271i), vec4<bool>(true, global0.b.x, false, true)) << ((vec4<u32>(4294967295u, 50850u, 1u, 48289u) | vec4<u32>(0u, 105888u, var_0.x, 61765u)) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_div_i32(arg_0, 3856i), func_4(arg_1.d).a.x, _wgslsmith_div_i32(25677i, 2147483647i))), -vec4<i32>(arg_2.a.x & arg_1.d.a.x, abs(18181i), var_2.a.x, ~global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-988f, arg_2.c)), 619f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(1305f, 1366f));
    var var_1 = 29312u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c)));
    let var_3 = min(abs(global0.a.x), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.x, u_input.a.x, u_input.a.x), u_input.a), 1i));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_dot_vec3_i32(u_input.a, ~(-_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(var_3, -20374i, 1i)))), func_5(~(~(-2147483647i)), func_4(func_1(~vec4<u32>(u_input.b, u_input.b, 7140u, u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(global0.c, 639f, var_2), vec3<f32>(-1092f, -2444f, -1000f)), global0.a.x)), firstLeadingBit(vec3<u32>(~40424u, ~102088u, u_input.b)), u_input.a), Struct_1(-vec2<i32>(0i, ~global0.a.x), vec2<bool>(false, global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -232f))))), -(~global0.a | u_input.a.yz));
}

