struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 24>;

var<private> global2: u32 = 43558u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    return !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, true)), u_input.d.x >= 0i, all(vec2<bool>(true, false)))), select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1f + -226f);
    let var_1 = select(select(select(vec3<bool>(true, true, 56075i < global1[_wgslsmith_index_u32(u_input.c, 24u)]), !func_1(-1089f).ywx, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), !all(vec2<bool>(false, false))), vec3<bool>(true, true, _wgslsmith_f_op_f32(563f + var_0) >= _wgslsmith_f_op_f32(var_0 + var_0))), !vec3<bool>(any(vec4<bool>(true, true, true, true)), false, !(global0.x != -4920i)), true);
    global2 = 1u;
    var var_2 = false;
    var_2 = u_input.b <= (firstTrailingBit(u_input.b) | 1u);
    return _wgslsmith_mult_u32(min(_wgslsmith_mod_u32(reverseBits(0u), 1u), _wgslsmith_mod_u32(44208u, _wgslsmith_sub_u32(0u, u_input.c)) | u_input.b), u_input.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = !arg_0.a.zz;
    var var_1 = vec3<u32>(u_input.b, abs(reverseBits(max(min(4294967295u, u_input.c), _wgslsmith_mult_u32(u_input.c, u_input.a.x)))), _wgslsmith_add_u32(func_3(), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, u_input.c, 0u), u_input.a), ~u_input.a)) & ~(_wgslsmith_clamp_u32(12630u, u_input.b, u_input.b) | (u_input.a.x >> (u_input.c % 32u))));
    var var_2 = vec4<u32>(48555u, _wgslsmith_clamp_u32(countOneBits(~var_1.x) ^ (max(u_input.a.x, 23143u) & var_1.x), u_input.c, select(0u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b) ^ abs(1u), arg_0.a.x)), ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(53337u, 4294967295u), var_1.x), var_1.x);
    var var_3 = (~u_input.d.xw >> (vec2<u32>(44037u, u_input.b) % vec2<u32>(32u))) >> (~(~reverseBits(vec2<u32>(u_input.b, var_1.x))) % vec2<u32>(32u));
    var_3 = ~vec2<i32>(1i >> (var_2.x % 32u), -25170i);
    return Struct_1(arg_0.a.wzz, ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -u_input.d.x, var_3.x, ~u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_2(Struct_3(func_1(_wgslsmith_div_f32(-262f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-103f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-712f, -1228f)) * _wgslsmith_f_op_f32(-1000f * 587f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(611f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(select(global0.x, 34251i, true | var_1.a.x), 34811i, ~(-32229i))));
}

