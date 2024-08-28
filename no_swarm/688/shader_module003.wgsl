struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(0i), Struct_5(-1i), Struct_5(0i), Struct_5(-63592i), Struct_5(0i), Struct_5(-22602i), Struct_5(-1i), Struct_5(1i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, u_input.c.x), ~abs(~1u));
    var var_1 = abs(-u_input.d);
    var_1 = vec3<i32>(-15787i, countOneBits(arg_0), ~u_input.a);
    var_1 = vec3<i32>(var_1.x, 1i, i32(-1i) * -39710i);
    let var_2 = Struct_4(-804f, select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, max(u_input.b.x, 48102u) < 4294967295u, false, true)));
    return _wgslsmith_sub_i32(-25857i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_1.x, var_1.x) ^ arg_0, abs(30791i)), firstLeadingBit(-firstLeadingBit(vec2<i32>(1i, u_input.a)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x | arg_0.x, 8u)];
    global0 = true;
    let var_1 = Struct_1(vec4<i32>(min(_wgslsmith_clamp_i32(func_3(-1551i), reverseBits(var_0.a), 43059i), firstTrailingBit(u_input.d.x)), -1i, -u_input.d.x, ~(-47457i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(-690f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(668f * arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))));
    let var_2 = all(vec3<bool>(all(vec3<bool>(false, all(vec4<bool>(true, true, true, false)), true)), select(true, true, any(vec3<bool>(false, false, true))), !(!all(vec2<bool>(true, true)))));
    global0 = any(select(!(!(!vec2<bool>(false, var_2))), select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), true), select(select(vec2<bool>(false, var_2), vec2<bool>(false, var_2), var_2), !vec2<bool>(var_2, true), vec2<bool>(true, var_2)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !vec2<bool>(!var_2, arg_0.x != arg_0.x)));
    return reverseBits(0u << (abs(arg_0.x) % 32u));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = Struct_4(-1303f, !vec4<bool>(select(any(vec3<bool>(true, true, true)), select(false, false, true), true), true, !all(vec2<bool>(true, true)), false));
    global0 = select(all(!select(select(var_1.b.xyx, vec3<bool>(true, var_1.b.x, false), vec3<bool>(false, true, var_1.b.x)), !var_1.b.yxz, !var_1.b.wyy)), true, false & ((u_input.a >> (~var_0.x % 32u)) != ((1i & u_input.d.x) << (abs(0u) % 32u))));
    let var_2 = global1[_wgslsmith_index_u32(min(0u, _wgslsmith_mult_u32(var_0.x, arg_1.x)), 8u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(floor(var_1.a)), 912f))));
    return select(vec4<bool>(false, var_1.b.x, all(!vec4<bool>(false, true, var_1.b.x, var_1.b.x)), !all(vec3<bool>(false, var_1.b.x, false))), select(!select(var_1.b, vec4<bool>(true, var_1.b.x, var_1.b.x, true), true), vec4<bool>(all(var_1.b) & var_1.b.x, any(!var_1.b.zww), all(select(vec3<bool>(true, true, false), var_1.b.wyw, vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), arg_0 >= 1u), u_input.a != -1i), select(!var_1.b, var_1.b, all(!select(var_1.b.yzx, vec3<bool>(false, var_1.b.x, false), false))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    let var_0 = !func_4(func_2(~_wgslsmith_mult_vec3_u32(u_input.b, arg_2), -778f), vec3<u32>(u_input.c.x, 0u, u_input.c.x));
    let var_1 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(1u, 8u)];
    global1 = array<Struct_5, 8>();
    let var_3 = Struct_4(-166f, var_0);
    return -900f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = Struct_5(select(~u_input.d.x & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(u_input.d.x, u_input.a)), u_input.a, reverseBits(-6000i)), 2147483647i, true));
    global0 = true;
    global1 = array<Struct_5, 8>();
    let var_1 = true;
    var var_2 = vec3<f32>(-219f, -435f, _wgslsmith_f_op_f32(-661f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-361f * 1000f))) - _wgslsmith_f_op_f32(func_1(var_1, Struct_3(Struct_2(vec3<bool>(var_1, var_1, true))), vec3<u32>(52687u, u_input.c.x, u_input.b.x) ^ u_input.b)))));
    global0 = true;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(3578u, u_input.c.x, 102127u, u_input.c.x)), 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-599f, 1541f, -356f), vec3<f32>(var_2.x, var_2.x, var_2.x), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, 101f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 3064f, 1000f) * vec3<f32>(var_2.x, var_2.x, var_2.x))))), ~4294967295u);
}

