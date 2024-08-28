struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: array<Struct_3, 14>;

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-647f, 1434f, 1000f, 1000f), vec4<f32>(115f, -1491f, 434f, -154f), vec4<f32>(-1435f, -688f, 154f, -285f), vec4<f32>(1000f, -1469f, -1000f, -343f), vec4<f32>(1016f, -454f, 532f, -1958f), vec4<f32>(489f, 2567f, -978f, 441f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> vec2<bool> {
    return select(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), select(false, true, true)), vec2<bool>(true, u_input.a < 69315i)), vec2<bool>(true, true));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    return true | !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f * arg_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -1071f)) < _wgslsmith_f_op_f32(-732f - _wgslsmith_f_op_f32(-1000f - 894f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_3(vec2<bool>(true, !all(!global0[_wgslsmith_index_u32(97133u, 25u)])), Struct_1(-174f, true), Struct_1(1993f, true), 19463u);
    var var_1 = var_0.a;
    var var_2 = -1374f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a), var_0.c.a, var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a, 463f)))) - 1017f));
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-var_3.x), !(u_input.a < ~u_input.a)));
    return -472f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~(~select(vec3<u32>(99527u, 3938u, 0u), vec3<u32>(4294967295u, 50361u, 45455u), vec3<bool>(false, false, true)))));
    let var_1 = (~(~vec4<u32>(25153u, var_0.x, var_0.x, 4294967295u)) & ~(~(vec4<u32>(var_0.x, var_0.x, 0u, 11288u) << (vec4<u32>(0u, 98973u, 55670u, var_0.x) % vec4<u32>(32u))))) | ~(~((vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) | vec4<u32>(var_0.x, 2826u, 650u, 24635u)) >> (reverseBits(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))));
    global2 = array<vec4<f32>, 6>();
    global1 = array<Struct_3, 14>();
    let var_2 = Struct_3(!select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), select(func_1(), vec2<bool>(false, true), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-545f, 1f) + 890f), func_2(_wgslsmith_f_op_f32(abs(-644f)), Struct_1(-544f, true), vec3<bool>(true, u_input.a >= u_input.a, true))), Struct_1(_wgslsmith_f_op_f32(max(279f, _wgslsmith_f_op_f32(-298f * _wgslsmith_f_op_f32(select(-2210f, -730f, true))))), true), ~1u);
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_div_f32(var_2.b.a, var_2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2583f - -208f), _wgslsmith_f_op_f32(var_2.b.a + var_2.b.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1.x, var_1)) + _wgslsmith_f_op_f32(var_2.c.a + 1196f))), _wgslsmith_f_op_f32(f32(-1f) * -179f)), var_2.c, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-13315i, -13241i, u_input.a)), vec3<i32>(21306i, 2147483647i, 9260i) & select(vec3<i32>(-2147483647i, u_input.a, -14389i), vec3<i32>(0i, u_input.a, 1i), global0[_wgslsmith_index_u32(var_1.x, 25u)])), reverseBits(abs(-countOneBits(vec2<i32>(-1i, u_input.a)))), vec3<i32>(~countOneBits(max(u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-32892i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 8776i) ^ vec2<i32>(-31696i, 1i), vec2<i32>(-16359i, u_input.a))), u_input.a), vec4<i32>(1i, u_input.a, 37923i, u_input.a));
}

