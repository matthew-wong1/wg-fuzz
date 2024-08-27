struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 1u, 40691u, 43567u, 41543u, 53024u, 80028u, 0u, 1u, 73072u, 76372u, 0u, 4294967295u, 17509u, 1u, 0u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec2<f32> {
    global1 = array<Struct_1, 20>();
    var var_0 = global1[_wgslsmith_index_u32(~(~1u), 20u)];
    global0 = array<u32, 16>();
    var var_1 = vec3<bool>(!(true || all(vec3<bool>(true, true, true))), var_0.d.x, false);
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, -1722f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-535f, _wgslsmith_f_op_f32(f32(-1f) * -1702f))))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global2 = -979f;
    let var_0 = Struct_1(50051i, arg_0.b, global0[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(arg_0.c, 16u)]), 16u)], arg_0.d);
    global1 = array<Struct_1, 20>();
    let var_1 = global1[_wgslsmith_index_u32(arg_0.c, 20u)];
    let var_2 = Struct_1(firstLeadingBit(countOneBits(1i)), !arg_0.b, arg_0.c, select(select(!select(var_1.d, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, arg_0.d.x)), select(!vec4<bool>(var_0.d.x, var_1.b, var_0.d.x, false), select(vec4<bool>(var_0.d.x, false, true, false), vec4<bool>(false, false, var_0.b, var_1.d.x), false), all(vec2<bool>(true, var_0.d.x))), vec4<bool>(any(arg_0.d.ywz), !arg_0.b, false, var_0.b)), select(var_0.d, var_0.d, var_1.d), select(arg_0.d, select(vec4<bool>(arg_0.b, false, arg_0.d.x, var_1.d.x), select(var_1.d, var_1.d, var_0.b), !var_0.d), any(!vec3<bool>(arg_0.d.x, var_1.b, var_0.b)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 462f)), _wgslsmith_f_op_f32(trunc(1000f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1504f, 460f), vec2<f32>(-235f, -740f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(450f)), _wgslsmith_f_op_f32(max(1090f, 1683f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(704f, -463f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(38695u, 20u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(vec2<f32>(491f, 398f) + vec2<f32>(639f, -122f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, 650f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1615f, -1522f), _wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(70582u, 20u)]))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_1)), vec2<f32>(363f, 276f), false)))));
    global0 = array<u32, 16>();
    var var_2 = (0i < -arg_0.a) == !(!arg_1.b == ((2147483647i == var_0.a) && true));
    var var_3 = (reverseBits(var_0.a) > -arg_1.a) || all(select(select(vec4<bool>(arg_1.d.x, arg_1.d.x, false, arg_1.d.x), select(vec4<bool>(true, true, true, true), var_0.d, vec4<bool>(arg_1.b, var_0.b, false, var_0.d.x)), select(arg_1.d, vec4<bool>(arg_1.d.x, true, arg_1.b, var_0.b), vec4<bool>(arg_0.d.x, true, arg_1.b, true))), vec4<bool>(arg_1.b, true, arg_1.b, arg_0.b), select(vec4<bool>(arg_1.b, arg_1.b, true, false), select(vec4<bool>(false, var_0.d.x, false, true), arg_0.d, vec4<bool>(var_0.d.x, arg_0.b, true, true)), true)));
    return !select(var_0.b && select(11100u < var_0.c, var_0.d.x, false), true, any(vec4<bool>(true, false, var_0.d.x, arg_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, false, select(1u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(0u), 16u)], 16u)], _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~10319u, 16u)], 16u)]), func_1(Struct_1(2147483647i, false, 32322u, vec4<bool>(false, true, false, false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 0u, global0[_wgslsmith_index_u32(55412u, 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(96698u, 16u)], 16697u, global0[_wgslsmith_index_u32(79595u, 16u)])), 20u)])) << (global0[_wgslsmith_index_u32(abs(abs(global0[_wgslsmith_index_u32(1u, 16u)])), 16u)] % 32u), !vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), true, true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1896f, 1410f, 274f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, -401f, -1381f)))))));
    var var_2 = select(select(!vec4<bool>(false, all(var_0.d.ywx), var_0.d.x, var_1.x < -1523f), vec4<bool>(_wgslsmith_f_op_f32(-652f - var_1.x) <= _wgslsmith_div_f32(-2669f, 715f), any(!vec3<bool>(var_0.b, false, var_0.d.x)), var_0.d.x, false), any(select(select(vec2<bool>(true, true), vec2<bool>(var_0.d.x, false), var_0.b), var_0.d.yw, all(vec4<bool>(var_0.d.x, false, var_0.b, var_0.b))))), var_0.d, true);
    var var_3 = Struct_1(~min(reverseBits(i32(-1i) * -2147483647i), var_0.a), !any(vec2<bool>(true, var_0.d.x)), ~_wgslsmith_clamp_u32(firstLeadingBit(max(13078u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54115u, 16u)], 16u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(var_0.c), 1u), 16u)], 59010u), vec4<bool>(all(select(var_0.d.yyy, !var_2.yyy, var_0.b)), false, true, !var_2.x));
    var var_4 = var_3.d;
    let var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_6 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_3.c, 16u)], 4294967295u, 4294967295u), vec3<u32>(var_0.c, 0u, global0[_wgslsmith_index_u32(var_0.c, 16u)]))), _wgslsmith_mod_vec3_u32((vec3<u32>(global0[_wgslsmith_index_u32(3769u, 16u)], 0u, 26308u) & vec3<u32>(var_0.c, 52844u, 4294967295u)) >> (max(vec3<u32>(10456u, var_0.c, global0[_wgslsmith_index_u32(0u, 16u)]), vec3<u32>(32186u, var_3.c, var_0.c)) % vec3<u32>(32u)), min(~vec3<u32>(1u, global0[_wgslsmith_index_u32(37812u, 16u)], 36157u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.c, 0u), vec3<u32>(global0[_wgslsmith_index_u32(var_3.c, 16u)], var_0.c, 59364u))))) | 33506u, 20u)];
    let var_7 = global1[_wgslsmith_index_u32(41528u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1058f, var_5) - var_1.zx)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(774f, 293f))))));
}

