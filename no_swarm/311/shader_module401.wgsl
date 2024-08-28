struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<f32>(-1051f, -253f, 125f, -1830f), vec4<u32>(0u, 74336u, 0u, 27789u)), vec3<i32>(-13432i, 0i, 1i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> vec2<bool> {
    let var_0 = max(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.a.b.xxx, ~_wgslsmith_sub_vec3_u32(u_input.b.wzx, u_input.b.zxx)), vec3<u32>(_wgslsmith_dot_vec3_u32(~global1.a.b.wzy, reverseBits(vec3<u32>(4294967295u, 0u, arg_1))), select(global1.a.b.x, u_input.b.x, all(vec2<bool>(true, false))), u_input.b.x >> (global1.a.b.x % 32u))), ~(arg_1 >> (reverseBits(0u) % 32u)));
    let var_1 = vec3<bool>(any(vec4<bool>(false, false, true, !(global1.b.x > global1.b.x))), -6873i >= _wgslsmith_mult_i32(-2147483647i, u_input.d), select(false, any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(global0.x)) != _wgslsmith_f_op_f32(abs(global1.a.a.x))) != (false | any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)))));
    var var_2 = !vec2<bool>(var_1.x, select(any(!vec4<bool>(var_1.x, false, var_1.x, true)), false, var_1.x));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.a.yyz + vec3<f32>(global1.a.a.x, global0.x, global1.a.a.x)), _wgslsmith_f_op_vec3_f32(-global1.a.a.zxy))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -762f), 493f, 1314f), global1.a.a))));
    return select(vec2<bool>(true, true), var_1.yx, !(!any(var_1)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-global1.a.a.x);
    var var_1 = 23333i;
    let var_2 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), false), select(select(func_3(Struct_5(vec3<f32>(322f, global1.a.a.x, global1.a.a.x)), global1.a.b.x | 4294967295u), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true)), !func_3(Struct_5(vec3<f32>(-341f, global1.a.a.x, global1.a.a.x)), 28552u), true), func_3(Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, -222f, global0.x) * _wgslsmith_f_op_vec3_f32(abs(global1.a.a.yxy)))), global1.a.b.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1000f, global1.a.a.x, 1000f))))))));
    let var_4 = func_3(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a.a.xzx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, arg_0.x, var_3.x))) * vec3<f32>(_wgslsmith_f_op_f32(-1110f * arg_0.x), var_3.x, var_3.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~2183u), (1u >> (global1.a.b.x % 32u)) << (1u % 32u), min(_wgslsmith_mult_u32(u_input.b.x, 1u), u_input.b.x), ~abs(global1.a.b.x)), (max(vec4<u32>(u_input.b.x, 37408u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 52306u, 4294967295u, 0u)) << (global1.a.b % vec4<u32>(32u))) << (max(_wgslsmith_div_vec4_u32(vec4<u32>(31923u, 0u, global1.a.b.x, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, 83105u, 0u)), ~u_input.b) % vec4<u32>(32u)))).x;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_3)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(483f, -1185f, -412f, -1000f))))), ~(~(u_input.b ^ vec4<u32>(u_input.b.x, 0u, u_input.b.x, global1.a.b.x)))), u_input.c);
}

fn func_1() -> Struct_2 {
    global1 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) - global1.a.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a.x, -825f)), global1.a.a.zz, false)), false)), global1.b.x);
    var var_0 = vec3<f32>(global1.a.a.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x))));
    var_0 = _wgslsmith_div_vec3_f32(global1.a.a.yxy, global1.a.a.xyz);
    let var_1 = func_2(global1.a.a.xz, _wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_add_i32(u_input.d & global1.b.x, global1.b.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1053f);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a.a), global1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global1 = Struct_3(func_1(), global1.b);
    var var_1 = !select(vec3<bool>(true, !all(vec4<bool>(false, false, false, false)), 0u <= _wgslsmith_mod_u32(global1.a.b.x, 21594u)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), !vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true));
    var_1 = select(select(select(vec3<bool>(var_1.x, true, any(vec4<bool>(true, var_1.x, true, var_1.x))), vec3<bool>(func_3(Struct_5(vec3<f32>(-403f, global0.x, global1.a.a.x)), 71302u).x, global1.a.a.x > global0.x, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), !var_1.x)), select(select(vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, true, var_1.x)), select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, false, true), var_1.x), !vec3<bool>(var_1.x, var_1.x, false), global0.x >= global1.a.a.x), !(!vec3<bool>(var_1.x, var_1.x, var_1.x))), !(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)))), vec3<bool>(true, var_1.x || (all(vec3<bool>(var_1.x, false, var_1.x)) | true), true), vec3<bool>(all(vec2<bool>(func_3(Struct_5(global1.a.a.yyw), 54752u).x, var_1.x)), !(true | any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), global1.a.b.x < ~4294967295u));
    var var_2 = vec4<bool>(false, (780f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.a.x)), -259f)) || (all(var_1.yx) && !select(true, true, true)), var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.b.wyx, vec3<u32>(abs(abs(global1.a.b.x)), abs(firstTrailingBit(0u)), ~global1.a.b.x) | ~select(vec3<u32>(global1.a.b.x, u_input.b.x, 1u), global1.a.b.xyy, vec3<bool>(true, var_2.x, var_1.x)));
}

