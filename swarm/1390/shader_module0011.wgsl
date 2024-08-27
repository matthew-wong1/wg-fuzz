struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -320f;

var<private> global1: array<bool, 2>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<u32> {
    global1 = array<bool, 2>();
    var var_0 = !(!vec2<bool>(_wgslsmith_sub_i32(u_input.b.x, u_input.c.x) > ~7447i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(4294967295u, u_input.a), u_input.a & 1u), 2u)]));
    global1 = array<bool, 2>();
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f) + -950f))), Struct_2(Struct_1(-323f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(-310f * _wgslsmith_f_op_f32(f32(-1f) * -1625f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-251f)) - -198f))));
    let var_2 = var_1.b;
    return vec3<u32>(firstLeadingBit(u_input.a), 27647u, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 58919u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 11111u, u_input.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-431f);
    var var_1 = _wgslsmith_sub_u32(~(u_input.a >> (max(~u_input.a, 1u) % 32u)), 1u);
    var_1 = ~_wgslsmith_dot_vec3_u32(func_3(), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 17626u, u_input.a), vec3<u32>(8100u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 46370u))) >> (u_input.a % 32u);
    global1 = array<bool, 2>();
    var_1 = u_input.a;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(func_2());
    var var_1 = any(!select(vec2<bool>(!arg_2, global1[_wgslsmith_index_u32(~u_input.a, 2u)]), vec2<bool>(true, any(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)]))), select(!vec2<bool>(global1[_wgslsmith_index_u32(109135u, 2u)], arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), false), any(vec3<bool>(true, false, false)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(850f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-728f)) * _wgslsmith_f_op_f32(floor(-294f)))))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -705f), 250f);
    var var_3 = var_0.a;
    var var_4 = Struct_3(Struct_2(var_0.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1, vec2<f32>(-687f, 462f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.a * var_3.a))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(107532u, _wgslsmith_div_u32(1u, 1u), ~66914u, _wgslsmith_div_u32(36338u, u_input.a)) | ~(~reverseBits(vec4<u32>(u_input.a, 0u, 9978u, 1u))));
    let var_1 = func_1(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, firstTrailingBit(-18891i), ~2147483647i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-15278i, 16854i, u_input.d.x), vec3<i32>(1i, u_input.c.x, 1i)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2678f, 195f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-218f, 1072f), vec2<f32>(470f, -333f), false)))))))), (-1i >= _wgslsmith_mult_i32(u_input.b.x | -2147483647i, -2147483647i)) || true, ~vec4<u32>(_wgslsmith_add_u32(29868u, 1u), 0u, 1u | abs(u_input.a), ~0u));
    global0 = _wgslsmith_f_op_f32(-1673f - _wgslsmith_f_op_f32(-249f * 615f));
    var var_2 = Struct_3(Struct_2(Struct_1(270f)), Struct_2(var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, 170f), global1[_wgslsmith_index_u32(var_0.x, 2u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1405f) + vec2<f32>(var_1.a, var_1.a)))))), var_1.a);
    let var_3 = func_1(u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.d, 1154f)))) * vec2<f32>(-1018f, var_1.a))), _wgslsmith_add_i32(i32(-1i) * -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d.x, 25540i), u_input.b.wwx)) <= 411i, ~(~vec4<u32>(firstTrailingBit(46088u), ~var_0.x, u_input.a ^ u_input.a, firstTrailingBit(14042u))));
    var var_4 = -161f;
    var var_5 = var_3;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(2080f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_5.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f)), -1224f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, var_5.a, 365f, 441f) * vec4<f32>(var_1.a, var_1.a, var_1.a, -1000f)))))), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_0.wyw, vec3<u32>(var_0.x, 1u, u_input.a)), ~select(var_0.ywz, vec3<u32>(17998u, u_input.a, var_0.x), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], false))) | _wgslsmith_add_u32(_wgslsmith_clamp_u32(~var_0.x, u_input.a, 1u), u_input.a), ~(~reverseBits(vec4<u32>(u_input.a, 69735u, 1u, 0u)) | ~select(vec4<u32>(0u, 4294967295u, var_0.x, 19260u), vec4<u32>(u_input.a, 1u, 62704u, 44816u), global1[_wgslsmith_index_u32(1u, 2u)])));
}

