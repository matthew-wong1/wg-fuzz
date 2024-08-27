struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(1398f, false), Struct_2(1234f, true), Struct_2(-1427f, true), Struct_2(924f, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_1(select(!vec4<bool>(arg_0.b, u_input.a < u_input.d, true, arg_0.b), select(vec4<bool>(true, global0[_wgslsmith_index_u32(reverseBits(u_input.e.x), 16u)], true, false & global0[_wgslsmith_index_u32(0u, 16u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 16u)], arg_0.b, true, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(47324u, 16u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 16u)], true, arg_0.b), arg_0.b), true), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], arg_0.b, global0[_wgslsmith_index_u32(92u, 16u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 16u)], arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, false, global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], false, true)), arg_0.b)), !select(!vec4<bool>(false, true, true, arg_0.b), vec4<bool>(false, true, arg_0.b, false), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 16u)], true), vec4<bool>(arg_0.b, true, false, false), global0[_wgslsmith_index_u32(u_input.e.x, 16u)]))), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, !(!arg_0.b), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.e.x), reverseBits(u_input.e.x)), 16u)]), firstLeadingBit(u_input.c.yw) ^ -u_input.c.zw, _wgslsmith_f_op_vec2_f32(-global1.wy), select(~(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u) >> (vec3<u32>(u_input.e.x, 15113u, 28418u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(7944u, 2197u, ~1u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x >> (u_input.e.x % 32u))), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true || global0[_wgslsmith_index_u32(u_input.e.x, 16u)], all(vec2<bool>(arg_0.b, true)))));
    return select(var_0.a, vec4<bool>(all(var_0.a.zxz), arg_0.b, false, global0[_wgslsmith_index_u32(1u << (var_0.e.x % 32u), 16u)]), true);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(41504u, 16u)], false), false), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(88176u, 16u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 16u)])), vec4<bool>(true, true, true, !global0[_wgslsmith_index_u32(1u, 16u)])), !func_3(Struct_2(global1.x, global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), _wgslsmith_f_op_f32(ceil(-361f))), func_3(global2[_wgslsmith_index_u32(~u_input.e.x, 4u)], global1.x)), vec4<bool>(true, false, true, false), vec2<i32>(reverseBits(-1i), i32(-1i) * -u_input.c.x) >> (firstTrailingBit(~abs(u_input.e)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(128f, -909f)), global1.x) * global1.xz), min(~_wgslsmith_add_vec3_u32(~vec3<u32>(11534u, 22102u, u_input.e.x), abs(vec3<u32>(u_input.e.x, 39062u, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, 21438u), 1u, u_input.e.x << (u_input.e.x % 32u)), vec3<u32>(1u, u_input.e.x, ~49170u))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(u_input.e.x, _wgslsmith_add_u32(~1u, ~var_0.e.x))), _wgslsmith_add_u32(u_input.e.x, ~4294967295u)), 4u)];
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    global0 = array<bool, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-var_0.d.x)) - var_0.d.x);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~arg_0.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1000f - global1.x), _wgslsmith_f_op_f32(-global1.x), arg_0.d.x)))) + vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(712f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.x, -1627f, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.d.x)))), global1.x, _wgslsmith_f_op_f32(-global1.x)));
    let var_2 = 0i;
    var var_3 = select(select(select(arg_0.b.xyz, func_3(global2[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_f_op_f32(var_1.x + arg_0.d.x)).xzx, select(!global0[_wgslsmith_index_u32(49764u, 16u)], true, true)), !vec3<bool>(all(vec4<bool>(arg_0.a.x, arg_0.b.x, arg_0.a.x, arg_0.b.x)), global0[_wgslsmith_index_u32(arg_0.e.x, 16u)], arg_0.b.x), !vec3<bool>(any(arg_0.a.zx), all(arg_0.a.xw), global0[_wgslsmith_index_u32(arg_0.e.x, 16u)])), vec3<bool>(_wgslsmith_mod_u32(~38954u, arg_0.e.x) == ~(~1u), any(!arg_0.b), any(vec3<bool>(true, true, true))), func_3(global2[_wgslsmith_index_u32(9471u, 4u)], var_1.x).zxx);
    var var_4 = _wgslsmith_f_op_f32(max(global1.x, -1608f));
    return select(vec4<bool>(var_3.x, select(var_3.x, u_input.e.x >= select(23723u, 0u, global0[_wgslsmith_index_u32(41390u, 16u)]), all(vec4<bool>(true, arg_0.a.x, true, false))), arg_0.a.x, any(vec4<bool>(var_3.x, true, var_3.x, true)) || var_3.x), arg_0.b, select(select(arg_0.a, select(!arg_0.b, select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 16u)], global0[_wgslsmith_index_u32(19233u, 16u)], global0[_wgslsmith_index_u32(u_input.e.x, 16u)], var_3.x), arg_0.a, var_3.x), !arg_0.b), arg_0.b), vec4<bool>(true | arg_0.b.x, !(arg_0.d.x <= 1373f), func_3(global2[_wgslsmith_index_u32(~4294967295u, 4u)], _wgslsmith_f_op_f32(313f * arg_0.d.x)).x, firstTrailingBit(arg_0.c.x) <= -5499i), vec4<bool>(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.e.x, 14065u, arg_0.e.x), vec4<u32>(1u, 4294967295u, 28064u, arg_0.e.x)), 4u)], _wgslsmith_f_op_f32(step(global1.x, -1075f))).x, var_3.x, !(false || arg_0.b.x), func_3(Struct_2(751f, arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.d.x)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    let var_0 = Struct_2(-464f, false);
    let var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 4u)];
    let var_2 = ~0u;
    global0 = array<bool, 16>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(781f * -244f), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(320f)))) - 446f), global1.x);
    let var_4 = reverseBits(~u_input.e);
    let var_5 = Struct_1(select(select(vec4<bool>(var_0.b, true, !global0[_wgslsmith_index_u32(var_2, 16u)], all(vec3<bool>(global0[_wgslsmith_index_u32(62014u, 16u)], var_0.b, var_1.b))), !select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(550u, 16u)], true), vec4<bool>(false, false, true, false), vec4<bool>(var_1.b, global0[_wgslsmith_index_u32(0u, 16u)], true, true)), false), func_1(Struct_1(select(vec4<bool>(var_1.b, false, true, true), vec4<bool>(true, false, var_1.b, var_0.b), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(21310u, 16u)], var_1.b)), select(vec4<bool>(var_0.b, false, var_1.b, true), vec4<bool>(true, false, var_0.b, var_1.b), var_0.b), u_input.c.yy << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global1.yy), vec3<u32>(var_2, 4294967295u, 4294967295u))), !func_1(Struct_1(vec4<bool>(var_0.b, false, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec4<bool>(var_1.b, false, true, var_1.b), vec2<i32>(1i, -2147483647i), var_3.xx, vec3<u32>(var_2, var_4.x, 0u)))), vec4<bool>(!select(!var_0.b, all(vec3<bool>(true, var_1.b, true)), 0i >= u_input.b), (global1.x >= _wgslsmith_f_op_f32(1362f - var_1.a)) || !all(vec3<bool>(false, true, false)), any(func_1(Struct_1(vec4<bool>(var_0.b, var_0.b, var_1.b, var_0.b), vec4<bool>(var_1.b, var_0.b, var_1.b, var_1.b), vec2<i32>(u_input.b, 8180i), vec2<f32>(global1.x, 692f), vec3<u32>(u_input.e.x, 95278u, 17029u)))), var_0.b), u_input.c.zx, var_3.wx, vec3<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(var_4), _wgslsmith_div_vec2_u32(var_4, select(u_input.e, vec2<u32>(u_input.e.x, u_input.e.x), false))), 4294967295u ^ (select(u_input.e.x, var_4.x, global0[_wgslsmith_index_u32(var_4.x, 16u)]) ^ ~var_4.x), ~var_4.x));
    var var_6 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x << (25277u % 32u), var_5.c.x, select(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_2, 1u, var_2, 102253u) | vec4<u32>(var_5.e.x, 36238u, u_input.e.x, var_5.e.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(90752u, 32699u, u_input.e.x, var_4.x), vec4<u32>(0u, 4294967295u, u_input.e.x, u_input.e.x)) << (vec4<u32>(var_2, var_4.x, 118632u, var_2) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(21041u, _wgslsmith_add_u32(4294967295u, var_5.e.x)), var_2, ~(25479u >> (0u % 32u)), u_input.e.x), all(!var_5.b) || true), 4294967295u, var_3.x);
}

