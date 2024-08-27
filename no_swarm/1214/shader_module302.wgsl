struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<bool, 19>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = global3.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(arg_3.a)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-742f, -429f, 3129f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.xxy * vec3<f32>(global1.a.x, 671f, 2330f)))))), ~_wgslsmith_mult_vec2_u32(arg_3.b, ~vec2<u32>(u_input.a.x, u_input.a.x) ^ (vec2<u32>(1u, 6115u) ^ vec2<u32>(global1.b.x, 1u))));
    let var_2 = arg_1;
    let var_3 = arg_0;
    global1 = arg_0;
    return 4294967295u;
}

fn func_2() -> u32 {
    global0 = vec4<bool>(true, select(true, !any(select(vec2<bool>(global0.x, global3.x), global0.wz, false)), u_input.b.x < u_input.b.x), u_input.b.x < firstTrailingBit(_wgslsmith_mod_i32(-u_input.b.x, u_input.b.x)), !global3.x);
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.a.xx))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1574f, 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(709f * -119f))) * _wgslsmith_f_op_f32(-var_1.x))));
    let var_3 = global0.x;
    return func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.a)))), vec2<u32>(66956u, u_input.a.x)), vec4<f32>(772f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f * var_1.x))), 37959u, Struct_1(global1.a, min(reverseBits(vec2<u32>(4294967295u, 4294967295u) & u_input.a.yx), global1.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = global1.a;
    var var_1 = 0u;
    var_1 = ~8277u | ~(~reverseBits(global1.b.x));
    global4 = u_input.b.x | u_input.b.x;
    var var_2 = global0.yyw;
    return Struct_1(global1.a, vec2<u32>(global1.b.x, u_input.a.x) ^ (vec2<u32>(func_2(), func_2()) >> (vec2<u32>(global1.b.x, ~u_input.a.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-func_1().a), var_0.b << ((vec2<u32>(~var_0.b.x, ~56681u) | ((var_0.b ^ global1.b) ^ var_0.b)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 154f, _wgslsmith_f_op_f32(abs(444f))), var_1.a);
    let var_3 = var_0.a.yy;
    let var_4 = 588f;
    var var_5 = func_1();
    var var_6 = 0u;
    var_5 = var_0;
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1793u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(var_1.a.x - -276f)), var_4, _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_5.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))))));
}

