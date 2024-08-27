struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, true, true));

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global3: vec2<i32>;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = u_input.d;
    return firstLeadingBit(vec3<i32>(-43748i, global3.x, arg_0.x));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -reverseBits(vec3<i32>(-28162i, global3.x, 6077i) | vec3<i32>(-1i, global3.x, 1i)), select(select(vec3<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), -u_input.a, select(u_input.c.x, u_input.a, false)), vec3<i32>(i32(-1i) * -1i, 1i, -43565i), global0.a.xzx), _wgslsmith_clamp_vec3_i32(abs(min(vec3<i32>(-3812i, 71672i, global3.x), vec3<i32>(global3.x, u_input.b, u_input.a))), func_3(select(vec4<i32>(global3.x, u_input.a, -3483i, 14476i), vec4<i32>(u_input.c.x, 0i, u_input.b, u_input.b), vec4<bool>(false, global0.a.x, global4.a.x, true)), global3.x, Struct_2(-1i)), countOneBits(vec3<i32>(global3.x, global3.x, global3.x))), global2[_wgslsmith_index_u32(0u, 17u)]));
    global0 = Struct_3(global4.a);
    global0 = Struct_3(global4.a);
    global0 = Struct_3(vec4<bool>(false, global0.a.x, any(vec3<bool>(true, true, true)), false && global0.a.x));
    var var_1 = Struct_2(var_0.x);
    return Struct_3(select(vec4<bool>(all(!global4.a.zyx), global0.a.x, arg_2.a.x >= _wgslsmith_f_op_f32(trunc(arg_2.a.x)), true), global4.a, !select(select(vec4<bool>(global4.a.x, global0.a.x, global0.a.x, false), vec4<bool>(global4.a.x, true, global0.a.x, global4.a.x), true), select(global4.a, vec4<bool>(global4.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(false, false, false, global4.a.x)), select(true, false, global4.a.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(global4.a);
    global2 = array<vec3<bool>, 17>();
    global1 = _wgslsmith_div_i32(global3.x, ~countOneBits(global3.x) ^ -global3.x);
    global4 = Struct_3(func_2(arg_2.x, u_input.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wwz)))).a);
    var var_1 = arg_1.a.x;
    return Struct_2(~global3.x);
}

fn func_1() -> bool {
    global2 = array<vec3<bool>, 17>();
    let var_0 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -761f) * _wgslsmith_f_op_f32(-1360f + 722f))))), func_2(_wgslsmith_f_op_f32(sign(-1448f)), u_input.d, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1134f, 812f, -562f)), vec3<f32>(-1096f, 1000f, 685f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f * -786f) + 165f), -208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -573f))))));
    global2 = array<vec3<bool>, 17>();
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, 1281f)))))), 1u << (~_wgslsmith_mult_u32(reverseBits(22876u), _wgslsmith_mod_u32(5562u, u_input.d)) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_f_op_f32(select(702f, 724f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1394f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, 235f, -150f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 108f, -400f)))))).a;
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) + _wgslsmith_div_f32(-428f, 821f))))), Struct_3(vec4<bool>(global0.a.x, true, any(vec2<bool>(var_1.x, false)) || global4.a.x, true)), vec4<f32>(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(985f, -476f))), _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * -1281f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f * 768f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f + -2079f) - 716f))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(vec4<bool>(func_1(), true, true, !global4.a.x | true));
    global3 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-(~u_input.c), ~u_input.c), i32(-1i) * -_wgslsmith_add_i32(global3.x, 2147483647i), _wgslsmith_mult_i32(abs(-1i), countOneBits(1i))), _wgslsmith_mod_i32(global3.x, ~u_input.a));
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-669f - 1000f), _wgslsmith_f_op_f32(-228f - -215f)))))));
    let var_1 = vec2<bool>(true, global0.a.x);
    let var_2 = -u_input.c.x;
    global2 = array<vec3<bool>, 17>();
    let var_3 = vec3<i32>(42519i, global3.x, 20835i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(14279i, u_input.a), -u_input.a), -1i, (var_3.x << (46132u % 32u)) | _wgslsmith_mult_i32(-1i, 15678i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 28540i, -3427i) >> (vec3<u32>(57212u, u_input.d, 1u) % vec3<u32>(32u)), ~vec3<i32>(0i, -1i, 0i)), vec3<i32>(global3.x, var_3.x | 1i, max(1i, var_2)), var_1.x), ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(44557i, var_3.x, var_3.x), vec3<i32>(0i, 13229i, 1i), var_3))));
}

