struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<i32, 4> = array<i32, 4>(i32(-2147483648), -34846i, -6854i, i32(-2147483648));

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(-1532f, _wgslsmith_f_op_f32(-830f * _wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(sign(-575f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(776f)), _wgslsmith_div_f32(-556f, -1759f))), _wgslsmith_f_op_f32(round(-454f))), -13213i, !vec4<bool>(all(vec3<bool>(arg_0, arg_0, false)), !arg_0, select(arg_0, true, false), !arg_0)), !vec4<bool>(arg_0, arg_0, !(arg_0 | arg_0), arg_0));
    global1 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_mod_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(28762u, u_input.c.x), firstLeadingBit(vec2<u32>(41760u, u_input.c.x))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(51778u, u_input.a.x), u_input.a)), ~(~select(u_input.a, vec2<u32>(68382u, 0u), true))) >> (vec2<u32>((_wgslsmith_mult_u32(50611u, 2288u) >> (firstLeadingBit(u_input.a.x) % 32u)) & ~1u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 7303u), ~0u)) % vec2<u32>(32u));
    let var_2 = i32(-1i) * -1i;
    global3 = array<Struct_1, 29>();
    return select(var_0.d, var_0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1253f + var_0.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + var_0.c.b) - -976f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b * -231f) + -1483f), _wgslsmith_f_op_f32(f32(-1f) * -351f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> i32 {
    var var_0 = ~vec3<u32>(u_input.c.x, 40030u, 1u);
    global3 = array<Struct_1, 29>();
    let var_1 = max(-u_input.d.ww, max(-(countOneBits(vec2<i32>(-2147483647i, -2147483647i)) ^ vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.d.x)), ~(~(-vec2<i32>(arg_1.x, -40051i)))));
    global1 = array<Struct_2, 20>();
    let var_2 = !func_3(true);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(-809f, _wgslsmith_f_op_f32(select(325f, arg_1.x, arg_0.e.x & !arg_2.e.x)), 577f, _wgslsmith_f_op_f32(select(-325f, arg_1.x, 1u >= u_input.c.x)));
    let var_1 = 869f;
    var var_2 = arg_0.e;
    var var_3 = u_input.a.x;
    global3 = array<Struct_1, 29>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = reverseBits(abs(countOneBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.d, u_input.e), u_input.d.wx)))));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(666f * _wgslsmith_f_op_f32(sign(arg_0.c.x))), 1177f)), 910f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, 862f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, arg_3.c.x)) + _wgslsmith_f_op_vec2_f32(arg_0.c - vec2<f32>(arg_0.a, arg_3.a)))), _wgslsmith_add_i32(max(global2[_wgslsmith_index_u32(arg_2.x, 4u)], 1i) ^ var_0, func_2(vec3<bool>(arg_0.e.x, true, true), u_input.d.zww)), func_3(arg_0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(158f, 691f, 939f, arg_3.c.x), vec4<f32>(-150f, arg_3.b, arg_3.c.x, 682f))) + vec4<f32>(arg_0.c.x, arg_0.a, 1000f, arg_3.c.x)))), Struct_1(589f, arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_3.c)) + _wgslsmith_f_op_vec2_f32(-arg_0.c)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(exp2(arg_0.a)))), arg_0.d, !func_3(arg_0.e.x)));
    let var_2 = arg_0.e.x;
    var var_3 = !var_2;
    let var_4 = abs(~vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.a), 6057u));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(84934u, 29u)], vec3<u32>(0u, 21131u, u_input.c.x), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(-1019f, 412f, vec2<f32>(387f, 805f), 40739i, vec4<bool>(false, true, true, false)))))))), 1142f, 857f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(706f)))));
    global3 = array<Struct_1, 29>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1463f)), _wgslsmith_f_op_f32(f32(-1f) * -255f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -846f));
    global0 = array<vec3<f32>, 11>();
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.d.zx | select(vec2<i32>(-45064i, -6872i), vec2<i32>(-64770i, global2[_wgslsmith_index_u32(16725u, 4u)]), vec2<bool>(true, false)), u_input.d.wx), u_input.d.wx));
}

