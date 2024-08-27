struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(856f + arg_0.a.x))) - -487f))));
    let var_1 = !(~(~reverseBits(global0.x)) <= 1i);
    var var_2 = abs(arg_1.x >> (0u % 32u)) & _wgslsmith_div_i32(min(arg_1.x, u_input.a), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.x, max(0i, 1i)), ~0i, _wgslsmith_mult_i32(~0i, min(u_input.a, 2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.a.x))));
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    return ~(i32(-1i) * -1i);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> Struct_5 {
    global0 = abs(select(_wgslsmith_mod_vec2_i32(arg_0, abs(vec2<i32>(-1i, global0.x)) >> (~vec2<u32>(0u, arg_1) % vec2<u32>(32u))), arg_0, !vec2<bool>(any(vec2<bool>(false, true)), true)));
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~u_input.a, ~(-1i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 40184i, 2147483647i, u_input.a), vec4<i32>(5233i, 21320i, 2147483647i, arg_0.x)), -_wgslsmith_mult_i32(~u_input.a, -2147483647i ^ arg_0.x), 0i), !(!(!any(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1425f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-655f, -165f))) * _wgslsmith_f_op_f32(min(-737f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(860f, -1216f), _wgslsmith_f_op_f32(f32(-1f) * -605f), all(vec2<bool>(false, var_0.b))))))) - 1f);
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-524f, 956f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-264f, -1465f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 627f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, 600f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 107f), vec2<f32>(-1000f, 788f), var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1196f))))));
    let var_3 = _wgslsmith_sub_u32(arg_1, 199u);
    return Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, _wgslsmith_div_f32(var_2.a.x, -629f)))), abs(44099u), (~(~(-31171i)) << (~arg_1 % 32u)) >> (global1.x % 32u), _wgslsmith_mod_u32(var_3, arg_1));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = true | !(all(vec3<bool>(true, false, true)) == (_wgslsmith_add_u32(u_input.b, arg_0.b) != max(4294967295u, 53478u)));
    let var_2 = arg_0;
    var var_3 = func_3(_wgslsmith_mod_vec2_i32((select(vec2<i32>(var_2.c, 4638i), vec2<i32>(global0.x, global0.x), true) >> (global1.yw % vec2<u32>(32u))) >> (vec2<u32>(~global1.x, 1u) % vec2<u32>(32u)), -countOneBits(select(vec2<i32>(global0.x, -983i), vec2<i32>(u_input.a, arg_0.c), vec2<bool>(var_1, var_1)))), arg_0.b).a;
    var var_4 = reverseBits(~(~vec2<u32>(global1.x, arg_0.d))) >> (~countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global1.wx, vec2<u32>(4294967295u, global1.x)), ~vec2<u32>(50969u, arg_0.b))) % vec2<u32>(32u));
    return Struct_1(_wgslsmith_add_i32(1i, select(29001i, u_input.a, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, firstTrailingBit(select(u_input.b, abs(1u), true)) == u_input.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-266f - -392f))) * _wgslsmith_f_op_f32(round(-119f)))), _wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1273f, 2437f) + vec2<f32>(439f, -362f)))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_0.a), vec2<i32>(var_0.a, global0.x))) >> (vec2<u32>(0u ^ global1.x, 30471u) % vec2<u32>(32u)))));
    let var_2 = Struct_1(1i, false);
    var var_3 = func_4(func_3(vec2<i32>(func_2(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * -1052f)), ~(-34950i << (u_input.b % 32u))), ~max(_wgslsmith_mod_u32(u_input.b, 0u), 4294967295u)));
    let var_4 = func_4(func_3(vec2<i32>(reverseBits(-var_2.a), 2147483647i), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~abs(select(vec3<u32>(38268u, 1u, u_input.b), global1.zyx, true))), _wgslsmith_dot_vec2_i32(-firstLeadingBit(firstLeadingBit(vec2<i32>(-53415i, var_4.a))), countOneBits(-abs(vec2<i32>(0i, var_4.a)))));
}

