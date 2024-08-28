struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 12031i;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global3 = Struct_1(42937i);
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(~(-global1.b.a.xx)), global1.b.a.yy);
    global0 = 2147483647i;
    global3 = global1.b.c;
    return 1i;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(825f))))))), -534f);
    let var_1 = max(vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -u_input.b, global1.b.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.b.a.xz, global1.b.a.yw), -1i)), ~global3.a, _wgslsmith_div_i32(-2147483647i, firstTrailingBit(func_3(vec4<f32>(1349f, -1000f, 636f, var_0.x)))), -34590i), global1.b.a);
    var var_2 = Struct_1(u_input.d);
    global3 = Struct_1(var_1.x);
    var var_3 = !((var_2.a << (_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)) > ~0i);
    return Struct_3(!(!(!all(vec4<bool>(global1.a, true, global1.b.b.x, true)))), Struct_2(vec4<i32>(global1.b.a.x, var_1.x, u_input.c, 11049i), global1.b.b, global1.b.c));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_2();
    var var_1 = ~select(firstLeadingBit(~_wgslsmith_mod_u32(u_input.a, u_input.a)), ~(min(9943u, u_input.a) | countOneBits(4294967295u)), true);
    let var_2 = vec2<bool>(all(var_0.b.b.xyy), false);
    let var_3 = 1u;
    let var_4 = -_wgslsmith_sub_vec3_i32(var_0.b.a.xwx, vec3<i32>(-global1.b.c.a, _wgslsmith_dot_vec4_i32(min(global1.b.a, var_0.b.a), abs(global1.b.a)), global1.b.a.x));
    return ~(min(~vec4<u32>(16487u, 0u, 8258u, var_3) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(19241u, u_input.a, var_3, var_3), vec4<u32>(u_input.a, 1u, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 89762u, var_3, var_3) | vec4<u32>(var_3, 1u, var_3, 1u), vec4<u32>(64133u, var_3, 46443u, var_3) ^ vec4<u32>(1u, 41524u, 1983u, u_input.a))) | _wgslsmith_clamp_vec4_u32(select(vec4<u32>(55988u, 53957u, 4922u, 4294967295u), vec4<u32>(u_input.a, 58341u, 53385u, 0u), global2[_wgslsmith_index_u32(var_3 | 1330u, 3u)]), ~(~vec4<u32>(0u, 26072u, 408u, 66084u)), ~vec4<u32>(50519u, u_input.a, 4294967295u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-11693i);
    var var_0 = abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 26569u, 0u), vec4<u32>(1u, u_input.a, u_input.a, 1u) | vec4<u32>(u_input.a, u_input.a, 7705u, u_input.a)) & _wgslsmith_mult_vec4_u32(func_1(), ~vec4<u32>(0u, u_input.a, 40101u, 0u)));
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(611f)) - -259f), _wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(f32(-1f) * -1760f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1540f - 1144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f)))), global1.b.a.yw, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(859f, 2154f))), -1042f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-682f, -1009f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-572f, -385f))))) + vec2<f32>(1f, 1f)))), global1.b.a.zyw);
}

