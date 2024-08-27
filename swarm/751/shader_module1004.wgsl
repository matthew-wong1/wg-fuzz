struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(i32(-2147483648), 1u, Struct_3(vec2<bool>(false, true)), vec2<bool>(false, true)), Struct_4(63128i, 29881u, Struct_3(vec2<bool>(false, true)), vec2<bool>(true, true)), Struct_4(35871i, 0u, Struct_3(vec2<bool>(true, true)), vec2<bool>(false, true)), Struct_4(-11762i, 0u, Struct_3(vec2<bool>(true, false)), vec2<bool>(false, true)), Struct_4(2147483647i, 8290u, Struct_3(vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_4(-1i, 5013u, Struct_3(vec2<bool>(false, true)), vec2<bool>(false, false)), Struct_4(0i, 31569u, Struct_3(vec2<bool>(false, false)), vec2<bool>(true, true)), Struct_4(38691i, 4294967295u, Struct_3(vec2<bool>(false, false)), vec2<bool>(true, true)));

var<private> global1: array<Struct_1, 10>;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    global2 = u_input.b.zw;
    return vec3<f32>(_wgslsmith_f_op_f32(2803f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(floor(arg_2))))))), arg_2, 1116f);
}

fn func_3() -> vec2<bool> {
    global1 = array<Struct_1, 10>();
    var var_0 = ~select(u_input.a, ~_wgslsmith_div_vec4_u32(select(u_input.a, u_input.a, true), u_input.a), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) | (u_input.a.x >= ~9228u));
    let var_1 = Struct_2(38300i);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, ~(~46943u)), 0u);
    global2 = u_input.b.xw;
    return !vec2<bool>(!all(vec3<bool>(true, false, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(false, false, false, true)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = vec3<f32>(1137f, -371f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-659f)))), -1000f)));
    var var_1 = Struct_3(func_3());
    var var_2 = Struct_2(reverseBits(_wgslsmith_div_i32(abs(1i) & _wgslsmith_sub_i32(-1i, global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, arg_1.a.x), vec2<i32>(0i, arg_0.x)))));
    var var_3 = !var_1.a;
    let var_4 = Struct_2(_wgslsmith_sub_i32(~(~u_input.c), -769i) << (reverseBits(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x))) % 32u));
    return Struct_3(vec2<bool>(!(var_2.a >= (8788i >> (u_input.a.x % 32u))), any(func_3())));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 8>();
    var var_0 = vec3<bool>(((~(-39551i) ^ _wgslsmith_mult_i32(-1i, arg_1.a.x)) <= (2147483647i >> (max(u_input.a.x, u_input.a.x) % 32u))) | func_2(vec4<i32>(u_input.b.x, arg_1.a.x, 0i, 7690i) & u_input.b, Struct_1(~arg_1.a), arg_3.a.x).a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.a.x, 7303u, select(u_input.a.x, u_input.a.x, true)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, 3048u, u_input.a.x), u_input.a.x)) >= u_input.a.x, arg_0.a.x);
    let var_1 = _wgslsmith_dot_vec2_i32(~u_input.b.wz, ~u_input.b.xw) | (_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, 65026i) ^ _wgslsmith_clamp_i32(global2.x, arg_1.a.x, -42224i), u_input.b.x) << (~(~u_input.a.x) % 32u));
    let var_2 = Struct_1(-vec4<i32>(_wgslsmith_add_i32(countOneBits(-2147483647i), -global2.x), u_input.b.x, abs(var_1), _wgslsmith_dot_vec4_i32(u_input.b, arg_1.a) >> (~4294967295u % 32u)));
    var var_3 = Struct_4(-64797i, u_input.a.x, Struct_3(select(vec2<bool>(all(vec2<bool>(var_0.x, arg_3.a.x)), any(vec4<bool>(false, true, false, arg_3.a.x))), arg_0.a, !arg_3.a.x)), vec2<bool>(!arg_0.a.x, !all(vec2<bool>(false, false))));
    return global0[_wgslsmith_index_u32(4294967295u, 8u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = global2.x;
    let var_1 = Struct_2(2147483647i);
    let var_2 = vec3<bool>(true, false, any(select(select(vec3<bool>(true, arg_1.c.a.x, arg_1.c.a.x), vec3<bool>(arg_1.c.a.x, false, arg_1.c.a.x), vec3<bool>(arg_1.c.a.x, arg_1.d.x, arg_1.c.a.x)), vec3<bool>(true, false || arg_1.d.x, true), arg_1.d.x)));
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_4 = reverseBits(arg_2.x);
    return ~arg_2.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(1u | max(u_input.a.x, u_input.a.x), u_input.a.x));
    var_0 = _wgslsmith_sub_vec3_u32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(186f, 502f, 1000f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(u_input.a.zx, vec4<bool>(true, false, true, false), -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))))), func_4(func_2(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, -1i), u_input.b), global1[_wgslsmith_index_u32(4294967295u, 10u)], true), global1[_wgslsmith_index_u32(46182u, 10u)], any(vec3<bool>(true, true, true)), Struct_3(vec2<bool>(true, true))), u_input.a), ~min(u_input.a.xxy, select(u_input.a.wyy & u_input.a.zyy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, u_input.a.x, var_0.x)), vec3<bool>(true, true, true))));
    var var_1 = !(!(!any(vec2<bool>(true, true))));
    var var_2 = !func_2(vec4<i32>(global2.x, ~global2.x, _wgslsmith_clamp_i32(1i, ~u_input.c, ~u_input.b.x), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 0i, 61197i, u_input.b.x), u_input.b))), Struct_1(u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-333f, 916f), _wgslsmith_f_op_f32(f32(-1f) * -241f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f) + _wgslsmith_f_op_f32(f32(-1f) * -612f))).a;
    var var_3 = Struct_3(vec2<bool>(!(!(2677u != u_input.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-287f, -281f, -335f, 481f) - vec4<f32>(1089f, 513f, 1354f, 370f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -642f, -1367f, 270f))), vec4<f32>(1000f, 1701f, _wgslsmith_f_op_f32(2541f + 1191f), _wgslsmith_f_op_f32(ceil(-862f))), any(!vec4<bool>(var_2.x, false, var_2.x, var_3.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 924f, -210f, 1000f), vec4<f32>(377f, 1387f, -494f, 757f)))))));
}

