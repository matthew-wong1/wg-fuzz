struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = 773f;
    var var_1 = max(~select(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 53435u), vec4<bool>(true, false, false, true)), ~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)), true), abs(~select(countOneBits(vec4<u32>(1u, 1u, u_input.a.x, 0u)), ~vec4<u32>(94964u, 27089u, 30370u, 25610u), true)));
    let var_2 = vec3<u32>(~(1u ^ countOneBits(u_input.a.x)), ~_wgslsmith_add_u32(26344u, ~u_input.a.x), var_1.x) | ~reverseBits(vec3<u32>(_wgslsmith_mult_u32(62037u, 6409u), 4294967295u, abs(9769u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-128f, var_0)))), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(924f, _wgslsmith_f_op_f32(step(var_0, 2596f))))), Struct_1(firstTrailingBit(u_input.c) ^ 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(245f)), _wgslsmith_f_op_f32(ceil(830f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global0.b)))))));
    let var_4 = global0.a;
    return any(select(select(vec4<bool>(-121f == global0.b.x, true, true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(27773u < var_2.x, true, any(vec2<bool>(true, true)), true), _wgslsmith_div_f32(var_0, global0.b.x) > global0.b.x), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), global0.a == 2147483647i), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, false, false), false), !all(vec4<bool>(false, true, false, true)))));
}

fn func_2() -> Struct_3 {
    global1 = array<vec3<i32>, 8>();
    global1 = array<vec3<i32>, 8>();
    global1 = array<vec3<i32>, 8>();
    let var_0 = -5430i;
    global0 = Struct_1(firstLeadingBit(firstLeadingBit(-1i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - global0.b) + global0.b))))));
    return Struct_3(vec2<bool>(true, func_3() == true));
}

fn func_1() -> i32 {
    var var_0 = ~vec2<i32>(1i, _wgslsmith_dot_vec3_i32(abs(global1[_wgslsmith_index_u32(0u >> (u_input.a.x % 32u), 8u)]), vec3<i32>(abs(2147483647i), u_input.b, 7245i ^ u_input.b)));
    let var_1 = func_2();
    var var_2 = Struct_1(select(12339i, ~0i, any(!select(vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))));
    global0 = Struct_1(0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + global0.b));
    let var_3 = select(!vec2<bool>(var_1.a.x, !any(vec4<bool>(true, var_1.a.x, false, var_1.a.x))), var_1.a, !(!vec2<bool>(var_1.a.x, true)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(-31178i, func_1()), _wgslsmith_add_i32(-u_input.c, ~(u_input.b ^ -1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, global0.b.x)))))));
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.a.yx), _wgslsmith_add_u32(abs(67479u), _wgslsmith_mod_u32(u_input.a.x, 37706u)))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(0u, max(~1u, ~82315u ^ ~u_input.a.x)));
    var var_1 = Struct_1(_wgslsmith_add_i32(countOneBits(~(-2147483647i)) >> (var_0.x % 32u), -(~global0.a) >> (11865u % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x)))) - global0.b));
    global1 = array<vec3<i32>, 8>();
    global1 = array<vec3<i32>, 8>();
    var_1 = Struct_1(func_1(), global0.b);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))), -860f, -871f));
}

