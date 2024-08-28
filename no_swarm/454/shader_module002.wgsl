struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec2<i32>(-14541i, -38906i), vec4<bool>(true, true, false, true)), false);

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(-198f, global2.b);
    var var_1 = vec4<f32>(-1832f, _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) * 103f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -919f), global2.a, 0i == var_0.b))))), 135f);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1359f, _wgslsmith_f_op_f32(-124f * var_1.x), var_1.x, var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(round(global2.a)), var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f * -1000f))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f + var_0.a) + _wgslsmith_f_op_f32(ceil(global2.a))), global0.a.a.x >> (~select(0u, u_input.b.x, global0.b) % 32u)), u_input.b.yzx, vec3<i32>(global0.a.a.x, select(-2147483647i >> (1u % 32u), -global0.a.a.x, false), 1i), Struct_1(var_1.x, u_input.a), var_1.ywz);
    var var_4 = Struct_1(1015f, global0.a.a.x);
    return var_1.xx;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1877f + arg_0)), _wgslsmith_f_op_f32(min(831f, -158f)));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(190f, 1000f) * _wgslsmith_f_op_f32(var_0 - -1000f)))) + -203f), global0.a.a.x);
    let var_1 = global2.b;
    let var_2 = Struct_4(global0.a, !any(select(global0.a.b.xyw, vec3<bool>(true, true, true), vec3<bool>(global0.b, global0.b, global0.b))));
    global0 = var_2;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: bool) -> Struct_4 {
    global1 = true;
    var var_0 = u_input.b.wx;
    var_0 = firstLeadingBit(select(vec2<u32>(1u, _wgslsmith_add_u32(91686u, abs(u_input.b.x))), vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.yx)), global0.a.b.zx));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - vec2<f32>(-1818f, global2.a))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-331f, vec4<f32>(2200f, global2.a, global2.a, global2.a), var_0.x, 47876u)), _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(select(global2.a, -126f, arg_0)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_vec2_f32(func_2()).x)), select(vec2<bool>(!global0.a.b.x || !global0.a.b.x, !(2147483647i < u_input.a)), select(global0.a.b.wz, select(global0.a.b.xx, global0.a.b.yy, !global0.b), true), true)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 991f) + _wgslsmith_f_op_f32(max(var_1.x, -943f)))), max(max(2147483647i, ~u_input.a), u_input.a)), ~vec3<u32>(14743u, ~var_0.x, 0u) << (u_input.b.zzw % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~vec3<i32>(global2.b, ~(-2147483647i), u_input.a), vec3<i32>(_wgslsmith_mult_i32(1i, -2147483647i ^ u_input.a), -35555i, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-648f + _wgslsmith_f_op_f32(global2.a + global2.a)), min(select(-27594i >> (1u % 32u), ~u_input.a, false), -1i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-310f * -1098f), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(-664f, vec4<f32>(var_1.x, global2.a, 951f, var_1.x), u_input.b.x, var_0.x)), var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -958f, -1362f), vec3<f32>(1252f, 460f, 106f), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global2.a))), vec3<f32>(_wgslsmith_f_op_f32(max(2246f, var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, 1136f, global0.a.b.x)), var_1.x)))));
    return Struct_4(Struct_3(reverseBits(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -84973i, 54324i, var_2.a.b), vec4<i32>(1i, -2147483647i, global0.a.a.x, 2147483647i)))), !select(vec4<bool>(global0.b, true, global0.a.b.x, false), select(vec4<bool>(false, false, arg_0, false), global0.a.b, vec4<bool>(global0.a.b.x, arg_0, arg_0, false)), !vec4<bool>(global0.b, arg_0, true, false))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy)) < ~0u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1172f, global2.a, -896f, -424f)))), u_input.b.x, min(~u_input.b.x, ~u_input.b.x)))), ~(-2147483647i));
    var var_1 = ~u_input.b;
    let var_2 = -(i32(-1i) * -global0.a.a.x);
    var var_3 = 0u;
    let var_4 = ~16214u;
    global0 = Struct_4(global0.a, func_1(true).b);
    global2 = var_0;
    let var_5 = max(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~global0.a.a, countOneBits(global0.a.a)), _wgslsmith_mult_vec2_i32(global0.a.a & global0.a.a, max(global0.a.a, global0.a.a))), vec2<i32>(_wgslsmith_clamp_i32(global2.b | global0.a.a.x, global2.b, ~(-13037i)), 1i | min(u_input.a, 0i))) | reverseBits(min(abs(-global0.a.a), global0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xw);
}

