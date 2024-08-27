struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1886f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(504f, -904f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2868f))))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1321f, 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-422f, 1102f))))))));
    var var_1 = abs(_wgslsmith_div_u32(u_input.b.x, 22035u));
    let var_2 = !vec3<bool>(false, !(-1000f <= _wgslsmith_f_op_f32(ceil(581f))), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(321f, -1000f));
    return u_input.b.x;
}

fn func_1() -> f32 {
    global0 = array<vec3<i32>, 17>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_u32(~func_2(), max(1u >> (u_input.d % 32u), u_input.b.x));
    var var_2 = Struct_2(Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false)))), 1f, _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 7979u, 19668u, 0u), vec4<u32>(4294967295u, u_input.d, 1333u, 27437u)), select(vec4<u32>(12896u, 32535u, u_input.d, u_input.b.x), vec4<u32>(10731u, u_input.d, 1u, 40797u), vec4<bool>(true, false, true, true)) << (vec4<u32>(7189u, 1u, u_input.b.x, 84311u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(f32(-1f) * -1249f))), max(abs(~vec4<u32>(u_input.d, u_input.b.x, u_input.d, 0u)), ~vec4<u32>(u_input.d, 11637u, 1u, 10010u) << (~vec4<u32>(u_input.d, 0u, 0u, u_input.d) % vec4<u32>(32u))), vec4<bool>(all(vec4<bool>(true, false, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, all(vec2<bool>(true, true))), !(u_input.d < ~17711u)), Struct_1(all(vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(489f * 1000f)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d, u_input.b.x, 0u, 0u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, false, false, false)), ~vec4<u32>(1u, u_input.d, u_input.b.x, u_input.b.x)) & ~(~vec4<u32>(u_input.b.x, 89846u, u_input.b.x, 4294967295u)), !vec4<bool>(true, true, true, all(vec3<bool>(false, false, false))), true | all(vec2<bool>(true, true))));
    global0 = array<vec3<i32>, 17>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.b - _wgslsmith_f_op_f32(floor(var_2.b.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1466f, -1643f))) + _wgslsmith_f_op_f32(select(1880f, -272f, any(vec4<bool>(false, true, true, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f + 463f)) * _wgslsmith_f_op_f32(1f * 192f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-932f, -1000f)) - -618f))));
    var var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(func_1()), ~select(abs(vec4<u32>(58240u, 779u, 0u, 93522u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 15332u, u_input.d), vec4<u32>(4294967295u, 4294967295u, 56007u, 0u)), true), vec4<bool>(all(vec4<bool>(false, true, true, false)), max(70225i, u_input.a.x) != u_input.a.x, select(false, true, any(vec3<bool>(false, true, false))), false), true), Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -122f))), _wgslsmith_mult_vec4_u32(vec4<u32>(min(2334u, 20172u), ~46858u, u_input.b.x, firstTrailingBit(0u)), select(vec4<u32>(8186u, u_input.b.x, u_input.b.x, 72629u), vec4<u32>(u_input.b.x, 1367u, 72852u, 12047u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), vec4<bool>(true, true, true, true), false), Struct_1(1u == u_input.b.x, -1022f, max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.d, u_input.d), max(vec4<u32>(73967u, 80215u, u_input.b.x, u_input.b.x), vec4<u32>(54036u, 1u, u_input.b.x, u_input.b.x))), vec4<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 9759u, u_input.b.x)), firstTrailingBit(29516u), min(u_input.d, u_input.b.x))), select(vec4<bool>(true, select(true, true, true), select(true, true, true), true), vec4<bool>(true, true, true, select(false, true, false)), false), select(-47270i, ~u_input.c.x, true) > (i32(-1i) * -u_input.c.x)));
    var var_2 = vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, 0i);
    var var_3 = ~(-select(vec3<i32>(24407i, var_2.x, var_2.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 31495u, var_1.b.c.x), vec4<u32>(4294967295u, var_1.c.c.x, 10345u, u_input.d)), 17u)], var_1.b.d.x)) << (vec3<u32>(~_wgslsmith_sub_u32(50509u, var_1.c.c.x) << (_wgslsmith_div_u32(~var_1.b.c.x, u_input.d) % 32u), _wgslsmith_div_u32(select(28120u, func_2(), false), 61225u), abs(~countOneBits(u_input.d))) % vec3<u32>(32u));
    var var_4 = global0[_wgslsmith_index_u32(abs(~0u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, -1i ^ abs(u_input.a.x)), select(firstLeadingBit(vec2<i32>(70263i, u_input.c.x)), vec2<i32>(-15367i, -1i), select(!vec2<bool>(var_1.a.a, var_1.b.d.x), vec2<bool>(true, var_1.a.e), var_1.a.d.yw))), func_2(), _wgslsmith_f_op_f32(func_3()), var_1.c.c);
}

