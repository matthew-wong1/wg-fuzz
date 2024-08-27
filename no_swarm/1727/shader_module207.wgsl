struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-737f, 188f), 1f)), 755f, u_input.b >> (u_input.b % 32u)), Struct_2(!(u_input.b <= 5233u) || false), ~(-2147483647i), vec2<f32>(-224f, -1780f));
    var var_1 = -634f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.d.x))));
    global1 = 242f;
    global0 = array<vec2<i32>, 21>();
    var var_2 = all(select(vec4<bool>(false & var_0.b.a, all(vec4<bool>(false, false, false, var_0.b.a)), abs(u_input.b) >= var_0.a.c, true), !(!(!vec4<bool>(var_0.b.a, false, false, var_0.b.a))), select(!vec4<bool>(false, var_0.b.a, false, var_0.b.a), select(select(vec4<bool>(var_0.b.a, var_0.b.a, true, false), vec4<bool>(var_0.b.a, var_0.b.a, false, false), vec4<bool>(false, false, true, var_0.b.a)), select(vec4<bool>(var_0.b.a, true, true, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, true), false), select(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), vec4<bool>(true, false, false, var_0.b.a), var_0.b.a)), !all(vec2<bool>(var_0.b.a, true)))));
    return ~(~vec2<u32>(var_0.a.c, ~1u));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_1(abs(select(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c.x, 24913i), vec2<i32>(4183i, 1i), abs(u_input.c.xy)), -(~global0[_wgslsmith_index_u32(94361u, 21u)]), false)), u_input.a.ww, u_input.b, ~(func_3() >> (reverseBits(~vec2<u32>(110631u, 36365u)) % vec2<u32>(32u))));
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -146f)));
    global2 = 4294967295u;
    return Struct_2(all(vec3<bool>(~1u > var_0.c, any(vec4<bool>(true, true, true, true)), countOneBits(u_input.a.x) == 0i)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> bool {
    global0 = array<vec2<i32>, 21>();
    let var_0 = func_2(-904f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-1f))));
    let var_2 = -u_input.c.yzy;
    var var_3 = _wgslsmith_f_op_f32(var_1.x + 941f);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = -(~max(u_input.c.x ^ (6016i << (u_input.b % 32u)), ~countOneBits(-37326i)));
    let var_1 = Struct_3(1f, _wgslsmith_f_op_f32(round(964f)), _wgslsmith_sub_u32(~(~min(u_input.b, arg_1.c)), u_input.b));
    var var_2 = vec3<f32>(1000f, var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2133f), 243f)));
    var var_3 = 1u;
    let var_4 = !all(select(vec3<bool>(true, select(arg_0, false, arg_0), any(vec4<bool>(arg_0, arg_0, true, arg_0))), !(!vec3<bool>(true, arg_0, false)), false));
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b), u_input.b >> (u_input.b % 32u));
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 76026u) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4377u, 1u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), select(vec2<u32>(1u, 1u) | vec2<u32>(u_input.b, 8396u), vec2<u32>(16088u, 50442u) ^ vec2<u32>(4294967295u, u_input.b), true), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 20971u))))));
    global2 = 0u;
    var var_1 = func_4(func_1(~((u_input.b ^ u_input.b) & _wgslsmith_mult_u32(u_input.b, u_input.b)), vec2<i32>(u_input.c.x, u_input.c.x)), Struct_1(~(~reverseBits(global0[_wgslsmith_index_u32(u_input.b, 21u)])), (~vec2<i32>(1i, u_input.a.x) ^ u_input.a.zx) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 3060u), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), ~u_input.b, ~vec2<u32>(u_input.b, ~4294967295u)), u_input.a.x);
    var var_2 = vec3<bool>(!(!any(vec4<bool>(var_1.a, true, true, false)) | false), all(!(!select(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), var_1.a))), !func_2(_wgslsmith_f_op_f32(min(-593f, _wgslsmith_f_op_f32(select(-938f, -630f, var_1.a))))).a);
    var var_3 = vec3<i32>(u_input.c.x, -min(~12843i << ((u_input.b << (21565u % 32u)) % 32u), (u_input.a.x | u_input.c.x) & u_input.c.x), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~u_input.b, firstLeadingBit(_wgslsmith_mult_u32(u_input.b, 1u)), 1u >> (_wgslsmith_mult_u32(u_input.b, 4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2328f))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(abs(-933f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(710f)), 1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1361f)) - _wgslsmith_f_op_f32(1292f + 1367f))))));
}

