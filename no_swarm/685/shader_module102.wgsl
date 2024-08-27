struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-237f, 1234f));

var<private> global1: vec4<u32>;

var<private> global2: Struct_4 = Struct_4(vec2<f32>(2522f, 912f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> i32 {
    var var_0 = arg_0;
    let var_1 = !(false || any(vec3<bool>(true, true, true)));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a.x - 1649f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + 715f) + global2.a.x)))));
    global1 = ~select(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(51204u, u_input.a, 73798u, 4294967295u), firstLeadingBit(vec4<u32>(0u, 4294967295u, 78535u, global1.x)), arg_0 > arg_0), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 26326u, global1.x, 7624u), vec4<u32>(u_input.a, 2887u, 17619u, 4294967295u))), min(abs(vec4<u32>(u_input.a, 31968u, 66269u, global1.x) ^ vec4<u32>(u_input.a, 0u, 1u, global1.x)), vec4<u32>(~global1.x, 96829u, global1.x ^ u_input.a, _wgslsmith_add_u32(0u, 0u))), true);
    let var_3 = Struct_1(var_1, !vec4<bool>(!var_1, any(select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), false)), true, var_1), 1f, (_wgslsmith_sub_u32(~u_input.a, global1.x ^ global1.x) | 1u) >> ((reverseBits(_wgslsmith_mult_u32(global1.x, u_input.a)) ^ u_input.a) % 32u));
    return reverseBits(~arg_0 & _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -1i), arg_0));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = func_3(-2147483647i, Struct_5(reverseBits(reverseBits(2147483647i))));
    global0 = Struct_4(global2.a);
    let var_1 = Struct_3(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(72668i, 0i, 44155i), firstTrailingBit(vec3<i32>(-36239i, -2147483647i, 0i))), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, -5435i, 11724i)), vec3<i32>(2147483647i, 0i, -55058i))), Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(max(-1000f, arg_0)), ~global1.x), Struct_1(!((arg_0 == global0.a.x) & true), vec4<bool>(_wgslsmith_f_op_f32(exp2(global2.a.x)) <= arg_0, true, true, select(true, true, select(true, false, true))), arg_0, ~(u_input.a & 4294967295u) | ~1u));
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21598i, 2147483647i ^ var_1.a.x, -1594i), -var_1.a & firstTrailingBit(vec3<i32>(var_1.a.x, 26302i, -15014i))), 1i, 1i), var_1.b, var_1.b);
    let var_3 = false;
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(vec3<i32>(1i, 44558i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(0i, 0i, 46073i, 41430i)), min(vec4<i32>(1i, -1008i, 2147483647i, -18749i), vec4<i32>(5231i, -1i, 10478i, -15581i))), -(~vec4<i32>(-2147483647i, -2147483647i, 33953i, -21640i)))), Struct_1(false, vec4<bool>(any(vec2<bool>(false, arg_0.b.x)) | true, !(!arg_1), !arg_1, false), arg_0.c, 54u), func_2(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.a.x, -874f, true))))).c));
    var var_1 = 1i;
    let var_2 = vec3<bool>(all(select(vec3<bool>(all(arg_0.b.xz), true, var_0.a.x > var_0.a.x), var_0.b.b.yzy, select(vec3<bool>(false, arg_0.a, true), !vec3<bool>(var_0.b.b.x, true, arg_0.a), arg_0.a))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-1474f * var_0.b.c))))).a, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.a.x)))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.a.x, global2.a.x, arg_0.a))))));
    var var_3 = var_0;
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global2.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.a))), vec2<bool>(select(true, false, false), true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 508f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global2.a, global0.a))))));
    return Struct_2(var_3.c.c, countOneBits(var_0.c.d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(416f, _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(abs(var_0.b.c))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(-arg_0.c)))));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -227f))), true);
    var_0 = func_4(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.a.x, global0.a.x)))))), all(vec2<bool>(true, _wgslsmith_f_op_f32(603f * global2.a.x) > _wgslsmith_f_op_f32(global0.a.x + var_0.a))));
    global1 = ~(~(~(~(~vec4<u32>(4294967295u, 4294967295u, u_input.a, global1.x)))));
    var var_1 = Struct_1(select(true, true | all(vec3<bool>(true, false, false)), true && (abs(-12320i) <= select(-16848i, 31884i, false))), select(vec4<bool>(func_2(_wgslsmith_f_op_f32(-var_0.c.x)).b.x, (global0.a.x < -259f) || true, func_2(_wgslsmith_f_op_f32(max(global2.a.x, 1103f))).a, false), !func_2(_wgslsmith_f_op_f32(f32(-1f) * -161f)).b, func_2(_wgslsmith_f_op_f32(-var_0.a)).b), _wgslsmith_f_op_f32(abs(-483f)), var_0.b);
    var_0 = func_4(func_2(_wgslsmith_f_op_f32(sign(323f))), false);
    return var_1.b.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_4(func_2(global0.a.x), var_0.x || var_0.x).a));
}

