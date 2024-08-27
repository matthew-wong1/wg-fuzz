struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 37732u, 4294967295u), vec3<u32>(63643u, 4294967295u, 27917u), vec3<u32>(4294967295u, 46626u, 4294967295u), vec3<u32>(112882u, 0u, 28995u));

var<private> global1: i32 = 13203i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = ~vec4<u32>(15865u, ~firstLeadingBit(u_input.b.x), abs(~abs(4294967295u)), _wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(46578u, min(4294967295u, 1690u))));
    var var_1 = _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.b.x, var_0.x & u_input.b.x)), var_0.wy);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(-1000f))))));
    global0 = array<vec3<u32>, 4>();
    var var_3 = Struct_1(var_2.a);
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(select(1u, abs(0u), any(vec4<bool>(true, false, false, false)))), min(u_input.b.x, func_3())) >> (1u % 32u);
    var var_1 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.xz), 4u)], vec3<u32>(22147u, u_input.a, 22604u)), u_input.a), u_input.a, ~u_input.b.x, 28937u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(319f - -393f)))));
    var_2 = Struct_1(1095f);
    let var_3 = u_input.b.x;
    return var_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(557f);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-306f + var_0.a)));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(func_2(countOneBits(0i), _wgslsmith_f_op_f32(round(var_1))) << (abs(~u_input.a) % 32u), min(u_input.a, u_input.a), (~u_input.b.x << (1u % 32u)) << ((u_input.a ^ 54544u) % 32u), 25894u), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.a, 36446u, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 29690u, 0u, 80706u), vec4<u32>(u_input.a, 1u, 42583u, u_input.a))), 39623u, u_input.a));
    var var_3 = ~vec3<i32>(abs(countOneBits(-1i)), ~firstLeadingBit(u_input.e.x), abs(-2147483647i));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(932f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.a)))), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, false))))));
    return Struct_1(_wgslsmith_div_f32(-637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = func_1();
    let var_2 = !select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)), true, -1000f > arg_0.a), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), false);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a))));
    let var_4 = 2147483647i;
    return all(vec3<bool>(!var_2.x, var_2.x | (!var_2.x | true), (7471u > ~u_input.a) | false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(func_4(func_1()), true), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !(_wgslsmith_dot_vec2_i32(u_input.d, u_input.c.yx) > -u_input.e.x)), true);
    global1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(~_wgslsmith_add_i32(-35142i, -1i), -1i, u_input.d.x, _wgslsmith_mod_i32(i32(-1i) * -70424i, 1i)), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.d, u_input.c.xy)), -32262i, u_input.c.x, abs(select(u_input.d.x, u_input.d.x, var_0.x)))), ~(vec4<i32>(-1i, u_input.d.x, -1i, u_input.e.x) >> (~vec4<u32>(0u, 14893u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) ^ firstLeadingBit(-vec4<i32>(44335i, u_input.d.x, 1i, -2147483647i)));
    global0 = array<vec3<u32>, 4>();
    let var_1 = _wgslsmith_mod_u32(u_input.a, ~(~32196u));
    global0 = array<vec3<u32>, 4>();
    global1 = _wgslsmith_sub_i32(1i, -1i);
    var var_2 = 894f;
    global1 = i32(-1i) * -2147483647i;
    let var_3 = Struct_1(1757f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(104f, var_3.a, var_3.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a)))))));
}

