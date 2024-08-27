struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec3<f32> = vec3<f32>(1151f, 753f, -1263f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = u_input.c.yxy >> (firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1, 14743u), u_input.c.zy), vec2<u32>(arg_0.x, 38100u)), min(1u << (0u % 32u), max(4294967295u, 27868u)), arg_1)) % vec3<u32>(32u));
    global0 = array<Struct_3, 7>();
    var var_1 = Struct_3(vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - global1.x)), Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    var_0 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(_wgslsmith_add_u32(84810u, 19961u), arg_0.x >> (var_0.x % 32u), ~arg_1)), max(select(_wgslsmith_sub_vec3_u32(vec3<u32>(822u, u_input.d, 18959u) ^ vec3<u32>(8590u, 0u, arg_1), ~vec3<u32>(96398u, 0u, var_0.x)), vec3<u32>(firstLeadingBit(var_0.x), 1u, _wgslsmith_mod_u32(u_input.d, var_0.x)), !var_1.b.a.x & true), arg_0));
    var var_2 = _wgslsmith_f_op_f32(round(-2179f));
    return vec2<bool>(false, select(all(!(!vec3<bool>(var_1.b.a.x, true, var_1.b.a.x))), var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1213f, 353f) * var_1.a.x) < global1.x));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    let var_1 = vec3<i32>(1i, 2147483647i, ~u_input.a.x);
    var var_2 = u_input.c & u_input.c;
    let var_3 = 0i;
    var var_4 = Struct_1(func_3(~(~vec3<u32>(var_2.x, u_input.d, u_input.d)), 20861u, vec4<i32>(var_3, var_1.x, 15772i, 1656i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -1000f)) - -421f));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    global0 = array<Struct_3, 7>();
    var var_0 = !vec3<bool>(select(true | any(vec4<bool>(false, true, false, false)), true, ~6639i > min(u_input.a.x, 64127i)), true, true);
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1127f, -234f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + 737f), -712f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(-118f, vec4<f32>(-1330f, arg_1.x, -104f, -321f), var_0.x, Struct_1(var_0.yz)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1701f, -761f, global1.x))))))));
    global0 = array<Struct_3, 7>();
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-1658f + _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1103f, 1f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(448f, -604f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(f32(-1f) * -346f))))));
    return -636f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c), _wgslsmith_f_op_vec2_f32(max(global1.yx, global1.xx)), ~(-2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(656f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 222f) + vec3<f32>(-2029f, global1.x, global1.x)))));
    let var_0 = Struct_2(~vec4<u32>(_wgslsmith_sub_u32(abs(1u), reverseBits(u_input.d)), ~u_input.c.x, u_input.c.x, u_input.c.x));
    let var_1 = Struct_2(var_0.a);
    global0 = array<Struct_3, 7>();
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1.x, 1375f), vec3<f32>(global1.x, global1.x, global1.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1973f, 1036f), vec3<f32>(-563f, -1660f, global1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 856f, global1.x)), vec3<f32>(global1.x, -1000f, 452f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) * 870f), 122f, _wgslsmith_f_op_f32(trunc(global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1970f, global1.x, -535f) - vec3<f32>(-155f, 1000f, -1335f)) * vec3<f32>(global1.x, global1.x, 631f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, -1235f)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(927f, 1581f) + 644f)))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-900f)), 493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 349f), _wgslsmith_f_op_f32(floor(global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec3<u32>(u_input.c.x, 1u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-global1.xx));
}

