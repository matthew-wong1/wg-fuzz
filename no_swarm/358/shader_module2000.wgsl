struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1661f, -1000f), vec2<f32>(1161f, -1517f), vec2<f32>(-2360f, 500f), vec2<f32>(-379f, 1032f), vec2<f32>(1000f, 304f), vec2<f32>(981f, -1000f), vec2<f32>(-259f, -954f), vec2<f32>(-794f, 461f));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(u_input.a.x, min(firstTrailingBit(firstLeadingBit(select(vec4<u32>(23130u, u_input.b, u_input.b, 75939u), vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), arg_0.b))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(0u, u_input.b, u_input.b, 21692u)))));
    var var_1 = ~(1u >> (var_0.b.x % 32u)) << ((6532u ^ _wgslsmith_mod_u32(reverseBits(var_0.b.x), _wgslsmith_sub_u32(var_0.b.x, 1997u ^ var_0.b.x))) % 32u);
    var var_2 = _wgslsmith_mult_i32(0i, -countOneBits(~(var_0.a << (u_input.b % 32u))));
    let var_3 = Struct_2(2147483647i, ~(~var_0.b));
    let var_4 = var_3.b;
    return arg_0;
}

fn func_3() -> vec2<bool> {
    global0 = array<vec2<f32>, 8>();
    global0 = array<vec2<f32>, 8>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - vec2<f32>(682f, 453f)))), _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), vec2<u32>(1u, u_input.b) & vec2<u32>(u_input.b, 10698u)), 8u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, global1.x)))), global1.yz);
    var var_1 = all(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), all(vec3<bool>(true, false, true))), false));
    var var_2 = Struct_1(max(max(_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c)), -_wgslsmith_sub_i32(-39995i, 43602i)), -45503i), !(!(all(vec3<bool>(false, true, false)) != true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * -631f));
    return select(!vec2<bool>(!var_2.b, !(var_2.c < global1.x)), vec2<bool>(var_2.b, true), !(!select(vec2<bool>(var_2.b, true), !vec2<bool>(var_2.b, false), any(vec4<bool>(var_2.b, var_2.b, false, true)))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = func_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a.zyw, u_input.a.yyy), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true))), -1191f), !select(vec3<bool>(true, true, false), vec3<bool>(arg_0.b.x == 1312u, all(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(select(803f, 215f, true))));
    let var_1 = select(vec2<bool>(!var_0.b, var_0.b), select(vec2<bool>(!var_0.b, !(!var_0.b)), vec2<bool>(2147483647i <= arg_0.a, true), !vec2<bool>(true, var_0.b)), select(!select(select(vec2<bool>(var_0.b, false), vec2<bool>(true, false), vec2<bool>(var_0.b, true)), vec2<bool>(true, var_0.b), u_input.c >= var_0.a), select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(!var_0.b, true), func_3()), false));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-964f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1144f, var_0.c), _wgslsmith_f_op_f32(var_0.c * 409f))))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_div_f32(170f, global1.x) * _wgslsmith_f_op_f32(-195f - -875f)))));
    let var_2 = func_2(Struct_1(-_wgslsmith_add_i32(i32(-1i) * -1i, ~u_input.a.x), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * -857f) - var_0.c))), select(select(select(select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_0.b, true, true), vec3<bool>(false, var_1.x, true)), vec3<bool>(true, true, true), var_0.b), select(!vec3<bool>(var_1.x, false, false), !vec3<bool>(true, var_1.x, var_1.x), true), true), !(!vec3<bool>(var_1.x, false, var_1.x)), select(select(!vec3<bool>(var_1.x, var_0.b, var_0.b), vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, var_0.b), vec3<bool>(var_1.x, var_1.x, false), var_0.b)), !select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, false, var_0.b)), var_0.b)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-660f)), 218f));
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_2 {
    return Struct_2(u_input.a.x, firstLeadingBit(vec4<u32>(firstLeadingBit(38478u), u_input.b, u_input.b, arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-_wgslsmith_dot_vec2_i32(vec2<i32>(func_1(Struct_2(u_input.a.x, vec4<u32>(u_input.b, 1u, 25385u, 66649u))), ~0i), u_input.a.xy), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(-965f)), -793f))), ~(~(~vec2<u32>(0u, u_input.b))) >> ((select(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 1u)), true) >> (abs(vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1030f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x))));
}

