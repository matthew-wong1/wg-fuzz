struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: f32 = -475f;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> bool {
    var var_0 = global0.yzw;
    return !(min(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) > (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 13528u, 1u), u_input.a.wyy), u_input.a.x) & u_input.a.x));
}

fn func_1() -> vec2<u32> {
    global3 = countOneBits(0u) ^ ~(~u_input.a.x);
    var var_0 = max(u_input.a, ~countOneBits(vec4<u32>(0u, _wgslsmith_add_u32(4294967295u, u_input.a.x), ~36556u, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1973f, -308f)))))))));
    let var_2 = global1.zz;
    global1 = vec4<bool>(false, !(!func_2()), false, !any(global1.zxw));
    return ~_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(43718u, var_0.x)), abs(u_input.a.xy));
}

fn func_3() -> f32 {
    global3 = _wgslsmith_mod_u32(1u, u_input.a.x);
    var var_0 = Struct_1(global1.yxw);
    global0 = select(!vec4<bool>(true, global0.x, global0.x, var_0.a.x), !vec4<bool>(!select(var_0.a.x, var_0.a.x, true), true, !global1.x, global0.x), global1.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(251f, -526f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1625f), vec2<f32>(-1188f, 681f))))))));
    let var_2 = abs(select(~(vec2<u32>(44364u, 5197u) | u_input.a.yy), select(vec2<u32>(abs(27263u), u_input.a.x), ~u_input.a.zw, var_0.a.x), false));
    return -1241f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-791f))) - -878f);
    var var_1 = reverseBits(u_input.a.ww);
    var_1 = u_input.a.xx >> (func_1() % vec2<u32>(32u));
    var var_2 = !(!select(!vec4<bool>(global1.x, true, global1.x, false), select(!vec4<bool>(false, global0.x, true, false), !vec4<bool>(global0.x, global0.x, global1.x, global0.x), true), true));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-585f)))) - _wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(ceil(-822f)))), _wgslsmith_f_op_f32(func_3()), -798f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(846f, _wgslsmith_f_op_f32(1214f * _wgslsmith_f_op_f32(-735f - 841f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -169f))), 1f), vec4<f32>(-745f, _wgslsmith_f_op_f32(max(468f, -634f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-492f)))), 1f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.yxx) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(var_3.zyw * vec3<f32>(517f, var_3.x, 704f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, 1u), 1u), ~(~u_input.a.ywz))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, var_4.x, var_4.x))), var_4), _wgslsmith_add_u32(min(~var_1.x, var_1.x), u_input.a.x), -1342f);
}

