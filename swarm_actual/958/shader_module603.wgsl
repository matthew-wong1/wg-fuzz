struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: f32 = 1274f;

var<private> global3: f32 = 814f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - -240f), -310f);
    global3 = arg_2.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-467f, 921f, arg_2.x) + arg_2.yzz)))), _wgslsmith_f_op_vec3_f32(select(arg_2.zzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.ywz, vec3<f32>(arg_2.x, arg_2.x, -378f)) * arg_2.ywx), true)))));
    var var_1 = Struct_1(0u);
    return _wgslsmith_f_op_f32(var_0.x - var_0.x);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1018f, -423f, u_input.a.x <= 4294967295u)), -711f, true))), _wgslsmith_f_op_f32(abs(-1000f))));
    let var_1 = vec3<f32>(var_0, _wgslsmith_f_op_f32(-643f + var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)), -997f));
    var var_2 = firstLeadingBit(firstTrailingBit(min(_wgslsmith_clamp_i32(-27221i, 27521i, -1i), 1i))) != ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-38659i, 0i, -31918i) << (u_input.b.wxx % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(-2147483647i, 35587i, 1i)));
    let var_3 = var_1.zz;
    let var_4 = 69684i;
    return _wgslsmith_mod_u32(~abs(~1u), max((u_input.b.x | u_input.c.x) << (8715u % 32u), ~10413u));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -735f), -2061f)));
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-821f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)) - _wgslsmith_f_op_f32(func_2(Struct_1(0u), -vec4<i32>(10123i, 4186i, 37492i, -75553i), vec4<f32>(-1012f, -1133f, 323f, 1065f), Struct_1(u_input.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-307f, 118f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(237f, -786f)), arg_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, -722f))) - vec2<f32>(1f, 1f))));
    var var_1 = global1.x;
    let var_2 = true;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(299f))))));
    return Struct_1(~func_3());
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = select(vec2<bool>(all(!vec4<bool>(global1.x, true, global1.x, true)), true), vec2<bool>(global1.x, !global1.x), !vec2<bool>(any(vec4<bool>(false, global1.x, true, global1.x)), !(!global1.x)));
    var var_1 = u_input.c.x;
    let var_2 = ~(~abs(vec3<i32>(1i, 1i, 1i)));
    global2 = 1305f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -2203f, -804f, 1000f))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<i32>(_wgslsmith_sub_i32(-1i, 13656i) << (u_input.a.x % 32u), countOneBits(1i))) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-124f)))))), _wgslsmith_f_op_f32(-1929f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1249f, -195f) + -994f), _wgslsmith_f_op_f32(trunc(219f))))));
    var var_2 = u_input.b.wy;
    var var_3 = _wgslsmith_mod_i32(var_0.x, -13044i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))));
    var_3 = 1i;
    var var_5 = countOneBits(max(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d, 1u), func_4(func_1(vec4<bool>(global1.x, false, false, true)), func_1(vec4<bool>(true, global1.x, global1.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_dot_vec3_u32(~countOneBits(u_input.b.xzw), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 0u, 0u), max(u_input.a.zxw, vec3<u32>(u_input.a.x, 27205u, 34701u))), _wgslsmith_mod_vec3_u32(u_input.b.wyw, vec3<u32>(0u, u_input.b.x, var_2.x)))));
}

