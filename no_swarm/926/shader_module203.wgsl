struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-20488i, -1i, -41316i), vec2<f32>(-1150f, -1086f), vec2<i32>(-23437i, 0i), vec4<f32>(-338f, 1165f, -602f, 218f)), vec2<bool>(false, true), 4294967295u, vec3<f32>(-188f, 1144f, 352f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(global1.c ^ (44769u & arg_1.c)), abs(~1u), 1u), ~(~vec3<u32>(~global1.c, arg_1.c, global1.c)));
    var var_1 = ~arg_0.a.x;
    let var_2 = global1.a;
    var var_3 = arg_1;
    var var_4 = vec3<i32>(i32(-1i) * -firstTrailingBit(~(-13192i)), ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(31152i, 0i)), abs(firstTrailingBit(var_3.a.a.xz))), ~0i);
    return !(!(var_2.b.x != arg_1.a.d.x));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    global1 = Struct_2(global1.a, global1.b, 81930u >> (countOneBits(~(~0u)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(global1.a.d.zwz, vec3<f32>(global0[_wgslsmith_index_u32(global1.c, 23u)], global0[_wgslsmith_index_u32(global1.c, 23u)], -519f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 747f, global0[_wgslsmith_index_u32(u_input.b, 23u)])))))) - _wgslsmith_f_op_vec3_f32(global1.a.d.wxx + vec3<f32>(global0[_wgslsmith_index_u32(global1.c >> (4984u % 32u), 23u)], 624f, -1938f))));
    global1 = Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec2_f32(-global1.d.xx), select(vec2<i32>(-24311i, 14006i << (u_input.b % 32u)), global1.a.c, false), _wgslsmith_f_op_vec4_f32(global1.a.d - global1.a.d)), !vec2<bool>(!global1.b.x, true), u_input.a, _wgslsmith_f_op_vec3_f32(round(global1.d)));
    global0 = array<f32, 23>();
    let var_0 = 24455i;
    var var_1 = Struct_1(-vec3<i32>(~var_0 & _wgslsmith_add_i32(global1.a.a.x, var_0), global1.a.c.x, -global1.a.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(27898u, 12882u), 23u)], _wgslsmith_f_op_f32(262f + -932f)), global0[_wgslsmith_index_u32(27132u, 23u)]) + _wgslsmith_f_op_vec2_f32(abs(global1.d.zx))), vec2<i32>(global1.a.c.x, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.d)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(902f, arg_0)), -1000f, _wgslsmith_f_op_f32(exp2(global1.d.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.wxz + _wgslsmith_f_op_vec3_f32(-global1.d)) - var_1.d.zwy)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.d.x)))) + arg_0), var_1.d.x, global0[_wgslsmith_index_u32(global1.c, 23u)]));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-global1.a.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 23u)]))), arg_0.d.x), arg_0.c, _wgslsmith_div_vec4_f32(global1.a.d, global1.a.d)), select(select(!select(vec2<bool>(false, global1.b.x), arg_1.b, true), select(select(arg_1.b, vec2<bool>(true, arg_1.b.x), arg_1.b.x), vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, true)), !vec2<bool>(arg_1.b.x, true)), global1.b, vec2<bool>(arg_1.b.x, !any(global1.b))), ~(1u << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_div_u32(u_input.b, 0u), abs(0u)) % 32u)), arg_1.a.d.zwz);
    global0 = array<f32, 23>();
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(1u, ~countOneBits(arg_1.c)), arg_1.c, global1.c) & _wgslsmith_mult_vec3_u32(u_input.c << (vec3<u32>(1u, select(global1.c, 1474u, global1.b.x), u_input.b) % vec3<u32>(32u)), select(~u_input.c, ~u_input.c, !(!vec3<bool>(arg_1.b.x, false, arg_1.b.x))));
    var var_2 = Struct_2(Struct_1(~vec3<i32>(46928i, i32(-1i) * -2147483647i, -arg_3), global1.d.xz, abs((arg_1.a.a.xy | vec2<i32>(arg_0.c.x, 472i)) >> (var_1.zx % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(436f, arg_0.d.x, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1047f))))), var_0.b, 700u << (1u % 32u), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1074f, -657f)) - -638f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, 687f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1412f * var_0.a.b.x) * -1030f)), global0[_wgslsmith_index_u32(0u, 23u)]));
    global0 = array<f32, 23>();
    return var_0.a;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<f32, 23>();
    var var_0 = vec3<u32>(global1.c, ~global1.c, global1.c);
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, u_input.a, arg_0.c), u_input.c) | ((u_input.c & vec3<u32>(u_input.b, 48951u, arg_0.c)) >> (~u_input.c % vec3<u32>(32u))), u_input.c), abs(u_input.c));
    global0 = array<f32, 23>();
    let var_1 = func_4(Struct_1(global1.a.a, arg_0.d.zz, arg_0.a.c, _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.d))), Struct_2(global1.a, select(select(vec2<bool>(global1.b.x, global1.b.x), !arg_0.b, true & arg_0.b.x), select(vec2<bool>(true, arg_0.b.x), vec2<bool>(false, false), vec2<bool>(global1.b.x, global1.b.x)), vec2<bool>(func_2(Struct_1(arg_0.a.a, vec2<f32>(arg_0.a.d.x, global0[_wgslsmith_index_u32(var_0.x, 23u)]), vec2<i32>(arg_0.a.a.x, 71414i), arg_0.a.d), Struct_2(Struct_1(vec3<i32>(arg_0.a.a.x, global1.a.a.x, arg_0.a.c.x), vec2<f32>(global0[_wgslsmith_index_u32(5221u, 23u)], 724f), vec2<i32>(-2147483647i, arg_0.a.c.x), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(global1.c, 23u)], global1.d.x, 256f)), global1.b, var_0.x, vec3<f32>(1362f, global0[_wgslsmith_index_u32(1u, 23u)], 1102f))), any(vec2<bool>(true, arg_0.b.x)))), 1u, _wgslsmith_f_op_vec3_f32(func_3(-1000f))), global0[_wgslsmith_index_u32(var_0.x, 23u)], 2147483647i);
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), arg_0, arg_0 ^ arg_0, 4294967295u) | ~(vec4<u32>(arg_0, u_input.a, 28175u, 4294967295u) | vec4<u32>(1087u, 0u, global1.c, 4294967295u)), select(~countOneBits(vec4<u32>(u_input.b, arg_1.c, 4294967295u, arg_0)), vec4<u32>(71073u, u_input.c.x, 1u, ~0u), true)));
    global0 = array<f32, 23>();
    let var_1 = -762f;
    global1 = Struct_2(Struct_1(select(-arg_2.a >> (u_input.c % vec3<u32>(32u)), reverseBits(vec3<i32>(0i, global1.a.c.x, -59218i)) >> (~u_input.c % vec3<u32>(32u)), !(!vec3<bool>(true, arg_1.b.x, global1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(38237u, 23u)])).zy), -_wgslsmith_div_vec2_i32(-arg_1.a.a.yy, -vec2<i32>(global1.a.c.x, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a.d, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, -1000f, global0[_wgslsmith_index_u32(arg_0, 23u)], -207f))), true)) * _wgslsmith_f_op_vec4_f32(ceil(arg_1.a.d)))), !vec2<bool>(false, any(select(vec4<bool>(arg_3.x, false, global1.b.x, arg_1.b.x), vec4<bool>(false, arg_3.x, global1.b.x, true), true))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, -2051f, arg_2.d.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, -602f, -1086f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.b.x, global1.d.x, -708f), global1.a.d.yww))))));
    var_0 = 1u;
    return 223f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c | ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b, global1.c), vec3<u32>(global1.c, u_input.b, u_input.b) | vec3<u32>(u_input.c.x, 1u, 1u)), ~(~vec3<u32>(global1.c, 4294967295u, 1932u)));
    var var_1 = ~(countOneBits(vec4<i32>(-10600i, -1i, global1.a.c.x, 46716i) ^ -vec4<i32>(-54965i, -2147483647i, global1.a.c.x, global1.a.a.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(global1.a.a.x, global1.a.a.x), _wgslsmith_add_i32(global1.a.c.x, 1684i), -2268i), select(-vec4<i32>(global1.a.a.x, -20614i, global1.a.a.x, 1i), vec4<i32>(39731i, global1.a.a.x, 2147483647i, global1.a.c.x) | vec4<i32>(global1.a.a.x, 1i, 13862i, global1.a.a.x), global1.b.x)));
    var var_2 = vec4<f32>(469f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1689f, _wgslsmith_f_op_f32(-global1.d.x), !global1.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(543f, 2101f))))), _wgslsmith_f_op_f32(func_5(0u, Struct_2(func_1(Struct_2(Struct_1(global1.a.a, vec2<f32>(-791f, -1408f), vec2<i32>(global1.a.c.x, -9512i), vec4<f32>(-839f, 1516f, 423f, global1.a.d.x)), global1.b, global1.c, global1.d)), global1.b, select(global1.c, 115848u, global1.b.x), _wgslsmith_div_vec3_f32(global1.a.d.yxx, global1.d)), Struct_1(var_1.zyx, global1.a.d.zx, vec2<i32>(-14524i, var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(-599f, global1.d.x, 364f, global1.d.x), global1.a.d)), select(global1.b, select(vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(false, false), false), global1.b.x))))), _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -483f)))))), 1140f);
    let var_3 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~global1.a.a.x, -1i), func_4(global1.a, Struct_2(global1.a, vec2<bool>(true, true), u_input.b, global1.d), global0[_wgslsmith_index_u32(abs(var_0.x), 23u)], 1i).a.xz), -_wgslsmith_mult_i32(~var_1.x, 12146i >> (1u % 32u)), global1.a.c.x, ~(~(-2147483647i))), _wgslsmith_mod_vec4_i32(max(firstTrailingBit(vec4<i32>(global1.a.a.x, global1.a.a.x, 44151i, var_1.x)), select(-vec4<i32>(-1i, -1i, -34288i, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, global1.a.c.x, global1.a.a.x, var_1.x), vec4<i32>(var_1.x, 19926i, 1i, global1.a.c.x)), !vec4<bool>(false, true, global1.b.x, global1.b.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 41661i, var_1.x, -46667i) >> (vec4<u32>(global1.c, u_input.a, var_0.x, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(global1.a.a.x, var_1.x, 0i, var_1.x) | vec4<i32>(var_1.x, global1.a.c.x, global1.a.a.x, -36418i))), global1.b.x);
    var_1 = vec4<i32>(_wgslsmith_sub_i32(var_1.x, abs(var_1.x)), global1.a.a.x << (global1.c % 32u), 2147483647i, var_1.x);
    let var_4 = Struct_2(func_1(Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec2_f32(step(global1.a.b, var_2.yz)), vec2<i32>(-1i, var_1.x) | vec2<i32>(2147483647i, var_1.x), global1.a.d), !global1.b, ~(~4294967295u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-399f, 715f, global1.a.b.x))))), global1.b, global1.c, var_2.xww);
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.x, _wgslsmith_clamp_i32(-2147483647i, abs(11969i & global1.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -2147483647i) << (var_0 % vec3<u32>(32u)), -var_4.a.a))));
}

