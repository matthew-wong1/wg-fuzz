struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 29>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true, vec2<f32>(-784f, -862f), vec3<f32>(447f, 519f, -993f), 434f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = global0.a;
    let var_1 = Struct_1(false, arg_0.zw, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.c.x)))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-230f, arg_2, -1477f), global0.c)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1578f, global3.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f))));
    var var_2 = !(!all(!vec3<bool>(false, global2.a, false)));
    let var_3 = vec3<bool>(!arg_1, !any(vec4<bool>(global2.a, global3.a || arg_1, global3.a, arg_1)), all(vec2<bool>(!global3.a, arg_1)));
    return _wgslsmith_f_op_f32(min(global2.c.x, arg_0.x));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = !global2.a;
    global2 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(819f, 237f)), -701f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(1000f, global3.d, global2.b.x, global2.b.x), false, global2.d)))))), global3.c.x);
    var var_1 = 63867u;
    var var_2 = Struct_1(global3.a, vec2<f32>(_wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(-485f * _wgslsmith_f_op_f32(global2.b.x - -883f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1217f * _wgslsmith_div_f32(149f, -728f)), _wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(arg_1.x, 29u)], true, global3.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(global3.c, global3.c))))) + _wgslsmith_f_op_vec3_f32(step(global2.c, _wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(arg_0, global0.d, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.x))))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, global0.c.x, 377f, arg_0)), vec4<f32>(arg_0, -272f, -1683f, -113f), vec4<bool>(true, true, true, true))), global2.a, global2.b.x))));
    global2 = Struct_1(!(116f >= global3.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(exp2(global2.c.x))) + _wgslsmith_div_vec2_f32(global0.c.yy, _wgslsmith_f_op_vec2_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(var_2.c.yx + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(274f, global0.c.x))), vec2<f32>(-420f, -607f), select(vec2<bool>(global3.a, global3.a), vec2<bool>(false, true), false)))), true)), vec3<f32>(1540f, global3.d, _wgslsmith_f_op_f32(sign(-495f))), var_2.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0)))))) * global0.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-806f, _wgslsmith_f_op_f32(select(-697f, global0.b.x, false)), -281f, -1921f), all(select(vec2<bool>(global0.a, var_2.a), vec2<bool>(var_2.a, global2.a), vec2<bool>(global3.a, global3.a))), global2.c.x))));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    global0 = arg_0;
    var var_0 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(1375f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f + global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(func_2(global0.b.x, u_input.a, u_input.b))) - _wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.c.x - global3.d), _wgslsmith_f_op_f32(select(global3.c.x, 829f, global3.a)), 683f) - vec3<f32>(-828f, -521f, -829f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.d, vec3<u32>(u_input.a.x, 67141u, u_input.a.x), -1i)) - -3553f) + _wgslsmith_f_op_f32(ceil(-631f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, -1394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)), 898f)));
    global2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1700f, _wgslsmith_f_op_f32(arg_0.b.x - 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, arg_0.b.x, var_1.x), vec3<f32>(var_1.x, global0.c.x, 103f))))), global0.d);
    let var_2 = abs(~(_wgslsmith_dot_vec3_u32(~vec3<u32>(52447u, 561u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, 1u, u_input.a.x))) & ~select(54169u, u_input.a.x, var_0.a)));
    return vec4<i32>(firstTrailingBit(u_input.b) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1i)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-1i, 43125i)), vec2<i32>(0i, 1i))), -u_input.b, u_input.b, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, firstLeadingBit(14402i))), _wgslsmith_dot_vec3_i32(-vec3<i32>(17834i, 0i, u_input.b) ^ max(vec3<i32>(1i, 0i, 37495i), vec3<i32>(37741i, 49803i, u_input.b)), -select(vec3<i32>(15180i, 2147483647i, -5074i), vec3<i32>(-1i, u_input.b, 27380i), vec3<bool>(var_0.a, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(func_1(Struct_1(7099i != u_input.b, vec2<f32>(1773f, 1158f), vec3<f32>(global3.d, -1135f, global0.c.x), _wgslsmith_f_op_f32(ceil(-2439f)))) ^ vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.b)), u_input.b, u_input.b, u_input.b), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), select(vec4<i32>(u_input.b, u_input.b, 25078i, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, -9163i), true)) & (vec4<i32>(2147483647i, ~0i, 39876i, -21170i) << (min(vec4<u32>(12475u, u_input.a.x, u_input.c, u_input.c) | vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c), ~vec4<u32>(u_input.a.x, u_input.c, 151u, 23597u)) % vec4<u32>(32u))), ~(~vec4<i32>(-24394i, -1i, select(2147483647i, u_input.b, false), ~(-40708i))));
    var var_1 = 64901u;
    global2 = Struct_1(!(!all(vec2<bool>(false, true))), global0.b, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)), 1322f), global2.d);
    global1 = array<vec4<f32>, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.b.x, u_input.a, -24196i)) + -1411f), -504f, _wgslsmith_f_op_f32(sign(global3.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(29087i, ~reverseBits(reverseBits(select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(global3.a, global2.a, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(909f * global0.d), 805f), -1000f);
}

