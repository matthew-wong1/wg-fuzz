struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 1i, 1i);

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1259f, -674f), 4294967295u, vec3<u32>(47873u, 4294967295u, 12127u));

var<private> global3: f32;

var<private> global4: array<bool, 15> = array<bool, 15>(false, true, false, true, false, true, false, true, false, true, true, true, true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x), _wgslsmith_f_op_f32(-551f * global2.b.x)))) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_0 = !vec4<bool>(arg_0.a.x, !arg_1.a.x || !(true | arg_0.a.x), all(select(arg_0.a.zy, !arg_0.a.xx, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(33057u, global2.d.x), 15u)])), _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(global2.b.x * -823f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global2.b.x)), -428f, arg_0.a.x)));
    let var_1 = arg_0;
    let var_2 = var_1;
    var var_3 = Struct_1(select(!global2.a, vec3<bool>(true, true, true), global2.a), vec2<f32>(var_1.b.x, arg_0.b.x), ~arg_0.c, ~(~(~vec3<u32>(1u, arg_1.c, 6764u))) ^ (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_1.d.x, arg_0.c), vec3<u32>(47857u, 45795u, 0u)) & vec3<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 65862u, 0u)));
    return vec4<i32>(max(global0.x, -1i & _wgslsmith_mult_i32(u_input.b, ~(-1i))), abs(abs(~u_input.a)), firstLeadingBit(_wgslsmith_mod_i32(u_input.b, reverseBits(-59450i))) ^ max(1i, global0.x), min(~_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.x, -62530i), _wgslsmith_div_i32(15757i, global0.x)), 17816i));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global4 = array<bool, 15>();
    let var_0 = _wgslsmith_f_op_f32(sign(global2.b.x));
    let var_1 = vec4<u32>(1u, abs(global2.d.x), global2.d.x, 7031u);
    global0 = _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a, -7783i, global0.x), vec4<i32>(1i, -2147483647i, global0.x, global0.x)), func_3(Struct_1(global2.a, vec2<f32>(-1156f, arg_0.x), var_1.x, vec3<u32>(33405u, var_1.x, var_1.x)), Struct_1(global2.a, global2.b, var_1.x, vec3<u32>(var_1.x, 49755u, 12799u)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0.x, global0.x, -2147483647i), vec4<i32>(1i, u_input.a, global0.x, -28445i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, global0.x, 62110i), vec4<i32>(global0.x, global0.x, global0.x, 21162i)))), _wgslsmith_add_vec4_i32(func_3(Struct_1(!vec3<bool>(global4[_wgslsmith_index_u32(global2.d.x, 15u)], global4[_wgslsmith_index_u32(global2.c, 15u)], false), global2.b, 4294967295u, vec3<u32>(4294967295u, 19001u, global2.c)), Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(1u, 15u)], global2.a.x, true), vec2<f32>(-369f, global2.b.x), abs(1u), vec3<u32>(0u, 6365u, 58849u) | vec3<u32>(49362u, var_1.x, 22512u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.b, -47984i, u_input.a), ~(-vec4<i32>(u_input.a, global0.x, 1i, -1i)))));
    global2 = Struct_1(global2.a, global2.b, ~global2.d.x, abs(min(~(~vec3<u32>(28924u, var_1.x, 33963u)), var_1.wxw)));
    return global0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1372f)) - 1201f)))));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(365f, 490f)))) - arg_1.b)), ~arg_1.d.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1u, 0u), select(arg_1.d, arg_1.d, arg_1.a.x)) << (vec3<u32>(arg_1.d.x, _wgslsmith_mod_u32(35314u, 1756u), global2.c) % vec3<u32>(32u)), max(vec3<u32>(4294967295u, 50598u, select(global2.c, 4294967295u, false)), countOneBits(select(vec3<u32>(645u, global2.c, 40308u), global2.d, arg_1.a.x)))));
    global1 = global2.b.x;
    global1 = global2.b.x;
    let var_1 = arg_1;
    return Struct_1(vec3<bool>(global2.a.x, true, countOneBits(arg_1.c) == _wgslsmith_dot_vec3_u32(global2.d, firstLeadingBit(vec3<u32>(0u, 5049u, global2.d.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, -308f) + var_0.zx) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_2), vec2<f32>(-1000f, 2334f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b))))), _wgslsmith_mod_u32(~arg_1.d.x, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(91921u, var_1.c, 0u), vec3<u32>(~_wgslsmith_div_u32(4294967295u, 62467u), 10459u, 0u)));
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = -112f;
    global2 = func_4(select(~vec4<i32>(u_input.a << (31838u % 32u), -8476i, global0.x, func_2(vec3<f32>(global2.b.x, -900f, global2.b.x))), ~(~reverseBits(vec4<i32>(34834i, u_input.a, u_input.a, u_input.b))), vec4<bool>(any(global2.a.yy), any(!global2.a.xz), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 81899u, var_0, 1u), vec4<u32>(4294967295u, var_0, global2.d.x, global2.d.x)) != var_0, false)), Struct_1(select(global2.a, !global2.a, global2.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f * global2.b.x) * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f + global2.b.x) + var_1)), ~41898u, _wgslsmith_mod_vec3_u32(abs(global2.d >> (global2.d % vec3<u32>(32u))), global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b.x))) - var_1));
    var var_2 = vec3<f32>(281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1728f)), 698f);
    global1 = var_1;
    return Struct_1(global2.a, var_2.yx, ~(_wgslsmith_mult_u32(31310u, 8463u) & global2.c), ~(~min(vec3<u32>(global2.d.x, global2.c, global2.d.x), firstLeadingBit(global2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-global0.x));
    let var_1 = 1651f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1)))));
    var var_3 = func_1();
    var var_4 = func_1().a;
    let var_5 = Struct_1(var_3.a, vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -146f)), global2.c, _wgslsmith_div_vec3_u32(max(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.d.x, 4869u, global2.c), global2.d), ~vec3<u32>(5567u, var_3.c, 1u), true), vec3<u32>(65480u, 0u, var_3.d.x) >> (~global2.d % vec3<u32>(32u))), max(vec3<u32>(1u, var_3.c, min(global2.c, 1251u)), vec3<u32>(17147u, ~global2.d.x, _wgslsmith_add_u32(var_3.d.x, 94125u)))));
    var var_6 = _wgslsmith_mult_vec4_i32(firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0, var_0, 1i, var_0), ~vec4<i32>(-48858i, u_input.a, var_0, 2230i)))), -vec4<i32>(var_0, 1i, ~(~0i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0), global0.zw)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(select(var_6.wxz, global0.yxw, false))));
}

