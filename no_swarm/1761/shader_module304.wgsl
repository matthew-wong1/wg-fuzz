struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: vec3<bool>;

var<private> global2: i32 = -35141i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    return 16900i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(-func_3(1u, 0i, Struct_1(51329i, 394f)) | (firstTrailingBit(1i) ^ -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, 1487f)))))));
    let var_1 = Struct_1(reverseBits((var_0.a ^ 2147483647i) << (u_input.a.x % 32u)), var_0.b);
    global1 = !(!select(vec3<bool>(!global1.x, global1.x, global1.x), vec3<bool>(!global1.x, true, true), any(vec2<bool>(true, true))));
    global0 = array<vec2<bool>, 9>();
    var var_2 = !select(true, var_1.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 1i, var_1.a), max(vec3<i32>(-1i, -78743i, 53145i), vec3<i32>(-44106i, var_0.a, var_0.a))), false);
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 2303f) * var_1.b));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    var var_0 = ~(-1i);
    let var_1 = arg_2.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(min(1669f, -997f)), _wgslsmith_f_op_f32(step(arg_2.b, -1000f)), arg_2.b) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(213f, 1315f, -2007f, arg_2.b), vec4<f32>(-1000f, -520f, -2440f, arg_2.b)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-966f, 596f, 491f, 872f), vec4<f32>(-1985f, arg_2.b, 1130f, arg_2.b))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(600f, arg_2.b), _wgslsmith_f_op_f32(floor(1221f)))), 872f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-343f, -1153f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.b + arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(f32(-1f) * -1787f), _wgslsmith_f_op_f32(-arg_2.b))))));
    let var_3 = Struct_1(arg_3, var_2.x);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -231f, var_3.b, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 723f, 2073f, var_3.b))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b * 666f))), var_2.x, 816f, arg_2.b)));
    return select(!select(!vec3<bool>(false, global1.x, true), vec3<bool>(true, true, true), true), vec3<bool>(false, global1.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(trunc(arg_2.b))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - -981f)), true & (reverseBits(arg_1.x) != ~(~0u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<u32>(8800u, abs(1u), 1535u, ~28088u);
    global1 = func_4(u_input.a.x, _wgslsmith_sub_vec2_u32(abs(_wgslsmith_add_vec2_u32(u_input.a.xz, var_0.zz) | (vec2<u32>(1u, u_input.a.x) >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)))), reverseBits(u_input.a.xx) | abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 21616u), vec2<u32>(1u, var_0.x)))), func_2(), 30407i);
    global2 = -1i;
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~reverseBits(vec2<i32>(var_1.a, -1i)), ~(~vec2<i32>(var_1.a, -45992i))), ~(vec2<i32>(-1i) * -vec2<i32>(var_1.a, arg_0.a))), _wgslsmith_f_op_f32(trunc(arg_0.b)));
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = global1.yx;
    let var_1 = any(select(vec4<bool>(false, global1.x, all(!vec4<bool>(false, var_0.x, true, var_0.x)), global1.x), vec4<bool>(!(!var_0.x), func_4(1u, ~vec2<u32>(4294967295u, 4294967295u), Struct_1(88314i, 307f), _wgslsmith_dot_vec2_i32(vec2<i32>(26115i, 1i), vec2<i32>(arg_1, -3083i))).x, false, true), select(!(!vec4<bool>(var_0.x, true, global1.x, global1.x)), !select(vec4<bool>(false, global1.x, true, false), vec4<bool>(true, true, true, global1.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(vec4<bool>(true, true, true, true)))));
    global0 = array<vec2<bool>, 9>();
    global1 = !vec3<bool>(true, arg_3.b < arg_2, false);
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(u_input.a.x) ^ arg_0, _wgslsmith_dot_vec4_u32((_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) ^ u_input.a) << (u_input.a % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 14158u, 1u, u_input.a.x), ~vec4<u32>(53436u, 13466u, arg_0, u_input.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 97231u), vec3<u32>(arg_0, arg_0, 4294967295u)), min(27825u, arg_0)))));
    return ~u_input.a.x <= 79400u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(!select(vec3<bool>(true, global1.x, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), vec3<bool>(global1.x, global1.x, global1.x | global1.x), false), !select(vec3<bool>(true, true, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x), vec3<bool>(false, true, global1.x)), select(!vec3<bool>(false, global1.x, global1.x), select(!vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, global1.x)), !(!vec3<bool>(true, true, global1.x))));
    let var_0 = vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 57782u), vec4<u32>(u_input.a.x, u_input.a.x, 2751u, 1u)), _wgslsmith_mult_u32(1u, 27894u), ~1u), vec4<u32>(abs(26641u), 53897u, u_input.a.x << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 42528u), vec3<u32>(3235u, 39101u, 0u))))));
    global1 = !vec3<bool>(func_5(50137u, _wgslsmith_mult_i32(~(-41677i), _wgslsmith_mod_i32(-2147483647i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1449f + -682f) + _wgslsmith_f_op_f32(f32(-1f) * -1049f)), func_1(Struct_1(1i, -203f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, -546f, 812f)))), true, true);
    global1 = select(select(!(!vec3<bool>(global1.x, false, true)), vec3<bool>(true, any(vec4<bool>(global1.x, global1.x, true, global1.x)) && false, true), !select(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, true), vec3<bool>(true, false, global1.x)), !vec3<bool>(global1.x, global1.x, false), !global1.x)), !(!(!(!vec3<bool>(global1.x, true, true)))), all(vec4<bool>(false, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 50578u), vec3<u32>(4294967295u, var_0.x, var_0.x)) < ~4294967295u, 1u > var_0.x, true)));
    var var_1 = -110654i;
    var var_2 = _wgslsmith_div_f32(-944f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1836f)))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -703f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2672f)) * -2066f))));
    let var_3 = 940f;
    let var_4 = _wgslsmith_div_u32(var_0.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec4<i32>(0i, 1i, -12614i, -30477i)) >> (vec4<u32>(29450u, 1u, ~var_0.x, u_input.a.x << (1u % 32u)) % vec4<u32>(32u)), -15056i & reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(70913i, -27298i, -2760i) << (vec3<u32>(0u, var_0.x, var_4) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(abs(1446f)))));
}

