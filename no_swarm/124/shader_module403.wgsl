struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(4823u, 1u), 0u, vec3<f32>(-1000f, 2173f, 483f), 1i, 4294967295u), Struct_1(vec2<u32>(67830u, 19191u), 66292u, vec3<f32>(-1978f, -2038f, 603f), -3157i, 1u), Struct_1(vec2<u32>(1u, 4294967295u), 0u, vec3<f32>(-162f, 1683f, -1000f), 1601i, 4294967295u), Struct_1(vec2<u32>(43874u, 1702u), 4294967295u, vec3<f32>(-317f, -888f, 1906f), 2147483647i, 1u), Struct_1(vec2<u32>(41297u, 4294967295u), 87302u, vec3<f32>(-125f, 116f, 298f), -1776i, 0u), Struct_1(vec2<u32>(1u, 23946u), 42852u, vec3<f32>(666f, 181f, 1060f), 1i, 55258u), Struct_1(vec2<u32>(39829u, 19740u), 1u, vec3<f32>(-1341f, 390f, -1449f), -38795i, 0u), Struct_1(vec2<u32>(0u, 8827u), 4294967295u, vec3<f32>(1177f, -1000f, 775f), 1i, 1u), Struct_1(vec2<u32>(0u, 0u), 59656u, vec3<f32>(1153f, 260f, 1998f), 1i, 8075u));

var<private> global1: vec4<u32> = vec4<u32>(16510u, 15012u, 51376u, 54700u);

var<private> global2: array<bool, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(~arg_1.x, arg_1.x), select(1u, arg_2, true)), firstLeadingBit(~(~arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, 842f, 1588f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-587f, 1213f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-249f, 287f, 512f), vec3<f32>(1011f, -1778f, 832f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1445f, 782f, 845f) * vec3<f32>(674f, 1654f, 1600f))), !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(arg_1.x, 26u)], global2[_wgslsmith_index_u32(93360u, 26u)]))))), arg_3, ~1u);
    var var_1 = Struct_1(vec2<u32>(~arg_0, ~(select(4294967295u, 1u, global2[_wgslsmith_index_u32(2950u, 26u)]) | countOneBits(arg_2))), arg_0, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x - 418f), _wgslsmith_f_op_f32(sign(157f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-829f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) - -842f) * var_0.c.x)), -64279i, global1.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.xyz, ~firstTrailingBit(select(vec3<u32>(1592u, arg_0, 74400u), vec3<u32>(arg_0, global1.x, arg_1.x), global2[_wgslsmith_index_u32(4294967295u, 26u)]))) << (43147u % 32u), 9u)];
    global0 = array<Struct_1, 9>();
    let var_3 = ~_wgslsmith_clamp_u32(min(arg_2, _wgslsmith_dot_vec2_u32(var_1.a, global1.wx)) ^ arg_0, 1u, global1.x);
    return !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(7482u, 0u, var_2.b, 60807u), vec4<u32>(0u, 4294967295u, arg_1.x, 1u), true)) | vec4<u32>(~7858u, 1u, max(arg_1.x, 19780u), reverseBits(4294967295u)), ~select(~vec4<u32>(1u, global1.x, var_1.e, var_0.b), ~vec4<u32>(0u, 1u, 57612u, 0u), true)), 26u)];
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 26>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~13000u, ~_wgslsmith_mod_u32(global1.x, ~(~global1.x))), 26u)];
    let var_1 = select(select(vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(23007u, 26u)], global2[_wgslsmith_index_u32(global1.x, 26u)])) && any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global1.x, 26u)], false)), global2[_wgslsmith_index_u32(global1.x, 26u)]), vec2<bool>(true, select(false || global2[_wgslsmith_index_u32(global1.x, 26u)], func_3(4294967295u, global1.yx, 4294967295u, 13100i), true)), true & global2[_wgslsmith_index_u32(max(0u, 1u), 26u)]), select(vec2<bool>(-1669f >= _wgslsmith_f_op_f32(floor(-537f)), true), vec2<bool>(select(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.xyz, vec3<u32>(global1.x, global1.x, 0u)), 26u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.yw, global1.zz), 26u)]), !(!global2[_wgslsmith_index_u32(global1.x, 26u)])), true), !(!vec2<bool>(true, !global2[_wgslsmith_index_u32(global1.x, 26u)])));
    let var_2 = vec4<bool>(any(select(vec2<bool>(false, true), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 26u)], var_1.x), vec2<bool>(true, var_1.x), true), select(var_1, vec2<bool>(true, true), global2[_wgslsmith_index_u32(17759u, 26u)]))) & var_1.x, false && !(!var_1.x), global2[_wgslsmith_index_u32(1u, 26u)], var_1.x);
    var var_3 = Struct_1(~global1.zy, global1.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(382f, -1280f, -1167f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-437f, 934f, -733f), vec3<f32>(-2615f, -862f, 629f)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(954f + -606f), _wgslsmith_f_op_f32(-968f + 723f))), 704f, 1f))), min(_wgslsmith_sub_i32(u_input.a.x, ~0i), _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-27775i, 8683i, 1i, -1i))), u_input.a.x)), ~(~4294967295u & ~global1.x) ^ global1.x);
    return global0[_wgslsmith_index_u32(var_3.e, 9u)];
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global2 = array<bool, 26>();
    let var_0 = global0[_wgslsmith_index_u32(global1.x, 9u)];
    let var_1 = Struct_1(arg_0.a, var_0.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 162f, _wgslsmith_f_op_f32(round(arg_0.c.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1365f, 1109f, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, var_0.c.x, arg_0.c.x)))), ~u_input.a.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, 4294967295u, reverseBits(var_0.a.x)), _wgslsmith_mod_vec3_u32(global1.wzy ^ vec3<u32>(1u, 0u, var_0.b), ~vec3<u32>(4294967295u, var_0.e, arg_0.a.x)))));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, var_0.b), vec3<u32>(50963u, var_1.b, global1.x)))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c)), var_1.c)) * _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.c.x, var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_0.c.x, arg_0.c.x, 1000f)))))), var_1.d, ~var_0.a.x);
    var var_3 = _wgslsmith_dot_vec3_u32(select(firstLeadingBit(min(global1.zwz, global1.zxx)), global1.zxx, !select(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 26u)], true, true), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_2.b, 26u)]), all(vec3<bool>(false, global2[_wgslsmith_index_u32(39816u, 26u)], true)))), vec3<u32>(_wgslsmith_add_u32(arg_0.b, _wgslsmith_dot_vec3_u32(global1.zxx, global1.wzw)), 47603u, ~(~48992u) ^ var_2.b));
    return ~vec4<u32>(2870u, abs(max(22581u, 36461u)), ~var_1.e, countOneBits(var_0.b));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = ~vec4<u32>(0u, arg_2.a.x, 0u >> (~4294967295u % 32u), ~(~global1.x)) | firstTrailingBit(func_4(func_2()));
    let var_0 = Struct_1(vec2<u32>(select(~global1.x, 21635u, true || arg_1), 17167u), _wgslsmith_mod_u32(max(select(global1.x, min(arg_2.b, global1.x), !arg_1), ~(~135273u)), global1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1512f, arg_0, arg_2.c.x), vec3<f32>(arg_2.c.x, arg_2.c.x, 1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.c.x, 1068f, arg_2.c.x))), func_2().c))), vec3<f32>(-144f, _wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(253f, -177f, arg_1))))), 1f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1634f)), -410f)))), 40187i << (global1.x % 32u), 1u);
    global1 = ~min(~firstTrailingBit(func_4(var_0)), ~(~vec4<u32>(1u, global1.x, 0u, 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, arg_2.c.x));
    let var_2 = countOneBits(-4209i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    let var_0 = vec2<bool>(!select(true, global2[_wgslsmith_index_u32(1u, 26u)] != func_1(125f, global2[_wgslsmith_index_u32(77430u, 26u)], global0[_wgslsmith_index_u32(global1.x, 9u)]), false), true);
    let var_1 = func_2();
    var var_2 = abs(global1.xx);
    global0 = array<Struct_1, 9>();
    global2 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.xx - vec2<f32>(var_1.c.x, 337f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x), _wgslsmith_f_op_vec2_f32(-var_1.c.zy))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.c.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1412f, 2549f))), var_1.c.xx, !all(var_0)))), var_1.d);
}

