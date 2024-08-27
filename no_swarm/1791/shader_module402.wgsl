struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 117f;

var<private> global1: Struct_4;

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global3: i32 = 29237i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(-1103f, ~global1.d.a.b, global1.d.a.c);
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(-(-vec3<i32>(u_input.c.x, u_input.e.x, 2147483647i) | abs(u_input.d.wwz)), vec3<i32>(_wgslsmith_sub_i32(7117i, 2147483647i) & u_input.c.x, abs(firstTrailingBit(u_input.e.x)), ~(11476i >> (global1.a.x % 32u)))));
    global2 = array<vec3<bool>, 8>();
    var var_2 = false;
    var var_3 = Struct_5(global1.e.x, select(!global1.e.xx, !global1.e.wx, any(select(select(global1.e, vec4<bool>(global1.e.x, global1.e.x, true, false), vec4<bool>(false, global1.e.x, false, false)), global1.e, any(global1.e)))), global1.b);
    return false;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<bool> {
    global2 = array<vec3<bool>, 8>();
    var var_0 = global1.d;
    var var_1 = 26542u;
    var var_2 = -u_input.d;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(447f, var_0.a.a))), 118f, !(!global1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.a.x, var_0.a.c.x))) - var_0.a.a))), 1174f, _wgslsmith_div_f32(-303f, global1.c.x));
    return vec4<bool>(select(any(!global1.e.yyx), global1.e.x, global1.e.x), global1.e.x, true | any(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), -524f)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = any(select(select(!(!vec3<bool>(global1.e.x, global1.e.x, global1.e.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global1.a.xyw, global1.a.xzz), 8u)], !(arg_0.x >= global1.d.a.c.x)), select(global1.e.www, vec3<bool>(global1.e.x, global1.e.x, false), !(true & global1.e.x)), vec3<bool>(~u_input.c.x == reverseBits(-78579i), global1.e.x, all(func_2(4294967295u, -1i)))));
    global1 = Struct_4(global1.a, Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.b.a, global1.c))), _wgslsmith_f_op_vec4_f32(floor(global1.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(753f, arg_0.x, arg_0.x, 475f))), global1.b.a))), Struct_2(global1.d.a), !vec4<bool>(u_input.c.x == 1i, any(vec2<bool>(false, global1.e.x)), _wgslsmith_sub_i32(4354i, u_input.d.x) == -1i, true));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -273f);
    var var_1 = all(func_2(24574u, firstLeadingBit(u_input.d.x)).zxw);
    global2 = array<vec3<bool>, 8>();
    return Struct_4(vec4<u32>(~global1.a.x << (_wgslsmith_dot_vec2_u32(u_input.b, global1.a.yy) % 32u), reverseBits(min(~global1.d.a.b, ~0u)), ~_wgslsmith_clamp_u32(42816u, ~global1.a.x, abs(global1.a.x)), _wgslsmith_clamp_u32(~global1.d.a.b, 0u, _wgslsmith_mod_u32(u_input.b.x, 0u))), global1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.b.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global1.c, global1.b.a)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), 422f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), -452f))), global1.d, select(global1.e, vec4<bool>(var_0 || (global1.e.x & global1.e.x), false, false, global1.e.x), countOneBits(~global1.d.a.b) < u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d.a.b;
    var var_1 = select(_wgslsmith_sub_u32(global1.a.x, 4294967295u | _wgslsmith_div_u32(u_input.a, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(16285u, 4294967295u, u_input.a, ~(45125u << (1u % 32u))), ~(vec4<u32>(u_input.b.x, 27325u, 1u, 0u) ^ ~global1.a)), !(global1.e.x && global1.e.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(461f, global1.c.x, 582f))), _wgslsmith_div_vec3_f32(global1.b.a.wyx, global1.c.wzw), global1.b.a.x <= -613f)) * global1.b.a.xyz), _wgslsmith_f_op_vec3_f32(-global1.c.wxx))));
    global1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(step(285f, var_2.x)))) + global1.b.a.yx));
    global2 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.c.x, select(_wgslsmith_sub_vec2_i32(~u_input.c, u_input.e.ww), vec2<i32>(u_input.d.x, -firstTrailingBit(-2668i)), select(func_2(4294967295u, _wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.e.xz)).wy, vec2<bool>(any(vec4<bool>(global1.e.x, global1.e.x, true, true)), func_2(28701u, 1i).x), vec2<bool>(true, true))), func_1(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_2.x)), 223f)).a);
}

