struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<bool>(false, true), -470f, i32(-2147483648));

var<private> global1: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(931f, 921f), vec2<f32>(422f, -1125f), vec2<f32>(-289f, 456f), vec2<f32>(938f, -505f), vec2<f32>(-2422f, -1006f), vec2<f32>(1220f, 1105f), vec2<f32>(-1216f, 1382f), vec2<f32>(-191f, 378f), vec2<f32>(-391f, -2015f), vec2<f32>(317f, -609f), vec2<f32>(-346f, -1000f));

var<private> global2: Struct_1 = Struct_1(true, vec2<bool>(false, false), 2058f, 63001i);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, vec2<bool>(false, true), -188f, -59230i), Struct_1(true, vec2<bool>(true, true), -354f, 32471i), Struct_1(false, vec2<bool>(true, false), -1019f, -26232i), Struct_1(false, vec2<bool>(false, true), -1015f, 0i), Struct_1(true, vec2<bool>(true, true), 540f, 6768i), Struct_1(false, vec2<bool>(false, true), 390f, 50183i), Struct_1(false, vec2<bool>(true, false), -478f, 61947i), Struct_1(false, vec2<bool>(false, true), -1042f, -7724i), Struct_1(true, vec2<bool>(false, true), 461f, 2147483647i), Struct_1(true, vec2<bool>(true, true), -257f, -1i), Struct_1(false, vec2<bool>(false, false), -291f, 1785i), Struct_1(false, vec2<bool>(false, true), -363f, -1i), Struct_1(true, vec2<bool>(true, false), -1000f, -23697i), Struct_1(true, vec2<bool>(false, false), -1429f, 48730i), Struct_1(true, vec2<bool>(true, false), 826f, 22499i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1568f, -1006f)), global2.c);
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4439u, 4294967295u, arg_0 >> (_wgslsmith_add_u32(arg_0, 45553u) % 32u)), _wgslsmith_mult_vec3_u32(select(countOneBits(vec3<u32>(arg_0, 0u, arg_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(46972u, arg_0, arg_0), vec3<u32>(arg_0, 0u, 9409u)), !vec3<bool>(global0.b.x, global0.b.x, true)), ~vec3<u32>(12707u, arg_0, arg_0))), 11u)]));
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec2<i32> {
    global2 = Struct_1(arg_1, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(16382u, 2049f)))))), global0.d);
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(528f - -577f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.c))) * _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, -204f) + _wgslsmith_f_op_f32(floor(arg_0.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, arg_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, global0.c, global0.c) * vec3<f32>(1000f, 749f, global2.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-907f, -401f, 122f)), !(!vec3<bool>(true, true, arg_1)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-306f, -1100f, -369f))), vec3<f32>(_wgslsmith_div_f32(global2.c, global0.c), global2.c, 177f)))));
    let var_1 = -abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.d, -2147483647i, -69497i), vec4<i32>(arg_0.d, arg_0.d, 2147483647i, 2147483647i))) << (~vec4<u32>(~_wgslsmith_mod_u32(arg_2, 760u), ~arg_2, ~(arg_2 & arg_2), 1u) % vec4<u32>(32u));
    global0 = arg_0;
    return _wgslsmith_sub_vec2_i32(abs(~(-(var_1.xw >> (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))))), _wgslsmith_div_vec2_i32(~var_1.xw, vec2<i32>(~global2.d, select(21052i, u_input.a, false))) | _wgslsmith_mult_vec2_i32(var_1.wy >> ((vec2<u32>(arg_2, arg_2) ^ vec2<u32>(arg_2, 4294967295u)) % vec2<u32>(32u)), ~(-var_1.xx)));
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_1 = ~(~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(2742u, 31320u, 1u, 1u), vec4<u32>(20388u, 39368u, 4294967295u, 13959u), global0.b.x), vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = ~32331u;
    let var_2 = Struct_1(all(vec3<bool>(any(!vec3<bool>(var_0.a, true, false)), !any(vec4<bool>(true, global2.b.x, var_0.b.x, global0.a)), true)), !select(vec2<bool>(true, any(global2.b)), select(global2.b, !global0.b, !global0.a), global0.b.x), var_0.c, 1i);
    let var_3 = global3[_wgslsmith_index_u32(1u, 15u)];
    return Struct_1(var_0.c <= global0.c, select(select(!var_0.b, var_2.b, var_2.a), select(!(!vec2<bool>(global0.a, global2.b.x)), !global0.b, !global2.b), var_2.b.x), 478f, i32(-1i) * -38416i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, global2.c) + -1507f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2286f)), _wgslsmith_f_op_f32(step(global0.c, 372f))))), -1737f, 1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1535f)), _wgslsmith_f_op_f32(452f * global2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))), !(false | global0.b.x))) + 697f));
    let var_1 = func_4(_wgslsmith_dot_vec2_i32(~min(~vec2<i32>(1i, -2147483647i), vec2<i32>(global2.d, u_input.b)), _wgslsmith_mod_vec2_i32(func_2(global3[_wgslsmith_index_u32(16925u, 15u)], true, 0u) & _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-5250i, u_input.a)), ~_wgslsmith_div_vec2_i32(vec2<i32>(22315i, u_input.b), vec2<i32>(global2.d, global2.d)))));
    global3 = array<Struct_1, 15>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global0.c)), true)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c, -468f)))))) - _wgslsmith_f_op_vec2_f32(var_0.xx + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.c, 965f))))))) * global1[_wgslsmith_index_u32(0u, 11u)]);
    var var_3 = vec2<bool>(any(vec2<bool>(global2.b.x, true)), all(vec3<bool>(all(global0.b), any(vec3<bool>(true, true, true)), false)));
    var var_4 = Struct_1(-423f > _wgslsmith_f_op_f32(sign(var_2.x)), vec2<bool>(true, true), global2.c, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(1u, 1u)));
}

