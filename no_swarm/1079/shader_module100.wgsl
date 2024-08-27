struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: vec3<f32> = vec3<f32>(1756f, 1521f, -2713f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> bool {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_mult_u32(44615u, u_input.b.x);
    let var_2 = vec2<u32>(1u, abs(_wgslsmith_add_u32(u_input.a, 56159u)));
    var_1 = ~var_2.x;
    var_1 = countOneBits(firstLeadingBit(~(~var_2.x << (~30930u % 32u))));
    return any(vec3<bool>(true || any(vec4<bool>(true, true, true, true)), arg_0 > -292f, _wgslsmith_f_op_f32(step(376f, _wgslsmith_f_op_f32(max(1001f, arg_2.x)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + _wgslsmith_f_op_f32(trunc(335f)))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1989f, global2.x, -1595f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global2.x, arg_2)), arg_1)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, arg_2, arg_2) - vec3<f32>(global2.x, global2.x, -418f))))))));
    global1 = array<vec4<u32>, 28>();
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), select(~u_input.b, firstLeadingBit(u_input.b), arg_0.b)));
    global1 = array<vec4<u32>, 28>();
    global1 = array<vec4<u32>, 28>();
    return arg_1;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global2.xx), Struct_1(global2.x));
    let var_1 = Struct_1(-957f);
    var var_2 = select(max(vec4<u32>(28460u, u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 1u), ~(~u_input.c.x)), vec4<u32>(min(32695u, u_input.c.x) ^ u_input.a, _wgslsmith_clamp_u32(u_input.a, 11658u, u_input.a) | u_input.b.x, abs(u_input.b.x) & 42486u, 1u)), global1[_wgslsmith_index_u32(1u, 28u)], func_3(Struct_4(vec3<bool>(func_2(global2.x, u_input.d, vec4<f32>(861f, -1102f, 628f, -160f)), any(vec4<bool>(true, true, false, arg_0)), any(vec4<bool>(arg_0, true, arg_0, arg_0))), false, ~u_input.d, -26667i), !arg_0, global2.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-global2.zz))))), var_0.b);
    let var_3 = any(select(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(true, true, false, arg_0), arg_0 || false), vec4<bool>(arg_0, true | !arg_0, arg_0, !arg_0 != arg_0), true));
    return -firstLeadingBit(-vec4<i32>(u_input.d, u_input.d << (u_input.c.x % 32u), -14291i, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(true & !select(true, false, false)));
    let var_1 = Struct_4(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true, !((u_input.a <= u_input.a) & true)), all(vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(0i, -19259i, 15969i), vec3<i32>(0i, u_input.d, u_input.d), true), vec3<i32>(u_input.d, u_input.d, 7480i)), -_wgslsmith_sub_vec3_i32(var_0.yyx, var_0.yyx)), -min(var_0.x, -_wgslsmith_mult_i32(-2147483647i, var_0.x)));
    let var_2 = Struct_3(!var_1.a.x, select(~(-_wgslsmith_div_i32(var_1.c, -18794i)), -(_wgslsmith_mult_i32(2147483647i, u_input.d) | 1i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 562f) - _wgslsmith_f_op_f32(ceil(-736f))), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 2386f, global2.x, global2.x))))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(556f, global2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(-867f, -622f)))), global2.xy)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 1261f))));
    var var_3 = var_1.a;
    let var_4 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, var_2.b, reverseBits(-38136i), 1i | var_2.b));
}

