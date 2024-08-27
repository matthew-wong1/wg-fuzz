struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: f32 = 768f;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(173f, -762f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, -416f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -269f), vec2<f32>(-1000f, -152f))))), Struct_1(!(!vec4<bool>(global2.x, false, global2.x, true)), vec3<f32>(-732f, _wgslsmith_f_op_f32(sign(-998f)), _wgslsmith_f_op_f32(f32(-1f) * -932f)), _wgslsmith_div_f32(-533f, _wgslsmith_f_op_f32(f32(-1f) * -328f))), Struct_1(!vec4<bool>(all(vec4<bool>(false, false, global2.x, global2.x)), !global2.x, false, !global2.x), vec3<f32>(-1030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-553f))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2006f - _wgslsmith_f_op_f32(-801f - -298f)) * 1f)));
    var var_1 = 1000f;
    var var_2 = vec4<bool>(!(global2.x & select(var_0.b.a.x, true, true)) || global2.x, global2.x || !(-400f >= _wgslsmith_f_op_f32(-var_0.c.c)), true, true);
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(~38837u), 28u)];
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.c - -916f));
    return vec4<i32>(firstLeadingBit(-min(2147483647i, 8386i)) >> (u_input.b % 32u), u_input.a, _wgslsmith_clamp_i32(abs(2147483647i), abs(2147483647i), 34959i), u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = select(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, 32798i)), ~vec4<i32>(u_input.a, -1i, u_input.a, -32402i), ~vec4<i32>(-28229i, 27325i, 1i, u_input.a))), u_input.a, u_input.a), func_3(), select(vec4<bool>(1u > ~u_input.c.x, global2.x, !any(vec2<bool>(global2.x, global2.x)), !select(false, arg_0.x, arg_0.x)), !vec4<bool>(true, global2.x, global2.x, any(vec4<bool>(true, true, arg_0.x, false))), select(select(vec4<bool>(false, true, true, global2.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, arg_0.x, true, global2.x)), global2.x), vec4<bool>(any(vec3<bool>(global2.x, global2.x, true)), arg_0.x, any(vec4<bool>(global2.x, arg_0.x, global2.x, false)), true), !select(vec4<bool>(true, false, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), false))));
    global0 = array<Struct_4, 28>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), -1347f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-743f, 1031f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1372f))))));
    let var_1 = -1459f;
    global2 = vec3<bool>(!(select(arg_0.x | false, arg_1.a.x <= 10310u, true) || all(!vec4<bool>(false, false, arg_0.x, true))), !select(true, all(vec3<bool>(global2.x, arg_0.x, false)), any(global2.zz)), any(vec2<bool>(!global2.x, !(false && global2.x))));
    return -292f;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(!vec4<bool>(!global2.x, false, -125f <= _wgslsmith_f_op_f32(func_2(global2.zz, Struct_2(u_input.c))), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 962f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-162f)) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2.yx, Struct_2(vec3<u32>(u_input.d, 0u, u_input.b))))))));
    var var_1 = firstTrailingBit(~vec3<u32>(1u, u_input.d, u_input.b) >> (u_input.c % vec3<u32>(32u)));
    global0 = array<Struct_4, 28>();
    global1 = -1804f;
    var_1 = ~u_input.c;
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a >> (_wgslsmith_dot_vec2_u32(~u_input.c.zx, ~vec2<u32>(u_input.d, 4294967295u)) % 32u), u_input.a & u_input.a, 1i, -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(func_1()), 1000f, _wgslsmith_div_f32(var_0.b.c, _wgslsmith_f_op_f32(1f + var_0.c.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-330f, var_0.a.x, global2.x)))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1855f)));
}

