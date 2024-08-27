struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(true, Struct_1(false, 4294967295u, false), vec2<bool>(true, true)), Struct_2(true, Struct_1(false, 4294967295u, true), vec2<bool>(true, true)), Struct_2(false, Struct_1(true, 1u, true), vec2<bool>(true, true)), Struct_2(false, Struct_1(true, 4294967295u, true), vec2<bool>(true, false)), Struct_2(false, Struct_1(true, 0u, false), vec2<bool>(false, true)), Struct_2(false, Struct_1(false, 0u, false), vec2<bool>(true, true)));

var<private> global1: array<f32, 19> = array<f32, 19>(-490f, 261f, 181f, 1367f, -1425f, -1361f, -1124f, -404f, -1000f, 1686f, 413f, 306f, -966f, -1508f, 733f, -788f, -110f, -1000f, 1624f);

var<private> global2: Struct_2 = Struct_2(true, Struct_1(true, 13190u, true), vec2<bool>(false, false));

var<private> global3: Struct_1 = Struct_1(true, 139485u, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(abs(firstLeadingBit(u_input.b.x)), 19u)]));
    return _wgslsmith_sub_u32(21053u, arg_0 << ((1u & _wgslsmith_sub_u32(reverseBits(u_input.b.x), ~4294967295u)) % 32u));
}

fn func_2() -> vec2<bool> {
    var var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1649f)))), global1[_wgslsmith_index_u32(u_input.b.x, 19u)]));
    let var_2 = firstLeadingBit(~(~62909u));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b.b, var_2), ~vec3<u32>(1u, 1u, u_input.b.x)) << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global3.b, 0u, global3.b)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 10825u, 4454u) ^ u_input.b.xxx, ~u_input.b.xxy)) % 32u), 1u), 6u)];
    var var_3 = Struct_1(true, min(firstTrailingBit(1u), _wgslsmith_mult_u32(func_3(abs(global2.b.b), 2147483647i, Struct_1(true, global3.b, false), Struct_2(global3.c, Struct_1(global3.a, u_input.b.x, true), vec2<bool>(var_0.x, global2.a))), ~4294967295u)), !global3.c != all(global2.c));
    return vec2<bool>(var_0.x, any(!global2.c));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = !((~_wgslsmith_mult_u32(global2.b.b, 23223u) == func_3(func_3(14984u, u_input.e.x, Struct_1(global3.a, global2.b.b, true), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), u_input.c.x, global2.b, Struct_2(global3.c, Struct_1(global3.c, u_input.b.x, var_0.x), vec2<bool>(false, global3.c)))) & false);
    global3 = global2.b;
    global1 = array<f32, 19>();
    global3 = Struct_1(global3.c, ~(~55391u), !(!(false != (arg_0 <= 13323u))));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(~65865u);
    global2 = global0[_wgslsmith_index_u32(~u_input.b.x, 6u)];
    let var_0 = all(select(vec3<bool>((u_input.e.x > u_input.d.x) || global3.a, -1i > u_input.c.x, true), !select(vec3<bool>(global2.a, global2.a, global2.c.x), select(vec3<bool>(true, false, global3.a), vec3<bool>(false, true, false), vec3<bool>(false, global3.a, false)), !vec3<bool>(global2.c.x, true, true)), true));
    var var_1 = max(~(~(~(~u_input.b.wwy))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, min(u_input.b.zy, u_input.b.zx)) & 21198u, ~countOneBits(u_input.b.x), 4294967295u));
    var_1 = u_input.b.ywy;
    global3 = Struct_1(all(vec4<bool>(all(!vec4<bool>(global3.a, false, global2.a, global3.a)), global2.a, global3.c, all(!vec3<bool>(global3.a, global2.c.x, global2.a)))), _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) ^ ((u_input.b.x >> (u_input.b.x % 32u)) >> (28468u % 32u))), false);
    let var_2 = u_input.a;
    var var_3 = func_1(26116u);
    let x = u_input.a;
    s_output = StorageBuffer(-1568f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~global2.b.b, 19u)])), global1[_wgslsmith_index_u32(~global2.b.b, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1084f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 47223u);
}

