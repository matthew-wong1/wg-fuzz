struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    global0 = global2.a;
    global0 = (u_input.b.x & u_input.b.x) <= 73567u;
    global0 = arg_0.x;
    let var_0 = Struct_1(all(!arg_0.zx) == !arg_0.x);
    var var_1 = u_input.b.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(602f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(364f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(908f, 173f, false)) - _wgslsmith_f_op_f32(-378f + -2575f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(!vec3<bool>(global2.a, true, global2.a)));
    return Struct_1(all(!select(select(vec4<bool>(global2.a, true, true, true), vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, global2.a, global2.a, global2.a)), select(vec4<bool>(false, true, global2.a, true), vec4<bool>(false, global2.a, true, global2.a), vec4<bool>(true, global2.a, false, global2.a)), vec4<bool>(true, false, global2.a, global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-305f - -930f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f * 391f) - -475f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -658f), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(776f))) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1404f, -346f)))));
    global0 = !global2.a;
    let var_2 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(841u, u_input.a.x, 48641u, u_input.a.x)), vec4<u32>(u_input.b.x, 70022u, u_input.b.x, 4294967295u) >> (vec4<u32>(69788u, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1u)), vec4<u32>(103435u, ~1u, ~u_input.a.x, 20771u | u_input.b.x))) >> (firstTrailingBit(~reverseBits(vec4<u32>(0u, u_input.a.x, 0u, 74989u))) % vec4<u32>(32u));
    var var_3 = firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ var_2.x);
    var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), u_input.b.zy) | select(vec2<u32>(24614u, 0u), vec2<u32>(0u, 15785u), vec2<bool>(true, true)), ~var_2.wz) & var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(i32(-1i) * -1i), 1i, _wgslsmith_sub_i32(330i, -6091i)), -48298i, 856f, -2147483647i);
}

