struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(1u, 10365u), min(~arg_1, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 45245u), vec4<u32>(u_input.a, 0u, arg_1, u_input.a), false), reverseBits(vec4<u32>(4294967295u, 24170u, arg_1, u_input.a)))));
    return ~select(arg_1, 4294967295u >> (~var_0.x % 32u), arg_3);
}

fn func_2() -> vec2<bool> {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-912f, 1112f)))))), -1000f, 677f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1242f, -301f, -143f, -156f) - vec4<f32>(1000f, 269f, -724f, 550f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1639f, -320f, 1652f), vec4<f32>(198f, -385f, -1000f, -1213f))), vec4<f32>(-1000f, -930f, -1043f, -471f)))));
    let var_2 = !select(!vec3<bool>(8168i <= var_0.x, false, true), !vec3<bool>(false, true, all(vec2<bool>(false, false))), select(any(vec3<bool>(true, true, true)), !select(true, false, false), !(var_1.x != var_1.x)));
    var var_3 = ~(~_wgslsmith_add_u32(max(select(u_input.a, u_input.a, false), 1u), reverseBits(u_input.a)));
    var_3 = _wgslsmith_mult_u32(u_input.a, ~func_3(-508f, ~1056u, global0[_wgslsmith_index_u32(u_input.a, 4u)], all(var_2.yz))) | (~abs(u_input.a) & (u_input.a >> (~(~u_input.a) % 32u)));
    return !vec2<bool>(true, var_2.x);
}

fn func_1() -> Struct_2 {
    var var_0 = -258f;
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-606f))) >= _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -630f))));
    let var_2 = select(vec2<bool>(all(!(!vec3<bool>(var_1, var_1, true))), all(vec4<bool>(!var_1, var_1, any(vec2<bool>(false, var_1)), true))), select(func_2(), vec2<bool>(!var_1, all(!vec4<bool>(var_1, var_1, false, true))), func_2()), !select(select(select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(false, true), vec2<bool>(var_1, true), false), var_1), vec2<bool>(true, !var_1), vec2<bool>(!var_1, true)));
    let var_3 = 458f;
    let var_4 = Struct_3(u_input.b.x, -727f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3, 345f)) * -1333f)), Struct_2(Struct_1(!(global0[_wgslsmith_index_u32(31960u, 4u)] <= u_input.b.x), ~(~0u), vec4<bool>(any(vec3<bool>(false, false, false)), !var_2.x, select(true, var_1, var_2.x), var_1)), Struct_1(-540f < _wgslsmith_f_op_f32(-var_3), 4294967295u, !vec4<bool>(var_1, false, false, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, -726f), vec3<f32>(var_3, var_3, -1445f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -1079f, 1457f)))));
    return var_4.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~(1u << (~_wgslsmith_add_u32(arg_0.c.b.b >> (4407u % 32u), firstLeadingBit(0u)) % 32u));
    var var_1 = min(~20427u, ~(53958u ^ u_input.a));
    var_1 = 1u;
    global0 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.c.x, func_1().c.x) * -571f));
    return Struct_2(func_1().b, Struct_1(!(_wgslsmith_f_op_f32(arg_1.c.x * arg_0.c.c.x) <= _wgslsmith_f_op_f32(-arg_0.c.c.x)), abs(arg_0.c.a.b), vec4<bool>(arg_1.b.a, arg_1.b.c.x, arg_1.b.a, arg_0.b)), _wgslsmith_f_op_vec3_f32(select(arg_0.c.c, arg_0.c.c, !any(select(vec3<bool>(false, true, arg_1.b.a), vec3<bool>(false, true, false), false)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = func_4(arg_2, func_1());
    var var_1 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_3 << (vec3<u32>(0u, 50029u, arg_3.x) % vec3<u32>(32u)), min(arg_0.xxz, vec3<u32>(68042u, u_input.a, arg_3.x)), ~vec3<u32>(4294967295u, 0u, arg_0.x)), _wgslsmith_mod_vec3_u32(~arg_0.wxz, vec3<u32>(_wgslsmith_add_u32(arg_1.c.a.b, var_0.b.b), arg_3.x << (6402u % 32u), func_1().b.b)), select(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(21715u, arg_0.x, arg_2.c.a.b)), ~arg_3), countOneBits(arg_3), any(var_0.b.c.wyw))) | ~abs(arg_0.zww);
    global0 = array<i32, 4>();
    var var_2 = arg_2;
    var_2 = arg_1;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_sub_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], u_input.b.x, 12157i, -1i), u_input.b), firstLeadingBit(u_input.b), vec4<bool>(false, false, false, true)), vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(-3313i, global0[_wgslsmith_index_u32(u_input.a, 4u)]), reverseBits(1i), firstLeadingBit(u_input.b.x))));
    var var_1 = ~vec3<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, ~31662u), 0u), 37795u);
    var var_2 = func_5(vec4<u32>(u_input.a ^ 4294967295u, ~firstTrailingBit(39232u), var_1.x, 31079u), Struct_3(_wgslsmith_sub_i32(29651i, countOneBits(global0[_wgslsmith_index_u32(0u, 4u)]) << (u_input.a % 32u)), false, func_4(Struct_3(i32(-1i) * -36553i, true, func_1()), Struct_2(Struct_1(false, var_1.x, vec4<bool>(false, false, false, true)), func_1().a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(498f, 127f, 424f)))))), Struct_3(reverseBits(abs(0i)) | var_0.x, all(vec2<bool>(true, true)), Struct_2(func_4(Struct_3(var_0.x, false, Struct_2(Struct_1(false, 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(true, var_1.x, vec4<bool>(true, true, true, false)), vec3<f32>(-1268f, 476f, -287f))), func_1()).b, Struct_1(false, u_input.a, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-778f, -1930f, 347f))))))), firstTrailingBit(vec3<u32>(1u >> (u_input.a % 32u), ~_wgslsmith_div_u32(u_input.a, 65599u), 38987u)));
    let var_3 = Struct_2(var_2.c.a, func_5(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 18225u, var_2.c.b.b, var_2.c.a.b), vec4<u32>(23619u, var_1.x, 0u, u_input.a)) >> ((vec4<u32>(var_2.c.b.b, 4294967295u, 1u, var_2.c.b.b) << (vec4<u32>(var_1.x, 52030u, var_1.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_3(-1i, func_4(Struct_3(global0[_wgslsmith_index_u32(var_1.x, 4u)], true, Struct_2(var_2.c.a, Struct_1(var_2.c.a.c.x, 48155u, var_2.c.a.c), var_2.c.c)), func_1()).b.a, var_2.c), Struct_3(_wgslsmith_div_i32(var_2.a, u_input.b.x), select(!var_2.c.a.a, true, 28324u == var_2.c.a.b), func_5(vec4<u32>(var_1.x, 330u, var_2.c.b.b, var_2.c.b.b), Struct_3(global0[_wgslsmith_index_u32(var_2.c.a.b, 4u)], false, var_2.c), func_5(vec4<u32>(6193u, var_2.c.a.b, var_2.c.b.b, var_1.x), Struct_3(global0[_wgslsmith_index_u32(var_2.c.a.b, 4u)], var_2.b, var_2.c), Struct_3(global0[_wgslsmith_index_u32(1u, 4u)], false, var_2.c), vec3<u32>(4294967295u, var_2.c.b.b, 1u)), select(vec3<u32>(15664u, 17871u, var_2.c.b.b), vec3<u32>(var_1.x, var_2.c.a.b, 63905u), var_2.c.a.c.x)).c), ~countOneBits(vec3<u32>(1u, var_1.x, 27655u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_2.c.b.b) & vec3<u32>(u_input.a, 71926u, 4294967295u), vec3<u32>(var_1.x, 4992u, 110987u))).c.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.c.x, _wgslsmith_f_op_f32(-1387f - var_2.c.c.x), _wgslsmith_f_op_f32(-1455f * _wgslsmith_f_op_f32(f32(-1f) * -2516f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1199f, -1000f, -994f) + vec3<f32>(-1000f, var_2.c.c.x, 412f))), var_2.c.c)));
    var_2 = Struct_3(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(u_input.a, 4u)], u_input.b.x), ~1i), var_3.a.a, Struct_2(Struct_1(var_3.b.a, 1u, func_4(func_5(vec4<u32>(22909u, 1954u, var_2.c.a.b, u_input.a), Struct_3(2147483647i, false, Struct_2(var_2.c.b, Struct_1(false, 9365u, var_3.a.c), vec3<f32>(var_2.c.c.x, var_2.c.c.x, 430f))), Struct_3(-1i, var_3.a.a, var_2.c), vec3<u32>(var_3.a.b, var_3.a.b, 1u)), Struct_2(Struct_1(var_3.b.a, 4265u, var_2.c.b.c), Struct_1(var_2.b, 4294967295u, var_3.a.c), vec3<f32>(var_3.c.x, var_3.c.x, -224f))).a.c), Struct_1((var_2.b & false) || false, _wgslsmith_sub_u32(func_4(Struct_3(var_0.x, var_2.b, Struct_2(var_2.c.a, Struct_1(true, var_3.a.b, vec4<bool>(var_2.b, true, false, true)), vec3<f32>(430f, var_3.c.x, var_2.c.c.x))), var_2.c).a.b, _wgslsmith_sub_u32(0u, var_1.x)), vec4<bool>(select(var_3.a.a, true, var_3.b.c.x), false, true, func_4(Struct_3(var_2.a, var_3.b.c.x, var_3), Struct_2(var_3.a, Struct_1(false, var_3.a.b, vec4<bool>(var_2.b, var_3.b.a, var_2.b, true)), var_2.c.c)).b.c.x)), func_5(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 71981u, var_1.x), vec4<u32>(u_input.a, var_3.b.b, var_2.c.b.b, u_input.a)), Struct_3(u_input.b.x, select(var_3.a.a, var_3.a.c.x, false), func_1()), Struct_3(-14282i, false, func_5(vec4<u32>(u_input.a, var_2.c.b.b, 4294967295u, u_input.a), Struct_3(global0[_wgslsmith_index_u32(var_1.x, 4u)], var_2.c.b.c.x, var_2.c), Struct_3(-17729i, false, Struct_2(var_2.c.a, Struct_1(var_3.b.a, var_1.x, vec4<bool>(var_2.c.a.a, true, false, true)), vec3<f32>(var_2.c.c.x, 743f, -463f))), vec3<u32>(58438u, 28566u, 1u)).c), ~vec3<u32>(var_3.a.b, var_2.c.b.b, 10058u)).c.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, _wgslsmith_mult_vec3_u32(firstLeadingBit(firstLeadingBit(~vec3<u32>(1u, 0u, 11882u))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(42918u), var_2.c.b.b, firstLeadingBit(var_1.x)), vec3<u32>(_wgslsmith_div_u32(var_1.x, var_3.b.b), _wgslsmith_mult_u32(1u, 4394u), ~u_input.a))));
}

