struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_2(true, Struct_1(vec3<f32>(-808f, 293f, -882f)), 168f));

var<private> global2: array<f32, 17>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-610f, 568f, 122f));

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    let var_0 = select(!vec2<bool>(true, all(select(vec3<bool>(global4.x, false, false), vec3<bool>(global1.a.a, global1.a.a, global1.a.a), false))), !vec2<bool>(any(!vec4<bool>(false, global1.a.a, true, global1.a.a)), select(global1.a.a, true, true)), firstTrailingBit(0u) < min(~(~0u), u_input.b.x));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.b.wy << ((vec2<u32>(u_input.a, 0u) << ((~u_input.b.ww >> (select(vec2<u32>(42522u, u_input.b.x), u_input.b.yx, global4.x) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.b.zw, reverseBits(u_input.b.xw | u_input.b.zz)) | u_input.b.yx, vec2<u32>(1u, countOneBits(u_input.b.x)));
    global1 = Struct_3(Struct_2(min(var_1.x, select(u_input.b.x, u_input.b.x, true)) > reverseBits(1u), global1.a.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-557f))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1923f, -434f) - _wgslsmith_f_op_f32(min(global3.a.x, 2119f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) * -603f))))));
    let var_2 = !select(!(!select(vec3<bool>(var_0.x, global4.x, global1.a.a), vec3<bool>(true, true, var_0.x), vec3<bool>(global4.x, var_0.x, true))), select(vec3<bool>(any(vec4<bool>(var_0.x, global1.a.a, true, true)), true, !global4.x), !vec3<bool>(global4.x, false, true), false), true);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), 261f, global3.a.x) * global1.a.b.a)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(global3.a)))), select(!vec3<bool>(global4.x, true, global1.a.a), select(vec3<bool>(global4.x, false, global1.a.a), vec3<bool>(false, true, global1.a.a), global4.x), true)))));
    return 442f;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global3.a))))), 717f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, 1035f, -1883f, -732f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(~u_input.b.x, 17u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.c), 227f)), global1.a.c, _wgslsmith_f_op_f32(ceil(global1.a.c)))));
    let var_2 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.a.x + global2[_wgslsmith_index_u32(1u, 17u)])) + _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(-1f)));
    var var_3 = reverseBits(4294967295u);
    var var_4 = vec2<u32>(min(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, min(1u, u_input.b.x), max(_wgslsmith_div_u32(1u, u_input.b.x), ~u_input.b.x))), ~u_input.a);
    return (0u >> (_wgslsmith_mod_u32(0u >> (1u % 32u), (u_input.a ^ 0u) ^ ~var_4.x) % 32u)) | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a, ~0u, u_input.b.x);
    let var_1 = !any(!vec2<bool>(global4.x, true));
    let var_2 = ~(u_input.b.x << (func_1(~vec2<i32>(2147483647i, 1i)) % 32u)) ^ 4294967295u;
    var var_3 = _wgslsmith_sub_vec2_u32(var_0.xy, u_input.b.ww);
    let var_4 = vec4<bool>(var_1, global1.a.a, !var_1, global1.a.a);
    var_0 = vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2, 0u, var_0.x, u_input.a << (var_3.x % 32u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 8171u, 27896u, 4294967295u), vec4<u32>(var_2, 28956u, var_3.x, 962u)) | firstTrailingBit(u_input.b))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(35663u, var_2) << (var_0.zx % vec2<u32>(32u)), vec2<u32>(u_input.a, var_2), firstTrailingBit(vec2<u32>(var_3.x, 40352u)))), (~var_2 ^ (var_3.x | u_input.a)) & 1u));
    var_0 = vec3<u32>(~_wgslsmith_clamp_u32(1u ^ var_0.x, 11119u, 0u), var_2, _wgslsmith_sub_u32(select(~(~var_2), max(16338u, 9965u), global1.a.a), u_input.a));
    global2 = array<f32, 17>();
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 17u)]))), global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -316f), 290f);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ((var_2 >> (max(var_3.x, 0u) % 32u)) | _wgslsmith_div_u32(~62173u, ~23957u)) ^ firstLeadingBit(~6097u), u_input.b.wxx);
}

