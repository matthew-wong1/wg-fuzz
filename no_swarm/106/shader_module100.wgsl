struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    let var_0 = select(u_input.b, 0i, 888f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_f32(-global0.b)))));
    global0 = Struct_4(global0.a, 186f, arg_2);
    global0 = Struct_4(Struct_1(_wgslsmith_dot_vec2_u32(arg_1.a.zw, vec2<u32>(~global0.a.a, reverseBits(12313u)))), _wgslsmith_f_op_f32(f32(-1f) * -369f), Struct_2(vec4<u32>(arg_0.a, arg_1.a.x, 75624u, ~_wgslsmith_add_u32(0u, 1u)), vec3<i32>(global0.c.b.x, abs(arg_1.b.x), -2147483647i) ^ arg_2.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b, -1416f), vec2<f32>(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(floor(-2601f))), _wgslsmith_f_op_f32(945f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), global0.b))))));
    global0 = Struct_4(arg_0, _wgslsmith_f_op_f32(1134f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(645f - var_1.x), _wgslsmith_f_op_f32(-1341f * var_1.x))) - var_1.x)), Struct_2(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 15516u, 42018u, 1u), ~arg_2.a), arg_2.b));
    return ~_wgslsmith_add_u32(firstTrailingBit(arg_0.a), _wgslsmith_mod_u32(1u, abs(4294967295u)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = select(!all(vec3<bool>(true, true, global0.b < -582f)), true, true & (1u > func_3(global0.a, Struct_2(vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u), arg_0.b), arg_0, global0.c.a.yz)));
    var_0 = (11333u < func_3(global0.a, Struct_2(~vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, arg_0.a.x), vec3<i32>(global0.c.b.x, arg_0.b.x, -2147483647i)), Struct_2(_wgslsmith_sub_vec4_u32(global0.c.a, vec4<u32>(global0.c.a.x, u_input.a, 40429u, 23093u)), vec3<i32>(global0.c.b.x, 12000i, 17934i)), ~firstTrailingBit(vec2<u32>(u_input.a, arg_0.a.x)))) && false;
    let var_1 = any(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), global0.b >= 239f));
    var var_2 = true;
    var_2 = select(~_wgslsmith_div_i32(global0.c.b.x, reverseBits(global0.c.b.x)) != -2147483647i, var_1, var_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, -699f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -1350f) - global0.b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f), _wgslsmith_f_op_f32(func_2(Struct_2(global0.c.a, vec3<i32>(global0.c.b.x, 14586i, arg_0.x))))))), -157f);
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(657f + _wgslsmith_f_op_f32(-429f * -1570f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(global0.c.b.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - vec2<f32>(global0.b, global0.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 111f) + vec2<f32>(global0.b, -1359f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, 407f))), true)))), !vec3<bool>(all(vec2<bool>(false, false)), true, select(false, true, true) & (global0.b >= global0.b))));
    let var_1 = -1000f <= var_0;
    let var_2 = !vec2<bool>(!var_1, true);
    var var_3 = var_2.x != ((global0.c.b.x & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -5189i, u_input.b), global0.c.b), vec3<i32>(u_input.b, u_input.b, u_input.b))) == 1i);
    let var_4 = select(select(vec3<bool>(var_2.x, true, var_1), vec3<bool>(true, var_1, !any(vec4<bool>(var_1, var_2.x, var_1, var_1))), all(!(!vec4<bool>(var_2.x, true, var_1, true)))), select(!(!vec3<bool>(var_1, false, false)), !select(vec3<bool>(true, var_2.x, var_1), !vec3<bool>(var_1, true, var_1), true), true), true);
    let var_5 = Struct_3(_wgslsmith_add_vec2_u32(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.a.x, u_input.a), vec2<u32>(u_input.a, 4294967295u)), firstLeadingBit(global0.c.a.yz)), vec2<u32>(global0.c.a.x, _wgslsmith_div_u32(10412u, u_input.a & 90552u))), global0.a, Struct_2(global0.c.a, vec3<i32>(-8096i, ~8639i, -u_input.b) ^ (select(global0.c.b, global0.c.b, false) << ((global0.c.a.wwx << (global0.c.a.zwz % vec3<u32>(32u))) % vec3<u32>(32u)))), global0.c.a.yz, select(select(!(!vec4<bool>(var_4.x, var_1, false, var_4.x)), !(!vec4<bool>(false, false, true, var_1)), select(true, any(vec2<bool>(false, var_4.x)), !var_1)), select(!(!vec4<bool>(var_1, var_1, var_2.x, true)), vec4<bool>(true, !var_2.x, var_2.x, true), !(!vec4<bool>(var_1, false, var_1, var_1))), vec4<bool>(true, true, true, any(var_4) & (var_2.x | var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.a.x, 69631u), vec2<u32>(global0.c.a.x, 4294967295u)) | var_5.c.a.zy)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(var_5.c.a.zxw, var_5.c.a.ywy)), var_5.d.x >> (107716u % 32u), 15985u), countOneBits(0u), abs(func_3(Struct_1(var_5.b.a), Struct_2(vec4<u32>(102206u, global0.c.a.x, var_5.b.a, var_5.d.x), vec3<i32>(-8587i, -2147483647i, u_input.b)), global0.c, global0.c.a.zx)), min(var_5.b.a, global0.a.a)), max(global0.c.a.ww, ~var_5.c.a.zx), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.c.a.x, 1u, _wgslsmith_mod_u32(var_5.a.x, global0.c.a.x)), (var_5.c.a ^ vec4<u32>(4294967295u, 34350u, 4294967295u, global0.c.a.x)) & firstTrailingBit(var_5.c.a)), _wgslsmith_add_u32(select(0u, firstLeadingBit(0u), any(var_5.e.zyx)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a, 25610u) & global0.c.a.zy, global0.c.a.yw)), abs(55144u << (max(8114u, var_5.d.x) % 32u)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_5.d.x, var_5.c.a.x), ~vec2<u32>(global0.c.a.x, u_input.a), 15131u <= var_5.b.a), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.c.a.x), vec2<u32>(u_input.a, u_input.a))))), vec4<u32>(var_5.c.a.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, global0.a.a) | 8568u, _wgslsmith_sub_u32(30641u, _wgslsmith_mod_u32(u_input.a, var_5.b.a))), ~88418u, u_input.a));
}

