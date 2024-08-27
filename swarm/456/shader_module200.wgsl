struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<u32, 31> = array<u32, 31>(1u, 39682u, 1u, 58350u, 105114u, 0u, 4294967295u, 15006u, 74731u, 4294967295u, 8658u, 7397u, 0u, 29729u, 37623u, 32842u, 0u, 18950u, 4294967295u, 0u, 44444u, 1u, 0u, 4294967295u, 58342u, 1u, 0u, 0u, 1u, 0u, 0u);

var<private> global3: Struct_5 = Struct_5(vec3<i32>(0i, -16328i, 1i), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 0u)), 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = -3726i << (~((~global3.c << (4294967295u % 32u)) >> (19284u % 32u)) % 32u);
    var var_1 = Struct_1(all(!(!vec4<bool>(global3.b.a, false, global3.b.a, true))), reverseBits(_wgslsmith_mult_vec3_u32(global3.b.b, vec3<u32>(~30652u, global3.b.b.x, ~u_input.a))));
    global1 = true || !(!(!select(global3.b.a, global3.b.a, global3.b.a)));
    let var_2 = Struct_5(-(~select(global3.a, global0.yxy, vec3<bool>(true, false, global3.b.a)) | countOneBits(vec3<i32>(u_input.b.x, global0.x, 1i))), Struct_1(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.c, 56506u), 31u)] >= u_input.c.x, global3.b.b), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~u_input.a, firstLeadingBit(global3.b.b.x)), 4830u, u_input.a));
    let var_3 = select(vec3<bool>(true, true, global3.b.a), vec3<bool>(var_1.a, all(vec3<bool>(var_1.a & var_2.b.a, select(global3.b.a, var_1.a, true), all(vec2<bool>(var_1.a, var_1.a)))), var_1.a), global3.b.a);
    return -1299f;
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_2(Struct_1(true, select(global3.b.b, firstLeadingBit(select(vec3<u32>(u_input.c.x, 39746u, 29563u), global3.b.b, global3.b.a)), !global3.b.a)), global0.wwy);
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = abs(vec4<u32>(arg_0, _wgslsmith_mod_u32(~u_input.a, 17484u) >> (abs(_wgslsmith_add_u32(0u, 4294967295u)) % 32u), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(0u, global3.b.b.x)), ~39655u));
    var var_3 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-568f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-287f)), -747f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1348f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + -1738f)))));
    return Struct_5(vec3<i32>(-2147483647i, 1i, global3.a.x), global3.b, ~0u);
}

fn func_1(arg_0: u32) -> bool {
    global3 = func_2(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(~(~0u), ~52043u)));
    global2 = array<u32, 31>();
    global1 = select(global3.b.a, global3.b.a, global3.b.a) != true;
    let var_0 = 1u;
    let var_1 = u_input.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    var var_0 = vec2<bool>(func_1(0u), true);
    let var_1 = Struct_5(global0.xxw, func_2(global3.c).b, global3.c);
    var_0 = !vec2<bool>(var_1.b.a, ~global3.a.x < -(~u_input.b.x));
    let var_2 = _wgslsmith_mult_i32(-10762i, _wgslsmith_dot_vec2_i32(global0.wx, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27290i, 58733i, global3.a.x), vec3<i32>(u_input.b.x, -55537i, var_1.a.x)) | u_input.b.x, _wgslsmith_dot_vec2_i32(global3.a.zy, reverseBits(var_1.a.xz)))));
    let var_3 = select(!(!(!(!vec4<bool>(var_1.b.a, true, var_0.x, var_0.x)))), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, global3.b.a, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, var_1.b.a, var_1.b.a, true), vec4<bool>(false, var_0.x, true, true)), !global3.b.a)), -1i == ~u_input.b.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-828f - 251f)) * _wgslsmith_f_op_f32(sign(-1298f)))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f));
    var_0 = select(!var_3.wx, select(var_3.wz, vec2<bool>(!(var_0.x != false), false), select(!(!vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x, false), !(!vec2<bool>(false, global3.b.a)))), all(vec4<bool>(!(494f > var_4), true, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~min(var_1.b.b << (var_1.b.b % vec3<u32>(32u)), ~global3.b.b), _wgslsmith_mult_vec3_u32(select(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(var_1.c, 31u)], 4294967295u)), ~vec3<u32>(36475u, var_1.c, 4294967295u), !vec3<bool>(true, var_1.b.a, var_0.x)), ~vec3<u32>(var_1.c, var_1.b.b.x, 0u) & global3.b.b)));
}

