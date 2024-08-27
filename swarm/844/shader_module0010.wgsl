struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 12>;

var<private> global2: array<Struct_4, 1>;

var<private> global3: vec3<f32> = vec3<f32>(-1040f, 2263f, -1000f);

var<private> global4: u32 = 29168u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> i32 {
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_0 = u_input.c.x;
    global2 = array<Struct_4, 1>();
    let var_1 = reverseBits(vec2<u32>(u_input.c.x, ~global1[_wgslsmith_index_u32(2414u, 12u)] ^ global1[_wgslsmith_index_u32(~0u, 12u)]));
    return -80988i;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec3<i32>) -> u32 {
    let var_0 = -(u_input.a.x | (32799i & _wgslsmith_mod_i32(-30091i, func_2(-1i, global3.yy, arg_2.b.xz))));
    return ~(_wgslsmith_mod_u32(abs(u_input.c.x) ^ 3379u, ~arg_1.x ^ max(0u, 37538u)) >> (select(global1[_wgslsmith_index_u32(~countOneBits(arg_1.x), 12u)], 1u << (u_input.c.x % 32u), false) % 32u));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, ~global1[_wgslsmith_index_u32(3100u, 12u)]) << (_wgslsmith_mult_vec3_u32(select(u_input.c.wwy, vec3<u32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(true, false, false)), select(vec3<u32>(72194u, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(99002u, 12u)]), u_input.c.xxz, vec3<bool>(false, true, true))) % vec3<u32>(32u)), vec3<u32>(0u, ~global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11125u, 12u)], 12u)], 12u)]), 12u)], 1u)) ^ (vec3<u32>(~global1[_wgslsmith_index_u32(u_input.c.x, 12u)] >> (4294967295u % 32u), 13229u, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4369u, 12u)], 12u)], 4294967295u)) << (vec3<u32>(~(~0u), 2324u, select(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(20542u, u_input.c.x)), false)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(arg_0, -652f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -112f)));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(select(vec4<u32>(48171u, global1[_wgslsmith_index_u32(1u, 12u)], ~115781u, countOneBits(global1[_wgslsmith_index_u32(34660u, 12u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(28669u, 42730u, var_0.x, global1[_wgslsmith_index_u32(var_0.x, 12u)]), ~u_input.c), vec4<bool>(true, true, true, u_input.a.x > u_input.b)), vec4<u32>(_wgslsmith_div_u32(57949u, _wgslsmith_sub_u32(u_input.c.x, 8565u)), countOneBits(1u << (1u % 32u)), ~global1[_wgslsmith_index_u32(~u_input.c.x, 12u)], 0u)));
    let var_3 = Struct_2(vec2<u32>(var_0.x, global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 32676u, 7264u), vec4<u32>(57693u, 0u, u_input.c.x, u_input.c.x)), _wgslsmith_div_u32(13310u, 1u)), 12u)]) & firstTrailingBit(countOneBits(~vec2<u32>(4294967295u, var_2.a.x))), Struct_1(vec4<u32>(~(~33232u), u_input.c.x, 0u, u_input.c.x)), ~(~global1[_wgslsmith_index_u32(6029u, 12u)]), var_2, var_2);
    var var_4 = vec2<u32>(4294967295u, u_input.c.x & (1u >> (var_0.x % 32u)));
    return u_input.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1084f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(global3.x * 1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(global3.x * global3.x), all(vec4<bool>(false, false, true, false)))))));
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(61439u, arg_1.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], 0u), u_input.c, false), ~arg_1.e.a) & ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(29028u, 12u)], global1[_wgslsmith_index_u32(arg_1.c, 12u)]), 3915u);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(min(global3.x, global3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x)))), global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, -790f)))) + global3.x), global3.x);
    global2 = array<Struct_4, 1>();
    global4 = 1u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -505f) - _wgslsmith_f_op_f32(-global3.x)), var_2.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(633f - var_2.x))) * 478f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global4 = _wgslsmith_add_u32(u_input.c.x, u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(u_input.c.zy, Struct_1(vec4<u32>(func_1(false, vec2<u32>(82163u, 1u), Struct_4(false, vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), global3.x, vec2<u32>(u_input.c.x, 1u), global3.yx), u_input.a), 13639u >> (u_input.c.x % 32u), 41545u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), u_input.c.xx))), 4294967295u, Struct_1(u_input.c), Struct_1(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x) & ~u_input.c)), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(func_3(global3.x), 1u), ~(~u_input.c.yy)), Struct_1(vec4<u32>(30023u, func_1(true, vec2<u32>(u_input.c.x, 8048u), global2[_wgslsmith_index_u32(36366u, 1u)], u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 12u)]), 12u)], u_input.c.x)), select(1u, u_input.c.x, true || all(vec3<bool>(false, true, true))), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(1u, 12u)] ^ 4294967295u, 4294967295u, abs(28407u), 39316u)), Struct_1(firstLeadingBit(vec4<u32>(93703u, 4294967295u, 21039u, 47080u))))));
    let var_2 = -max(abs(vec2<i32>(u_input.a.x, u_input.b)), select(u_input.a.xx | u_input.a.xy, u_input.a.yx, vec2<bool>(true, true))) ^ ~(~u_input.a.yx);
    var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.x);
}

