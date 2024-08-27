struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(0u, 38168u, 55553u, 1u, 0u, 12929u, 0u);

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec2<f32>(-433f, -1000f), vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u), vec4<f32>(555f, 897f, -875f, 430f)), false, Struct_1(true, vec2<f32>(2338f, -1329f), vec4<bool>(true, true, true, false), vec2<u32>(14144u, 82647u), vec4<f32>(-890f, 1138f, -1261f, -973f)));

var<private> global2: Struct_2;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 76550u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: u32) -> bool {
    global3 = vec3<u32>(0u, 7135u, 1u);
    var var_0 = arg_1;
    let var_1 = Struct_5(arg_1);
    var var_2 = abs(-reverseBits(u_input.b >> (vec2<u32>(arg_0.d.x, 0u) % vec2<u32>(32u))));
    global2 = Struct_2(global2.c, true, Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.b))), select(!vec4<bool>(true, true, global2.a.c.x, true), global2.a.c, select(all(vec2<bool>(global2.c.c.x, false)), true | var_1.a.a, true)), ~(~(vec2<u32>(global2.a.d.x, 6118u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-708f, -566f, -880f, arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.b.x, 1055f, -1351f, -815f)) + global2.c.e))));
    return any(select(arg_0.c.yxz, vec3<bool>(arg_1.a, all(arg_0.c.zyw), true), -firstLeadingBit(u_input.b.x) != ~(-u_input.b.x)));
}

fn func_2() -> vec2<bool> {
    global0 = array<u32, 7>();
    global1 = Struct_2(global2.a, !((-u_input.b.x != u_input.b.x) & func_3(global1.a, Struct_3(false, vec3<f32>(-1000f, 1388f, global2.c.e.x)), global1.c.e, 89383u)), global2.a);
    global1 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.c.e.zy))), !vec4<bool>(select(true, global1.b, false), any(global2.c.c.zwz), false, true), ~(~min(global3.yx, vec2<u32>(24617u, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.e - global1.c.e) - _wgslsmith_f_op_vec4_f32(-global2.a.e)))), true, global2.a);
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(~select(u_input.a.x, global3.x, global2.c.a), firstLeadingBit(~global1.a.d.x))), 7u)];
    let var_1 = reverseBits(global1.c.d);
    return select(vec2<bool>(global2.b, func_3(Struct_1(!global2.a.a, global1.a.e.wz, select(global2.a.c, vec4<bool>(true, global1.c.c.x, false, false), global1.c.c), u_input.a, global2.c.e), Struct_3(global2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, 139f, global2.a.e.x) + global2.a.e.xxx)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1482f, global2.c.b.x, global1.a.e.x, 519f))), 61819u | _wgslsmith_dot_vec2_u32(global3.xz, vec2<u32>(global2.a.d.x, 88187u)))), vec2<bool>(true, true), false);
}

fn func_1() -> Struct_1 {
    global3 = ~vec3<u32>(global1.c.d.x, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(global1.c.d, vec2<u32>(0u, 39796u))), global3.zz), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), reverseBits(47466u)), 0u));
    var var_0 = func_2();
    var_0 = !select(!select(global1.a.c.zx, select(vec2<bool>(false, var_0.x), vec2<bool>(false, global1.a.a), true), select(vec2<bool>(true, true), global1.a.c.yy, global2.a.c.xw)), select(func_2(), !global2.c.c.xw, !(!vec2<bool>(false, var_0.x))), !func_2());
    let var_1 = u_input.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(global1.a.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1126f * -3201f), global2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(floor(global1.c.b.x)))) + global2.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f + _wgslsmith_f_op_f32(-global1.a.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.e.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1401f))), 358f);
    return Struct_1(!all(select(global2.a.c, global1.c.c, global2.b & global1.b)), var_2.zw, !vec4<bool>(!select(global1.c.a, var_0.x, false), _wgslsmith_f_op_f32(-1000f * 580f) <= _wgslsmith_f_op_f32(global1.a.b.x + global1.c.e.x), global2.a.a, !(global3.x > var_1.x)), u_input.a, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(), all(!global2.a.c.wzw), func_1());
    var var_0 = !select(!global1.a.c.yz, func_1().c.zy, !(!vec2<bool>(global1.a.c.x, global2.c.c.x)));
    global3 = countOneBits(select(~vec3<u32>(~4294967295u, 1u, 0u), ~vec3<u32>(0u, _wgslsmith_add_u32(u_input.a.x, 36183u), func_1().d.x), vec3<bool>(!func_1().a, all(!global2.c.c.yxw), true)));
    let var_1 = global3.xz | ~(~u_input.a);
    var var_2 = 29772u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.x << (1u % 32u)), u_input.b, u_input.a, vec2<u32>(global1.c.d.x, ~global1.c.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f * global2.c.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.b.x)))) + global1.a.e.zww));
}

