struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 15>;

var<private> global3: vec3<u32>;

var<private> global4: Struct_2 = Struct_2(-31950i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    global2 = array<vec3<i32>, 15>();
    let var_0 = vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, i32(-1i) * -1i), arg_1.x));
    let var_1 = arg_2.c;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, arg_2.a.x) + arg_2.c.a.yy);
    let var_2 = Struct_2(_wgslsmith_add_i32(-arg_1.x, 40787i));
    return arg_2.e.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(~arg_1.b.x, ~u_input.e.x, 11686u)), u_input.e.wxy);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.a.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<u32>(func_3(Struct_1(arg_1.a, ~arg_1.b), -vec2<i32>(-2147483647i, global4.a), Struct_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -1426f, global0.x))), -vec2<i32>(u_input.a, u_input.c.x), Struct_1(vec4<f32>(arg_0, -489f, global0.x, global0.x), vec3<u32>(global3.x, 0u, 0u)), vec3<bool>(true, true, true), u_input.e), global0.x > -385f), 26035u, u_input.b.x & ~(u_input.b.x >> (51580u % 32u))));
    let var_1 = u_input.b.x;
    let var_2 = select(select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, false), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), true), any(vec4<bool>(true, true, true, true))), true), vec3<bool>(true, true, true), false);
    var var_3 = Struct_4(vec4<f32>(arg_0, var_0.a.x, _wgslsmith_div_f32(var_0.a.x, 127f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), reverseBits(abs(vec2<i32>(global4.a, _wgslsmith_add_i32(0i, -1i)))), arg_1, select(!var_2, !(!select(var_2, var_2, var_2)), vec3<bool>(global0.x == arg_0, true, true)), ~(~(~vec4<u32>(0u, u_input.b.x, 72868u, 0u)) | u_input.e));
    return Struct_2(0i);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(exp2(global0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1378f, global0.x, -193f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, 843f, 444f, 615f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -1036f, 1589f))))), u_input.b));
    let var_1 = any(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), !all(vec2<bool>(false, false))), select(0i != _wgslsmith_mod_i32(global4.a, var_0.a), any(vec2<bool>(false, true)) && true, true)));
    let var_2 = Struct_3(func_2(_wgslsmith_f_op_f32(1934f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 327f, -718f, 231f)), ~(vec3<u32>(1u, 0u, u_input.b.x) & u_input.e.xxx))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -618f) * global0.x) + 161f))) - 319f);
    var var_3 = var_2.a;
    return !vec3<bool>(var_1, true, var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = select(func_1(), select(!(!vec3<bool>(arg_2, false, arg_2)), select(!(!vec3<bool>(arg_2, false, false)), select(vec3<bool>(arg_2, true, false), !vec3<bool>(true, arg_2, true), any(vec2<bool>(arg_2, arg_2))), !(4294967295u <= global3.x)), vec3<bool>(!arg_2, !(!arg_2), !(!arg_2))), select(vec3<bool>(all(vec3<bool>(arg_2, arg_2, false)), true, false), !func_1(), arg_2));
    var var_2 = arg_2;
    var var_3 = func_1().xz;
    var_0 = 34400u;
    return Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-445f, -401f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(101f)) - _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-671f, _wgslsmith_f_op_f32(max(-926f, 130f)))) * -143f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * -1000f)))))), ~vec3<u32>(8829u, 71863u, 10129u >> (reverseBits(0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_4(Struct_2(u_input.a), u_input.e, any(select(vec3<bool>(false, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, false, true), select(func_1(), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.zyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.a.xzw, var_1.a.zxz)) * vec3<f32>(var_1.a.x, -2755f, -389f)))));
    var_0 = any(vec4<bool>(-679f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - var_2.x))), false, true, u_input.a < _wgslsmith_div_i32(-2147483647i, -2147483647i)));
    let var_3 = var_1;
    var var_4 = _wgslsmith_mult_vec4_i32(-((vec4<i32>(-51327i, 0i, u_input.c.x, -2147483647i) ^ vec4<i32>(global4.a, -10893i, global4.a, 0i)) >> (u_input.e % vec4<u32>(32u))), -(~firstLeadingBit(countOneBits(vec4<i32>(1i, u_input.d.x, global4.a, u_input.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-654f, _wgslsmith_f_op_f32(f32(-1f) * -665f), 1000f), u_input.b.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_3.a)))), _wgslsmith_f_op_vec4_f32(select(var_3.a, var_1.a, select(vec4<bool>(true, true, 0u > global3.x, var_1.a.x < -595f), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, false)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)))), ~_wgslsmith_div_vec4_u32(u_input.e, firstLeadingBit(u_input.e)));
}

