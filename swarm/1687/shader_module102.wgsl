struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, false), Struct_1(0u), 1u, Struct_1(12634u));

var<private> global2: Struct_1;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32) -> vec3<bool> {
    global3 = Struct_2(vec3<bool>(((u_input.c << (global3.b.a % 32u)) != -21140i) && (any(global1.a.zy) && global3.a.x), !any(!global3.a.yz), false || global1.a.x), global3.b, global1.b.a, Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0, arg_0) ^ ~u_input.a.x, _wgslsmith_mod_u32(arg_0, reverseBits(3084u)), u_input.b.x)));
    let var_0 = _wgslsmith_f_op_f32(ceil(610f));
    return !global3.a;
}

fn func_2() -> Struct_1 {
    global3 = Struct_2(!vec3<bool>(abs(-1i) > u_input.c, true, any(func_3(1u, global1.a.x, 1i))), global1.d, ~46150u, global1.d);
    let var_0 = ~(~(~(~(u_input.b.x & 37118u))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~u_input.a & u_input.b, u_input.b));
    global2 = global1.b;
    global2 = var_1;
    return Struct_1(64735u);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(29697u, 15084u, global3.d.a, 2402u)), ~firstTrailingBit(vec4<u32>(global3.d.a, 42398u, 0u, 66042u) << (u_input.a % vec4<u32>(32u)))));
    global0 = u_input.c;
    let var_1 = 30540u;
    let var_2 = -29945i;
    let var_3 = func_2();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.d;
    let var_0 = global1.a.xy;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(f32(-1f) * -764f), global1.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1357f - _wgslsmith_f_op_f32(876f - 478f)), _wgslsmith_div_f32(-569f, 1f))), _wgslsmith_f_op_f32(537f + _wgslsmith_div_f32(-1427f, _wgslsmith_f_op_f32(abs(2767f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, -419f, 823f)))), -491f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(690f * 1308f), -890f, _wgslsmith_f_op_f32(-966f + 1361f)))));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, global3.c, ~0u, 1u), abs(u_input.a)) <= ~global1.c;
    global0 = -2147483647i;
    var var_3 = Struct_1(reverseBits(1u));
    global0 = _wgslsmith_add_i32(1i, 1i);
    let var_4 = vec4<bool>(false, !any(!select(vec3<bool>(global3.a.x, true, false), vec3<bool>(global3.a.x, global1.a.x, global1.a.x), global3.a)), true, !global3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.b.a, 0u), vec2<u32>(1u, global1.d.a)), ~u_input.b.xy)), ~_wgslsmith_add_u32(firstLeadingBit(37942u), _wgslsmith_clamp_u32(global2.a, 39715u, 105649u)), func_2().a, ~53826u), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, select(func_2().a, ~0u, 36932i < u_input.c))), ~u_input.b.wz);
}

