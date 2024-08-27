struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(630f, 435f, -517f), vec3<bool>(true, false, false), false);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-232f, 197f, 260f), vec3<bool>(false, false, false), false);

var<private> global2: array<bool, 5>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = !any(!vec2<bool>(global1.c, -414f >= global1.a.x));
    return vec3<u32>(29274u, arg_0, 4294967295u);
}

fn func_2() -> vec2<bool> {
    var var_0 = max(min(~_wgslsmith_sub_vec3_u32(func_3(u_input.c.x, u_input.c), vec3<u32>(1u, 0u, u_input.c.x)), vec3<u32>(countOneBits(~u_input.e), _wgslsmith_clamp_u32(u_input.e, min(u_input.e, u_input.e), u_input.c.x), ~(u_input.c.x | 4294967295u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(59446u, 0u, u_input.e), vec3<u32>(60815u, u_input.e, u_input.c.x)), abs(vec3<u32>(61860u, u_input.e, 1u))), _wgslsmith_add_vec3_u32(~vec3<u32>(135298u, 1u, u_input.e), vec3<u32>(22033u, u_input.e, u_input.c.x))), vec3<u32>(_wgslsmith_sub_u32(u_input.e, 1u), 1u, 15186u)));
    var var_1 = Struct_1(global1.a, !(!select(global1.b, select(vec3<bool>(global0.c, true, false), global1.b, false), -194f != global1.a.x)), true);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x - var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), 188f) - _wgslsmith_f_op_vec3_f32(-var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a.x, global1.a.x))), var_1.a.x, var_1.a.x))), !(!select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 5u)], global2[_wgslsmith_index_u32(23572u, 5u)]), vec3<bool>(false, var_1.b.x, global1.b.x), var_1.b.x), vec3<bool>(global0.c, global0.c, global2[_wgslsmith_index_u32(1u, 5u)]), select(var_1.b, vec3<bool>(var_1.b.x, var_1.c, true), true))), global2[_wgslsmith_index_u32(u_input.c.x, 5u)]);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-378f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-269f)), _wgslsmith_f_op_f32(-global0.a.x))) - -506f), global0.a.x), var_1.b, 0u > _wgslsmith_dot_vec4_u32(~(vec4<u32>(40798u, 47535u, 4294967295u, u_input.e) >> (vec4<u32>(var_0.x, var_0.x, 7783u, 13152u) % vec4<u32>(32u))), vec4<u32>(18742u & u_input.e, 1u, _wgslsmith_sub_u32(u_input.c.x, var_0.x), 37615u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1491f)), -483f, 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(-2147f, 273f, -103f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(1072f)), _wgslsmith_f_op_f32(f32(-1f) * -1281f)))))), !vec3<bool>(select(true, true, true), !select(global1.b.x, true, false), _wgslsmith_f_op_f32(global0.a.x * global0.a.x) > _wgslsmith_div_f32(482f, 344f)), true && all(!global0.b.yy));
    return select(vec2<bool>(var_2.a.x > global0.a.x, all(!(!vec4<bool>(global1.c, false, false, var_2.c)))), vec2<bool>(global1.b.x, true), select(select(select(!global1.b.zz, global0.b.xz, var_3.b.zx), select(!var_2.b.yx, vec2<bool>(true, true), var_2.b.xx), any(select(vec2<bool>(var_3.c, false), vec2<bool>(true, var_2.b.x), false))), vec2<bool>(true, !any(global1.b.yy)), global0.b.yy));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(global1.a.x + -1000f);
    global2 = array<bool, 5>();
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(arg_3, firstTrailingBit(_wgslsmith_clamp_u32(u_input.e, 0u, 4294967295u))), countOneBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(47145u, arg_3, 1u, 4909u)), ~(~vec4<u32>(u_input.e, 16295u, 64159u, 0u)))), firstLeadingBit(arg_3 << (abs(4294967295u) % 32u)));
    global1 = arg_1;
    var var_2 = var_1.xy;
    return select(abs(((vec4<u32>(var_2.x, 29222u, 0u, arg_3) ^ vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u)) << (min(vec4<u32>(1u, 79731u, 4294967295u, 86215u), vec4<u32>(var_1.x, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(3202u, 15211u, 41538u, var_2.x)), vec4<u32>(arg_3, arg_3, 1u, 53168u)) % vec4<u32>(32u))), ~(~(~vec4<u32>(arg_3, arg_3, var_2.x, var_1.x)) >> (~abs(vec4<u32>(u_input.c.x, 1u, 0u, var_1.x)) % vec4<u32>(32u))), any(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global0.a.x, global0.a.x));
    var var_2 = all(!vec4<bool>(all(vec2<bool>(global0.c, true)), global0.a.x <= _wgslsmith_f_op_f32(-global1.a.x), false, any(global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, 93181u, var_0, u_input.c.x), vec4<u32>(var_0, var_0, u_input.c.x, u_input.e), true), abs(vec4<u32>(47925u, 110635u, var_0, u_input.e) << (vec4<u32>(12882u, 7850u, var_0, u_input.e) % vec4<u32>(32u)))) & (~(~vec4<u32>(0u, 38294u, u_input.c.x, var_0)) >> (select(firstTrailingBit(vec4<u32>(var_0, 4294967295u, var_0, var_0)), func_1(Struct_1(vec3<f32>(311f, var_1.x, global1.a.x), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 5u)], global0.c), global1.b.x), Struct_1(var_1, global1.b, false), vec3<i32>(u_input.b, u_input.a, -31426i), u_input.e), vec4<bool>(global2[_wgslsmith_index_u32(39073u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(var_0, 5u)], false)) % vec4<u32>(32u))), 1i, firstTrailingBit(vec2<i32>(2147483647i, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, -10647i, -59087i), vec4<i32>(2147483647i, 1i, u_input.a, 0i))))), select(vec2<i32>(-1i, u_input.b << (var_0 % 32u)), ~firstLeadingBit(vec2<i32>(u_input.d, u_input.d)), all(select(global0.b, vec3<bool>(global0.b.x, true, global2[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec3<bool>(true, true, false)))) ^ (vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 2147483647i, 1i), vec4<i32>(u_input.a, 6572i, u_input.d, 29891i)), u_input.d) ^ -(vec2<i32>(u_input.d, -2147483647i) >> (u_input.c % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(exp2(var_1.x))), -1027f));
}

