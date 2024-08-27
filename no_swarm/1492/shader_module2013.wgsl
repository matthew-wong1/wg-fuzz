struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -417i;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(-25466i, -1i, -73840i), vec3<i32>(1i, i32(-2147483648), 1i), vec4<u32>(99294u, 29362u, 91694u, 1u), vec4<u32>(13482u, 4294967295u, 11709u, 78714u), 174f), Struct_1(vec3<i32>(-21594i, -18409i, 11355i), vec3<i32>(-11845i, -1i, 0i), vec4<u32>(34763u, 25143u, 1u, 98799u), vec4<u32>(0u, 0u, 30408u, 46263u), 262f), Struct_1(vec3<i32>(12899i, 1i, -9426i), vec3<i32>(22039i, 11168i, 26996i), vec4<u32>(0u, 42381u, 102296u, 30556u), vec4<u32>(4294967295u, 25881u, 1u, 79842u), 364f), Struct_1(vec3<i32>(1i, 0i, -25238i), vec3<i32>(-30013i, i32(-2147483648), -15256i), vec4<u32>(17972u, 0u, 1u, 1u), vec4<u32>(9392u, 0u, 0u, 1u), -1000f), Struct_1(vec3<i32>(0i, 24256i, 2147483647i), vec3<i32>(1i, 1i, i32(-2147483648)), vec4<u32>(116835u, 1159u, 0u, 1u), vec4<u32>(5332u, 30426u, 41747u, 27470u), -843f));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, -1028f, -1996f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 221f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(715f, 367f, -122f), vec3<f32>(global2.x, -1152f, global2.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1415f, global2.x, -1189f) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 268f, global2.x), vec3<f32>(-328f, global2.x, global2.x)))))));
    global0 = 1i;
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.d.x, u_input.a, (u_input.a & 0u) != u_input.d.x), abs(reverseBits(1474u)), max(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(u_input.a, 30807u)), _wgslsmith_mod_u32(4294967295u, 1u))), 5u)], select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, select(true, true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(max(835f, -216f)) > global2.x)), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))));
    let var_1 = !any(!(!vec4<bool>(true, false, var_0.b.x, var_0.b.x))) & var_0.b.x;
    let var_2 = Struct_1(-firstTrailingBit(select(vec3<i32>(-59998i, 26843i, 27862i), reverseBits(var_0.a.b), select(vec3<bool>(false, var_0.b.x, var_1), var_0.b.yyz, vec3<bool>(true, var_1, true)))), var_0.a.b, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.d.x, var_0.a.c.x, countOneBits(u_input.d.x), u_input.d.x)), _wgslsmith_div_vec4_u32(var_0.a.c, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.d.x, ~4294967295u, ~u_input.a, _wgslsmith_add_u32(var_0.a.c.x, var_0.a.d.x)), (var_0.a.c >> (vec4<u32>(21435u, 5817u, 10904u, var_0.a.c.x) % vec4<u32>(32u))) ^ firstLeadingBit(var_0.a.c))), ~abs(_wgslsmith_div_vec4_u32(~var_0.a.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.d.x, 4294967295u, 42700u, 1u), vec4<u32>(u_input.a, 50976u, 7699u, 1u)))), var_0.a.e);
    return var_0.a.e;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = global2.zy;
    global0 = arg_1.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-arg_1.a.e))));
    global2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1017f, var_1, 290f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-919f, arg_1.a.e, var_0.x), vec3<f32>(var_0.x, -129f, var_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.e, global2.x, -465f) - vec3<f32>(arg_1.a.e, 1000f, -1122f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1154f * 1400f) - _wgslsmith_f_op_f32(select(-1018f, -2296f, arg_1.b.x))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e))))));
    var var_2 = arg_0.yz;
    return arg_1.c.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> bool {
    global1 = array<Struct_1, 5>();
    var var_0 = -168f;
    let var_1 = select(select(vec3<bool>(true, true, select(true, any(vec3<bool>(arg_3, arg_3, true)), arg_3)), !vec3<bool>(true, arg_3, any(vec2<bool>(false, true))), 0u != u_input.a), !select(vec3<bool>(arg_2.x < 0u, false || arg_3, !arg_3), vec3<bool>(any(vec2<bool>(arg_3, true)), arg_3, false), vec3<bool>(false, arg_3, true)), vec3<bool>(arg_3, global2.x < 1000f, false));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1331f, 378f)))) - global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global2.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))))));
    var var_3 = arg_2;
    return select(var_1.x, true, var_1.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32) -> vec2<bool> {
    global0 = arg_0.x;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1669f * global2.x))), 280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-global2.x))))));
    global1 = array<Struct_1, 5>();
    global0 = 5683i;
    global1 = array<Struct_1, 5>();
    return vec2<bool>(select(all(vec2<bool>(true, true)), false, func_4(arg_0, u_input.c, ~(~vec3<u32>(arg_2, arg_2, 47902u)), true & func_2(vec3<u32>(8340u, u_input.d.x, 11754u), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 5u)], vec4<bool>(true, true, false, true), vec2<bool>(false, false)), arg_2))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, u_input.b, -2990i), vec3<i32>(-47814i, -18054i, 16016i)), ~vec3<i32>(u_input.c, 1i, u_input.b), ~4294967295u), true));
    var var_1 = Struct_2(Struct_1(vec3<i32>(u_input.b, -reverseBits(1i), -_wgslsmith_div_i32(0i, u_input.b)), -vec3<i32>(u_input.b, 1i, u_input.b) << (vec3<u32>(u_input.a & 4294967295u, _wgslsmith_div_u32(57372u, u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, u_input.a)) % vec3<u32>(32u)), vec4<u32>(1u, _wgslsmith_clamp_u32(1u, abs(40331u), u_input.a), 0u, 60133u), countOneBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.d.x) | u_input.d) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 86478u), vec2<u32>(1u, u_input.a)), countOneBits(0u), u_input.a, u_input.a), global2.x), select(vec4<bool>(func_1(vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<i32>(22607i, -2147483647i, u_input.b), 38273u).x || var_0.x, u_input.a < u_input.d.x, !var_0.x, var_0.x), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true || var_0.x), vec4<bool>(abs(u_input.c) < 1i, true, !all(vec3<bool>(var_0.x, true, var_0.x)), func_4(abs(vec3<i32>(u_input.c, 1i, -1i)), min(u_input.b, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), u_input.d.wwx), all(vec3<bool>(var_0.x, var_0.x, true))))), !vec2<bool>(false, !func_4(vec3<i32>(u_input.b, u_input.b, u_input.b), 42275i, u_input.d.zxy, var_0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(global2.xz));
    var var_3 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_clamp_vec3_i32(var_1.a.a, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_1.a.b.x, -1i, var_1.a.b.x)), var_1.a.b), var_1.a.b >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.a.c.x), vec3<u32>(u_input.a, var_1.a.d.x, var_1.a.d.x)) % vec3<u32>(32u))), ~(~u_input.d), ~min(firstLeadingBit(var_1.a.c), vec4<u32>(0u, 10798u, 0u, var_1.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), select(var_1.b, !var_1.b, var_2.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !var_1.c);
    var var_4 = select(var_3.b.ww, vec2<bool>(true, var_3.b.x), false);
    var_0 = !(!vec2<bool>(all(select(var_1.b, vec4<bool>(false, var_4.x, true, false), vec4<bool>(false, true, var_0.x, false))), !var_1.c.x | all(vec2<bool>(var_0.x, var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-451f, 2419f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), 1044f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1000f, global2.x, 983f), vec4<f32>(var_1.a.e, -1336f, -440f, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(607f, var_1.a.e, -853f, global2.x) * vec4<f32>(var_3.a.e, -337f, var_2.x, 916f)), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.e), _wgslsmith_f_op_f32(-var_2.x), -761f, _wgslsmith_f_op_f32(666f * var_2.x))))), _wgslsmith_clamp_vec3_u32(var_3.a.c.wyx, reverseBits(~(~vec3<u32>(u_input.d.x, 0u, 4294967295u))), var_3.a.d.www), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), global2.x, 1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1484f, var_2.x, 154f, -210f) - vec4<f32>(global2.x, 1823f, -1217f, 3327f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1703f, var_1.a.e, 770f, var_2.x), vec4<f32>(var_2.x, -346f, -332f, var_3.a.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.e, var_1.a.e, var_2.x, -517f))), any(var_3.b))), _wgslsmith_f_op_f32(sign(-2055f)));
}

