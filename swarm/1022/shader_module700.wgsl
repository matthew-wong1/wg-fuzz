struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1((_wgslsmith_mod_i32(1488i, -2147483647i) ^ reverseBits(-u_input.a.x)) >> (_wgslsmith_clamp_u32(firstLeadingBit(1u), _wgslsmith_add_u32(countOneBits(32388u), ~35320u), 1u) % 32u));
    var var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_mod_u32(1u, ~1u), select(!vec4<bool>(true, true, true, 1i > u_input.b), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(!any(vec4<bool>(true, false, false, false)), true, true, true)), Struct_1(4618i));
    var_0 = var_2.c;
    var_0 = Struct_1(-2147483647i);
    return ~select(~vec2<u32>(25902u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(64758u, var_2.a), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(52897u, 1u))) ^ vec2<u32>(4294967295u & var_2.a, ~13888u), ((var_2.b.x || var_2.b.x) && false) != true);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = 62036i;
    let var_1 = Struct_1(arg_0);
    var var_2 = ~max(vec2<u32>(1u, ~1u), ~vec2<u32>(1u, 1u));
    let var_3 = Struct_2(_wgslsmith_mult_u32(var_2.x, _wgslsmith_dot_vec2_u32(select(min(vec2<u32>(872u, 22146u), vec2<u32>(0u, 29193u)), func_3(), false), (vec2<u32>(var_2.x, 34234u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) ^ vec2<u32>(49260u, 0u))), vec4<bool>(true || all(vec3<bool>(false, true, false)), true, true, any(vec3<bool>(false, true, false))), Struct_1(-16855i));
    var_2 = firstLeadingBit(~vec2<u32>(~var_2.x, 1u));
    return var_3;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_2(~u_input.a.x);
    var var_1 = select(true, !all(vec2<bool>(var_0.b.x, true | var_0.b.x)), all(select(var_0.b, vec4<bool>(var_0.b.x && var_0.b.x, false, any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), var_0.a != var_0.a), !all(var_0.b.yy))));
    var_1 = true;
    var_1 = var_0.b.x;
    var_1 = false;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-460f))), any(!vec4<bool>(select(true, false, false), true, true, any(vec2<bool>(false, true))))));
    var var_1 = vec2<bool>(all(vec2<bool>(select(any(vec2<bool>(true, false)), true, true), true)), true);
    let var_2 = func_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~0u), ~10105u), 57089u, 93301u));
    let var_3 = !select(func_2(9047i).b.yw, vec2<bool>(true, true), any(func_2(abs(u_input.a.x)).b.yzy));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1934f + 324f) * _wgslsmith_div_f32(var_0, -863f)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -711f), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.x, 287f))), var_4.wy)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + -1717f))), -2334f, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, reverseBits(6748u), 2572u), reverseBits(vec3<u32>(1u, 1u, 1u)))), var_4.yyw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(1824f + _wgslsmith_f_op_f32(f32(-1f) * -179f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yz * var_4.wy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, -936f) * vec2<f32>(542f, 439f)))))));
}

