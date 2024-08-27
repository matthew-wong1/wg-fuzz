struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, true, false, true, true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = min(1i, _wgslsmith_dot_vec3_i32(min(-vec3<i32>(u_input.b, -16858i, 0i) << (_wgslsmith_div_vec3_u32(vec3<u32>(22433u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u)), reverseBits(abs(vec3<i32>(u_input.b, 0i, u_input.b)))), vec3<i32>(~u_input.b, _wgslsmith_mult_i32(3783i, 1i), -2547i ^ select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(35764u, 9u)]))));
    var var_1 = Struct_2(Struct_1(arg_0.a.a));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(-1141f, 195f)));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f - 2120f) * _wgslsmith_f_op_f32(-arg_0.a.a)), _wgslsmith_f_op_f32(ceil(arg_0.a.a)), true))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(859f * 673f), _wgslsmith_f_op_f32(-var_2.a.a)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a)), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(var_1.a.a + -536f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(661f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-243f + var_1.a.a), -2647f))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1763f)))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2(Struct_3(Struct_1(var_0.a))).a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_3(Struct_1(-1143f))).a.a)));
    let var_2 = func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(min(var_0.a, -137f))))))).a;
    var var_3 = select(vec2<bool>(false, false), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + 659f) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(382f - var_0.a), 287f)), u_input.c <= 0u), select(vec2<bool>(true, !global0[_wgslsmith_index_u32(~u_input.a.x, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(select(1u, u_input.c, global0[_wgslsmith_index_u32(select(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 9u)]), 9u)]), 9u)], func_2(Struct_3(Struct_1(var_1.x))).a.a != var_1.x), !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), u_input.a.yz), 9u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 9u)])));
    let var_4 = func_2(Struct_3(Struct_1(var_2.a))).a;
    return 1u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(arg_2.x));
    global0 = array<bool, 9>();
    var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1341f, arg_0.x)) - -333f))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(arg_3, 32817u), 102878u >> (_wgslsmith_div_u32(u_input.a.x, 10215u) % 32u), select(select(arg_3, 28574u, true), 1u, all(vec3<bool>(true, true, true))), ~_wgslsmith_div_u32(1u, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(5827u, 4294967295u, 0u, 14965u), vec4<u32>(arg_3, 13448u, u_input.a.x, 4294967295u) | vec4<u32>(0u, 60411u, arg_3, 4294967295u))), 0u ^ arg_3);
    var var_2 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(min(arg_0, _wgslsmith_f_op_vec2_f32(-arg_0)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_1 = func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(163f, var_0.x), vec2<f32>(var_1.a.a, -935f))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(-22747i, u_input.b), vec2<i32>(-23013i, 1i)), ~vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, 1463f, -1000f))), func_3())), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, 932f) - vec2<f32>(1579f, 2253f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.a, -2105f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, -379f)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true)))))));
    return 2147483647i << (_wgslsmith_clamp_u32(u_input.c, ~1u | ~u_input.a.x, _wgslsmith_div_u32(u_input.c, u_input.a.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = ~abs(-73030i) | (func_1() << (u_input.c % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(361f, -343f)) * func_2(Struct_3(Struct_1(633f))).a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)), global0[_wgslsmith_index_u32(~u_input.c, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-467f + -854f), -1000f))), u_input.a.yy, abs(1i), u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, u_input.c), max(vec2<u32>(u_input.a.x, 25958u), vec2<u32>(75634u, 0u))), u_input.a.zx) << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.xx), vec2<u32>(u_input.a.x, 0u)) % 32u));
}

