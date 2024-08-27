struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-7583i, i32(-2147483648), -27147i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = reverseBits(~select(firstLeadingBit(select(vec3<i32>(global0.x, 19510i, global0.x), vec3<i32>(global0.x, 1i, -2147483647i), vec3<bool>(true, false, true))), firstLeadingBit(firstTrailingBit(vec3<i32>(-2147483647i, global0.x, -1i))), true | all(vec2<bool>(false, false))));
    var var_0 = reverseBits(arg_1) | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x & 12183u, arg_1, ~0u, ~20439u), vec4<u32>(~(~arg_1), firstLeadingBit(_wgslsmith_clamp_u32(29473u, 0u, u_input.a.x)), arg_1, ~(~46771u)));
    let var_1 = all(vec4<bool>(true, _wgslsmith_f_op_f32(floor(1582f)) >= arg_0.a, true, 8845u <= _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_1, u_input.a.x), vec4<u32>(4672u, u_input.a.x, 4294967295u, 4294967295u)), 1u ^ u_input.a.x)));
    var_0 = 20753u;
    let var_2 = arg_0;
    return _wgslsmith_div_f32(var_2.a, -529f);
}

fn func_2() -> Struct_2 {
    var var_0 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(7938i, 1i, ~_wgslsmith_mod_i32(1i, global0.x), global0.x), -reverseBits(vec4<i32>(global0.x, 8961i, global0.x, global0.x))));
    let var_1 = ~(max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-20701i, -1i, -23645i, var_0.x), vec4<i32>(-30592i, -1i, var_0.x, var_0.x), false), vec4<i32>(26420i, 11664i, global0.x, -19691i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), abs(~vec4<i32>(-66583i, 28862i, global0.x, 56159i))) ^ _wgslsmith_div_vec4_i32(min(vec4<i32>(-2147483647i, var_0.x, global0.x, var_0.x), vec4<i32>(-2147483647i, -21022i, 0i, global0.x)) & vec4<i32>(global0.x, global0.x, -58966i, 0i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-4174i, var_0.x, global0.x, -6169i), vec4<i32>(global0.x, -15904i, global0.x, var_0.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-360f + 518f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2579f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(-992f - 1175f)), _wgslsmith_f_op_f32(abs(-196f)))), vec4<f32>(_wgslsmith_f_op_f32(996f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(242f, -927f)) * 551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(func_3(Struct_1(-568f), 1u)))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)))))));
    var var_3 = Struct_2(vec2<bool>(true, true), vec3<i32>(countOneBits(-36651i), global0.x, ~_wgslsmith_sub_i32(var_1.x, -global0.x)));
    let var_4 = _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(~u_input.a.x, ~u_input.a.x)), ~(~abs(u_input.a)));
    return Struct_2(select(!(!(!var_3.a)), vec2<bool>(true, !var_3.a.x), vec2<bool>(false, any(!vec3<bool>(true, var_3.a.x, false)))), vec3<i32>(global0.x, abs(-var_0.x), _wgslsmith_mult_i32(var_1.x, firstTrailingBit(1i))) | ~reverseBits(var_1.xzz));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global0 = -(~countOneBits(vec3<i32>(min(global0.x, -2147483647i), firstTrailingBit(global0.x), ~global0.x)));
    var var_0 = func_2();
    var var_1 = Struct_2(vec2<bool>(var_0.a.x, var_0.a.x), var_0.b);
    var_0 = func_2();
    var_0 = func_2();
    return Struct_2(var_0.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.b, var_0.b), firstLeadingBit(vec3<i32>(global0.x, -26218i, global0.x)) ^ ~var_0.b), vec3<i32>(73156i, func_2().b.x, global0.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_2(arg_2.a, (max(~vec3<i32>(18517i, arg_2.b.x, arg_2.b.x), ~arg_1.b) & vec3<i32>(_wgslsmith_mod_i32(2147483647i, global0.x), 1i, firstLeadingBit(arg_1.b.x))) >> (vec3<u32>(29734u, 4294967295u, min(u_input.a.x, ~u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = global0.x;
    var_0 = Struct_2(vec2<bool>(_wgslsmith_sub_i32(-2147483647i, -2147483647i) < func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 24742u, u_input.a.x) % vec3<u32>(32u))).b.x, !arg_1.a.x), vec3<i32>(_wgslsmith_div_i32(-arg_2.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, -1i, arg_2.b.x, -30671i), vec4<i32>(27248i, arg_1.b.x, arg_1.b.x, arg_1.b.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b.x, -45862i), -2074i), _wgslsmith_div_i32(1i, firstTrailingBit(30397i))));
    global0 = vec3<i32>(firstLeadingBit(global0.x), firstLeadingBit(var_0.b.x), _wgslsmith_mod_i32(~(~(-2147483647i)), -1i));
    var var_2 = true;
    return vec3<f32>(arg_0, arg_3.x, -794f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(1624f, func_1(countOneBits(vec3<u32>(1u, ~u_input.a.x, u_input.a.x))), arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-932f, arg_0.x, _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.x), 0u)))))));
    let var_1 = func_2();
    global0 = var_1.b;
    global0 = vec3<i32>(arg_1.b.x, 10902i, arg_2.b.x);
    var var_2 = func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(31786u, _wgslsmith_mod_u32(abs(u_input.a.x), ~u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, firstLeadingBit(40152u))), firstLeadingBit(vec3<u32>(48199u, u_input.a.x, u_input.a.x)) | abs(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))));
    return Struct_1(_wgslsmith_f_op_f32(var_0.x - -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1916f);
    let var_1 = ((_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a.x), ~0u) < 2027u) | !((global0.x == global0.x) | all(vec3<bool>(true, false, false)))) && !any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(true, true)));
    let var_2 = Struct_2(vec2<bool>(any(vec2<bool>(any(vec4<bool>(var_1, var_1, true, var_1)), any(vec2<bool>(var_1, var_1)))), any(select(select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, true, false, var_1), vec4<bool>(var_1, true, var_1, false)), !vec4<bool>(true, false, var_1, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_1, false, var_1), var_1)))), vec3<i32>(-1i, -_wgslsmith_clamp_i32(global0.x, -19046i, -2147483647i) & global0.x, -1i));
    var var_3 = vec2<u32>(15159u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, abs(u_input.a.x), ~18637u), u_input.a.x ^ ~0u));
    global0 = var_2.b >> (vec3<u32>(var_3.x, 3900u, 1u) % vec3<u32>(32u));
    var var_4 = Struct_1(1000f);
    let var_5 = false;
    var_4 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, var_4.a, var_4.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1531f, var_0.a, var_4.a) - vec3<f32>(var_4.a, 809f, -240f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1207f, -659f, -1173f) + vec3<f32>(344f, var_0.a, 345f)))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_4.a)), func_1(~vec3<u32>(var_3.x, 15700u, var_3.x)), Struct_2(var_2.a, abs(var_2.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, var_0.a, -392f)))))), false)), Struct_2(vec2<bool>(true, var_1), var_2.b & (func_1(vec3<u32>(var_3.x, var_3.x, 1u)).b << (vec3<u32>(6503u, 90722u, var_3.x) % vec3<u32>(32u)))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(-2147483647i), i32(-1i) * -var_2.b.x, vec2<f32>(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(399f, -1747f, -1012f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 466f, 1324f))), func_2(), var_2).a, -794f));
}

