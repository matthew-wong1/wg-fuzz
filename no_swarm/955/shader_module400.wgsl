struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 92947u), vec2<u32>(15914u, 26319u), vec2<u32>(59664u, 1u), vec2<u32>(66445u, 26862u), vec2<u32>(89972u, 26680u), vec2<u32>(70217u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(42512u, 13400u), vec2<u32>(28060u, 0u), vec2<u32>(24792u, 25062u), vec2<u32>(0u, 2681u), vec2<u32>(80934u, 43955u), vec2<u32>(57991u, 1u), vec2<u32>(58773u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(46679u, 97062u), vec2<u32>(41827u, 63880u), vec2<u32>(1u, 44397u), vec2<u32>(0u, 1u), vec2<u32>(32554u, 33473u), vec2<u32>(65209u, 0u), vec2<u32>(8442u, 1u), vec2<u32>(10014u, 7365u), vec2<u32>(148536u, 0u), vec2<u32>(6428u, 7713u), vec2<u32>(1u, 34987u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, -257f, global0.c.x)) * global0.b)))), !select(select(!global0.c, select(vec2<bool>(global0.c.x, true), global0.c, vec2<bool>(global0.c.x, true)), select(global0.c, vec2<bool>(true, true), global0.c.x)), select(global0.c, select(vec2<bool>(false, false), global0.c, global0.c.x), vec2<bool>(global0.c.x, global0.c.x)), global0.c), firstLeadingBit(firstTrailingBit(~global0.d)));
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(0u, var_0.d, 4294967295u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, 1u, 1u), vec3<u32>(var_0.d, global0.d, var_0.d)) % vec3<u32>(32u))) << (countOneBits(~vec3<u32>(1u, 1u, var_0.d)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(38650u, global0.d, var_0.d) & vec3<u32>(var_0.d, 0u, var_0.d), vec3<u32>(global0.d, global0.d, var_0.d)), var_0.d), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(35340u, 10236u, global0.d), vec3<u32>(global0.d, 26547u, global0.d)), vec3<u32>(41406u, 20945u, 0u) | vec3<u32>(var_0.d, 7712u, 0u))));
    return _wgslsmith_f_op_f32(620f * _wgslsmith_f_op_f32(round(127f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    var var_0 = vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(729f - _wgslsmith_f_op_f32(min(arg_0.e.b, arg_2.x))) - 2176f) * _wgslsmith_f_op_f32(arg_3.e.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), arg_2.x)))), _wgslsmith_div_f32(arg_3.b.b, 736f));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.zwx)))) - vec3<f32>(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(select(global0.a, 1186f, arg_3.e.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -1000f)) + 1391f), _wgslsmith_f_op_f32(func_3())));
    var var_1 = !(!(!(!vec3<bool>(global0.c.x, true, false))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1774f, var_0.x, arg_1.b), arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(global0.b - 215f), _wgslsmith_f_op_f32(func_3()), arg_3.d, arg_1.a))), arg_0.e, any(arg_3.b.c), 454f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.e.d, 0u), 25u)]);
    var var_3 = vec2<u32>(arg_1.d, ~(~(~global0.d)));
    return !all(!(!(!vec3<bool>(arg_1.c.x, var_2.b.c.x, arg_3.e.c.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = all(select(vec3<bool>(true | all(vec4<bool>(global0.c.x, true, false, global0.c.x)), global0.c.x, true), vec3<bool>(global0.c.x, !all(vec3<bool>(false, global0.c.x, global0.c.x)), any(vec3<bool>(global0.c.x, true, global0.c.x))), !global0.c.x));
    var var_1 = abs(global0.d);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global0.a + -673f), -984f, !vec2<bool>(!func_2(Struct_2(vec4<f32>(1253f, global0.a, global0.b, global0.a), Struct_1(-760f, -495f, vec2<bool>(global0.c.x, global0.c.x), global0.d), false, global0.b, global1[_wgslsmith_index_u32(global0.d, 25u)]), global1[_wgslsmith_index_u32(global0.d, 25u)], vec3<f32>(-300f, global0.b, 2184f), Struct_2(vec4<f32>(global0.a, global0.a, global0.b, 192f), global1[_wgslsmith_index_u32(1u, 25u)], global0.c.x, 1000f, Struct_1(global0.a, global0.b, vec2<bool>(global0.c.x, false), global0.d))), all(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)) & !global0.c.x), _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(global0.d, 28u)], ~vec2<u32>(global0.d, ~4294967295u)));
    global0 = global1[_wgslsmith_index_u32(abs(10365u) | ~max(~(~var_2.d), var_2.d), 25u)];
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, 1155f, var_2.b, var_2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1855f, -605f, var_2.b, -2745f) + vec4<f32>(689f, var_2.a, -570f, var_2.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, var_2.a, -1405f, var_2.b) + vec4<f32>(1163f, -1388f, -739f, -558f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b, -661f, -2701f, -1199f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, var_2.a, var_2.b) + vec4<f32>(global0.a, global0.a, 907f, global0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 1000f, -1117f, var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, -702f, global0.a, var_2.a))), !(!vec4<bool>(var_2.c.x, global0.c.x, false, global0.c.x))))), global1[_wgslsmith_index_u32(0u, 25u)], var_2.c.x, _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(1351f * var_2.a))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-176f + 1f) - global0.b), -591f, select(vec2<bool>(!var_2.c.x, true), global0.c, global0.c), 0u));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.d ^ 0u, max(global0.d, 8106u), global0.d), ~vec3<u32>(0u, 1u, global0.d)));
    var var_1 = all(vec3<bool>(any(!vec3<bool>(true, global0.c.x, true)), true, true));
    global0 = func_1();
    global0 = func_1();
    let var_2 = false;
    global2 = array<vec2<u32>, 28>();
    let var_3 = global1[_wgslsmith_index_u32(~(~(~firstLeadingBit(~global0.d))), 25u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f - 1259f))))), var_3.c, var_0.x);
    global2 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(~vec4<u32>(42842u, 1u, 1u, 1u) >> (select(~vec4<u32>(7574u, var_3.d, 1u, var_0.x), vec4<u32>(global0.d, 0u, global0.d, global0.d), true) % vec4<u32>(32u))));
}

