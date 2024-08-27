struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, true, false, true, false, false, false, true, true, true, false, false, true, true, false, true, false, true, true, false);

var<private> global2: Struct_1;

var<private> global3: array<f32, 20> = array<f32, 20>(-992f, 289f, -706f, -401f, 1000f, 345f, -150f, 1864f, 1000f, -1765f, -100f, 1376f, 975f, -694f, 1167f, -1396f, 1417f, -1256f, -228f, 270f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<bool> {
    let var_0 = 322f;
    var var_1 = Struct_1(any(vec4<bool>(!(!global2.a), global2.b.x > (0u >> (global2.b.x % 32u)), (var_0 < -1758f) & all(vec4<bool>(true, global2.c.x, false, global2.a)), all(!vec4<bool>(true, global2.a, global2.a, true)))), _wgslsmith_add_vec3_u32(u_input.a.xxw, _wgslsmith_sub_vec3_u32(u_input.a.wwx, vec3<u32>(~34237u, ~4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 1955u, u_input.a.x)))), !select(global2.c, !global2.c, true));
    return global2.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = -2147483647i;
    global2 = arg_2.a;
    var var_1 = arg_2.e;
    global0 = array<vec3<i32>, 3>();
    let var_2 = -select(~0i, ~(~(-20224i)) & -select(arg_2.c, -4895i, arg_0.c.x), any(!select(vec4<bool>(global2.c.x, false, true, arg_0.a), vec4<bool>(global1[_wgslsmith_index_u32(102427u, 22u)], true, global2.a, arg_0.c.x), false)));
    return arg_2.b.a;
}

fn func_1() -> Struct_2 {
    global2 = Struct_1(func_3(Struct_1(global2.a, vec3<u32>(1u, 1u, ~u_input.a.x), select(func_2(), func_2(), select(global2.c, global2.c, global1[_wgslsmith_index_u32(47898u, 22u)]))), u_input.a.xz, Struct_2(Struct_1(true, vec3<u32>(1u, u_input.a.x, 1u) ^ global2.b, !vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 22u)], global2.a)), Struct_1(true, vec3<u32>(global2.b.x, global2.b.x, 30905u), vec2<bool>(global2.c.x, true)), 1i, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 22u)] == global2.a, u_input.a.wzy, vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 22u)], true)), _wgslsmith_f_op_f32(f32(-1f) * -1828f))), ~_wgslsmith_clamp_vec3_u32(abs(min(global2.b, u_input.a.xzz)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 26016u), vec3<u32>(33858u, 59217u, 66037u)), ~58853u, firstTrailingBit(u_input.a.x)), ~(~vec3<u32>(global2.b.x, u_input.a.x, 1u))), func_2());
    return Struct_2(Struct_1(true, vec3<u32>(global2.b.x >> ((0u | global2.b.x) % 32u), global2.b.x, 7126u), global2.c), Struct_1(true, vec3<u32>(49096u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1262u, 0u), global2.b.yx), 0u), !select(global2.c, select(global2.c, vec2<bool>(global2.c.x, true), global2.c), func_2())), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(1i, ~(-2147483647i))), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], vec3<u32>(4294967295u, _wgslsmith_mod_u32(global2.b.x >> (u_input.a.x % 32u), ~10039u), _wgslsmith_mod_u32(38499u, u_input.a.x)), select(global2.c, global2.c, func_2())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-804f, 1048f)), global3[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(reverseBits(global2.b.x), 59614u, u_input.a.x), reverseBits(~global2.b.x)), 20u)], !(!(global1[_wgslsmith_index_u32(u_input.a.x, 22u)] || false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(), func_1());
    let var_0 = Struct_1(!global1[_wgslsmith_index_u32(global2.b.x, 22u)], ~(~firstLeadingBit(~u_input.a.yyz)), vec2<bool>(global2.c.x, false));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().e - 1459f)), global3[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_0.b.x, 20u)], 268f))), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 20u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(18482u, 20u)] + 469f) - _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4727u, 20u)], 546f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1526f + 768f) + _wgslsmith_f_op_f32(-145f * global3[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 20u)] * global3[_wgslsmith_index_u32(4294967295u, 20u)]), global3[_wgslsmith_index_u32(~var_0.b.x, 20u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1221f + 441f) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(18947u, 20u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~4294967295u, select(7645u ^ max(u_input.a.x, u_input.a.x), var_0.b.x, !all(vec4<bool>(false, global1[_wgslsmith_index_u32(75681u, 22u)], global2.c.x, true)))), 0i, 0i, var_0.b.x);
}

