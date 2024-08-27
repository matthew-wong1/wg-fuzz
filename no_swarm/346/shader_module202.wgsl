struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 0u, 1u));

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 11>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(59127u, 93682u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = Struct_3(!(!(!(global1.a || global1.a))), global1.b, Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42649u, global0.a.x), vec2<u32>(u_input.d.x, global1.b.a.a.x)), global0.a.x, countOneBits(0u)))));
    var var_1 = select(true, var_0.a, !global1.a);
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(~var_0.b.a.a.x, u_input.d.x, firstLeadingBit(global1.c.a.a.x)), global3.a.a)), _wgslsmith_clamp_vec3_u32(global0.a, reverseBits(global0.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, ~3517u, reverseBits(var_0.c.a.a.x)), ~vec3<u32>(global1.b.a.a.x, 36886u, 8722u))));
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_3(!(!arg_0.x), global1.b, global1.c);
    var var_1 = Struct_1(vec3<u32>(func_3(reverseBits(u_input.b | u_input.b), ~global1.c.a.a.x), ~_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(global3.a.a.x, 5469u, global3.a.a.x, var_0.b.a.a.x))), _wgslsmith_mod_u32(14917u, select(~1u, 33932u ^ u_input.c.x, true))));
    var var_2 = Struct_1(vec3<u32>(var_0.c.a.a.x, global1.b.a.a.x, 11590u));
    let var_3 = Struct_5(select(arg_0.xw, select(arg_0.yy, select(vec2<bool>(false, true), select(arg_0.xw, arg_0.yx, arg_0.wx), any(vec4<bool>(true, false, false, true))), !(!arg_0.yy)), any(select(vec2<bool>(true, false), arg_0.wz, all(vec3<bool>(false, true, arg_0.x))))), global1.c.a, 19655u);
    let var_4 = max(u_input.d, u_input.c);
    return vec4<u32>(~(_wgslsmith_mod_u32(14382u, 7159u) << ((global1.b.a.a.x << (4294967295u % 32u)) % 32u)) & 0u, _wgslsmith_div_u32(~var_2.a.x, ~countOneBits(4294967295u)), 4294967295u, var_4.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = -2046f;
    var var_1 = global1.c.a;
    return _wgslsmith_f_op_f32(-170f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(!vec4<bool>(arg_0.x, arg_0.x, false, true)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-495f - -651f), _wgslsmith_f_op_f32(-646f * -1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))), -522f), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1543f, _wgslsmith_f_op_f32(select(874f, -267f, arg_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f - -844f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1178f)) + _wgslsmith_f_op_f32(-1776f + 486f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) - _wgslsmith_f_op_f32(-2082f + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1500f)))));
    var var_1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a >> (~u_input.d.zwy % vec3<u32>(32u)), vec3<u32>(global0.a.x, 4294967295u, arg_1 ^ 0u)), u_input.c.wwz));
    var_1 = global3.a;
    var var_2 = ~1i;
    var var_3 = global1.c.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(2426f, -788f, global1.a)), 1743f, func_1(vec4<bool>(global1.a, global1.a, global1.a, global1.a), global0.a.x ^ 109271u))))));
    let var_1 = Struct_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(~0u), global3.a.a.x), ~(~(~u_input.c.x))));
    global2 = array<vec2<u32>, 11>();
    var var_2 = -1267f;
    let var_3 = u_input.d;
    var var_4 = Struct_1(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_3.ywy, global0.a), var_3.wzz) | var_3.xzx);
    let var_5 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, -286f, -1231f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1980f, 468f, -1147f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-390f, 1340f, 196f) + vec3<f32>(780f, 518f, -1688f)), !vec3<bool>(false, global1.a, global1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(227f, -1478f, -1157f) - vec3<f32>(390f, -996f, 974f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1542f, 661f, 809f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1025f, -u_input.a.x << (global1.c.a.a.x % 32u));
}

