struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -276f, global2.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(621f, global2.b, 697f) - vec3<f32>(global2.b, -264f, 1492f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, global2.b) - vec3<f32>(-448f, global2.b, global2.b)) * vec3<f32>(global2.b, -2352f, global2.b))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.b)))), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -231f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b, -519f, _wgslsmith_f_op_f32(global2.b - -846f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1153f, -362f, -178f))), vec3<f32>(global2.b, 232f, _wgslsmith_f_op_f32(select(global2.b, global2.b, true)))))));
    global0 = !(!global2.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(853f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f * var_0.x)))), 2539f)));
    let var_1 = vec3<bool>(select(true, global2.a.x, (global2.b < global2.b) || false), global2.a.x, global2.c);
    return all(!vec2<bool>(arg_0.x > arg_0.x, global2.b == _wgslsmith_f_op_f32(-1229f * -577f)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    return func_3(vec4<i32>(-1i) * -countOneBits(vec4<i32>(2147483647i, -1i, 8930i, 1i)));
}

fn func_1() -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(415f, -1277f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.b, -344f), vec2<f32>(906f, global2.b))))));
    let var_0 = select(global2.a.xz, global2.a.zx, !global2.a.xx);
    let var_1 = vec3<bool>(!any(!global2.a.xy), _wgslsmith_f_op_f32(round(global2.b)) != global2.b, !global2.a.x);
    global2 = Struct_3(select(var_1, select(select(!vec3<bool>(var_0.x, true, false), var_1, !global2.a), !select(global2.a, var_1, global2.c), any(vec3<bool>(false, var_1.x, global2.a.x))), select(global2.a, !select(vec3<bool>(true, false, global2.a.x), vec3<bool>(false, global2.a.x, true), var_1), select(!vec3<bool>(true, global2.a.x, global2.a.x), !global2.a, select(var_1, var_1, vec3<bool>(global2.a.x, true, var_0.x))))), global2.b, true, ~(global2.d | (global2.d | vec4<u32>(1u, global2.d.x, global2.d.x, u_input.a))));
    global0 = var_1.x;
    return global1[_wgslsmith_index_u32(countOneBits(min(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 30008u, u_input.a, 68853u)), ~(~vec4<u32>(0u, 32671u, 46626u, 0u))))), 21u)];
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(~firstLeadingBit(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-1i, 71404i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(10591i, arg_1, arg_1), vec3<i32>(arg_1, 67837i, -1i), vec3<i32>(arg_1, -42501i, -1i)))), arg_2, func_1(), !(!vec4<bool>(func_3(vec4<i32>(arg_1, 2773i, 2147483647i, -1i)), true, global2.b < -260f, global2.b == -2200f)), select(select(global2.a, select(global2.a, select(global2.a, global2.a, arg_2.a), select(vec3<bool>(true, false, true), global2.a, true)), !(!vec3<bool>(true, arg_0, arg_0))), global2.a, false));
    var var_1 = ~abs(vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, 2147483647i, -894i, var_0.a.x));
    global0 = false;
    var_1 = vec4<i32>(var_1.x | ~_wgslsmith_dot_vec3_i32(-var_1.yxx, countOneBits(vec3<i32>(5450i, var_0.a.x, 66488i))), var_1.x, -1i, -1i);
    let var_2 = global2.d.yxw;
    return Struct_3(select(select(!global2.a, select(!var_0.e, var_0.d.xxz, var_0.c.a), vec3<bool>(false, arg_1 <= arg_1, func_2(vec2<f32>(-245f, global2.b)))), !vec3<bool>(true, arg_0 | false, false), !vec3<bool>(true, !arg_0, any(vec4<bool>(false, var_0.e.x, false, arg_2.a)))), global2.b, arg_0, global2.d >> ((vec4<u32>(1u, ~var_2.x, ~0u, _wgslsmith_sub_u32(17730u, global2.d.x)) << (firstTrailingBit(max(vec4<u32>(39208u, 1u, u_input.a, var_2.x), vec4<u32>(global2.d.x, u_input.a, var_2.x, 6924u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global2 = func_4(global2.c, ~_wgslsmith_add_i32(var_0, var_0), func_1());
    var var_1 = func_4(false & global2.c, var_0, func_1());
    var var_2 = Struct_1(any(vec2<bool>(global2.c, global2.a.x)));
    let var_3 = var_0;
    var var_4 = var_3 | max(-1i, _wgslsmith_div_i32(-select(1i, 0i, false), 1i >> (firstLeadingBit(1u) % 32u)));
    var var_5 = ~select(global2.d.wy, global2.d.xy, false);
    let var_6 = ~vec4<u32>(1u, global2.d.x, select(62413u, 1u, ~var_1.d.x >= min(var_5.x, u_input.a)), abs(4294967295u));
    var var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 0i, countOneBits(min(~var_1.d.zw, vec2<u32>(global2.d.x, u_input.a))));
}

