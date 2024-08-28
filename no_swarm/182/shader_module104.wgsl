struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false));

var<private> global1: f32 = -677f;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    let var_0 = ~(1u ^ (u_input.b << (10420u % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1495f))), 2119f))) + -2482f);
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(!(!global0.a));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + -460f));
    let var_0 = Struct_3(22705u, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f - -562f) - -374f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_div_f32(1037f, 140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(168f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.a.x, _wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.b.a.x)))) * 177f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(func_3(false, vec2<u32>(u_input.b, 2185u)))))) - var_0.b.a.yy);
    return Struct_2(var_0.b.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(662f));
    global0 = global2[_wgslsmith_index_u32(~(21982u | u_input.b), 15u)];
    let var_1 = !(!any(!(!arg_0)));
    var var_2 = arg_1;
    let var_3 = ~(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 4294967295u, arg_2, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 36059u, 1u, 41552u), ~vec4<u32>(52446u, u_input.b, arg_2, arg_2), vec4<u32>(0u, u_input.b, 0u, 42758u))));
    return _wgslsmith_mult_vec4_u32(var_3, vec4<u32>(~(~_wgslsmith_dot_vec3_u32(var_3.xxx, var_3.zwx)), 21380u, 73586u, var_3.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = ~_wgslsmith_mult_u32(~1u, u_input.b);
    let var_1 = !global0.a.x;
    let var_2 = ~max(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, 11920u, 4294967295u, u_input.b), abs(vec4<u32>(var_0, var_0, u_input.b, 25117u))) ^ reverseBits(vec4<u32>(0u, 0u, var_0, 7952u) & vec4<u32>(u_input.b, u_input.b, 48904u, var_0)), select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0, var_0, var_0), vec4<u32>(var_0, 58814u, 1u, 12109u)) & ~vec4<u32>(var_0, 4294967295u, u_input.b, 4294967295u), func_4(vec4<bool>(var_1, global0.a.x, false, true), func_2(), 1u), !(!var_1)));
    global0 = Struct_1(select(select(global0.a, global0.a, global0.a), !vec3<bool>(var_1, all(vec3<bool>(true, true, var_1)), false | var_1), select(!(!global0.a), vec3<bool>(false, true, false), firstTrailingBit(var_0) <= ~0u)));
    let var_3 = Struct_3(1u, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-687f, 852f, -1132f) * vec3<f32>(-1834f, -106f, 113f)))))));
    return vec3<bool>(true, all(vec3<bool>(true, 331f <= _wgslsmith_div_f32(var_3.b.a.x, 663f), global0.a.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -468f);
    global0 = Struct_1(select(func_1(), select(vec3<bool>(false, global0.a.x | false, func_1().x), !vec3<bool>(global0.a.x, true, global0.a.x), all(!vec3<bool>(global0.a.x, false, global0.a.x))), false));
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.a.x))));
    var var_2 = global2[_wgslsmith_index_u32(~4294967295u, 15u)];
    var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 15u)];
    var_2 = Struct_1(select(global0.a, var_2.a, false));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(290f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(step(var_0.a.x, 1272f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(539f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yw);
}

