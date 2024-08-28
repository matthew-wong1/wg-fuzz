struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 4294967295u, 4294967295u, 74046u, 1u, 20540u, 0u, 26565u, 1u, 1u, 0u, 98429u, 55468u, 1u, 0u, 6326u, 4294967295u, 12024u, 45379u, 1u, 30833u, 0u, 18757u, 1u, 4294967295u, 7235u, 3467u, 0u, 4294967295u);

var<private> global1: Struct_5 = Struct_5(Struct_4(vec4<i32>(-34992i, 4457i, 0i, 2147483647i), vec3<f32>(1717f, 145f, -1150f), 27699i), 2147483647i, 1000f, 36491i, vec2<f32>(1278f, 1704f));

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(1u, 37828u, 650u, 11463u), vec4<u32>(4294967295u, 69539u, 4294967295u, 24414u), vec4<u32>(4294967295u, 0u, 45790u, 6349u), vec4<u32>(1u, 12117u, 1u, 0u), vec4<u32>(4294967295u, 89124u, 23930u, 4294967295u), vec4<u32>(0u, 4583u, 10238u, 1u), vec4<u32>(55129u, 4294967295u, 4294967295u, 4294967295u));

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_5(Struct_4(countOneBits(vec4<i32>(1i, 2147483647i, global3.x, _wgslsmith_sub_i32(arg_0.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.a.b * global1.a.b), vec3<f32>(-623f, global1.e.x, 277f)))), select(_wgslsmith_sub_i32(-2147483647i << (0u % 32u), 0i << (0u % 32u)), arg_0.x, select(true, 138f <= global1.c, all(vec3<bool>(false, true, false))))), abs(_wgslsmith_add_i32(global3.x, global1.d)), _wgslsmith_f_op_f32(f32(-1f) * -2760f), firstTrailingBit(4546i), global1.e);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f + var_0.e.x)), 2271f), 1345f, _wgslsmith_f_op_f32(-global1.e.x)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(abs(~u_input.a.x)), 29u)] << (4294967295u % 32u), 7u)], select(vec4<bool>(false, any(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), false, true)), select(!vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), !any(vec2<bool>(false, false))), arg_0.x);
    var var_2 = Struct_4(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(2147483647i, 0i, 15778i)), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -12468i), countOneBits(var_0.a.a.xw), global3.xy)), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(2199i, u_input.b.x, global1.a.c, 2147483647i), ~vec4<i32>(-1i, -6536i, var_1.e, var_0.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562f * var_0.c) * _wgslsmith_f_op_f32(164f - 967f)), var_1.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.a))))), false)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(min(var_0.a.a.wy, global3.yz), select(u_input.b.yw, vec2<i32>(31686i, var_1.e), var_1.d)), ~(~vec2<i32>(1i, u_input.d.x)), vec2<i32>(reverseBits(-1i), var_0.d)), vec2<i32>(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e, 2147483647i, var_1.e), vec3<i32>(u_input.c.x, 6363i, 2147483647i)))));
    let var_3 = _wgslsmith_f_op_f32(122f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1802f)), var_0.a.b.x)), var_1.a.x));
    let var_4 = ~(~vec3<u32>(var_1.b.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.a.x), vec2<u32>(4898u, 5282u))), 42696u));
    return 715f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(1253f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)));
    var var_1 = u_input.a.ww;
    var var_2 = vec4<bool>(true, false, any(vec2<bool>(false, true)), true);
    global1 = Struct_5(Struct_4(global1.a.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(min(var_0, global1.e.x)), _wgslsmith_f_op_f32(select(var_0, -979f, var_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, var_0, var_0)))), -49784i), (-53883i >> (u_input.a.x % 32u)) | ~5476i, _wgslsmith_f_op_f32(var_0 * -207f), ~(~(~u_input.d.x << (reverseBits(1u) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-1421f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-509f)) - _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<i32>(global3.x, 0i, 0i, global3.x)))))));
    let var_3 = !(!var_2.zw);
    return var_2.x;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = false;
    return Struct_1(global1.a.b, vec4<u32>(34993u, ~(~(u_input.e & 98262u)), global0[_wgslsmith_index_u32(~abs(countOneBits(57489u)), 29u)], 4294967295u), vec4<bool>(func_2(), -2147483647i >= ~(~arg_0), true && select(select(false, true, false), var_0, !arg_3), true), !(!vec2<bool>(arg_3, var_0)), _wgslsmith_mult_i32(u_input.b.x, -min(2147483647i, 1i) ^ arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec3<f32> {
    global3 = countOneBits(~global1.a.a.xyx);
    let var_0 = Struct_3(18712i, Struct_2(reverseBits(i32(-1i) * -arg_0.e), func_1(arg_0.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), -809f, 1u >= firstLeadingBit(arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_0.a.x, arg_1.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1466f, 304f, global1.e.x, 585f)))) + vec4<f32>(-1000f, global1.a.b.x, -564f, _wgslsmith_f_op_f32(f32(-1f) * -122f)))), arg_0, vec2<i32>(arg_0.e, -20576i));
    let var_1 = global1.a;
    global1 = Struct_5(global1.a, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1000f) + -1490f)), 2147483647i, var_1.b.zz);
    var var_2 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + global1.a.b), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.a.x - -608f), _wgslsmith_f_op_f32(-var_0.c.x), 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b.x;
    global1 = Struct_5(Struct_4(vec4<i32>(global1.b, i32(-1i) * -2147483647i, global1.d, u_input.b.x), _wgslsmith_f_op_vec3_f32(func_4(func_1(-27065i, _wgslsmith_f_op_vec2_f32(-global1.a.b.yz), _wgslsmith_f_op_f32(-1277f - -383f), false), vec2<f32>(-927f, 245f), vec2<bool>(any(vec4<bool>(false, true, true, true)), global0[_wgslsmith_index_u32(u_input.e, 29u)] != u_input.e))), _wgslsmith_sub_i32(-1i, -global1.b)), reverseBits(0i) >> (u_input.e % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) - _wgslsmith_f_op_f32(-global1.e.x)))) + _wgslsmith_f_op_f32(-global1.e.x)), ~(-1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.e.x)));
    let var_1 = vec4<u32>(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~u_input.e), 4294967295u), 29u)], global0[_wgslsmith_index_u32(countOneBits(4294967295u) << ((53569u | (77160u | global0[_wgslsmith_index_u32(4294967295u, 29u)])) % 32u), 29u)], any(func_1(global1.b, _wgslsmith_f_op_vec2_f32(min(global1.a.b.zz, global1.e)), _wgslsmith_f_op_f32(min(-459f, -540f)), true).c.wxz)), global0[_wgslsmith_index_u32(~4294967295u << (firstLeadingBit(~u_input.e) % 32u), 29u)], u_input.e, 7953u);
    global2 = array<vec4<u32>, 7>();
    let var_2 = -53992i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(_wgslsmith_add_vec3_u32(u_input.a.xyw, u_input.a.xyw), u_input.a.zxx, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global3.x, var_2, 71699i, u_input.c.x), abs(reverseBits(u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1340f + 724f)), global1.a.b.x), 631f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.b.x, -707f), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(global1.a.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 29u)], 7u)], vec4<bool>(true, true, true, true), vec2<bool>(false, false), global1.d), global1.a.b.zz, vec2<bool>(false, false))).x)) < _wgslsmith_f_op_f32(max(global1.c, global1.a.b.x))).b.x, -1045f);
}

